using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            String user = Session["name"].ToString();
            lblusername.Text = user;
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
}