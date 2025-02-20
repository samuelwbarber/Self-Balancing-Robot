namespace Desktop_Controller
{
    partial class Controller
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Controller));
            this.connect = new System.Windows.Forms.Button();
            this.stop = new System.Windows.Forms.Button();
            this.Supply = new System.Windows.Forms.Label();
            this.Logic = new System.Windows.Forms.Label();
            this.Motors = new System.Windows.Forms.Label();
            this.right = new System.Windows.Forms.Button();
            this.left = new System.Windows.Forms.Button();
            this.back = new System.Windows.Forms.Button();
            this.forward = new System.Windows.Forms.Button();
            this.battery_level = new System.Windows.Forms.ProgressBar();
            this.Map = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.Regulator = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // connect
            // 
            this.connect.BackColor = System.Drawing.Color.DeepPink;
            this.connect.Location = new System.Drawing.Point(682, 402);
            this.connect.Margin = new System.Windows.Forms.Padding(0);
            this.connect.Name = "connect";
            this.connect.Size = new System.Drawing.Size(98, 46);
            this.connect.TabIndex = 1;
            this.connect.Text = "Disconnect";
            this.connect.UseVisualStyleBackColor = false;
            this.connect.Click += new System.EventHandler(this.connect_Click);
            // 
            // stop
            // 
            this.stop.BackColor = System.Drawing.Color.Transparent;
            this.stop.Location = new System.Drawing.Point(475, 169);
            this.stop.Name = "stop";
            this.stop.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.stop.Size = new System.Drawing.Size(100, 100);
            this.stop.TabIndex = 11;
            this.stop.UseVisualStyleBackColor = false;
            this.stop.Click += new System.EventHandler(this.stop_Click);
            // 
            // Supply
            // 
            this.Supply.AutoSize = true;
            this.Supply.BackColor = System.Drawing.Color.Indigo;
            this.Supply.Location = new System.Drawing.Point(389, 393);
            this.Supply.Name = "Supply";
            this.Supply.Size = new System.Drawing.Size(57, 20);
            this.Supply.TabIndex = 15;
            this.Supply.Text = "Supply";
            // 
            // Logic
            // 
            this.Logic.AutoSize = true;
            this.Logic.BackColor = System.Drawing.Color.DarkGreen;
            this.Logic.Location = new System.Drawing.Point(393, 417);
            this.Logic.Name = "Logic";
            this.Logic.Size = new System.Drawing.Size(47, 20);
            this.Logic.TabIndex = 16;
            this.Logic.Text = "Logic";
            // 
            // Motors
            // 
            this.Motors.AutoSize = true;
            this.Motors.BackColor = System.Drawing.Color.Crimson;
            this.Motors.Location = new System.Drawing.Point(393, 441);
            this.Motors.Name = "Motors";
            this.Motors.Size = new System.Drawing.Size(58, 20);
            this.Motors.TabIndex = 17;
            this.Motors.Text = "motors";
            // 
            // right
            // 
            this.right.BackColor = System.Drawing.Color.Transparent;
            this.right.Image = global::Desktop_Controller.Properties.Resources.icons8_rotate_52__2_;
            this.right.Location = new System.Drawing.Point(580, 169);
            this.right.Margin = new System.Windows.Forms.Padding(2);
            this.right.Name = "right";
            this.right.Size = new System.Drawing.Size(100, 100);
            this.right.TabIndex = 14;
            this.right.UseVisualStyleBackColor = false;
            this.right.Click += new System.EventHandler(this.right_Click);
            // 
            // left
            // 
            this.left.BackColor = System.Drawing.Color.Transparent;
            this.left.Image = global::Desktop_Controller.Properties.Resources.icons8_rotate_52__1_;
            this.left.Location = new System.Drawing.Point(370, 169);
            this.left.Margin = new System.Windows.Forms.Padding(2);
            this.left.Name = "left";
            this.left.Size = new System.Drawing.Size(100, 100);
            this.left.TabIndex = 13;
            this.left.UseVisualStyleBackColor = false;
            this.left.Click += new System.EventHandler(this.left_Click);
            // 
            // back
            // 
            this.back.BackColor = System.Drawing.Color.Transparent;
            this.back.Image = global::Desktop_Controller.Properties.Resources.icons8_chevron_down_52;
            this.back.Location = new System.Drawing.Point(475, 274);
            this.back.Margin = new System.Windows.Forms.Padding(2);
            this.back.Name = "back";
            this.back.Size = new System.Drawing.Size(100, 100);
            this.back.TabIndex = 12;
            this.back.UseVisualStyleBackColor = false;
            this.back.Click += new System.EventHandler(this.back_Click);
            // 
            // forward
            // 
            this.forward.BackColor = System.Drawing.Color.Transparent;
            this.forward.Image = global::Desktop_Controller.Properties.Resources.icons8_chevron_up_52;
            this.forward.Location = new System.Drawing.Point(475, 64);
            this.forward.Margin = new System.Windows.Forms.Padding(2);
            this.forward.Name = "forward";
            this.forward.Size = new System.Drawing.Size(100, 100);
            this.forward.TabIndex = 10;
            this.forward.UseVisualStyleBackColor = false;
            this.forward.Click += new System.EventHandler(this.forward_Click);
            // 
            // battery_level
            // 
            this.battery_level.AccessibleRole = System.Windows.Forms.AccessibleRole.Dialog;
            this.battery_level.BackColor = System.Drawing.Color.DeepPink;
            this.battery_level.ForeColor = System.Drawing.Color.LavenderBlush;
            this.battery_level.Location = new System.Drawing.Point(693, 64);
            this.battery_level.Margin = new System.Windows.Forms.Padding(2);
            this.battery_level.Name = "battery_level";
            this.battery_level.Size = new System.Drawing.Size(82, 310);
            this.battery_level.TabIndex = 2;
            this.battery_level.Click += new System.EventHandler(this.battery_level_Click);
            // 
            // Map
            // 
            this.Map.BackColor = System.Drawing.Color.LavenderBlush;
            this.Map.Location = new System.Drawing.Point(13, 13);
            this.Map.Name = "Map";
            this.Map.Size = new System.Drawing.Size(352, 446);
            this.Map.TabIndex = 18;
            this.Map.Paint += new System.Windows.Forms.PaintEventHandler(this.Map_Paint);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(535, 393);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(24, 20);
            this.label1.TabIndex = 19;
            this.label1.Text = "X ";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Turquoise;
            this.label2.Location = new System.Drawing.Point(535, 428);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(20, 20);
            this.label2.TabIndex = 20;
            this.label2.Text = "Y";
            // 
            // Regulator
            // 
            this.Regulator.AutoSize = true;
            this.Regulator.BackColor = System.Drawing.Color.SteelBlue;
            this.Regulator.Location = new System.Drawing.Point(389, 363);
            this.Regulator.Name = "Regulator";
            this.Regulator.Size = new System.Drawing.Size(79, 20);
            this.Regulator.TabIndex = 21;
            this.Regulator.Text = "Regulator";
            this.Regulator.Click += new System.EventHandler(this.Regulator_Click);
            // 
            // Controller
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.LightPink;
            this.ClientSize = new System.Drawing.Size(789, 471);
            this.Controls.Add(this.Regulator);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.Map);
            this.Controls.Add(this.Motors);
            this.Controls.Add(this.Logic);
            this.Controls.Add(this.Supply);
            this.Controls.Add(this.right);
            this.Controls.Add(this.left);
            this.Controls.Add(this.back);
            this.Controls.Add(this.stop);
            this.Controls.Add(this.forward);
            this.Controls.Add(this.battery_level);
            this.Controls.Add(this.connect);
            this.ForeColor = System.Drawing.Color.Transparent;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "Controller";
            this.Text = "Balance Bot Control";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button connect;
        private System.Windows.Forms.Button forward;
        private System.Windows.Forms.Button stop;
        private System.Windows.Forms.Button back;
        private System.Windows.Forms.Button left;
        private System.Windows.Forms.Button right;
        private System.Windows.Forms.Label Supply;
        private System.Windows.Forms.Label Logic;
        private System.Windows.Forms.Label Motors;
        private System.Windows.Forms.ProgressBar battery_level;
        private System.Windows.Forms.Panel Map;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label Regulator;
    }
}

