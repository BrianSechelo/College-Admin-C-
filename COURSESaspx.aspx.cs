using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class COURSESaspx : System.Web.UI.Page
{
    

   
    protected void Button1_Click(object sender, EventArgs e)
    {

        Connectiondb.ora = "SELECT * FROM COURSE WHERE NAME='" + ComboBox1.Text + "' AND CODE='" + TextBox2.Text + "' AND LEVELLL='" + TextBox3.Text + "'";
        Connectiondb.queryrd1(Connectiondb.ora);
        if (Connectiondb.oraReader.Read() == true)
        {
            Response.Write("UNSUCCESSFULL,RECORD EXISTS");
        }
        else
        {
            Connectiondb.connection();
            Connectiondb.ora = "INSERT INTO COURSE(NAME,CODE,LEVELLL,COST)VALUES('" + ComboBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
            Response.Write("done");
            Connectiondb.query(Connectiondb.ora);
        }
            
        } 

    protected void  ComboBox1_SelectedIndexChanged(object sender, EventArgs e)
{
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
         Connectiondb.ora = "SELECT * FROM COURSE WHERE NAME='" + ComboBox1.Text + "'";
        Connectiondb .queryrd1( Connectiondb.ora);
        while ( Connectiondb.oraReader.Read()) {
            TextBox2.Text =  Connectiondb.oraReader["CODE"].ToString();

        }
        Connectiondb .queryrd2();
}
}
    
