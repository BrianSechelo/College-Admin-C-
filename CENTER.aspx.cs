using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CENTER : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int no;
        int    K;
        
        Connectiondb.ora = "SELECT MAX(ENTRYNO) as no FROM CENTRE";
        Connectiondb.queryrd1(Connectiondb.ora);
        while (Connectiondb.oraReader.Read())
        {
            if (Connectiondb.oraReader["no"].ToString() == null)
            {
                TextBox2.Text = "1";
            }
            else
            {
                K =Convert .ToInt32 (  Connectiondb.oraReader["no"].ToString());
                no  = K + 1;
                TextBox2.Text = Convert .ToString (no);
            }
        }
    }

 
    protected void Button1_Click(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Connectiondb.connection();
        Connectiondb.ora = "INSERT INTO CENTRE(ENTRYNO,NAME,PHONE)VALUES('" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "')";
        Response.Write("DONE");
        Connectiondb.query(Connectiondb.ora);
    }
}