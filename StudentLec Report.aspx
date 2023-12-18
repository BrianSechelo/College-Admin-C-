<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentLec Report.aspx.cs" Inherits="StudentLec_Report" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-right: auto; margin-left: auto; text-align: center; height: 129px;">
    
        <asp:Label ID="Label1" runat="server" Text="CENTRE"></asp:Label>
&nbsp;
        <asp:ComboBox ID="ComboBox1" runat="server" DataSourceID="SqlDataSource1" 
            DataTextField="NAME" DataValueField="NAME" MaxLength="0" 
            style="display: inline;">
        </asp:ComboBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT DISTINCT &quot;NAME&quot; FROM SYSTEM.CENTRE">
        </asp:SqlDataSource>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Button ID="Button1" runat="server" Height="28px" onclick="Button1_Click" 
            Text="OK" Width="136px" />
        <br />
        <br />
        <br />
    
    </div>
    <div style="height: 128px">
    
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
            AutoDataBind="true" oninit="CrystalReportViewer1_Init" />
    
    </div>
    </form>
</body>
</html>
