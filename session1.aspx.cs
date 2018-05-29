using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class session1 : System.Web.UI.Page
{
    int c = 0, s = 0, w = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (Session["name"] != null)
        {
            String user = Session["name"].ToString();
            lblusername.Text = user;
            Session["correct"] = c;
            Session["wrong"] = w;
            Session["solved"] = s;

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

    protected void q1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (q1.SelectedItem.Value.ToString() == "36")
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

    protected void q2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (q2.SelectedItem.Value.ToString() == "180")
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

    protected void q3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (q3.SelectedItem.Value.ToString() == "50/3")
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
    protected void q4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (q4.SelectedItem.Value.ToString() == "125")
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
    protected void q5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (q5.SelectedItem.Value.ToString() == "50")
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
    protected void q6_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (q6.SelectedItem.Value.ToString() == "60")
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
    protected void q7_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (q7.SelectedItem.Value.ToString() == "50625")
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
    protected void q8_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (q8.SelectedItem.Value.ToString() == "55")
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
    protected void q9_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (q9.SelectedItem.Value.ToString() == "81")
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
    protected void q10_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (q10.SelectedItem.Value.ToString() == "0.25")
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["correct"] = c.ToString();
        Session["wrong"] = w.ToString();
        Session["solved"] = s.ToString();
        
        //Label1.Text = Session["correct"].ToString();
         Response.Redirect("session2.aspx");
    }
}