using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class test1 : System.Web.UI.Page
{
    String user;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
           user = Session["name"].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String cs = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd1 = new SqlCommand("select * from signup where uname='" + user + "' ", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            string a;
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
               a = Convert.ToString(dt.Rows[0][3]);
                Label1.Text = a;
            }
            else
            {
                Label1.Text = "Your Password Reset Link is Expired or Invalid !";

            }
        }
    }
}