using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class session2 : System.Web.UI.Page
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

        /*if(Session["correct"]!=null && Session["wrong"]!=null && Session["solved"]!=null)
        {
            c = int.Parse(Session["correct"].ToString());
            w = int.Parse(Session["wrong"].ToString());
            s = int.Parse(Session["solved"].ToString());
        }
        else
        {
            Response.Redirect("session1.aspx");
        }*/
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["correct"] = c.ToString();
        Session["wrong"] = w.ToString();
        Session["solved"] = s.ToString();
        Response.Redirect("session22.aspx");

    }

    protected void logout(object sender, EventArgs e)
    {
        Session["name"] = null;
        Response.Redirect("Default.aspx");
    }


    protected void q11_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (q11.SelectedItem.Value.ToString() == "X")
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

    protected void q12_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (q12.SelectedItem.Value.ToString() == "D")
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
    protected void q13_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (q13.SelectedItem.Value.ToString() == "Raj")
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
    protected void q14_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (q14.SelectedItem.Value.ToString() == "Ashok")
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
    protected void q15_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (q15.SelectedItem.Value.ToString() == "Rita")
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