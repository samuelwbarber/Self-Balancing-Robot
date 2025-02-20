#include <iostream>
#include <vector>
#include <cstring>
#include <unistd.h>
#include <arpa/inet.h>

struct PackedBattery {
    int battery;
    int logic;
    int motors;
    int regulator;
    int x;
    int y;
};

// std::vector<PackedBattery> generateFakeData() {
//     // Generate 20 packed data points
//     std::vector<PackedBattery> data;
//     for (int i = 0; i < 20; ++i) {
//         PackedBattery point = {
//             rand() % 11734,       // Random battery value
//             rand() % 11734,       // Random logic value
//             rand() % 11734,       // Random motors value
//             rand() % 11734,       // Random regulator value
//             100 + i * 10,       // Simulate reasonable x coordinate
//             100 + i * 5         // Simulate reasonable y coordinate
//         };
//         data.push_back(point);
//     }
//     return data;
// }

std::vector<PackedBattery> generateFakeData() {
    std::vector<PackedBattery> data = {
    {1313, 5833, 9301, 9955, 50, 50},
    {9007, 8622, 1725, 7128, 220, 50},
    {2759, 4838, 8318, 8624, 220, 240},
    {7078, 941, 3402, 435, 120, 240},
    {4186, 1067, 3160, 725, 120, 360},
    {2599, 9780, 8351, 3515, 20, 360},
    {2417, 7904, 8426, 7031, 20, 120},
    {8418, 8798, 3559, 6810, 50, 120},
    {1400, 7431, 8176, 6327, 50, 150},
    {8585, 6224, 5931, 8396, 160, 150},
    {986, 2734, 2255, 7139, 160, 130},
    {3073, 3790, 3143, 8603, 200, 130},
    {4346, 8474, 5459, 2302, 225, 130},
    {1874, 9359, 7802, 2996, 225, 110},
    {932, 3486, 3660, 1256, 100, 110},
    {7842, 7627, 3444, 8231, 100, 20},
    {4337, 3756, 4722, 1353, 27, 20},
    {2342, 701, 871, 7546, 27, 8},
    {2251, 6454, 6344, 8642, 8, 8},
    {2359, 6744, 5428, 2764, 8, 0}
};
    return data;
}

void sendData(int clientSocket, const std::vector<PackedBattery>& data) {
    for (const auto& point : data) {
        // Send each data point
        if (send(clientSocket, &point, sizeof(point), 0) < 0) {
            std::cerr << "Failed to send data" << std::endl;
            return;
        }
        std::cout << "Data sent = " << point.battery << " " << point.logic << " " << point.motors << " " << point.regulator << " " << point.x << " " << point.y << std::endl;
        usleep(500000); // Sleep for 500ms to simulate live data updates
    }
    PackedBattery terminate = {12000, 12000, 12000, 12000, 12000, 12000};
    if (send(clientSocket, &terminate, sizeof(terminate), 0) < 0) {
        std::cerr << "Failed to send termination data" << std::endl;
        return;
    }
    std::cout << "Termination data sent" << std::endl;
}

int main() {
    int serverSocket, clientSocket;
    struct sockaddr_in serverAddr, clientAddr;
    socklen_t addr_size;
    int port = 3001;

    // Create the socket
    serverSocket = socket(AF_INET, SOCK_STREAM, 0);
    if (serverSocket < 0) {
        std::cerr << "Error in socket creation" << std::endl;
        return -1;
    }

    // Configure settings of the server address struct
    serverAddr.sin_family = AF_INET;
    serverAddr.sin_port = htons(port);
    serverAddr.sin_addr.s_addr = INADDR_ANY;
    memset(serverAddr.sin_zero, '\0', sizeof serverAddr.sin_zero);

    // Bind the address struct to the socket
    if (bind(serverSocket, (struct sockaddr *)&serverAddr, sizeof(serverAddr)) != 0) {
        std::cerr << "Error on binding" << std::endl;
        return -1;
    }

    // Listen on the socket, with 5 max connection requests queued
    if (listen(serverSocket, 5) != 0) {
        std::cerr << "Error on listening" << std::endl;
        return -1;
    }

    addr_size = sizeof(clientAddr);
    std::cout << "Waiting for connections..." << std::endl;

    // Accept call creates a new socket for the incoming connection
    clientSocket = accept(serverSocket, (struct sockaddr *)&clientAddr, &addr_size);
    if (clientSocket < 0) {
        std::cerr << "Error on accepting connection" << std::endl;
        return -1;
    }
    std::cout << "Connection accepted" << std::endl;

    // Receive the code
    uint8_t code;
    if (recv(clientSocket, &code, sizeof(code), 0) < 0) {
        std::cerr << "Failed to receive code" << std::endl;
        return -1;
    }
    std::cout << "Received code: " << static_cast<int>(code) << std::endl;

    // If the code is 1 or 2, start sending data
    if (code == 1 || code == 2) {
        std::cout << "Sending data..." << std::endl;
        std::vector<PackedBattery> data = generateFakeData();
        sendData(clientSocket, data);
    } else {
        std::cout << "Invalid code received. Exiting..." << std::endl;
    }

    // Close the socket
    std::cout << "Closing connection..." << std::endl;
    close(clientSocket);
    close(serverSocket);
    std::cout << "Connection closed" << std::endl;

    return 0;
}
