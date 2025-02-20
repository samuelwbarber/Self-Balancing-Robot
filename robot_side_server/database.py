import mysql.connector
from mysql.connector import Error
import datetime

def main():
    connection = None
    try:
        # Establish connection
        connection = mysql.connector.connect(
            host='ec2-3-8-166-39.eu-west-2.compute.amazonaws.com',
            database='RobotData',
            user='flamingo@%',
            password='Flamingo2024'
        )
        print("Successfully connected to MySQL server")
        
        # Cursor to execute queries
        cursor = connection.cursor()

        # Insert a new session
        now = datetime.datetime.now()
        session_id = now.strftime('%Y-%m-%d %H:%M:%S')  # Unique session ID based on current time
        robot_id = 1  # Example robot ID
        insert_session_query = """
        INSERT INTO Sessions (sessionID, robotID)
        VALUES (%s, %s)
        """
        cursor.execute(insert_session_query, (session_id, robot_id))

        # Insert data points related to the session
        data_point_query = """
        INSERT INTO DataPoints (timestamp, sessionID, x_position, y_position, battery_voltage, regulator_voltage, logic_current, motor_current)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
        """
        # Example data point
        timestamp = datetime.datetime.now()  # Current time as timestamp
        x_position = 100
        y_position = 200
        battery_voltage = 12
        regulator_voltage = 5
        logic_current = 1
        motor_current = 2

        cursor.execute(data_point_query, (timestamp, session_id, x_position, y_position, battery_voltage, regulator_voltage, logic_current, motor_current))

        # Commit changes
        connection.commit()
        print("Data inserted successfully")

    except Error as e:
        print("Error while connecting to MySQL:", e)

    finally:
        if connection and connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed")

if __name__ == "__main__":
    main()
