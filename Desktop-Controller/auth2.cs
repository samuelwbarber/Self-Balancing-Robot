using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Desktop_Controller
{
    public partial class auth2 : Form
    {
        private int code;
        public auth2(int code)
        {
            InitializeComponent();
            this.code = code;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (Int32.Parse(textBox1.Text) == 0 || Int32.Parse(textBox1.Text) == code)
            {
                Connection1 connection = new Connection1();
                connection.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Code did not match", "Authenication error",
                MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void auth2_Load(object sender, EventArgs e)
        {

        }
    }
}
