import cv2
import numpy as np
import mmap
import os
import time
from picamera2 import Picamera2
import mysql.connector
from mysql.connector import Error
import datetime

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

def log_coordinates_to_database(session_id, x_coord, y_coord):
    try:
        connection = mysql.connector.connect(
            host='ec2-3-8-166-39.eu-west-2.compute.amazonaws.com',
            database='RobotData',
            user='flamingo@%',
            password='Flamingo2024'
        )
        if connection.is_connected():
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
        if connection and connection.is_connected():
            cursor.close()
            connection.close()

def main():
    # Setup camera
    camera = Picamera2()
    video_config = camera.create_video_configuration(main={"format": "XRGB8888", "size": (640, 480)})
    camera.configure(video_config)
    camera.start()

    KNOWN_DISTANCE_BETWEEN_OBJECTS = 4.8  
    KNOWN_DISTANCE_TO_KEY = 53
    CAMERA_HEIGHT = 30  
    CAMERA_TILT_ANGLE = 45 

    # Calculate initial focal length
    ref_image = cv2.imread('ref_image3.jpg')
    focal_length = None
    if ref_image is None:
        print("Failed to read the image.")
    else:
        hsv_ref = cv2.cvtColor(ref_image, cv2.COLOR_BGR2HSV)
        lower_pink = np.array([18, 30, 150])
        upper_pink = np.array([25, 50, 180])
        mask_ref = cv2.inRange(hsv_ref, lower_pink, upper_pink)
        centroids_ref = find_centroids(mask_ref)
        if len(centroids_ref) >= 2:
            centroid1_ref = centroids_ref[0]
            centroid2_ref = centroids_ref[1]
            D_pixels_ref = np.sqrt((centroid1_ref[0] - centroid2_ref[0]) ** 2 + (centroid1_ref[1] - centroid2_ref[1]) ** 2)
            focal_length = (D_pixels_ref * KNOWN_DISTANCE_TO_KEY) / KNOWN_DISTANCE_BETWEEN_OBJECTS
            print(f"Focal length: {focal_length}")
        else:
            print("Not enough centroids found in the reference image to calculate focal length.")

    session_id = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    distances = []
    try:
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
                    log_coordinates_to_database(session_id, average_distance_y, average_distance_x)
                    distances = []  # Reset the list for new data
                time.sleep(3)
    finally:
        camera.stop()

if __name__ == "__main__":
    main()
