import cv2
import numpy as np
import mmap
import os
from picamera2 import Picamera2

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

def read_from_shared_memory():
    # Size of the shared memory
    size = 1024
    
    # Open a file descriptor
    fd = os.open('/dev/shm/cpp_to_python_shm', os.O_RDONLY)
    
    # Memory-map the file
    with mmap.mmap(fd, size, access=mmap.ACCESS_READ) as m:
        # Read from the shared memory
        m.seek(0)
        message = m.read(size).rstrip(b'\x00').decode('utf-8')
    
    # Close the file descriptor
    os.close(fd)
    
    return message

def nothing(x):
    pass

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
    # Project the point onto the ground plane
    X_ground = x * np.cos(theta_rad)
    Y_ground = y * np.sin(theta_rad) - h
    return (X_ground, Y_ground)

def calculate_adjusted_distance(centroid1, centroid2, h, theta):
    # Project both centroids onto the ground plane
    X1, Y1 = project_to_ground_plane(centroid1[0], centroid1[1], h, theta)
    X2, Y2 = project_to_ground_plane(centroid2[0], centroid2[1], h, theta)
    # Calculate the Euclidean distance between the projected points
    adjusted_distance = np.sqrt((X2 - X1)**2 + (Y2 - Y1)**2)
    return adjusted_distance, (X1, Y1), (X2, Y2)

def calculate_distance(focal_length, real_distance, measured_distance):
    return (real_distance * focal_length) / measured_distance

def find_closest_pair(distances):
    min_distance = float('inf')
    closest_pair = None
    n = len(distances)
    for i in range(n):
        for j in range(i + 1, n):
            d = abs(distances[i][1] - distances[j][1])
            if d < min_distance:
                min_distance = d
                closest_pair = (distances[i], distances[j])
    return closest_pair

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

distances = []
try:
        while len(distances) < 5:
            # Capture frame-by-frame into a buffer
            buffer = camera.capture_buffer("main")
            image = np.frombuffer(buffer, dtype=np.uint8).reshape((480, 640, 4))[:, :, :3] # adjust this to be the actual dimenentions of the code
            # Convert the image to HSV
            hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)

            lower_pink = np.array([164, 42, 139])  # Adjusted values
            upper_pink = np.array([179, 171, 255])
            
            ### pink
            mask = cv2.inRange(hsv, lower_pink, upper_pink)
            centroids = find_centroids(mask)
            if len(centroids) >= 2:
                centroid1, centroid2 = centroids[0], centroids[1]
                if centroid1 and centroid2:
                    #print(f"Drawing circle at: {centroid1} and {centroid2}")  # Debug print to check centroid values
                    cv2.circle(buffer, centroid1, 10, (0, 255, 0), -1)
                    cv2.circle(buffer, centroid2, 10, (0, 255, 0), -1)
                    adjusted_distance, (X1, Y1), (X2, Y2) = calculate_adjusted_distance((centroid1[0], centroid1[1]), (centroid2[0], centroid2[1]), CAMERA_HEIGHT, CAMERA_TILT_ANGLE)
                    
                    if ((focal_length is not None) & (0 < adjusted_distance <= 10 )):
                        distance_to_key_y = calculate_distance(focal_length / 170, KNOWN_DISTANCE_BETWEEN_OBJECTS, adjusted_distance)
                        distance_to_key_x = (X2 - X1) 

                        if(distance_to_key_y < 60):
                            #print(f"Distance to key (Y-axis): {distance_to_key_y:.2f} cm")
                            #print(f"Distance to key (X-axis): {distance_to_key_x:.2f} cm") 
                            distances.append((int(distance_to_key_x), int(distance_to_key_y)))     
finally:
        #camera.stop() # might need to be moved 
        
        closest_pair = find_closest_pair(distances)
        if closest_pair:
            average_distance_y = sum([d[1] for d in closest_pair]) / len(closest_pair)
            average_distance_x = sum([d[0] for d in closest_pair]) / len(closest_pair)
            #print(f"Distances found: {distances}")
            #print(f"Closest pair of distances: {closest_pair}")
            #print(f"Average distance to key (Y-axis): {average_distance_y:.0f} cm")
            #print(f"Average distance to key (X-axis): {average_distance_x:.0f} cm")
            
            y_coord = f"Y{int(average_distance_y):03d}"
            x_coord = f"X{'+' if average_distance_x >= 0 else ''}{int(average_distance_x):0d}"
            coordinate_write = f"{y_coord}{x_coord}"
            print(coordinate_write)
            write_to_shared_memory(coordinate_write)
            
            
