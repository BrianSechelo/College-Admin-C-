<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LECTURER.aspx.cs" Inherits="LECTURER" MasterPageFile ="~/MasterPage.master"  %>

<asp:Content ID=Content1 ContentPlaceHolderID=ContentPlaceHolder1 runat="server">
    <%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


    
    <title></title>
    <style type="text/css">        .style1
        {
            width: 100%;
            border-collapse: collapse;
            margin-top: 0px;
        }
        .style2
        {
            height: 68px;
        }
        .style3
        {
            height: 65px;
        }
        .style4
        {
            height: 35px;
        }
    </style>

<body>
   
    <div style="height: 368px; margin-top: 0px; font-size: xx-large; font-weight: bold; text-transform: capitalize; color: #CC0000; text-align: center; width: 905px; margin-right: auto; margin-left: auto;">
    
        LECTURER&nbsp;
            
        <br />
        <table class="style1" frame="box" 
            
            style="padding: 5px; margin: 10px; border-color: #C0C0C0; height: 241px; font-size: medium; font-weight: normal; color: #000000;">
                <tr>
                    <td style="text-align: right" class="style2">
    
        <asp:Label ID="Label1" runat="server" Text="id"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ComboBox ID="ComboBox1" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource1" DataTextField="ID" DataValueField="ID" 
                            MaxLength="20" onselectedindexchanged="ComboBox1_SelectedIndexChanged" 
                            style="display: inline;">
                            
 </asp:ComboBox>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                            SelectCommand="SELECT DISTINCT ID FROM SYSTEM.LECTURER"></asp:SqlDataSource>
                    </td>
                    <td style="text-align: left" class="style2">
        <asp:Label ID="Label2" runat="server" Text="NAME"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="187px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right" class="style3">
                        <asp:Label ID="Label3" runat="server" Text="COURSE"></asp:Label>
                        <asp:ComboBox ID="ComboBox2" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource2" DataTextField="NAME" DataValueField="NAME" 
                            MaxLength="0" onselectedindexchanged="ComboBox2_SelectedIndexChanged" 
                            style="display: inline;">
                        </asp:ComboBox>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                            SelectCommand="SELECT DISTINCT &quot;NAME&quot; FROM SYSTEM.COURSE">
                        </asp:SqlDataSource>
                    </td>
                    <td style="text-align: left" class="style3">
                        <asp:Label ID="Label5" runat="server" Text="CODE"></asp:Label>
                        &nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="192px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center" class="style4">
                        <asp:Label ID="Label4" runat="server" Text="LEVEL"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ComboBox ID="ComboBox3" runat="server" 
                            onselectedindexchanged="ComboBox3_SelectedIndexChanged">
                        </asp:ComboBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" 
                        style="border-style: solid; border-color: #C0C0C0; text-align: center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="OK" Height="27px" onclick="Button1_Click" 
                            Width="88px" />
    
                    </td>
                </tr>
            </table>
        <br />
        <div style="height: 281px; color: #000000; font-weight: normal; font-size: medium;">
        </div>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;
        <br />
&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
   
</body>
</asp:Content>
