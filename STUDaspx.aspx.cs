using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;

public partial class STUDaspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OracleConnection cnn;
        OracleDataAdapter da;
        string ora;
        string dbtable;
        LECRC Orpt = new LECRC();

        dbtable = "CENTREA";
        ora = "SELECT DISTINCT CENTRE,LECID,LECTURER,CPHONE,CSIZE FROM CENTREA";
        cnn = new OracleConnection("User Id=system;Password=Zod7iac;Data Source=zilla");
        da = new OracleDataAdapter(ora, cnn);

        DataSet1 ds = new DataSet1();

        da.Fill(ds, "" + dbtable + "");


        CrystalReportViewer1.Visible = true;

        Orpt.SetDataSource(ds);

        CrystalReportViewer1.ReportSource = Orpt;
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void CrystalReportViewer1_Init(object sender, EventArgs e)
    {

    }
}