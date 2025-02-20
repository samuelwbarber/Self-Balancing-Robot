using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Text.RegularExpressions;
using System.Threading;
using MySqlX.XDevAPI;
using System.Net.Sockets;

namespace Desktop_Controller
{
    public partial class Connection1 : Form
    {
        private TcpClient client = new TcpClient(); 
      private async Task ConnectToServer(string serverIp, int port)
        {
            try
            {
                await client.ConnectAsync(serverIp, port);
                MessageBox.Show("Connected to the Flamingo!");
            }
            catch (SocketException ex)
            {
                if (ex.SocketErrorCode == SocketError.TimedOut)
                {
                    MessageBox.Show("IP not found", "Connection Error (Timeout)", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    MessageBox.Show("Connection error: " + ex.Message, "Connection Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        public Connection1()
        {
            InitializeComponent();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void progressBar1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string ip = IP.Text;
            if (IsValidIpAddress(ip))
            {
                if (IsValidPortNumber(Port.Text)) {
                    for (int i = 0; i < 101; i++)
                    {
                        Thread.Sleep(1);
                        progressBar.Value = i;
                    }
                    progressBar.Value = 0;
                    Task.Run(async () => await ConnectToServer(ip, 13000)).Wait();
                    Controller connection = new Controller(client);
                    connection.Show();
                    this.Hide();
                }
                else
                {
                    MessageBox.Show("Port out of range", "Connection Error",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                MessageBox.Show("Invalid IP", "Connection Error",
                MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private static bool IsValidPortNumber(string portNumber)
        {
            string portPattern = @"^([0-9]{1,5})$";
            Regex portRegex = new Regex(portPattern);

            if (portRegex.IsMatch(portNumber))
            {
                int port = int.Parse(portNumber);
                if (port >= 0 && port <= 65535)
                {
                    return true;
                }
            }
            return false;
        }

        //Regexes taken from 23/05/24: https://www.allinterview.com/viewpost/161888/ip-pattern-r-b-25-0-5-2-0-4-0-9-01-0-9-0-9-3-25-0-5-2-0-4-0-9-01-0-9-0-9-b.html
        private static bool IsValidIpAddress(string ipAddress)
        {
            string ipv4Pattern = @"^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\." +
                                 @"(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\." +
                                 @"(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\." +
                                 @"(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$";

            string ipv6Pattern = @"^(([0-9a-fA-F]{1,4}:){7}([0-9a-fA-F]{1,4}|:)|" +
                                 @"([0-9a-fA-F]{1,4}:){1,7}:|" +
                                 @"([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|" +
                                 @"([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|" +
                                 @"([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|" +
                                 @"([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|" +
                                 @"([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|" +
                                 @"[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|" +
                                 @":((:[0-9a-fA-F]{1,4}){1,7}|:)|" +
                                 @"fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|" +
                                 @"::(ffff(:0{1,4}){0,1}:){0,1}" +
                                 @"(([0-9]{1,3}\.){3}[0-9]{1,3})|" +
                                 @"([0-9a-fA-F]{1,4}:){1,4}:" +
                                 @"(([0-9]{1,3}\.){3}[0-9]{1,3}))$";

            Regex ipv4Regex = new Regex(ipv4Pattern);
            Regex ipv6Regex = new Regex(ipv6Pattern);

            return ipv4Regex.IsMatch(ipAddress) || ipv6Regex.IsMatch(ipAddress);
        }

        private void IP_TextChanged(object sender, EventArgs e)
        {
            if (IsValidIpAddress(IP.Text))
            {
                IP.BackColor = Color.Green;
            }
            else
            {
                IP.BackColor= Color.Red;
            }
        }

        private void Port_TextChanged(object sender, EventArgs e)
        {
            if (IsValidPortNumber(Port.Text))
            {
                Port.BackColor = Color.Green;
            }
            else
            {
                Port.BackColor = Color.Red;
            }
        }

        private void Connection1_Load(object sender, EventArgs e)
        {

        }

        public TcpClient GetClient()
        {
            return client;  
        }
    }
}
