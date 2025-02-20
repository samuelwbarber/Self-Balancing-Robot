#include <iostream>
#include <cstring>
#include <unistd.h>
#include <arpa/inet.h>
#include <sys/socket.h>

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
    received_number = htonl(received_number);
    while (true) {
        std::cout << "Waiting for data..." << std::endl;
        // Buffer to hold the received 32-bit unsigned integer
        int bytes_received = recv(local_socket, &received_number, sizeof(received_number), 0);
        if (bytes_received <= 0) { // Error receiving data or client closed connection
            break;
        }
        std::cout << "Received number: " << received_number << std::endl;

    }

        // Convert from network byte order to host byte order
        // received_number = ntohl(received_number);
        close(local_socket);
        return received_number;
}

void decode(int code, int controller_socket) {

    switch (code) {
    case 1:
        std::cout << "SPIN LEFT" << std::endl;
        //put function here
        break;
    case 2:
        std::cout << "SPIN RIGHT" << std::endl;
        //put function here
        break;
    case 3:
        std::cout << "FORWARD" << std::endl;
        //put function here
        break;
    case 4:
        std::cout << "BACKWARDS" << std::endl;
        //put function here
        break;
    case 5:
        std::cout << "STOP" << std::endl;
        //put function here
        break;
    case 6:
		std::cout << "DISCONECT" << std::endl;
        TCP_close(controller_socket);
		break;
    default:
        std::cerr << "Invalid code received" << std::endl;
    }
}


int main(){
    std::cout << "Starting server..." << std::endl;
    int code = 0;
    while (code != 6) {
        std::cout << "Waiting for connection..." << std::endl;
        int controller_socket = TCP_listen(13000);
        int code = TCP_receive_code(controller_socket);
        decode(code, controller_socket);
    }
    std::cout << "Server closed" << std::endl;
    return 0;
}