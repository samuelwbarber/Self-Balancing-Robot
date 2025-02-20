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
using System.Net;
using System.Net.Mail;


namespace Desktop_Controller
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            if (IsValidEmail(textBox1.Text))
            {
                textBox1.BackColor = Color.Green;
            }
            else
            {
                textBox1.BackColor = Color.Red;
            }
        }

        static bool IsValidEmail(string email)
        {
            string emailPattern = @"^[^@\s]+@[^@\s]+\.[^@\s]+$";
            Regex emailRegex = new Regex(emailPattern);
            return emailRegex.IsMatch(email);
        }

        private void SendEmailCode(int code, string recipient)
        {
            var mailMessage = new MailMessage
            {
                From = new MailAddress("sam@mercurycomponents.co.uk"),
                Subject = "Your authenication code",
                Body = "<div id=\"message-content\">\r\n            <div role=\"region\">\r\n                \r\n            </div>\r\n            <div role=\"region\">\r\n                <div id=\"messagebody\"><div class=\"message-htmlpart\" id=\"message-htmlpart1\"><!-- html ignored --><!-- head ignored --><!-- meta ignored -->      <!-- meta ignored -->  <!-- meta ignored -->    <!-- meta ignored -->      <style type=\"text/css\">@media only screen and (min-width: 620px) {      #message-htmlpart1 div.rcmBody .v1u-row { width: 600px !important; }      #message-htmlpart1 div.rcmBody .v1u-row .v1u-col { vertical-align: top; }      #message-htmlpart1 div.rcmBody .v1u-row .v1u-col-100 { width: 600px !important; }    }        @media (max-width: 620px) {      #message-htmlpart1 div.rcmBody .v1u-row-container { max-width: 100% !important; padding-left: 0px !important; padding-right: 0px !important; }      #message-htmlpart1 div.rcmBody .v1u-row .v1u-col { min-width: 320px !important; max-width: 100% !important; display: block !important; }      #message-htmlpart1 div.rcmBody .v1u-row { width: calc(100% - 40px) !important; }      #message-htmlpart1 div.rcmBody .v1u-col { width: 100% !important; }      #message-htmlpart1 div.rcmBody .v1u-col>div { margin: 0 auto; }    }        #message-htmlpart1 div.rcmBody { margin: 0; padding: 0; }        #message-htmlpart1 div.rcmBody table,    #message-htmlpart1 div.rcmBody tr,    #message-htmlpart1 div.rcmBody td { vertical-align: top; border-collapse: collapse; }        #message-htmlpart1 div.rcmBody p { margin: 0; }        #message-htmlpart1 div.rcmBody .v1ie-container table,    #message-htmlpart1 div.rcmBody .v1mso-container table { table-layout: fixed; }        #message-htmlpart1 div.rcmBody * { line-height: inherit; }        #message-htmlpart1 div.rcmBody a[x-apple-data-detectors='true'] { color: inherit !important; text-decoration: none !important; }        #message-htmlpart1 div.rcmBody table,    #message-htmlpart1 div.rcmBody td { color: #000000; }</style>    <link href=\"/?_task=utils&amp;_action=modcss&amp;_u=tmp-d904cd2183ebd16b9e358ff87aa7603c.css&amp;_c=message-htmlpart1\" rel=\"stylesheet\" type=\"text/css\">  <div class=\"rcmBody\" class=\"v1clean-body v1u_body\" style=\"margin: 0; padding: 0; -webkit-text-size-adjust: 100%; background-color: #e7e7e7; color: #000000\">      <table style=\"border-collapse: collapse; table-layout: fixed; border-spacing: 0; mso-table-lspace: 0pt; mso-table-rspace: 0pt; vertical-align: top; min-width: 320px; margin: 0 auto; background-color: #e7e7e7; width: 100%\" cellpadding=\"0\" cellspacing=\"0\">    <tbody>      <tr style=\"vertical-align: top\">        <td style=\"word-break: break-word; border-collapse: collapse !important; vertical-align: top\">                    <div class=\"v1u-row-container\" style=\"padding: 0px; background-color: transparent\">            <div class=\"v1u-row\" style=\"margin: 0 auto; min-width: 320px; max-width: 600px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff\">              <div style=\"border-collapse: collapse; display: table; width: 100%; background-color: transparent\">                                                <div class=\"v1u-col v1u-col-100\" style=\"max-width: 320px; min-width: 600px; display: table-cell; vertical-align: top\">                  <div style=\"width: 100% !important\">                                        <div style=\"padding: 0px; border-top: 0px solid transparent; border-left: 0px solid transparent; border-right: 0px solid transparent; border-bottom: 0px solid transparent\">                                            <table style=\"font-family: 'Cabin',sans-serif\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">                        <tbody>                          <tr>                            <td style=\"overflow-wrap: break-word; word-break: break-word; padding: 20px; font-family: 'Cabin',sans-serif\" align=\"left\">                              <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">                                <tr>                                  <td style=\"padding-right: 0px; padding-left: 0px\" align=\"left\">                                    <img align=\"left\" border=\"0\" src=\"https://i.ibb.co/P1SH816/11ac621e5a18866aded502bee7031a55.jpg\" alt=\"Flamingo\" title=\"Image\" style=\"outline: none; text-decoration: none; -ms-interpolation-mode: bicubic; clear: both; display: inline-block !important; border: none; height: auto; float: none; width: 22%; max-width: 123.2px\" width=\"123.2\" />                                  </td>                                </tr>                              </table>                            </td>                          </tr>                        </tbody>                      </table>                                          </div>                                      </div>                </div>                                              </div>            </div>          </div>          <div class=\"v1u-row-container\" style=\"padding: 0px; background-color: transparent\">            <div class=\"v1u-row\" style=\"margin: 0 auto; min-width: 320px; max-width: 600px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #FF8CC3\">              <div style=\"border-collapse: collapse; display: table; width: 100%; background-color: transparent\">                                                <div class=\"v1u-col v1u-col-100\" style=\"max-width: 320px; min-width: 600px; display: table-cell; vertical-align: top\">                  <div style=\"width: 100% !important\">                                        <div style=\"padding: 0px; border-top: 0px solid transparent; border-left: 0px solid transparent; border-right: 0px solid transparent; border-bottom: 0px solid transparent\">                                            <table style=\"font-family: 'Cabin',sans-serif\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">                        <tbody>                          <tr>                            <td style=\"overflow-wrap: break-word; word-break: break-word; padding: 10px; font-family: 'Cabin',sans-serif\" align=\"left\">                              <h1 style=\"margin: 0px; color: #ffffff; line-height: 200%; text-align: center; word-wrap: break-word; font-weight: normal; font-family: 'Cabin',sans-serif; font-size: 25px\">                                <strong>Your Authentication Code</strong>                              </h1>                            </td>                          </tr>                        </tbody>                      </table>                                          </div>                                      </div>                </div>                                              </div>            </div>          </div>          <div class=\"v1u-row-container\" style=\"padding: 0px; background-color: transparent\">            <div class=\"v1u-row\" style=\"margin: 0 auto; min-width: 320px; max-width: 600px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff\">              <div style=\"border-collapse: collapse; display: table; width: 100%; background-color: transparent\">                                                <div class=\"v1u-col v1u-col-100\" style=\"max-width: 320px; min-width: 600px; display: table-cell; vertical-align: top\">                  <div style=\"width: 100% !important\">                                        <div style=\"padding: 0px; border-top: 0px solid transparent; border-left: 0px solid transparent; border-right: 0px solid transparent; border-bottom: 0px solid transparent\">                                            <table style=\"font-family: 'Cabin',sans-serif\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">                        <tbody>                          <tr>                            <td style=\"overflow-wrap: break-word; word-break: break-word; padding: 33px 55px; font-family: 'Cabin',sans-serif\" align=\"left\">                              <div style=\"line-height: 160%; text-align: center; word-wrap: break-word\">                                <b><p style=\"font-size: 14px; line-height: 160%\"><span style=\"font-size: 50px; line-height: 70.4px\">  " + code + " </span></p></b>                              </div>                            </td>                          </tr>                        </tbody>                      </table>                                          </div>                                      </div>                </div>                                              </div>            </div>          </div>          <div class=\"v1u-row-container\" style=\"padding: 0px; background-color: transparent\">            <div class=\"v1u-row\" style=\"margin: 0 auto; min-width: 320px; max-width: 600px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #e5eaf5\">              <div style=\"border-collapse: collapse; display: table; width: 100%; background-color: transparent\">                                                <div class=\"v1u-col v1u-col-100\" style=\"max-width: 320px; min-width: 600px; display: table-cell; vertical-align: top\">                  <div style=\"width: 100% !important\">                                        <div style=\"padding: 0px; border-top: 0px solid transparent; border-left: 0px solid transparent; border-right: 0px solid transparent; border-bottom: 0px solid transparent\">                                            <table style=\"font-family: 'Cabin',sans-serif\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">                        <tbody>                          <tr>                            <td style=\"overflow-wrap: break-word; word-break: break-word; padding: 41px 55px 18px; font-family: 'Cabin',sans-serif\" align=\"left\">                              <div style=\"color: #FF8CC3; line-height: 160%; text-align: center; word-wrap: break-word\">                                <p style=\"font-size: 14px; line-height: 160%\"><span style=\"font-size: 20px; line-height: 32px\"><strong>Didn't request this?</strong></span></p>                                <p style=\"font-size: 14px; line-height: 160%\"><span style=\"font-size: 16px; line-height: 25.6px; color: #000000\">Please ignore this email</span></p>                                <p style=\"line-height: 160%; font-size: 14px\"> </p>                              </div>                            </td>                          </tr>                        </tbody>                      </table>                                          </div>                                      </div>                </div>                                              </div>            </div>          </div>          <div class=\"v1u-row-container\" style=\"padding: 0px; background-color: transparent\">            <div class=\"v1u-row\" style=\"margin: 0 auto; min-width: 320px; max-width: 600px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #FF8CC3\">              <div style=\"border-collapse: collapse; display: table; width: 100%; background-color: transparent\">                                                <div class=\"v1u-col v1u-col-100\" style=\"max-width: 320px; min-width: 600px; display: table-cell; vertical-align: top\">                  <div style=\"width: 100% !important\">                                        <div style=\"padding: 0px; border-top: 0px solid transparent; border-left: 0px solid transparent; border-right: 0px solid transparent; border-bottom: 0px solid transparent\">                                            <table style=\"font-family: 'Cabin',sans-serif\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">                        <tbody>                          <tr>                            <td style=\"overflow-wrap: break-word; word-break: break-word; padding: 10px; font-family: 'Cabin',sans-serif\" align=\"left\">                              <div style=\"color: #fafafa; line-height: 180%; text-align: center; word-wrap: break-word\">                                <p style=\"font-size: 14px; line-height: 180%\"><span style=\"font-size: 16px; line-height: 28.8px\">Balance Bot Summer Project 2024</span></p>                              </div>                            </td>                          </tr>                        </tbody>                      </table>                                          </div>                                      </div>                </div>                                              </div>            </div>          </div>                  </td>      </tr>    </tbody>  </table>    </div></div></div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n\r\n    </div>\r\n\r\n\r\n    <div id=\"messagestack\"></div>\r\n    <script>\r\n    $(function() {\r\n    rcmail.init();\r\n    });\r\n    </script>\r\n\r\n\r\n\r\n    <script src=\"skins/elastic/deps/bootstrap.bundle.min.js?s=1705745714\"></script>\r\n    <script src=\"skins/elastic/ui.min.js?s=1705745704\"></script>\r\n    <script src=\"skins/hostinger/script.js?s=1708431249\"></script>\r\n    </body>\r\n    </html>",
                IsBodyHtml = true
            };

            mailMessage.To.Add(recipient);
            string emailpw = Environment.GetEnvironmentVariable("email_pw2");
            Console.WriteLine(emailpw);
            var smtpClient = new SmtpClient("smtp.hostinger.com")
            {
                Port = 587,
                Credentials = new NetworkCredential("sam@mercurycomponents.co.uk", emailpw),
                EnableSsl = true,
            };

            try
            {
                smtpClient.Send(mailMessage);
                Console.WriteLine("Email sent successfully.");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Failed to send email. Error: {ex.Message}");
            }
        }
        private void button1_Click(object sender, EventArgs e)
        {
<<<<<<< HEAD
            Random rnd = new Random();
            int val = rnd.Next(1000,9999);
            SendEmailCode(val, textBox1.Text);
            auth2 connection = new auth2(val);
=======
            //SendEmailCode(123, "sam@mercurycomponents.co.uk");
            Controller connection = new Controller();
>>>>>>> main
            connection.Show();
            this.Hide();
            
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void Login_Load(object sender, EventArgs e)
        {
            


        }
    }
}
