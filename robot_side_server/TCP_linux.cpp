#include <iostream>
#include <cstring>
#include <unistd.h>
#include <pigpio.h>
#include <arpa/inet.h>
#include <sys/socket.h>

#define I2C_ADDRESS 0x04 // initialising esp32 address

int TCP_listen(int local_port) {
    std::cout << "We're in TCP server..." << std::endl;

    // Create welcome socket
    int controller_socket = socket(AF_INET, SOCK_STREAM, 0);
    if (controller_socket == -1) { // If socket creation fails, print error message and exit
        std::cerr << "Socket creation failed" << std::endl;
    }

    // Bind server to local host at port server_port (13000)
    sockaddr_in server_addr;
    std::memset(&server_addr, 0, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = INADDR_ANY; // Accept connections from any IP address this may need to be changed if we want to make it more secure
    server_addr.sin_port = htons(local_port);

    if (bind(controller_socket, reinterpret_cast<sockaddr*>(&server_addr), sizeof(server_addr)) == -1) {
        // If bind fails, print error message and exit
        std::cerr << "Bind failed" << std::endl;
    }

    listen(controller_socket, 1);

    // Message to indicate that server is running
    std::cout << "Server running on port " << local_port << std::endl;
    return controller_socket;
}

void TCP_close(int controller_socket) {
	close(controller_socket);
}

int TCP_receive_code(int controller_socket) {
    sockaddr_in client_addr; // Client address
    socklen_t client_len = sizeof(client_addr);

    int local_socket = accept(controller_socket, reinterpret_cast<sockaddr*>(&client_addr), &client_len); // Accept the connection

    if (local_socket == -1) {
        std::cerr << "Error accepting connection" << std::endl;
        return 1;
    }
    uint32_t received_number;
    //processed_number = htonl(processed_number);
    while (true) {
        std::cout << "Waiting for data..." << std::endl;
        // Buffer to hold the received 32-bit unsigned integer
        int bytes_received = recv(local_socket, &received_number, sizeof(received_number), 0);
        if (bytes_received <= 0) { // Error receiving data or client closed connection
            break;
        }
    }

        // Convert from network byte order to host byte order
        // received_number = ntohl(received_number);
        std::cout << "Received number: " << received_number << std::endl;
        close(local_socket);
        return received_number;

}
/*
void TCP_send_code(int controller_socket){

}

void encode(int code, int controller_socket) {
    int batteryinfo = code;
    return batteryinfo;
}

void decode(int code, int controller_socket) {

    switch (code) {
    case 1:
        std::cout << "SPIN LEFT" << std::endl;
        writeData(handle, 0x00);
        break;
    case 2:
        std::cout << "SPIN RIGHT" << std::endl;
        writeData(handle, 0x01);
        break;
    case 3:
        std::cout << "FORWARD" << std::endl;
        writeData(handle, 0x02);
        break;
    case 4:
        std::cout << "BACKWARDS" << std::endl;
        writeData(handle, 0x03);
        break;
    case 5:
        std::cout << "STOP" << std::endl;
        writeData(handle, 0x04);
        break;
    case 6:
        std::cout << "DISCONNECT" << std::endl;
        TCP_close(handle);
        break;
    default:
        std::cerr << "Invalid code received" << std::endl;
    }
}
*/

int openI2CBus(int bus, int address) {
    int handle = i2cOpen(bus, address, 0);
    if (handle < 0) {
        std::cerr << "Failed to open I2C bus.\n";
    }
    return handle;
}

void writeData(int handle, uint8_t message ) {
    i2cWriteByte(handle, message);
}

uint8_t readData(int handle) {
    return i2cReadByte(handle);
}

void closeI2CBus(int handle) {
    i2cClose(handle);
}


int main(){
    std::cout << "Starting server..." << std::endl;

    if (gpioInitialise() < 0) {
        std::cerr << "pigpio initialization failed.\n";
        return -1;
    }

    int controller_socket = TCP_listen(13000);
    if (controller_socket == -1) {
        gpioTerminate();
        return -1;
    }

    int handle = openI2CBus(1, I2C_ADDRESS);
    if (handle < 0) {
        TCP_close(controller_socket);
        gpioTerminate();
        return -1;
    }

    int code = 0;
    while (code =! 6) {
        int controller_socket = TCP_listen(13000);
        int code = TCP_receive_code(controller_socket);
        writeData(handle, code);
    }

    closeI2CBus(handle);
    gpioTerminate();
    return 0;
}
