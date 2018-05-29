using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Net.Mail;
using System.Net;

public partial class Result : System.Web.UI.Page
{
    int c, w, s;
    String user;
    String a="";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            user = Session["name"].ToString();
            lblusername.Text = user;

            c = int.Parse(Session["correct"].ToString());
            w = int.Parse(Session["wrong"].ToString());
            s = int.Parse(Session["solved"].ToString());

        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }


    protected void logout(object sender, EventArgs e)
    {
        Session["name"] = null;
        Response.Redirect("Default.aspx");
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        lblscore.Text = "Score: " + c;
        lblincorrect.Text = "Incorrect: " + w;
        lblsolved.Text = "Total Solved: " + s;

        String cs = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            String insertquery = "insert into userinfo values('" + Session["name"].ToString() + "','" + Session["correct"].ToString() + "','" + Session["wrong"].ToString() + "','" + Session["solved"].ToString() + "')";
            SqlCommand cmd = new SqlCommand(insertquery, con);
            SqlCommand cmd1 = new SqlCommand("select * from signup where uname='" + user + "' ", con);

            con.Open();
            cmd.ExecuteNonQuery();
            lbldata.Text = "*";

            SqlDataAdapter sda = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();

            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                a = Convert.ToString(dt.Rows[0][3]);

            }
            else
            {
                lbldata.Text = "*-";
            }
        }

            String ToEmailAddress = a;
            String Username = user;
            String EmailBody = "<h2>Hi, " + Username + "</h2> <br/><br/><h4>Congratulations,you have succesfully completed the test.Your result is given below: <br/><br/>Score: "+c+ "<br/>Incorrect: " + w+ "<br/>Total Solved: " + s+"</h4>";
            MailMessage PassRecMail = new MailMessage("Enter email here....", ToEmailAddress);
            PassRecMail.Body = EmailBody;
            PassRecMail.IsBodyHtml = true;
            PassRecMail.Subject = "QuizUp: Congratulaions!";

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.Credentials = new NetworkCredential()
            {
                UserName = "Enter email here....",
                Password = "Enter password..."
            };
            smtp.EnableSsl = true;
            smtp.Send(PassRecMail);

        Button2.Visible = false;    

        }

}