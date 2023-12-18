<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CENTER.aspx.cs" Inherits="CENTER" MasterPageFile ="~/MasterPage.master"  %>

<asp:Content ID=Content1 ContentPlaceHolderID=ContentPlaceHolder1 runat="server">

    <div style="text-align: center; font-size: xx-large; color: #CC0000">
    
    &nbsp;CENTRES</div>
    <div style="padding: 10px; height: 292px; text-align: center; margin-right: auto; margin-left: auto;">
&nbsp;<table class="style1" frame="box" style="border-color: #C0C0C0; width: 98%;">
            <tr>
                <td style="padding: 0px; text-align: right;">
                    <asp:Label ID="Label2" runat="server" Text="ENTRY NO"></asp:Label>
                    &nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="139px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td style="padding: 0px; text-align: left;">
        <asp:Label ID="Label1" runat="server" Text="NAME"></asp:Label>
                    &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="182px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="PHONE NO"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="160px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" 
                    style="border-collapse: separate; border-spacing: inherit; text-align: center;">
        <asp:Button ID="Button1" runat="server" Text="ADD" onclick="Button1_Click1" Height="30px" 
                        Width="87px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
            width: 100%;
            border-collapse: collapse;
            height: 102px;
        }
    </style>
</asp:Content>


