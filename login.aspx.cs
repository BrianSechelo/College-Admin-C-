using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Connectiondb.ora = "SELECT * FROM USERS WHERE NAME='" + TextBox1.Text + "'";
        Connectiondb.queryrd1(Connectiondb.ora);
        while (Connectiondb.oraReader.Read()) {
            if (Connectiondb.oraReader["PASSWORD"].ToString() == TextBox2.Text)
            {
                if (TextBox1.Text == "ADMIN" && TextBox2.Text == "admin") {
                    Response.Redirect("Default.aspx");
                }
                else {
               
                Response.Redirect("HOME PAGE.aspx");
                    }
            }

            else {
                Response.Write("LOGIN FAILED,INVALID CREDENTIALS");
            }
        }
        Connectiondb.queryrd2();
    }
}