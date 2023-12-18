<%@ Page Language="C#" AutoEventWireup="true" CodeFile="USERS.aspx.cs" Inherits="USERS" MasterPageFile ="~/MasterPage.master" %>

<asp:Content ID=Content1 ContentPlaceHolderID=ContentPlaceHolder1 runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 97%;
            border-collapse: collapse;
        }
    </style>

<body>
    
    <div style="text-align: center; font-weight: bold; font-size: xx-large; color: #CC0000">
    
        &nbsp;&nbsp;USERS</div>
    <div style="height: 210px; text-align: center; margin-right: auto; margin-left: auto;">
&nbsp;
        <table class="style1" frame="box" 
            style="text-align: center; border-color: #C0C0C0; margin: 10px; padding: 10px; height: 159px;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="USER NAME"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="PASSWORD"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="233px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="CONFIRM PASSWORD"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" Height="23px" Width="238px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                        ErrorMessage="NOT CORRECT" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="border-style: solid; border-color: #C0C0C0;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="OK" Width="94px" 
                        onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
   
</body>
</asp:Content>
