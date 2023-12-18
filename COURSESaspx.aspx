<%@ Page Language="C#" AutoEventWireup="true" CodeFile="COURSESaspx.aspx.cs" Inherits="COURSESaspx"  MasterPageFile ="~/MasterPage.master" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID=Content1 ContentPlaceHolderID=ContentPlaceHolder1 runat="server">
    <title></title>

<body>
   
    <div style="padding: 10px; height: 486px; margin-right: auto; margin-left: auto;">
    
&nbsp;
&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Size="XX-Large" ForeColor="#CC0000" 
            Text="COURSES"></asp:Label>
        <table class="style2" frame="box" 
            style="padding: 5px; margin: 10px; border-color: #C0C0C0;">
            <tr>
                <td style="text-align: right">
    
        <asp:Label ID="Label1" runat="server" Text="COURSE NAME"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ComboBox ID="ComboBox1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="NAME" DataValueField="NAME" 
            MaxLength="40" onselectedindexchanged="ComboBox1_SelectedIndexChanged" 
            style="display: inline;">
        </asp:ComboBox>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                        SelectCommand="SELECT DISTINCT &quot;NAME&quot; FROM SYSTEM.COURSE">
                    </asp:SqlDataSource>
                </td>
                <td style="text-align: left">
        <asp:Label ID="Label2" runat="server" Text="COURSE CODE"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4" style="text-align: right">
        <asp:Label ID="Label3" runat="server" Text="COURSE LEVEL"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Width="198px" style="margin-left: 7px"></asp:TextBox>
                </td>
                <td class="style4" style="text-align: left">
        <asp:Label ID="Label4" runat="server" Text="COST"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Width="202px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3" colspan="2" style="text-align: center">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="ADD" 
            PostBackUrl="~/COURSESaspx.aspx" Width="59px" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
    
    </div>
    
</body>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style2
        {
            width: 96%;
            border-collapse: collapse;
        }
        .style3
        {
            height: 47px;
        }
        .style4
        {
            height: 50px;
        }
    </style>
</asp:Content>

