<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="COURSE" />
    &nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        Text="LECTURER" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="CENTRE" 
        Width="94px" />
&nbsp;&nbsp;
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
        Text="STUDENTS" />
&nbsp;
    <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="LECA" />
    &nbsp;&nbsp;
    <asp:Button ID="Button6" runat="server" onclick="Button6_Click" 
        Text="CENTREA" />
    &nbsp;&nbsp;
    <asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="USERS" />
    &nbsp;
    &nbsp;
    &nbsp;
    <div style="height: 64px">
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/HOME PAGE.aspx">HOME PAGE</asp:LinkButton>
    </div>
    </form>
</body>
</html>
