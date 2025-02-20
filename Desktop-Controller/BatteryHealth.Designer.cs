namespace Desktop_Controller
{
    partial class BatteryHealth
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea1 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea2 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea3 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea4 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea5 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea6 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(BatteryHealth));
            this.Battery_Charge = new System.Windows.Forms.Label();
            this.Cell_Voltage = new System.Windows.Forms.Label();
            this.Supply_Voltage = new System.Windows.Forms.Label();
            this.Motor_Power = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.Motor_Current = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.Logic_Current = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.Logic_Power = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.Supply_v = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.Cell_v = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.Close_Page = new System.Windows.Forms.Button();
            this.Regulator = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.Motor_Power)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Motor_Current)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Logic_Current)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Logic_Power)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Supply_v)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Cell_v)).BeginInit();
            this.SuspendLayout();
            // 
            // Battery_Charge
            // 
            this.Battery_Charge.AutoSize = true;
            this.Battery_Charge.BackColor = System.Drawing.Color.Crimson;
            this.Battery_Charge.Location = new System.Drawing.Point(627, 122);
            this.Battery_Charge.Name = "Battery_Charge";
            this.Battery_Charge.Size = new System.Drawing.Size(116, 20);
            this.Battery_Charge.TabIndex = 20;
            this.Battery_Charge.Text = "Battery Charge";
            // 
            // Cell_Voltage
            // 
            this.Cell_Voltage.AutoSize = true;
            this.Cell_Voltage.BackColor = System.Drawing.Color.DarkGreen;
            this.Cell_Voltage.Location = new System.Drawing.Point(631, 65);
            this.Cell_Voltage.Name = "Cell_Voltage";
            this.Cell_Voltage.Size = new System.Drawing.Size(94, 20);
            this.Cell_Voltage.TabIndex = 19;
            this.Cell_Voltage.Text = "Cell Voltage";
            // 
            // Supply_Voltage
            // 
            this.Supply_Voltage.AutoSize = true;
            this.Supply_Voltage.BackColor = System.Drawing.Color.Indigo;
            this.Supply_Voltage.Location = new System.Drawing.Point(627, 13);
            this.Supply_Voltage.Name = "Supply_Voltage";
            this.Supply_Voltage.Size = new System.Drawing.Size(116, 20);
            this.Supply_Voltage.TabIndex = 18;
            this.Supply_Voltage.Text = "Supply Voltage";
            // 
            // Motor_Power
            // 
            this.Motor_Power.BackColor = System.Drawing.Color.LavenderBlush;
            chartArea1.Name = "ChartArea1";
            this.Motor_Power.ChartAreas.Add(chartArea1);
            this.Motor_Power.Location = new System.Drawing.Point(322, 240);
            this.Motor_Power.Name = "Motor_Power";
            this.Motor_Power.Size = new System.Drawing.Size(289, 210);
            this.Motor_Power.TabIndex = 24;
            this.Motor_Power.Text = "Motor Power";
            // 
            // Motor_Current
            // 
            this.Motor_Current.BackColor = System.Drawing.Color.LavenderBlush;
            chartArea2.Name = "ChartArea1";
            this.Motor_Current.ChartAreas.Add(chartArea2);
            this.Motor_Current.Location = new System.Drawing.Point(322, 13);
            this.Motor_Current.Name = "Motor_Current";
            this.Motor_Current.Size = new System.Drawing.Size(289, 210);
            this.Motor_Current.TabIndex = 23;
            this.Motor_Current.Text = "Motor Current";
            // 
            // Logic_Current
            // 
            this.Logic_Current.BackColor = System.Drawing.Color.LavenderBlush;
            chartArea3.Name = "ChartArea1";
            this.Logic_Current.ChartAreas.Add(chartArea3);
            this.Logic_Current.Location = new System.Drawing.Point(12, 13);
            this.Logic_Current.Name = "Logic_Current";
            this.Logic_Current.Size = new System.Drawing.Size(289, 210);
            this.Logic_Current.TabIndex = 22;
            this.Logic_Current.Text = "Logic Current";
            // 
            // Logic_Power
            // 
            this.Logic_Power.BackColor = System.Drawing.Color.LavenderBlush;
            chartArea4.Name = "ChartArea1";
            this.Logic_Power.ChartAreas.Add(chartArea4);
            this.Logic_Power.Location = new System.Drawing.Point(12, 240);
            this.Logic_Power.Name = "Logic_Power";
            this.Logic_Power.Size = new System.Drawing.Size(289, 210);
            this.Logic_Power.TabIndex = 21;
            this.Logic_Power.Text = "Logic Power";
            // 
            // Supply_v
            // 
            this.Supply_v.BackColor = System.Drawing.Color.LavenderBlush;
            chartArea5.Name = "ChartArea1";
            this.Supply_v.ChartAreas.Add(chartArea5);
            this.Supply_v.Location = new System.Drawing.Point(12, 465);
            this.Supply_v.Name = "Supply_v";
            this.Supply_v.Size = new System.Drawing.Size(289, 210);
            this.Supply_v.TabIndex = 25;
            this.Supply_v.Text = "Supply Voltage";
            // 
            // Cell_v
            // 
            this.Cell_v.BackColor = System.Drawing.Color.LavenderBlush;
            chartArea6.Name = "ChartArea1";
            this.Cell_v.ChartAreas.Add(chartArea6);
            this.Cell_v.Location = new System.Drawing.Point(322, 465);
            this.Cell_v.Name = "Cell_v";
            this.Cell_v.Size = new System.Drawing.Size(289, 210);
            this.Cell_v.TabIndex = 26;
            this.Cell_v.Text = "Cell Voltage";
            // 
            // Close_Page
            // 
            this.Close_Page.Location = new System.Drawing.Point(711, 641);
            this.Close_Page.Name = "Close_Page";
            this.Close_Page.Size = new System.Drawing.Size(75, 34);
            this.Close_Page.TabIndex = 27;
            this.Close_Page.Text = "Close";
            this.Close_Page.UseVisualStyleBackColor = true;
            this.Close_Page.Click += new System.EventHandler(this.Close_Page_Click);
            // 
            // Regulator
            // 
            this.Regulator.AutoSize = true;
            this.Regulator.BackColor = System.Drawing.Color.Orchid;
            this.Regulator.Location = new System.Drawing.Point(627, 171);
            this.Regulator.Name = "Regulator";
            this.Regulator.Size = new System.Drawing.Size(138, 20);
            this.Regulator.TabIndex = 28;
            this.Regulator.Text = "Regulator Voltage";
            this.Regulator.Click += new System.EventHandler(this.Regulator_Click);
            // 
            // BatteryHealth
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.LightPink;
            this.ClientSize = new System.Drawing.Size(820, 693);
            this.Controls.Add(this.Regulator);
            this.Controls.Add(this.Close_Page);
            this.Controls.Add(this.Cell_v);
            this.Controls.Add(this.Supply_v);
            this.Controls.Add(this.Motor_Power);
            this.Controls.Add(this.Motor_Current);
            this.Controls.Add(this.Logic_Current);
            this.Controls.Add(this.Logic_Power);
            this.Controls.Add(this.Battery_Charge);
            this.Controls.Add(this.Cell_Voltage);
            this.Controls.Add(this.Supply_Voltage);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "BatteryHealth";
            this.Text = "BatteryHealth";
            this.Load += new System.EventHandler(this.BatteryHealth_Load);
            ((System.ComponentModel.ISupportInitialize)(this.Motor_Power)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Motor_Current)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Logic_Current)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Logic_Power)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Supply_v)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Cell_v)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label Battery_Charge;
        private System.Windows.Forms.Label Cell_Voltage;
        private System.Windows.Forms.Label Supply_Voltage;
        private System.Windows.Forms.DataVisualization.Charting.Chart Motor_Power;
        private System.Windows.Forms.DataVisualization.Charting.Chart Motor_Current;
        private System.Windows.Forms.DataVisualization.Charting.Chart Logic_Current;
        private System.Windows.Forms.DataVisualization.Charting.Chart Logic_Power;
        private System.Windows.Forms.DataVisualization.Charting.Chart Supply_v;
        private System.Windows.Forms.DataVisualization.Charting.Chart Cell_v;
        private System.Windows.Forms.Button Close_Page;
        private System.Windows.Forms.Label Regulator;
    }
}