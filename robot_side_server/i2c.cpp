#include <iostream>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <linux/i2c-dev.h>

#define I2C_DEV "/dev/i2c-1"
#define ESP32_I2C_ADDRESS 0x08

int main() {
    int file;
    if ((file = open(I2C_DEV, O_RDWR)) < 0) {
        std::cerr << "Failed to open the i2c bus" << std::endl;
        return 1;
    }

    if (ioctl(file, I2C_SLAVE, ESP32_I2C_ADDRESS) < 0) {
        std::cerr << "Failed to acquire bus access and/or talk to slave" << std::endl;
        return 1;
    }

    char buffer[2] = {0x01, 0x02}; // Example data to send
    if (write(file, buffer, 2) != 2) {
        std::cerr << "Failed to write to the i2c bus" << std::endl;
        return 1;
    }

    std::cout << "Data sent to ESP32" << std::endl;

    close(file);
    return 0;
}
