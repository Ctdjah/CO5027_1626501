using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace WebApplication1
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtEmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            
            SmtpClient smtpClient = new SmtpClient();
            MailMessage msg = new MailMessage("ctdjah6splus@gmail.com", "ctdjah6splus@gmail.com");
            MailMessage msgToClient = new MailMessage();
            msg.Subject = txtSubject.Text;
            msg.Body = txtBody.Text;

            
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("ctdjah6splus@gmail.com", "bvcxz912");
            smtpClient.Credentials = credentials;

            try
            {
                smtpClient.Send(msg);
                LitResult.Text = "<p>Success, mail sent using SMTP with secure connection and credentials</p>";
            }
            catch (Exception ex)
            {
                //display the full error to the user
                LitResult.Text = "<p>Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";
            }


        }

        private class litResult
        {
            public static string Text { get; internal set; }
        }
    }
}
