using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;


public partial class Signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsignup_Click(object sender, EventArgs e)
    {


        if (tbuname.Text != "" & tbpass.Text != "" && tbconpass.Text != "" && tbname.Text != "" && tbemail.Text != "")
        {
            if (tbpass.Text == tbconpass.Text)
            {
                String cs = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    String insertquery = "insert into signup values('" + tbuname.Text + "','" + tbpass.Text + "','" + tbemail.Text + "','" + tbname.Text + "')";
                    SqlCommand cmd = new SqlCommand(insertquery, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblresult.Text = "User Registered..";
                    Response.Redirect("Login.aspx");
                }
            }
            else
            {
                lblmissmatch.Text = "  Incorrect";
                lblmissmatch.ForeColor = Color.Yellow;
            }
        }
        else
        {
            if (tbuname.Text != null)
            {
                lbluname.Text = "*";
                lbluname.ForeColor = Color.Yellow;

            }
            if (tbpass.Text != null)
            {
                lblpass.Text = "*";
                lblpass.ForeColor = Color.Yellow;

            }
            if (tbconpass.Text != null)
            {
                lblcpass.Text = "*";
                lblcpass.ForeColor = Color.Yellow;

            }
            if (tbname.Text != null)
            {
                lblname.Text = "*";
                lblname.ForeColor = Color.Yellow;

            }
            if (tbemail.Text != null)
            {
                lblemail.Text = "*";
                lblemail.ForeColor = Color.Yellow;
            }
        }



    }
}