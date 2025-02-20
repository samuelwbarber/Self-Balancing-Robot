#include <iostream>
#include <cppconn/driver.h>
#include <cppconn/connection.h>
#include <cppconn/statement.h>
#include <cppconn/resultset.h>
#include <cppconn/prepared_statement.h>

int main() {
    try {
        sql::Driver* driver = get_driver_instance();
        std::unique_ptr<sql::Connection> con(driver->connect("ec2-3-8-166-39.eu-west-2.compute.amazonaws.com", "root", "Flamingo2024"));
        con->setSchema("RobotData");

        std::unique_ptr<sql::PreparedStatement> pstmt;
        pstmt.reset(con->prepareStatement("INSERT INTO DataPoints (timestamp, sessionID, x_position, y_position, battery_voltage, regulator_voltage, logic_current, motor_current) VALUES (NOW(), ?, ?, ?, ?, ?, ?, ?)"));
        pstmt->setString(1, "2024-06-19 12:00:00");  // sessionID
        pstmt->setInt(2, 100);  // x_position
        pstmt->setInt(3, 200);  // y_position
        pstmt->setInt(4, 12);   // battery_voltage
        pstmt->setInt(5, 5);    // regulator_voltage
        pstmt->setInt(6, 1);    // logic_current
        pstmt->setInt(7, 2);    // motor_current
        pstmt->executeUpdate();

        std::cout << "Data inserted successfully." << std::endl;
    } catch (sql::SQLException &e) {
        std::cerr << "SQLException: " << e.what();
        std::cerr << " (MySQL error code: " << e.getErrorCode();
        std::cerr << ", SQLState: " << e.getSQLState() << " )" << std::endl;
    }

    return 0;
}
