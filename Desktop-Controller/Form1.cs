using MySqlX.XDevAPI;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Desktop_Controller
{
    public partial class Controller : Form
    {
        private TcpClient client;
        public int packed_battery;
        public int packed_logic;
        public int packed_motors;
        public int packed_regulator;
        public int packed_x;
        public int packed_y;
        private List<Point> robotPath = new List<Point>();
        private Point flamingo_position;

        public Controller(TcpClient client)
        {
            InitializeComponent();
            this.client = client;
        }

        private static async Task SendData(NetworkStream stream, int control_code)
        {
            byte[] data = BitConverter.GetBytes(control_code);
            await stream.WriteAsync(data, 0, data.Length);
            Console.WriteLine($"Sent control code: {control_code}");
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            _ = Task.Run(async () => await ReceiveData(client));
        }

        private void connect_Click(object sender, EventArgs e)
        {
            client.Close();
            Connection1 connection = new Connection1();
            connection.Show();
            this.Hide();
            client = connection.GetClient();
        }

        private void forward_Click(object sender, EventArgs e)
        {
            NetworkStream stream = client.GetStream();
            Task.Run(async () => await SendData(stream, 3)).Wait();
        }

        private void back_Click(object sender, EventArgs e)
        {
            NetworkStream stream = client.GetStream();
            Task.Run(async () => await SendData(stream, 4)).Wait();
        }

        private void stop_Click(object sender, EventArgs e)
        {
            NetworkStream stream = client.GetStream();
            Task.Run(async () => await SendData(stream, 5)).Wait();
        }

        private void left_Click(object sender, EventArgs e)
        {
            NetworkStream stream = client.GetStream();
            Task.Run(async () => await SendData(stream, 1)).Wait();
        }

        private void right_Click(object sender, EventArgs e)
        {
            NetworkStream stream = client.GetStream();
            Task.Run(async () => await SendData(stream, 2)).Wait();
        }

        protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
        {
            switch (keyData)
            {
                case Keys.Up:
                    FocusAndClickButton(forward);
                    return true;
                case Keys.Down:
                    FocusAndClickButton(back);
                    return true;
                case Keys.Left:
                    FocusAndClickButton(left);
                    return true;
                case Keys.Right:
                    FocusAndClickButton(right);
                    return true;
                case Keys.Space:
                    FocusAndClickButton(stop);
                    return true;
            }
            return base.ProcessCmdKey(ref msg, keyData);
        }

        private void FocusAndClickButton(Button button)
        {
            button.Focus();
            button.PerformClick();
        }

        private async Task ReceiveData(TcpClient client)
        {
            NetworkStream stream = client.GetStream();
            while (true)
            {
                try
                {
                    byte[] data = new byte[20];
                    int bytesRead = await stream.ReadAsync(data, 0, data.Length);
                    if (bytesRead == 20)
                    {
                        packed_battery = BitConverter.ToInt32(data, 0);
                        packed_logic = BitConverter.ToInt32(data, 4);
                        packed_motors = BitConverter.ToInt32(data, 8);
                        packed_regulator = BitConverter.ToInt32(data, 12);
                        packed_x = BitConverter.ToInt32(data, 16);
                        packed_y = BitConverter.ToInt32(data, 20);

                        this.Invoke((MethodInvoker)delegate {
                            UpdateUI();
                        });
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Error receiving data: {ex.Message}");
                    break;
                }
            }
        }

        private void UpdateUI()
        {
            battery_level.Value = (int)packed_battery;
            Logic.Text = $"Logic: {packed_logic}";
            Motors.Text = $"Motors: {packed_motors}";
            Supply.Text = $"Supply: {packed_battery}";
            Regulator.Text = $"Regulator: {packed_regulator}";
            label1.Text = $"X: {packed_x}";
            label2.Text = $"Y: {packed_y}";
            flamingo_position = new Point((int)packed_x, (int)packed_y);
            robotPath.Add(flamingo_position);
            Map.Invalidate(); // Request the Map control to be redrawn
        }

        private void battery_level_Click(object sender, EventArgs e)
        {
            BatteryHealth BatteryHealth = new BatteryHealth(packed_battery, packed_logic, packed_motors, packed_regulator);
            BatteryHealth.Show();
        }

        private void DrawRobotPath(Graphics g)
        {
            if (robotPath.Count < 2)
                return;

            using (Pen pen = new Pen(Color.Blue, 2))
            {
                for (int i = 0; i < robotPath.Count - 1; i++)
                {
                    if (i + 1 < robotPath.Count) // Check if there is a valid next point
                    {
                        g.DrawLine(pen, robotPath[i], robotPath[i + 1]);
                    }
                }
            }
        }

        private void Map_Paint(object sender, PaintEventArgs e)
        {
            DrawRobotPath(e.Graphics); // Direct drawing in the Paint event
        }

        private void Regulator_Click(object sender, EventArgs e)
        {

        }
    }
}
