using System;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;
using System.Collections.Generic;


namespace Desktop_Controller
{
    public partial class BatteryHealth : Form
    {
        private Timer timer;
        private Random random;
        private int time;

        // RECEIVED DATA DEFINITIONS
        private double logic_current;
        private double motors_current;
        private double battery_voltage;
        private double regulator_voltage;

        // CALCULATION CONSTANTS
        private const int CELLS = 12;
        private const double SIZE = 4095.0;
        private const double current_scale_logic = 3000.0 / SIZE;
        private const double current_scale_motors = 2000.0 / SIZE;
        private const double threshold_logic = 2.6;
        private const double threshold_motors = 1.8;
        private const double voltage_scale = 1.1 / SIZE;
        private const double voltage_gain_battery = 1.125 / 18;
        private const double voltage_gain_regulator = 1.132 / 6;

        public BatteryHealth(int supply, int logic, int motor, int regulator)
        {
            InitializeComponent();
            InitializeCharts();
            InitializeTimer();
        }

        private void BatteryHealth_Load(object sender, EventArgs e)
        {

        }

        private void Logic_Current_Click(object sender, EventArgs e)
        {

        }

        private void Motor_Current_Click(object sender, EventArgs e)
        {

        }

        private void Logic_Power_Click(object sender, EventArgs e)
        {

        }

        private void Motor_Power_Click(object sender, EventArgs e)
        {

        }

        private void Supply_v_Click(object sender, EventArgs e)
        {

        }

        private void Cell_v_Click(object sender, EventArgs e)
        {

        }

        private void InitializeCharts()
        {
            random = new Random();
            time = 0;

            ConfigureChart(Motor_Power, "Motor Power", Color.Purple);
            ConfigureChart(Motor_Current, "Motor Current", Color.Blue);
            ConfigureChart(Logic_Current, "Logic Current", Color.Green);
            ConfigureChart(Logic_Power, "Logic Power", Color.Orange);
            ConfigureChart(Supply_v, "Supply Voltage", Color.Red);
            ConfigureChart(Cell_v, "Cell Voltage", Color.DarkGreen);
        }

        private void ConfigureChart(Chart chart, string title, Color color)
        {
            chart.Series.Clear();
            chart.ChartAreas[0].AxisX.Title = "Time";
            chart.ChartAreas[0].AxisY.Title = title;
            chart.ChartAreas[0].AxisY.Minimum = 0;
            chart.ChartAreas[0].AxisY.Maximum = 1000;

            var series = new Series
            {
                Name = title,
                ChartType = SeriesChartType.Line,
                XValueType = ChartValueType.Int32,
                YValueType = ChartValueType.Double,
                Color = color
            };

            chart.Series.Add(series);
        }

        private void InitializeTimer()
        {
            timer = new Timer();
            timer.Interval = 1000; // ms
            timer.Tick += Timer_Tick;
            timer.Start();
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            time++;
            double newValue = random.NextDouble() * 100;

            // Update received data
            logic_current = GetADCValue1();
            motors_current = GetADCValue2();
            battery_voltage = GetADCValue3();
            regulator_voltage = GetADCValue4();

            // Perform calculations
            double logic_power = Calculation(logic_current, regulator_voltage, current_scale_logic, voltage_scale, voltage_gain_regulator, threshold_logic);
            double motor_power = Calculation(motors_current, battery_voltage, current_scale_motors, voltage_scale, voltage_gain_battery, threshold_motors);
            double supply_voltage = battery_voltage / voltage_gain_battery;
            double cell_voltage = battery_voltage / CELLS;
            double battery_percentage = Battery(cell_voltage);

            // Update charts
            UpdateChart(Motor_Power, time, motor_power);
            UpdateChart(Motor_Current, time, motors_current);
            UpdateChart(Logic_Current, time, logic_current);
            UpdateChart(Logic_Power, time, logic_power);
            UpdateChart(Supply_v, time, supply_voltage);
            UpdateChart(Cell_v, time, cell_voltage);

            foreach (var c in this.Controls.OfType<Chart>())
            {
                c.ResetAutoValues();
            }

        }

        private double Calculation(double current_reading, double voltage_reading, double current_scale, double voltage_scale, double voltage_gain, double threshold)
        {
            double voltage = voltage_reading * voltage_scale;
            double supply = voltage / voltage_gain;

            double current = current_reading * current_scale;
            bool short_circuit = current > threshold;
            double power = current * supply;

            return power;
        }

        private double Battery(double battery_supply_voltage)
        {
            double cell_voltage = battery_supply_voltage / CELLS;

            Dictionary<double, int> discharge_plot = new Dictionary<double, int>
                {
                    { 1.50, 100 },
                    { 1.49, 99 },
                    { 1.48, 98 },
                    { 1.47, 97 },
                    { 1.46, 96 },
                    { 1.45, 95 },
                    { 1.44, 94 },
                    { 1.43, 93 },
                    { 1.42, 92 },
                    { 1.41, 91 },
                    { 1.40, 90 },
                    { 1.39, 89 },
                    { 1.38, 88 },
                    { 1.37, 87 },
                    { 1.36, 86 },
                    { 1.35, 85 },
                    { 1.34, 84 },
                    { 1.33, 83 },
                    { 1.32, 82 },
                    { 1.31, 81 },
                    { 1.30, 80 },
                    { 1.29, 79 },
                    { 1.28, 78 },
                    { 1.27, 77 },
                    { 1.26, 76 },
                    { 1.25, 75 },
                    { 1.24, 74 },
                    { 1.23, 73 },
                    { 1.22, 72 },
                    { 1.21, 71 },
                    { 1.20, 70 },
                    { 1.19, 69 },
                    { 1.18, 68 },
                    { 1.17, 67 },
                    { 1.16, 66 },
                    { 1.15, 65 },
                    { 1.14, 64 },
                    { 1.13, 63 },
                    { 1.12, 62 },
                    { 1.11, 61 },
                    { 1.10, 60 },
                    { 1.09, 59 },
                    { 1.08, 58 },
                    { 1.07, 57 },
                    { 1.06, 56 },
                    { 1.05, 55 },
                    { 1.04, 54 },
                    { 1.03, 53 },
                    { 1.02, 52 },
                    { 1.01, 51 },
                    { 1.00, 50 },
                    { 0.99, 49 },
                    { 0.98, 48 },
                    { 0.97, 47 },
                    { 0.96, 46 },
                    { 0.95, 45 },
                    { 0.94, 44 },
                    { 0.93, 43 },
                    { 0.92, 42 },
                    { 0.91, 41 },
                    { 0.90, 40 },
                    { 0.89, 39 },
                    { 0.88, 38 },
                    { 0.87, 37 },
                    { 0.86, 36 },
                    { 0.85, 35 },
                    { 0.84, 34 },
                    { 0.83, 33 },
                    { 0.82, 32 },
                    { 0.81, 31 },
                    { 0.80, 30 },
                    { 0.79, 29 },
                    { 0.78, 28 },
                    { 0.77, 27 },
                    { 0.76, 26 },
                    { 0.75, 25 },
                    { 0.74, 24 },
                    { 0.73, 23 },
                    { 0.72, 22 },
                    { 0.71, 21 },
                    { 0.70, 20 },
                    { 0.69, 19 },
                    { 0.68, 18 },
                    { 0.67, 17 },
                    { 0.66, 16 },
                    { 0.65, 15 },
                    { 0.64, 14 },
                    { 0.63, 13 },
                    { 0.62, 12 },
                    { 0.61, 11 },
                    { 0.60, 10 },
                    { 0.59, 9 },
                    { 0.58, 8 },
                    { 0.57, 7 },
                    { 0.56, 6 },
                    { 0.55, 5 },
                    { 0.54, 4 },
                    { 0.53, 3 },
                    { 0.52, 2 },
                    { 0.51, 1 },
                    { 0.50, 0 }
                };

            double closest_voltage = 1.5;

            foreach (var voltage in discharge_plot.Keys)
            {
                if (Math.Abs(voltage - cell_voltage) < Math.Abs(closest_voltage - cell_voltage))
                {
                    closest_voltage = voltage;
                }
            }

            int battery_percentage = discharge_plot[closest_voltage];

            return battery_percentage;
        }

        private void UpdateChart(Chart chart, int time, double value)
        {
            var series = chart.Series[0];
            if (series.Points.Count > 100)
            {
                series.Points.RemoveAt(0);
            }
            series.Points.AddXY(time, value);
        }

        private double GetADCValue1()
        {
            // Replace with actual ADC value retrieval logic
            return random.NextDouble() * SIZE;
        }

        private double GetADCValue2()
        {
            // Replace with actual ADC value retrieval logic
            return random.NextDouble() * SIZE;
        }

        private double GetADCValue3()
        {
            // Replace with actual ADC value retrieval logic
            return random.NextDouble() * SIZE;
        }

        private double GetADCValue4()
        {
            // Replace with actual ADC value retrieval logic
            return random.NextDouble() * SIZE;
        }

        private void Close_Page_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void Regulator_Click(object sender, EventArgs e)
        {

        }
    }
}