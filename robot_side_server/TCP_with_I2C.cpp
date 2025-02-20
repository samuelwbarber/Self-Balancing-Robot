#include <iostream>
#include <linux/i2c-dev.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <cstring>
#include <unistd.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <thread>
#include <chrono>
#include <vector>

const int ESP32_I2C_ADDR = 0x04;
const char *device = "/dev/i2c-1";
int file_i2c = open(device, O_RDWR);

struct PackedBattery {
    int supply;
    int logic;
    int motors;
    int x;
    int y;
};

void I2C_send(std::string action) {
    char buffer[32];
    std::strncpy(buffer, action.c_str(), sizeof(buffer));
    buffer[sizeof(buffer) - 1] = 0;
    if (write(file_i2c, buffer, std::strlen(buffer)) != std::strlen(buffer)) {
        std::cerr << "Failed to write to the I2C bus." << std::endl;
    }
    std::cout << "Command sent: " << buffer << std::endl;
}

void decode(int code, int controller_socket) {
    switch (code) {
    case 1:
        std::cout << "SPIN LEFT" << std::endl;
        // I2C_send("A");
        break;
    case 2:
        std::cout << "SPIN RIGHT" << std::endl;
        // I2C_send("C");
        break;
    case 3:
        std::cout << "FORWARD" << std::endl;
        // I2C_send("F");
        break;
    case 4:
        std::cout << "BACKWARDS" << std::endl;
        // I2C_send("R");
        break;
    case 5:
        std::cout << "STOP" << std::endl;
        // I2C_send("S");
        break;
    case 6:
        std::cout << "DISCONNECT" << std::endl;
        // TCP_close(controller_socket);
        // I2C_send("S");
        break;
    default:
        std::cerr << "Invalid code received" << std::endl;
    }
}

int TCP_listen(int local_port) {
    std::cout << "We're in TCP server..." << std::endl;

    int controller_socket = socket(AF_INET, SOCK_STREAM, 0);
    if (controller_socket == -1) {
        std::cerr << "Socket creation failed" << std::endl;
    }

    sockaddr_in server_addr;
    std::memset(&server_addr, 0, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = INADDR_ANY;
    server_addr.sin_port = htons(local_port);

    if (bind(controller_socket, reinterpret_cast<sockaddr*>(&server_addr), sizeof(server_addr)) == -1) {
        std::cerr << "Bind failed" << std::endl;
    }

    listen(controller_socket, 1);

    std::cout << "Server running on port " << local_port << std::endl;
    return controller_socket;
}

void TCP_close(int controller_socket) {
    close(controller_socket);
}

void TCP_send_battery(int local_socket, int supply, int logic, int motors, int x, int y) {
    PackedBattery packed_battery;
    packed_battery.supply = supply;
    packed_battery.logic = logic;
    packed_battery.motors = motors;
    std::vector<int> map_x = {1, 10, 10, 1, 40, 40, 1};
    std::vector<int> map_y = {1, 1, 20, 20, 20, 1, 1};
    int i = 0;
    while (true){
        if (send(local_socket, &packed_battery, sizeof(packed_battery), 0) == -1) {
            std::cout << "Error sending battery data" << std::endl;            
        }
        else{
            packed_battery.x = map_x[i];
            packed_battery.y = map_y[i];
            if (i == map_x.size()){i = 0;}
            else{i++;}
            if (packed_battery.supply > 0){packed_battery.supply -= 1;}
            else{packed_battery.supply = 100;}
            if (packed_battery.logic > 3){packed_battery.logic -= 2;}
            else{packed_battery.logic = 100;}
            if (packed_battery.motors > 4){packed_battery.motors -= 3;}
            else{packed_battery.motors = 100;}

            std::this_thread::sleep_for(std::chrono::milliseconds(1500));  
            std::cout << "data sent = " << packed_battery.supply << " " << packed_battery.logic << " " << packed_battery.motors << " " << packed_battery.x << " " << packed_battery.y  << std::endl;
        }
    }
}

int TCP_receive_code(int local_socket){
    int received_number;
    while (true) {
        std::cout << "Waiting for data..." << std::endl;
        int bytes_received = recv(local_socket, &received_number, sizeof(received_number), 0);
        if (bytes_received <= 0) {
            break;
        }
        //received_number = ntohl(received_number);
        std::cout << "Received number: " << received_number << std::endl;
        return received_number;
    }
    return -1; // Return -1 if there was an error or the connection was closed
}

void handle_connection(int local_socket) {
    while (true) {
        int code = TCP_receive_code(local_socket);
        decode(code, local_socket);
    }
    close(local_socket);
}

int main() {
    std::cout << "Starting server..." << std::endl;
    int supply = 100;
    int logic = 100;
    int motors = 100;
    int x = 1;
    int y = 1;

    int controller_socket = TCP_listen(13000);

    while (true) {
        std::cout << "Waiting for connection..." << std::endl;
        sockaddr_in client_addr;
        socklen_t client_len = sizeof(client_addr);
        int local_socket = accept(controller_socket, reinterpret_cast<sockaddr*>(&client_addr), &client_len);
        if (local_socket == -1) {
            std::cerr << "Error accepting connection" << std::endl;
            continue;
        }
        std::cout << "Connected" << std::endl;
        std::thread battery_thread(TCP_send_battery, local_socket, std::ref(supply), std::ref(logic), std::ref(motors), std::ref(x), std::ref(y));
        std::thread connection_thread(handle_connection, local_socket);
        connection_thread.detach(); // Detach the thread to handle the connection independently
        battery_thread.detach(); // Detach the thread to send battery data independently
    }

    TCP_close(controller_socket);
    std::cout << "Server closed" << std::endl;
    return 0;
}
