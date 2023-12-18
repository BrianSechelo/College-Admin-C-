using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class STUDENTS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string SNO;
        int no;
        int  K;

        Connectiondb.ora = "SELECT MAX(ENTRYNO) as no FROM STUDENTS";
        Connectiondb.queryrd1(Connectiondb.ora);
        while (Connectiondb.oraReader.Read())
        {
            if (Connectiondb.oraReader["no"].ToString() =="")
            {
              
                Label15.Text = "1001";
                 SNO = "S" + "1001" + System.Environment.NewLine; ;
                 TextBox2.Text = SNO;
            }
            else
            {
                K = Convert.ToInt32(Connectiondb.oraReader["no"].ToString());
                K = K + 1;
                Label15.Text = Convert.ToString(K );
                SNO = "S" + K;
                TextBox2.Text = SNO;
            }
            
       
           

        }
    }
    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string COUNT;
        string  J = DateTime.Now.ToString () ;
        string start = Calendar1.SelectedDate.ToString();
        string fin = Calendar2.SelectedDate.ToString();
        if (TextBox1.Text == "") {
            Response.Write("FAILED,ENTER STUDENT NAME");
        return ;
        }
      
        Connectiondb.connection();

                                            
        Connectiondb.ora = "INSERT INTO STUDENTS(ENTRYNO,stdNo,NAME,ADRESS,BOOKINGREF,BOOKINDATE ,PHONE,COURSE ,CODE,LEVELLL ,COST ,STARTDATE ,FINISHDATE ,LECTURER ,LECID,CENTRE)VALUES('"+ Label15 .Text +"','" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox4.Text + "','" + TextBox3.Text + "','" + J + "','" + TextBox5.Text + "','" + ComboBox1.Text + "','" + TextBox9.Text + "','" + ComboBox4.Text + "','" + TextBox8.Text + "','" + start + "','" + fin + "','" + TextBox10.Text + "','" + ComboBox2.Text + "','" + ComboBox3.Text + "')";
        Connectiondb .query( Connectiondb.ora);
        Response.Write("DONE");
        Connectiondb.ora = "SELECT COUNT(StdNo) AS COUNT FROM STUDENTS WHERE LECID='" + ComboBox2.Text + "'";
        Connectiondb.queryrd1(Connectiondb.ora);
        while (Connectiondb.oraReader.Read()) {
            COUNT =Connectiondb .oraReader ["COUNT"].ToString ();
            Connectiondb.connection();
            Connectiondb.ora = "UPDATE CENTREA SET CSIZE='" + COUNT + "' WHERE LECID ='" + ComboBox2.Text + "' AND CENTRE='" + ComboBox3.Text + "'";
            Connectiondb.query(Connectiondb.ora);
        }
        Connectiondb.queryrd2();
           string SNO;
        
        int  K;

        Connectiondb.ora = "SELECT MAX(ENTRYNO) as no FROM STUDENTS";
        Connectiondb.queryrd1(Connectiondb.ora);
        while (Connectiondb.oraReader.Read())
        {
            if (Connectiondb.oraReader["no"].ToString() == "")
            {

                Label15.Text = "1001";
                SNO = "S" + "1001" + System.Environment.NewLine; ;
                TextBox2.Text = SNO;
            }
            else
            {
                K = Convert.ToInt32(Connectiondb.oraReader["no"].ToString());
                K = K + 1;
                Label15.Text = Convert.ToString(K);
                SNO = "S" + K;
                TextBox2.Text = SNO;
            }
        }
        TextBox1.Text = "";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
       
    }
    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
         
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        
       
    }
    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void ComboBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ComboBox4.Items.Clear();
        Connectiondb.ora = "SELECT * FROM COURSE WHERE NAME='" + ComboBox1.Text + "'";
        Connectiondb.queryrd1(Connectiondb.ora);
        while (Connectiondb.oraReader.Read())
        {
            TextBox9.Text = Connectiondb.oraReader["CODE"].ToString();
            ComboBox4.Items.Add(Connectiondb.oraReader["LEVELLL"].ToString());
        }
        Connectiondb.queryrd2();
    }
    protected void ComboBox2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Connectiondb.ora = "SELECT * FROM LECTURER WHERE ID='" + ComboBox2.Text + "'";
        Connectiondb.queryrd1(Connectiondb.ora);
        while (Connectiondb.oraReader.Read())
        {
            TextBox10.Text = Connectiondb.oraReader["NAME"].ToString();
        }
        Connectiondb.queryrd2();
        Connectiondb.ora = "SELECT * FROM COURSE WHERE  NAME='" + ComboBox1.Text + "' AND CODE='" + TextBox9.Text + "' AND LEVELLL='" + ComboBox4.Text + "'";
        Connectiondb.queryrd1(Connectiondb.ora);
        while (Connectiondb.oraReader.Read())
        {
            TextBox8.Text = Connectiondb.oraReader["COST"].ToString();
        }
    }
    protected void ComboBox3_SelectedIndexChanged(object sender, EventArgs e)
    {
        ComboBox1.Items.Clear();
        Connectiondb.ora = "SELECT DISTINCT COURSE FROM CENTREA WHERE CENTRE='" + ComboBox3.Text + "'";
        Connectiondb.queryrd1(Connectiondb.ora);
        while (Connectiondb.oraReader.Read()) {
            ComboBox1.Items.Add(Connectiondb.oraReader["COURSE"].ToString());
        }

        Connectiondb.queryrd1(Connectiondb.ora);
    }
    protected void ComboBox4_SelectedIndexChanged(object sender, EventArgs e)
    {
        ComboBox2.Items.Clear();
        Connectiondb.ora = "SELECT * FROM CENTREA WHERE COURSE='" + ComboBox1.Text + "' AND CODE='" + TextBox9.Text + "' AND LEVELLL='" + ComboBox4.Text + "' AND CENTRE='"+ ComboBox3 .Text +"'";
        Connectiondb.queryrd1(Connectiondb.ora);
        while (Connectiondb.oraReader.Read())
        {
            ComboBox2.Items.Add(Connectiondb.oraReader["LECID"].ToString());
        }
        Connectiondb.queryrd2();
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
}