using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;

public partial class Course_Summary_Report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ComboBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Connectiondb.ora = "SELECT * FROM STUDENTS WHERE StdNo='" + ComboBox1.Text + "'";
        Connectiondb.queryrd1(Connectiondb.ora);
        while (Connectiondb.oraReader.Read())
        {
            TextBox1.Text = Connectiondb.oraReader["Name"].ToString();

        }
        Connectiondb.queryrd2();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OracleConnection cnn;
        OracleDataAdapter da;
        string ora;
        string dbtable;
       MONEY Orpt = new MONEY();

        dbtable = "STUDENTS";
        ora = "SELECT * FROM STUDENTS WHERE StdNo='" + ComboBox1.Text + "'";
        cnn = new OracleConnection("User Id=system;Password=Zod7iac;Data Source=zilla");
        da = new OracleDataAdapter(ora, cnn);

        DataSet1 ds = new DataSet1();

        da.Fill(ds, "" + dbtable + "");


        CrystalReportViewer1.Visible = true;

        Orpt.SetDataSource(ds);

        CrystalReportViewer1.ReportSource = Orpt;
        
    }
}