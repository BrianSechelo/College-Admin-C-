<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CENTRE ASSIGN.aspx.cs" Inherits="CENTRE_ASSIGN" MasterPageFile ="~/MasterPage.master"%>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID=Content1 ContentPlaceHolderID=ContentPlaceHolder1 runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 98%;
            border-collapse: collapse;
        }
        .style2
        {
            width: 476px;
        }
    </style>

<body>
    
    <div style="text-align: center; font-size: xx-large; color: #CC0000">
    
    &nbsp;&nbsp;&nbsp; CENTRE ASSIGN</div>
    <div style="padding: 10px; height: 229px; text-align: center; margin-right: auto; margin-left: auto;">
&nbsp;<table class="style1" frame="border" 
            
            style="padding: 5px; margin: 10px; border-style: solid; border-color: #C0C0C0;">
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label7" runat="server" Text="CENTRE"></asp:Label>
                    <asp:ComboBox ID="ComboBox1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="NAME" DataValueField="NAME" 
                        DropDownStyle="DropDownList" MaxLength="0" style="display: inline;" 
                        onselectedindexchanged="ComboBox1_SelectedIndexChanged">
                    </asp:ComboBox>
                    <br />
&nbsp;
                    <asp:Label ID="Label13" runat="server" Text="PHONE"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                        SelectCommand="SELECT * FROM &quot;CENTRE&quot;"></asp:SqlDataSource>
                </td>
                <td style="text-align: left" class="style2">
                    <asp:Label ID="Label8" runat="server" Text="COURSE"></asp:Label>
                    <asp:ComboBox ID="ComboBox2" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource2" DataTextField="NAME" DataValueField="NAME" 
                        MaxLength="0" onselectedindexchanged="ComboBox2_SelectedIndexChanged" 
                        style="display: inline;">
                    </asp:ComboBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        onselecting="SqlDataSource2_Selecting" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                        SelectCommand="SELECT DISTINCT &quot;NAME&quot; FROM SYSTEM.COURSE">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label11" runat="server" Text="CODE"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" 
                        style="margin-left: 0px" Width="148px"></asp:TextBox>
                </td>
                <td style="text-align: left" class="style2">
                    <asp:Label ID="Label12" runat="server" Text="LEVEL"></asp:Label>
&nbsp;&nbsp;&nbsp;
                    <asp:ComboBox ID="ComboBox4" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ComboBox4_SelectedIndexChanged">
                    </asp:ComboBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label9" runat="server" Text="LECTURER ID"></asp:Label>
                    <asp:ComboBox ID="ComboBox3" runat="server" AutoPostBack="True" 
                        DataTextField="ID" DataValueField="ID" 
                        MaxLength="0" onselectedindexchanged="ComboBox3_SelectedIndexChanged" 
                        style="display: inline;">
                    </asp:ComboBox>
                </td>
                <td style="text-align: left" class="style2">
                    <asp:Label ID="Label10" runat="server" Text="NAME"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="155px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" 
                    style="border-style: solid; border-color: #C0C0C0; text-align: center">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="25px" onclick="Button1_Click" 
                        Text="ADD" Width="86px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
&nbsp;
        <br />
&nbsp;
        <br />
        <br />
&nbsp;
        <br />
        <br />
    </div>
   
</body>
</asp:Content>
