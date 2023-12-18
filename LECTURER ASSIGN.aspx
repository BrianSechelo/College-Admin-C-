<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LECTURER ASSIGN.aspx.cs" Inherits="LECTURER_ASSIGN" MasterPageFile ="~/MasterPage.master" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID=Content1 ContentPlaceHolderID=ContentPlaceHolder1 runat="server">

    <title></title>
    <style type="text/css">
        .style1
        {
            width: 97%;
            border-collapse: collapse;
        }
        .style2
        {
            height: 42px;
        }
        .style3
        {
            height: 87px;
        }
    </style>

<body>
   
    <div style="font-size: xx-large; text-transform: capitalize; font-weight: bold; color: #CC0000; text-align: center;">
    
        ASSIGN LECTURER</div>
    <div style="height: 245px; text-align: center; margin-right: auto; margin-left: auto;">
        <table class="style1" frame="box" 
            style="border-color: #C0C0C0; padding: 5px; margin: 10px; height: 142px;">
            <tr>
                <td class="style3" style="text-align: right">
                    <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                    &nbsp;<asp:ComboBox ID="ComboBox3" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource2" DataTextField="ID" DataValueField="ID" 
                        MaxLength="0" onselectedindexchanged="ComboBox3_SelectedIndexChanged" 
                        style="display: inline;">
                    </asp:ComboBox>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                        SelectCommand="SELECT DISTINCT ID FROM SYSTEM.LECTURER"></asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style3" style="text-align: left">
                    &nbsp;<asp:Label ID="Label3" runat="server" Text="NAME"></asp:Label>
&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Width="175px" Height="26px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3" style="text-align: right">
                    <asp:Label ID="Label4" runat="server" Text="COURSE"></asp:Label>
                    <asp:ComboBox ID="ComboBox1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="NAME" DataValueField="NAME" 
                        MaxLength="0" onselectedindexchanged="ComboBox1_SelectedIndexChanged" 
                        style="display: inline;">
                    </asp:ComboBox>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                        SelectCommand="SELECT DISTINCT &quot;NAME&quot; FROM SYSTEM.COURSE">
                    </asp:SqlDataSource>
                </td>
                <td class="style3" style="text-align: left">
                    <asp:Label ID="Label5" runat="server" Text="LEVEL"></asp:Label>
&nbsp;&nbsp;
                    <asp:ComboBox ID="ComboBox2" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ComboBox2_SelectedIndexChanged">
                    </asp:ComboBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="CODE"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center" class="style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="28px" onclick="Button1_Click" 
                        Text="OK" Width="112px" />
                </td>
            </tr>
        </table>
&nbsp;
        <br />
        <br />
&nbsp;&nbsp;
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </div>
   
</body>
 </asp:Content>
