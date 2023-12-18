using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class USERS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Connectiondb .connection ();
        Connectiondb .ora ="INSERT INTO USERS(NAME,PASSWORD)VALUES('"+ TextBox1 .Text +"','"+ TextBox2 .Text +"')";
        Response.Write("done");
        Connectiondb.query(Connectiondb.ora);
        
    }
}