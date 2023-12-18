<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HOME PAGE.aspx.cs" Inherits="HOME_PAGE" MasterPageFile ="~/MasterPage.master" %>

<asp:Content ID=Content1 ContentPlaceHolderID=ContentPlaceHolder1 runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border-collapse: collapse;
            border-color: #CCCCCC;
        }
    </style>

<body>
    
    <div style="text-align: center; font-weight: bold; font-size: x-large; color: #CC0000">
    
        ONLINE DATABASE MANAGEMENT SYSTEM</div>
    <div style="height: 552px; width: 879px; text-align: right; margin-right: auto; margin-left: auto;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="style1" 
            style="text-align: center; font-size: large; color: #CC0000; border-style: solid; border-color: #C0C0C0">
            <tr>
                <td style="padding: 5px; margin: 10px">
                    <asp:Button ID="Button1" runat="server" Height="87px" 
                        PostBackUrl="~/CENTER.aspx" Text="CENTRES" Width="338px" 
                        onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; margin: 10px">
                    <asp:Button ID="Button2" runat="server" Height="84px" 
                        PostBackUrl="~/COURSESaspx.aspx" Text="COURSES" Width="335px" 
                        onclick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; margin: 10px">
                    <asp:Button ID="Button3" runat="server" Height="80px" 
                        PostBackUrl="~/LECTURER.aspx" Text="LECTURER" Width="333px" 
                        onclick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; margin: 10px">
                    <asp:Button ID="Button4" runat="server" Height="79px" 
                        PostBackUrl="~/CENTRE ASSIGN.aspx" Text="CENTRE ASSIGN" Width="330px" 
                        onclick="Button4_Click" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; margin: 10px">
                    <asp:Button ID="Button5" runat="server" Height="75px" 
                        PostBackUrl="~/STUDENTS.aspx" Text="STUDENTS" Width="328px" 
                        onclick="Button5_Click" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; margin: 10px">
                    <asp:Button ID="Button6" runat="server" Height="55px" onclick="Button6_Click" 
                        Text="REPORTS" Width="328px" />
                </td>
            </tr>
        </table>
    </div>
    </asp:Content>
