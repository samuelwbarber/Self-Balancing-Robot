using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;


namespace Desktop_Controller
{
    public partial class Sql : Form
    {
        public Sql()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string connectionString = "server=database-12.cz28ms04g0fu.eu-west-2.rds.amazonaws.com;user=admin;database=database-12;port=3306;password=BalanceBot12";
            MySqlConnection connection = new MySqlConnection(connectionString);
            //string command = textBox1.Text;

            try
            {
                // Open the connection
                connection.Open();
                Console.WriteLine("Connection successful!");

                // Define the CREATE TABLE query
                string createTableQuery = @"
INSERT INTO your_table_name (email, Name) values ('sam@gmail.com','sam')";
                // Create a MySqlCommand object
                MySqlCommand command = new MySqlCommand(createTableQuery, connection);

                // Execute the command
                command.ExecuteNonQuery();
                Console.WriteLine("Table created successfully!");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"An error occurred: {ex.Message}");
            }
            finally
            {
                // Close the connection
                connection.Close();
                Console.WriteLine("Connection closed.");
            }

        }
    }
}
