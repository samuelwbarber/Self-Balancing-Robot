import cv2
import numpy as np
import mmap
import os
import time
from picamera2 import Picamera2
import mysql.connector
from mysql.connector import Error

def write_to_shared_memory(message):
    size = 1024
    fd = os.open('/dev/shm/testshm', os.O_CREAT | os.O_RDWR)
    os.ftruncate(fd, size)
    with mmap.mmap(fd, size) as m:
        m.seek(0)
        m.write(b'\x00' * size)
        m.seek(0)
        m.write(message.encode('utf-8'))
    os.close(fd)

def log_coordinates_to_database(session_id, x_coord, y_coord):
    try:
        connection = mysql.connector.connect(
            host='ec2-3-8-166-39.eu-west-2.compute.amazonaws.com',
            database='RobotData',
            user='flamingo@%',
            password='Flamingo2024'
        )
        cursor = connection.cursor()
        insert_query = """
        INSERT INTO CoordinateData (sessionID, x_coord, y_coord)
        VALUES (%s, %s, %s)
        """
        cursor.execute(insert_query, (session_id, x_coord, y_coord))
        connection.commit()
        print("Coordinates logged to database")
    except Error as e:
        print("Error while connecting to MySQL:", e)
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()

def find_centroids(mask):
    contours, _ = cv2.findContours(mask, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
    centroids = []
    for c in contours:
        M = cv2.moments(c)
        if M["m00"] != 0:
            cX = int(M["m10"] / M["m00"])
            cY = int(M["m01"] / M["m00"])
            centroids.append((cX, cY))
    return centroids


def project_to_ground_plane(x, y, h, theta):
    theta_rad = np.deg2rad(theta)
    X_ground = x * np.cos(theta_rad)
    Y_ground = y * np.sin(theta_rad) - h
    return (X_ground, Y_ground)

def calculate_adjusted_distance(centroid1, centroid2, h, theta):
    X1, Y1 = project_to_ground_plane(centroid1[0], centroid1[1], h, theta)
    X2, Y2 = project_to_ground_plane(centroid2[0], centroid2[1], h, theta)
    adjusted_distance = np.sqrt((X2 - X1)**2 + (Y2 - Y1)**2)
    return adjusted_distance, (X1, Y1), (X2, Y2)

def calculate_distance(focal_length, real_distance, measured_distance):
    return (real_distance * focal_length) / measured_distance

def find_closest_pair(distances):
    min_distance = float('inf')
    closest_pair = None
    for i in range(len(distances)):
        for j in range(i + 1, len(distances)):
            d = abs(distances[i][1] - distances[j][1])
            if d < min_distance:
                min_distance = d
                closest_pair = (distances[i], distances[j])
    return closest_pair

camera = Picamera2()
video_config = camera.create_video_configuration(main={"format": "XRGB8888", "size": (640, 480)})
camera.configure(video_config)
camera.start()

KNOWN_DISTANCE_BETWEEN_OBJECTS = 4.8  
KNOWN_DISTANCE_TO_KEY = 53
CAMERA_HEIGHT = 30  
CAMERA_TILT_ANGLE = 45 
Key = False

ref_image = cv2.imread('ref_image3.jpg')

if ref_image is None:
    print("Failed to read the image.")
else:
    height, width, channels = ref_image.shape
    print(f"Image dimensions: Height = {height}, Width = {width}, Channels = {channels}")

    hsv_ref = cv2.cvtColor(ref_image, cv2.COLOR_BGR2HSV)
    lower_pink = np.array([18, 30, 150]) # Adjusted values
    upper_pink = np.array([25, 50, 180])
    mask_ref = cv2.inRange(hsv_ref, lower_pink, upper_pink)

    centroids_ref = find_centroids(mask_ref)
    if len(centroids_ref) >= 2:
        centroid1_ref = centroids_ref[0]
        centroid2_ref = centroids_ref[1]
        D_pixels_ref = np.sqrt((centroid1_ref[0] - centroid2_ref[0]) ** 2 + (centroid1_ref[1] - centroid2_ref[1]) ** 2)
        focal_length = (D_pixels_ref * KNOWN_DISTANCE_TO_KEY) / (KNOWN_DISTANCE_BETWEEN_OBJECTS)
        print(f"Focal length: {focal_length}")
    else:
        print("Not enough centroids found in the reference image to calculate focal length.")
        focal_length = None

def scan_for_keys(camera, focal_length):
    distances = []
    while True:
        if len(distances) < 5:
            buffer = camera.capture_buffer("main")
            image = np.frombuffer(buffer, dtype=np.uint8).reshape((480, 640, 4))[:, :, :3]
            hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
            lower_pink = np.array([164, 42, 139])
            upper_pink = np.array([179, 171, 255])
            mask = cv2.inRange(hsv, lower_pink, upper_pink)
            centroids = find_centroids(mask)
            if len(centroids) >= 2:
                centroid1, centroid2 = centroids[0], centroids[1]
                adjusted_distance, (X1, Y1), (X2, Y2) = calculate_adjusted_distance(centroid1, centroid2, CAMERA_HEIGHT, CAMERA_TILT_ANGLE)
                if focal_length and 0 < adjusted_distance <= 10:
                    distance_to_key_y = calculate_distance(focal_length / 170, KNOWN_DISTANCE_BETWEEN_OBJECTS, adjusted_distance)
                    distance_to_key_x = (X2 - X1)
                    if distance_to_key_y < 60:
                        distances.append((int(distance_to_key_x), int(distance_to_key_y)))
                        key = True
        else:
            closest_pair = find_closest_pair(distances)
            if closest_pair:
                average_distance_y = sum([d[1] for d in closest_pair]) / len(closest_pair)
                average_distance_x = sum([d[0] for d in closest_pair]) / len(closest_pair)
                y_coord = f"Y{int(average_distance_y):03d}"
                x_coord = f"X{'+' if average_distance_x >= 0 else '-'}{abs(int(average_distance_x)):02d}"
                coordinate_write = f"{y_coord}{x_coord}"
                write_to_shared_memory(coordinate_write)
                print(coordinate_write)
                distances = []  # Reset the list for new data
                time.sleep(3)  # Delay before next scan cycle

def navigate_maze(facing_wall, right_wall):

    if facing_wall:
        if right_wall:
            action = "Spin 180 degrees"
            write_to_shared_memory(action)
        else:
            action = "Spin 90 right"
            write_to_shared_memory(action)
    else:
        action = "Drive forward"
        write_to_shared_memory(action)
    print(action)
    return action

def main():
    camera = Picamera2()
    video_config = camera.create_video_configuration(main={"format": "XRGB8888", "size": (640, 480)})
    camera.configure(video_config)
    camera.start()

    lower_wall = np.array([100, 50, 50])  # HSV range for walls
    upper_wall = np.array([140, 255, 255])

    lower_key = np.array([164, 42, 139])  # HSV range for keys
    upper_key = np.array([179, 171, 255])

    session_id = "session_123"  # Placeholder for a session identifier if needed
    distances = []  # List to store distance measurements

    try:
        while (Key = False):
            scan_for_keys(camera, focal_length)

            key_detected, centroids = detect_walls(hsv, lower_key, upper_key)
            if key_detected and len(centroids) >= 2:
                # Example distance and coordinate calculation (adjust as needed)
                distance_x, distance_y = centroids[0][0], centroids[0][1]
                distances.append((distance_x, distance_y))
                if len(distances) >= 5:
                    avg_x = sum([d[0] for d in distances]) / len(distances)
                    avg_y = sum([d[1] for d in distances]) / len(distances)
                    print(f"Average X: {avg_x}, Average Y: {avg_y}")
                    log_coordinates_to_database(session_id, avg_x, avg_y)
                    distances.clear()  # Reset after averaging
            else:
                # Wall detection and navigation if no key is detected
                facing_wall, _ = detect_walls(hsv, lower_wall, upper_wall)
                right_wall, _ = detect_walls(hsv, lower_wall, upper_wall)
                navigate_maze(facing_wall, right_wall)

            time.sleep(1)
    finally:
        camera.stop()

if __name__ == "__main__":
    main()
# initiate focal length
# 
#while(key not found)
#   scan for colour // 
#   if colour is pink, key = found, post coordinates
#   if colour is blue
#       turn 90 degrees
#       scan for colour
#       if pink, get key
#       if blue, turn 180
#    drive 
#    wait(1)
