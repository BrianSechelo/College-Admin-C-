using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CENTRE_ASSIGN : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ComboBox2_SelectedIndexChanged(object sender, EventArgs e)
    {
        ComboBox4.Items.Clear();
        Connectiondb.ora = "SELECT * FROM COURSE WHERE NAME='" + ComboBox2.Text + "'";
        Connectiondb.queryrd1(Connectiondb.ora);
        while (Connectiondb.oraReader.Read()) {
           TextBox2.Text = Connectiondb.oraReader["CODE"].ToString();
           ComboBox4.Items.Add(Connectiondb.oraReader["LEVELLL"].ToString());
           
        }
        Connectiondb.queryrd2();
       
    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void ComboBox3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Connectiondb.ora = "SELECT * FROM LECTURER WHERE ID='" + ComboBox3.Text + "'";
        Connectiondb.queryrd1(Connectiondb.ora);
        while (Connectiondb.oraReader.Read()) {
            TextBox1.Text = Connectiondb.oraReader["NAME"].ToString();
        }
        Connectiondb.queryrd2();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Connectiondb.ora = "SELECT * FROM CENTREA WHERE CENTRE='" + ComboBox1.Text + "' AND COURSE='" + ComboBox2.Text + "'  AND CODE='" + TextBox2.Text + "' AND LECID='" + ComboBox3.Text + "' AND LEVELLL='" + ComboBox4.Text + "'";
        Connectiondb.queryrd1(Connectiondb.ora);
        
       
        if (Connectiondb.oraReader.Read ())
        {
            Response.Write("UNSUCCESSFULL,RECORD EXISTS");
           
        }
        else
        {
            Connectiondb.connection();
            Connectiondb.ora = "INSERT INTO CENTREA(CENTRE,COURSE,CODE,LECID,LECTURER,LEVELLL,CPHONE)VALUES('" + ComboBox1.Text + "','" + ComboBox2.Text + "','" + TextBox2.Text + "','" + ComboBox3.Text + "','" + TextBox1.Text + "','" + ComboBox4.Text + "','"+ Label13 .Text +"')";
            Connectiondb.query(Connectiondb.ora);
            Response.Write("SUCCESSFULL");
          
        }
        
        Connectiondb .queryrd2 ();
    }
    protected void ComboBox4_SelectedIndexChanged(object sender, EventArgs e)
    {
        ComboBox3.Items.Clear();
        Connectiondb.ora = "SELECT DISTINCT ID FROM LECTURER WHERE COURSE='" + ComboBox2.Text + "' AND LEVELLL='" + ComboBox4.Text + "'";
        Connectiondb.queryrd1(Connectiondb.ora);
        while (Connectiondb.oraReader.Read())
        {
            ComboBox3.Items.Add(Connectiondb.oraReader["ID"].ToString());
        }
        Connectiondb.queryrd2();
    }
    protected void ComboBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Connectiondb.ora  = "SELECT * FROM CENTRE WHERE NAME='" + ComboBox1.Text + "'";
        Connectiondb.queryrd1(Connectiondb.ora);
        while (Connectiondb.oraReader.Read()) {
            Label13.Text = Connectiondb.oraReader["PHONE"].ToString();
        }
        Connectiondb.queryrd2();

    }
}