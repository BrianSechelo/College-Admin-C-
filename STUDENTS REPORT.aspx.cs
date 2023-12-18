using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess .Client ;
using Oracle.DataAccess.Types;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.CrystalReports.Design;
using CrystalDecisions.ReportSource;
using CrystalDecisions.Shared;
using CrystalDecisions.Data;

public partial class STUDENTS_REPORT : System.Web.UI.Page
{
   
   
    protected void Page_Load(object sender, EventArgs e)
    {
        

   
       
            
       
    }
    private void setDBLOGONforREPORT(ConnectionInfo myconnectioninfo)
    {
        
        TableLogOnInfos mytableloginfos = new TableLogOnInfos();
        mytableloginfos = CrystalReportViewer1.LogOnInfo;
        foreach (TableLogOnInfo myTableLogOnInfo in mytableloginfos)
        {
            myTableLogOnInfo.ConnectionInfo = myconnectioninfo;
        }

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
        CrystalReport Orpt = new CrystalReport();

        dbtable = "STUDENTS";
        ora = "SELECT * FROM STUDENTS WHERE StdNo='"+ ComboBox1 .Text +"'";
        cnn = new OracleConnection("User Id=system;Password=Zod7iac;Data Source=zilla");
        da = new OracleDataAdapter(ora, cnn);

        Mydata ds = new Mydata();

        da.Fill(ds, "" + dbtable + "");


        CrystalReportViewer1.Visible = true;

        Orpt.SetDataSource(ds);

        CrystalReportViewer1.ReportSource = Orpt;
        

    }
     protected void GenerateReport()
                   {
                      
                   }

     protected void ComboBox1_SelectedIndexChanged(object sender, EventArgs e)
     {
         Connectiondb.ora = "SELECT * FROM STUDENTS WHERE StdNo='" + ComboBox1.Text + "'";
         Connectiondb.queryrd1(Connectiondb.ora);
         while (Connectiondb.oraReader.Read()) {
             TextBox1.Text = Connectiondb.oraReader["Name"].ToString();

         }
         Connectiondb.queryrd2();
     }
}