using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Net.Mail;
using System.Net;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btPassRec_Click(object sender, EventArgs e)
    {
       String cs = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;

        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("select * from signup where email='" + tbEmailId.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                String myGUID = Guid.NewGuid().ToString();
                int Uid = Convert.ToInt32(dt.Rows[0][0]);
                SqlCommand cmd1 = new SqlCommand("insert into ForgotPassRequests values('" + myGUID + "','" + Uid + "',getdate())", con);
                cmd1.ExecuteNonQuery();


                //send mail
                String ToEmailAddress = dt.Rows[0][3].ToString();
                String Username = dt.Rows[0][1].ToString();
                String EmailBody = "Hi "+Username+ ", <br/><br/> Click the link below to reset your password.<br/><br/> http://localhost:55169/RecoverPassword.aspx?Uid="+myGUID;
                MailMessage PassRecMail = new MailMessage("Enter email here...",ToEmailAddress);
                PassRecMail.Body = EmailBody;
                PassRecMail.IsBodyHtml = true;
                PassRecMail.Subject = "QuizUp password reset link.";

                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.Credentials = new NetworkCredential()
                {
                    UserName = "Enter email here...",
                    Password = "Enter Password..."
                };
                smtp.EnableSsl = true;
                smtp.Send(PassRecMail);


                lblPassRec.ForeColor = Color.Yellow;
                lblPassRec.Text = "Reset request is sent. Please check your email address.";
                tbEmailId.Text = "";


            }
            else
            {
                lblPassRec.ForeColor = Color.Red;
                lblPassRec.Text = "Email address does not exist. Please enter a valid Email address";
            }
        }       
    }
}