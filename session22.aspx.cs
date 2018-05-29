using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class session22 : System.Web.UI.Page
{
    int c, w, s;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            String user = Session["name"].ToString();
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
        Session["correct"] = c.ToString();
        Session["wrong"] = w.ToString();
        Session["solved"] = s.ToString();
        Response.Redirect("Result.aspx");

    }


    protected void q17_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (q17.SelectedItem.Value.ToString() == "Past")
        {
            c = c + 3;

        }
        else
        {
            c = c - 1;
            w = w + 1;
        }
        s = s + 1;
    }
    protected void q18_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (q18.SelectedItem.Value.ToString() == "Bacteria")
        {
            c = c + 3;

        }
        else
        {
            c = c - 1;
            w = w + 1;
        }
        s = s + 1;
    }
    protected void q19_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (q19.SelectedItem.Value.ToString() == "Provocation")
        {
            c = c + 3;

        }
        else
        {
            c = c - 1;
            w = w + 1;
        }
        s = s + 1;
    }
    protected void q20_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (q20.SelectedItem.Value.ToString() == "Acolye")
        {
            c = c + 3;

        }
        else
        {
            c = c - 1;
            w = w + 1;
        }
        s = s + 1;
    }

    protected void q16_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (q16.SelectedItem.Value.ToString() == "Planet")
        {
            c = c + 3;

        }
        else
        {
            c = c - 1;
            w = w + 1;
        }
        s = s + 1;
    }

}
