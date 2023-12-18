<%@ Page Language="C#" AutoEventWireup="true" CodeFile="STUDENTS.aspx.cs" Inherits="STUDENTS" MasterPageFile ="~/MasterPage.master"  %>
<asp:Content ID=Content1 ContentPlaceHolderID=ContentPlaceHolder1 runat="server">
    <%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>



    <title></title>
    <style type="text/css">
        .style1
        {
            width: 97%;
            border-collapse: collapse;
        }
        .style2
        {
            width: 467px;
        }
    </style>

<body>
   
    <div style="font-size: xx-large; font-weight: bold; text-transform: capitalize; color: #CC0000; text-align: center;">
    
        &nbsp;&nbsp; 
        STUDENTS</div>
    <div style="height: 1032px; text-align: center; margin-right: auto; margin-left: auto;">
&nbsp;&nbsp;
        &nbsp;
        <table class="style1" frame="box" 
            style="border-style: solid; border-color: #C0C0C0; padding: 5px; margin: 10px;">
            <tr>
                <td style="text-align: right" class="style2">
        <asp:Label ID="Label1" runat="server" Text="NAME"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="187px" Height="23px"></asp:TextBox>
                </td>
                <td style="text-align: left">
        <asp:Label ID="Label2" runat="server" Text="STUDENT NO"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Width="198px" Height="23px"></asp:TextBox>
                &nbsp;<asp:Label ID="Label15" runat="server" Text="ENTRYNO"></asp:Label>
&nbsp;
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="style2">
        <asp:Label ID="Label3" runat="server" Text="BOOKING REF NO"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Height="23px" Width="187px"></asp:TextBox>
                </td>
                <td style="text-align: left">
        <asp:Label ID="Label4" runat="server" Text="ADRESS"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Height="23px" Width="198px" 
                        ontextchanged="TextBox4_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="style2">
        <asp:Label ID="Label5" runat="server" Text="PHONE NO"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Width="187px" Height="23px" 
                        ontextchanged="TextBox5_TextChanged"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label9" runat="server" Text="CENTRE"></asp:Label>
                    &nbsp;<asp:ComboBox ID="ComboBox3" runat="server" DataSourceID="SqlDataSource1" 
                        DataTextField="NAME" DataValueField="NAME" MaxLength="0" 
                        onselectedindexchanged="ComboBox3_SelectedIndexChanged" 
                        style="display: inline;" AutoPostBack="True" Width="177px">
                    </asp:ComboBox>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                        SelectCommand="SELECT &quot;NAME&quot; FROM &quot;CENTRE&quot;">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="style2">
                    <asp:Label ID="Label11" runat="server" Text="COURSE"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ComboBox ID="ComboBox1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ComboBox1_SelectedIndexChanged" Width="166px">
                    </asp:ComboBox>
                </td>
                <td style="text-align: left">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Text="CODE"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="TextBox9" runat="server" ontextchanged="TextBox9_TextChanged" 
                        Height="23px" Width="198px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="style2">
                    <asp:Label ID="Label13" runat="server" Text="LEVEL"></asp:Label>
                    <asp:ComboBox ID="ComboBox4" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ComboBox4_SelectedIndexChanged" Width="166px">
                    </asp:ComboBox>
                </td>
                <td style="text-align: left">
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="LECID"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ComboBox ID="ComboBox2" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ComboBox2_SelectedIndexChanged" Width="177px">
                    </asp:ComboBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="style2">
                    <asp:Label ID="Label14" runat="server" Text="NAME"></asp:Label>
                    <asp:TextBox ID="TextBox10" runat="server" Height="23px" Width="187px"></asp:TextBox>
                </td>
                <td style="text-align: left">
        <asp:Label ID="Label10" runat="server" Text="COST"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox8" runat="server" Height="22px" Width="198px" 
                        ontextchanged="TextBox8_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border-color: #C0C0C0; border-style: solid" class="style2">
        <asp:Label ID="Label6" runat="server" Text="START DATE"></asp:Label>
                    <asp:Calendar ID="Calendar1" runat="server" Height="16px" Width="409px"></asp:Calendar>
                </td>
                <td style="border-color: #C0C0C0; border-style: solid">
        <asp:Label ID="Label7" runat="server" Text="END DATE"></asp:Label>
        <asp:Calendar ID="Calendar2" runat="server" Height="16px" Width="396px"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="32px" onclick="Button1_Click" 
                        Text="OK" Width="140px" />
&nbsp;&nbsp;
                    <asp:AnimationExtender ID="Button1_AnimationExtender" runat="server" 
                        TargetControlID="Button1">
                    </asp:AnimationExtender>
                </td>
            </tr>
        </table>
        <br />
        <br />
&nbsp;&nbsp;
        <br />
        <br />
&nbsp;
        <br />
        <br />
&nbsp;
        <br />
&nbsp;
        <br />
&nbsp;
        <br />
&nbsp;
        <br />
        <br />
&nbsp;<br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </div>
   
</body>
 </asp:Content>
