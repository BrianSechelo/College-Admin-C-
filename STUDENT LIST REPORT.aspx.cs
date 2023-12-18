using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;

public partial class STUDENT_LIST_REPORT : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OracleConnection cnn;
        OracleDataAdapter da;
        string ora;
        string dbtable;
        Stdlist Orpt = new Stdlist();

        dbtable = "STUDENTS";
        ora = "SELECT DISTINCT StdNo,NAME,PHONE,LECTURER,CENTRE FROM STUDENTS";
        cnn = new OracleConnection("User Id=system;Password=Zod7iac;Data Source=zilla");
        da = new OracleDataAdapter(ora, cnn);

        Mydata ds = new Mydata();

        da.Fill(ds, "" + dbtable + "");


        CrystalReportViewer1.Visible = true;

        Orpt.SetDataSource(ds);

        CrystalReportViewer1.ReportSource = Orpt;
    }
    protected void CrystalReportViewer1_Init(object sender, EventArgs e)
    {

    }
}