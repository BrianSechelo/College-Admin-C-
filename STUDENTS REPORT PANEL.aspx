<%@ Page Language="C#" AutoEventWireup="true" CodeFile="STUDENTS REPORT PANEL.aspx.cs" Inherits="STUDENTS_REPORT_PANEL" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 89px">
    
        <asp:Button ID="Button1" runat="server" Height="23px" onclick="Button1_Click" 
            Text="INDIVIDUAL STUDENT" Width="159px" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="STUDENT LIST" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Height="26px" onclick="Button3_Click" 
            Text="STUDENT COURSE SUMMARY" />
    
    </div>
    </form>
</body>
</html>
