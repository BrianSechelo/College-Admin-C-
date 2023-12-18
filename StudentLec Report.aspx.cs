using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;

public partial class StudentLec_Report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void CrystalReportViewer1_Init(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OracleConnection cnn;
        OracleDataAdapter da;
        string ora;
        string dbtable;

        LECSDrpt Orpt = new LECSDrpt();

        dbtable = "STUDENTS";
        ora = "SELECT * FROM STUDENTS WHERE CENTRE='"+ ComboBox1 .Text +"'";
        cnn = new OracleConnection("User Id=system;Password=Zod7iac;Data Source=zilla");
        da = new OracleDataAdapter(ora, cnn);

        DataSet1 ds = new DataSet1();

        da.Fill(ds, "" + dbtable + "");


        CrystalReportViewer1.Visible = true;

        Orpt.SetDataSource(ds);

        CrystalReportViewer1.ReportSource = Orpt;
    }
}