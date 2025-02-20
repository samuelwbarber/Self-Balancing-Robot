#include <iostream>
#include <fcntl.h>
#include <termios.h>
#include <cstring>
#include <unistd.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <sys/mman.h>
#include <fcntl.h>

const char *device = "/dev/ttyS0"; // UART device on Raspberry Pi

void write_to_shared_memory(const std::string& message) {
    // Size of the shared memory
    const int size = 1024;

    // Open a shared memory object
    int fd = shm_open("/cpp_to_python_shm", O_CREAT | O_RDWR, 0666);
    if (fd == -1) {
        perror("shm_open");
        return;
    }

    // Set the size of the shared memory
    if (ftruncate(fd, size) == -1) {
        perror("ftruncate");
        close(fd);
        return;
    }

    // Memory-map the shared memory object
    char* data = (char*)mmap(0, size, PROT_WRITE, MAP_SHARED, fd, 0);
    if (data == MAP_FAILED) {
        perror("mmap");
        close(fd);
        return;
    }

    // Clear the shared memory
    memset(data, 0, size);

    // Write the message to the shared memory
    strncpy(data, message.c_str(), size - 1);

    // Unmap the shared memory
    if (munmap(data, size) == -1) {
        perror("munmap");
    }

    // Close the file descriptor
    if (close(fd) == -1) {
        perror("close");
    }
}

const char* read_from_shared_memory() {
    // Size of the shared memory
    const int size = 1024;

    // Open the shared memory object
    int fd = shm_open("/testshm", O_RDONLY, 0666);
    if (fd == -1) {
        perror("shm_open");
        return nullptr;
    }

    // Memory-map the shared memory object
    char* data = (char*)mmap(0, size, PROT_READ, MAP_SHARED, fd, 0);
    if (data == MAP_FAILED) {
        perror("mmap");
        close(fd);
        return nullptr;
    }

    // Duplicate the data to ensure it persists after the function returns
    char* message = strdup(data);

    // Unmap the shared memory
    if (munmap(data, size) == -1) {
        perror("munmap");
    }

    // Close the file descriptor
    if (close(fd) == -1) {
        perror("close");
    }

    // Unlink the shared memory object
    if (shm_unlink("/testshm") == -1) {
        perror("shm_unlink");
    }

    return message;
}

void UART_send_char(const char *action) {
    int uart_fd = open(device, O_RDWR | O_NOCTTY | O_NDELAY);
    if (uart_fd == -1) {
        std::cerr << "Error: Unable to open UART device" << std::endl;
        return;
    }

    struct termios options;
    tcgetattr(uart_fd, &options);
    cfsetospeed(&options, B115200); // Set baud rate to 115200
    cfsetispeed(&options, B115200);
    options.c_cflag |= (CLOCAL | CREAD); // Enable the receiver and set local mode
    options.c_cflag &= ~PARENB; // Disable parity
    options.c_cflag &= ~CSTOPB; // Set one stop bit
    options.c_cflag &= ~CSIZE; // Mask the character size bits
    options.c_cflag |= CS8; // Set 8 data bits

    tcsetattr(uart_fd, TCSANOW, &options); // Apply the settings

    // Write message to UART
    int bytes_written = write(uart_fd, action, strlen(action));
    if (bytes_written < 0) {
        std::cerr << "Error writing to UART" << std::endl;
    }

    close(uart_fd);
}





void UART_send_string(const char *action) {
    int uart_fd = open(device, O_RDWR | O_NOCTTY | O_NDELAY);
    if (uart_fd == -1) {
        std::cerr << "Error: Unable to open UART device" << std::endl;
        return;
    }

    struct termios options;
    tcgetattr(uart_fd, &options);
    cfsetospeed(&options, B115200);
    cfsetispeed(&options, B115200);
    options.c_cflag |= (CLOCAL | CREAD);
    options.c_cflag &= ~PARENB;
    options.c_cflag &= ~CSTOPB;
    options.c_cflag &= ~CSIZE;
    options.c_cflag |= CS8;

    tcsetattr(uart_fd, TCSANOW, &options);

    int bytes_written = write(uart_fd, action, strlen(action));
    if (bytes_written < 0) {
        std::cerr << "Error writing to UART" << std::endl;
    }

    close(uart_fd);
}




void send_destination(int x, int y){
    const int bufferSize = 25; // 10+10+4+1 size needed for buffer
    char* result = new char[bufferSize];
    snprintf(result, bufferSize, "X%dY%d", x, y);
    UART_send_string(result);
}

void decode(int code, int controller_socket) {
    switch (code) {
        case 1:
            std::cout << "SPIN LEFT" << std::endl;
            UART_send_char("A");
            break;
        case 2:
            std::cout << "SPIN RIGHT" << std::endl;
            UART_send_char("C");
            break;
        case 3:
            std::cout << "FORWARD" << std::endl;
            UART_send_char("F");
	    //UART_send_int(69);
	    //UART_send_string("X100Y400");
            break;
        case 4:
            std::cout << "BACKWARDS" << std::endl;
            //UART_send_char("R");
            UART_send_string(read_from_shared_memory());
            //UART_send_string("hello");
            break;
        case 5:
            std::cout << "STOP" << std::endl;
            UART_send_char("S");
            break;
        case 6:
            std::cout << "DISCONNECT" << std::endl;
            //TCP_close(controller_socket);
            UART_send_char("S");
            break;
	case 7:
	    send_destination(123,423);
	    std::cout << "Go to X 123 Y 423" << std::endl;
        default:
            std::cerr << "Invalid code received" << std::endl;
    }
}



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
        decode(received_number, controller_socket);
    }

    // Convert from network byte order to host byte order
    // received_number = ntohl(received_number);
    close(local_socket);
    return received_number;
}

int main() {
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
