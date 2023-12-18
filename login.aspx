<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login"  MasterPageFile ="~/MasterPage.master" %>

<asp:Content ID=Content1 ContentPlaceHolderID=ContentPlaceHolder1 runat="server">
    <title></title>

<body>
   
    <div style="text-align: center; font-weight: bold; color: #CC0000; font-size: xx-large">
    
        LOGIN</div>
    <div style="padding: 10px; height: 179px; margin-right: auto; margin-left: auto; text-align: center;">
        <asp:Label ID="Label1" runat="server" Text="USER NAME"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="164px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="PASSWORD"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="162px" 
            TextMode="Password"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="27px" Text="OK" Width="76px" 
            onclick="Button1_Click" />
    &nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/USERS.aspx">SIGN UP</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    </form
</body>
</asp:Content>
