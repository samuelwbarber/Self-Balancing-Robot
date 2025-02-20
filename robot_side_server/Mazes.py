import cv2
import numpy as np
from picamera2 import Picamera2
import time

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
    theta_rad = np.deg2rad(theta)  # Convert angle to radians
    X_ground = x * np.cos(theta_rad)
    Y_ground = y * np.sin(theta_rad) - h
    return (X_ground, Y_ground)

def calculate_parallel_distances(centroid1, centroid2, h, theta):
    # Project both centroids onto the ground plane
    X1, Y1 = project_to_ground_plane(centroid1[0], centroid1[1], h, theta)
    X2, Y2 = project_to_ground_plane(centroid2[0], centroid2[1], h, theta)
    # Calculate the parallel distances
    x_distance = X2 - X1
    y_distance = Y2 - Y1
    return x_distance, y_distance

def calculate_distance(focal_length, real_distance, measured_distance):
    return (real_distance * focal_length) / measured_distance

def find_closest_pair(distances):
    min_distance = float('inf')
    closest_pair = None
    n = len(distances)
    for i in range(n):
        for j in range(i + 1, n):
            d = abs(distances[i] - distances[j])
            if d < min_distance:
                min_distance = d
                closest_pair = (distances[i], distances[j])
    return closest_pair

def scan_for_colours(camera, focal_length, KNOWN_DISTANCE_BETWEEN_OBJECTS, CAMERA_HEIGHT, CAMERA_TILT_ANGLE):
    global colour, distances
    distances = []
    found_key = False

    while len(distances) < 5:
        buffer = camera.capture_buffer("main")
        image = np.frombuffer(buffer, dtype=np.uint8).reshape((480, 640, 4))[:, :, :3]

        hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)

        lower_pink = np.array([164, 42, 139])  # Adjusted values
        upper_pink = np.array([179, 171, 255])
        lower_blue = np.array([100, 210, 215])
        upper_blue = np.array([135, 255, 255])

        pink_mask = cv2.inRange(hsv, lower_pink, upper_pink)
        blue_mask = cv2.inRange(hsv, lower_blue, upper_blue)

        pink_centroids = find_centroids(pink_mask)
        blue_centroids = find_centroids(blue_mask)

        if len(pink_centroids) >= 2:
            centroid1, centroid2 = pink_centroids[0], pink_centroids[1]
            colour = "pink"
        elif len(blue_centroids) >= 2:
            centroid1, centroid2 = blue_centroids[0], blue_centroids[1]
            colour = "blue"
        else:
            centroid1, centroid2 = None, None

        if centroid1 and centroid2:
            x_distance, y_distance = calculate_parallel_distances(centroid1, centroid2, CAMERA_HEIGHT, CAMERA_TILT_ANGLE)
            if focal_length is not None and 3 < abs(x_distance) <= 9:
                distance_to_colour = calculate_distance(focal_length / 270, KNOWN_DISTANCE_BETWEEN_OBJECTS, abs(x_distance))
                if distance_to_colour < 80:
                    distances.append((distance_to_colour, y_distance))

    if distances:
        closest_pair = find_closest_pair([d[0] for d in distances])
        if closest_pair:
            average_x_distance = sum(closest_pair) / len(closest_pair)
            average_y_distance = sum([d[1] for d in distances]) / len(distances)
            return average_x_distance, average_y_distance, colour
    return None, None, None

def main():
    global colour, distances, wall
    colour = None
    distances = []
    wall = None

    # Setup camera
    camera = Picamera2()
    video_config = camera.create_video_configuration(main={"format": "XRGB8888", "size": (640, 480)})
    camera.configure(video_config)
    camera.start()

    KNOWN_DISTANCE_BETWEEN_OBJECTS = 4.8  
    KNOWN_DISTANCE_TO_KEY = 53
    CAMERA_HEIGHT = 30  
    CAMERA_TILT_ANGLE = 45 

    ref_image = cv2.imread('ref_image3.jpg')

    if ref_image is None:
        print("Failed to read the image.")
        return
    else:
        height, width, channels = ref_image.shape
        print(f"Image dimensions: Height = {height}, Width = {width}, Channels = {channels}")

        hsv_ref = cv2.cvtColor(ref_image, cv2.COLOR_BGR2HSV)
        lower_pink = np.array([18, 30, 150])  # Adjusted values
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

    while True:
        average_x_distance, average_y_distance, colour = scan_for_colours(camera, focal_length, KNOWN_DISTANCE_BETWEEN_OBJECTS, CAMERA_HEIGHT, CAMERA_TILT_ANGLE)
        if average_x_distance is not None:
            if colour == "pink":
                print(f"Average horizontal (x-axis) distance to key: {average_x_distance:.2f} cm")
                print(f"Average depth (y-axis) distance to key: {average_y_distance:.2f} cm")
                # Code to go get the key
            elif colour == "blue":
                print(f"Average horizontal (x-axis) distance to wall: {average_x_distance:.2f} cm")
                print(f"Average depth (y-axis) distance to wall: {average_y_distance:.2f} cm")
                while average_x_distance > 20:
                    print("Drive until 20 cm away")
                    average_x_distance, average_y_distance, colour = scan_for_colours(camera, focal_length, KNOWN_DISTANCE_BETWEEN_OBJECTS, CAMERA_HEIGHT, CAMERA_TILT_ANGLE)
                print("Turn 90 degrees right")

                average_x_distance, average_y_distance, colour = scan_for_colours(camera, focal_length, KNOWN_DISTANCE_BETWEEN_OBJECTS, CAMERA_HEIGHT, CAMERA_TILT_ANGLE)
                if colour == "blue" and average_x_distance <= 20:
                    print("Turn 180 degrees")
                    # Code to turn 180 degrees
                print("Go straight")
                # Drive forward 

if __name__ == "__main__":
    main()
