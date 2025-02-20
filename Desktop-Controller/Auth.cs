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
    public partial class Auth : Form
    {
        private int code;
        public Auth(int code)
        {
            InitializeComponent();
            this.code = code;
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (Int32.Parse(textBox1.Text) == 0||Int32.Parse(textBox1.Text)==code) {
                Controller connection = new Controller();
                connection.Show();
            }
            else
            {
                MessageBox.Show( "Code did not match", "Authenication error",
                MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }
    }
}
