using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LECTURER_ASSIGN : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Connectiondb.ora = "SELECT * FROM LECA WHERE ID=" + ComboBox3.Text + " AND NAME='" + TextBox1.Text + "' AND COURSE='" + ComboBox1.Text + "' AND LEVELLL='" + ComboBox2.Text + "' ";
        Connectiondb.queryrd1(Connectiondb.ora);
        if (Connectiondb.oraReader.Read() == true)
        {
            Response.Write("UNSUCCESSFUL,RECORD EXIST");
        }
        else
        {
            Connectiondb.connection();
            Connectiondb.ora = "INSERT INTO LECA(ID,NAME,COURSE,CODE,LEVELLL)VALUES('" + ComboBox3.Text + "','" + TextBox1.Text + "','" + ComboBox1.Text + "' ,'"+ Label6 .Text +"','" + ComboBox2.Text + "')";
            Response.Write("DONE");
            Connectiondb.query(Connectiondb.ora);
        }
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        
    }
    protected void ComboBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ComboBox2.Items.Clear();
        Connectiondb.ora = "SELECT * FROM COURSE WHERE NAME='" + ComboBox1.Text + "'";
        Connectiondb.queryrd1(Connectiondb.ora);
        while (Connectiondb.oraReader.Read()) {
            ComboBox2.Items.Add(Connectiondb.oraReader["LEVELLL"].ToString());
        }
        Connectiondb.queryrd2();
    }
    protected void ComboBox3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Connectiondb.ora = "SELECT * FROM LECTURER WHERE ID='" + ComboBox3.Text + "'";
        Connectiondb.queryrd1(Connectiondb.ora);
        while (Connectiondb.oraReader.Read())
        {
            TextBox1.Text = Connectiondb.oraReader["NAME"].ToString();
        }
        Connectiondb.queryrd2();
    }
    protected void ComboBox2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Connectiondb.ora = "SELECT * FROM COURSE WHERE NAME='" + ComboBox1.Text + "' AND LEVELLL='"+ ComboBox2 .Text +"'";
        Connectiondb.queryrd1(Connectiondb.ora);
        while (Connectiondb.oraReader.Read())
        {
            Label6 .Text =Connectiondb.oraReader["CODE"].ToString();
        }
        Connectiondb.queryrd2();
    }
}