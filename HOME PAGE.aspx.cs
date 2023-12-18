using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HOME_PAGE : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("STUDENTS.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("CENTRE ASSIGN.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("LECTURER.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("REPORTS.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("CENTER.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("COURSESapx.aspx");
    }
}