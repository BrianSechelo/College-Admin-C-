using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LECTURER : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Connectiondb.ora = "SELECT * FROM LECTURER WHERE ID='" + ComboBox1.Text + "' AND COURSE='" + ComboBox2.Text + "' AND CODE='" + TextBox3.Text + "' AND LEVELLL='" + ComboBox3.Text + "'";
        Connectiondb.queryrd1(Connectiondb.ora);
        if (Connectiondb.oraReader.Read() == true)
        {
            Response.Write("UNSUCCESSFUL,RECORD EXISTS");
        }
        else
        {
            Connectiondb.connection();

            Connectiondb.ora = "INSERT INTO LECTURER(NAME,ID,COURSE,CODE,LEVELLL)VALUES('" + TextBox2.Text + "','" + ComboBox1.Text + "','" + ComboBox2.Text + "','" + TextBox3.Text + "','" + ComboBox3.Text + "')";
            Response.Write("SUCCESSFULL");
            Connectiondb.query(Connectiondb.ora);
        }
        Connectiondb.queryrd2();
     
    }
    protected void ComboBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
 
         Connectiondb.ora = "SELECT * FROM LECTURER WHERE ID='" + ComboBox1.Text + "'";
        Connectiondb .queryrd1( Connectiondb.ora);
        while ( Connectiondb.oraReader.Read()) {
            TextBox2.Text =  Connectiondb.oraReader["NAME"].ToString();
        }
        Connectiondb .queryrd2();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        }
        
    protected void  ComboBox2_SelectedIndexChanged(object sender, EventArgs e)
{
        ComboBox3.Items.Clear();
        Connectiondb.ora = "SELECT * FROM COURSE WHERE NAME='" + ComboBox2.Text + "'";
        Connectiondb .queryrd1( Connectiondb.ora);
        while ( Connectiondb.oraReader.Read()) {
            TextBox3.Text =  Connectiondb.oraReader["CODE"].ToString();
            ComboBox3.Items.Add(Connectiondb.oraReader["LEVELLL"].ToString());
           
}
        Connectiondb.queryrd2();
}
    protected void ComboBox3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}