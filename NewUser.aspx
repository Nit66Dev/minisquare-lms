<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminEXT.master" CodeFile="NewUser.aspx.cs" Inherits="NewUser" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
<br />
<br />
<br />
<br />
    <table align="center" 
        style="border: thick ridge #669999; background-image: url('temp/15.png');">
        <tr>
        <td class="style2" align="center" colspan="3" style="border: medium ridge #339966;">
        
            <asp:Label ID="Label1" runat="server" Height="25px" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
        <td class="style2" align="center" colspan="3" style="border: medium ridge #339966;">
        
            <span class="style8" dir="ltr">Enter Student Details</span><br />
            </td>
        </tr>
        <tr>
        <td class="style2" align="center" style="border: medium ridge #339966;">
        
            Student Roll:</td>
        <td class="style9">
        
            <asp:TextBox ID="f1" runat="server" Height="25px"></asp:TextBox>
        
            <asp:TextBoxWatermarkExtender ID="f1_TextBoxWatermarkExtender" runat="server" 
                Enabled="True" WatermarkText="Enter a Roll Number" TargetControlID="f1">
            </asp:TextBoxWatermarkExtender>
        
            </td>
        <td class="style9">
        
            <asp:Label ID="Label2" runat="server" Height="25px" Text="Label"></asp:Label>
        
            </td>
        </tr>
        <tr>
        <td class="style2" style="border: medium ridge #339966;">
        
            Student Name:</td>
        <td class="style9">
        
            <asp:TextBox ID="f2" runat="server" Height="25px"></asp:TextBox>
        
            <asp:TextBoxWatermarkExtender ID="f2_TextBoxWatermarkExtender" runat="server" 
                Enabled="True" WatermarkText="Enter the Student Name" TargetControlID="f2">
            </asp:TextBoxWatermarkExtender>
        
            </td>
        <td class="style9" rowspan="4">
        
            &nbsp;</td>
        </tr>
        <tr>
        <td class="style2" align="center" style="border: medium ridge #339966;">
        
            Department:</td>
        <td class="style9">
        
            <asp:DropDownList ID="ddl1" runat="server" DataSourceID="dsDept" 
                DataTextField="Department" DataValueField="Department" Height="25px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsDept" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Library_DBConnectionString %>" 
                SelectCommand="SELECT [Department] FROM [Dept_Master]"></asp:SqlDataSource>
        
            </td>
        </tr>
        <tr>
        <td class="style2" align="center" style="border: medium ridge #339966;">
        
            Department ID:</td>
        <td class="style9">
        
            <asp:DropDownList ID="ddl2" runat="server" DataSourceID="dsDeptCode" 
                DataTextField="Dept_Code" DataValueField="Dept_Code" Height="25px" 
                Width="180px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsDeptCode" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Library_DBConnectionString %>" 
                SelectCommand="SELECT [Dept_Code] FROM [Dept_Master]"></asp:SqlDataSource>
        
            </td>
        </tr>
        <tr>
        <td class="style2" align="center" style="border: medium ridge #339966;">
        
            Year:</td>
        <td class="style9">
        
            <asp:TextBox ID="f5" runat="server" Height="25px"></asp:TextBox>
        
            <asp:TextBoxWatermarkExtender ID="f5_TextBoxWatermarkExtender" runat="server" 
                Enabled="True" WatermarkText="Enter Year of Study" TargetControlID="f5">
            </asp:TextBoxWatermarkExtender>
        
            </td>
        </tr>
        <tr>
        <td class="style2" align="center" style="border: medium ridge #339966;">
        
            User Name:</td>
        <td class="style9">
        
            <asp:TextBox ID="f6" runat="server" Height="25px"></asp:TextBox>
        
            <asp:TextBoxWatermarkExtender ID="f6_TextBoxWatermarkExtender" runat="server" 
                Enabled="True" WatermarkText="Enter a valid UserName " TargetControlID="f6">
            </asp:TextBoxWatermarkExtender>
        
            </td>
        <td class="style9">
        
            <asp:Label ID="Label3" runat="server" Height="25px" Text="Label"></asp:Label>
        
            </td>
        </tr>
        <tr>
        <td class="style2" align="center" style="border: medium ridge #339966;">
        
            Password:</td>
        <td class="style9">
        
            <asp:TextBox ID="f7" runat="server" Height="25px" TextMode="Password"></asp:TextBox>
        
            </td>
        <td class="style9" rowspan="4">
        
            &nbsp;</td>
        </tr>
        <tr>
        <td class="style2" align="center" style="border: medium ridge #339966;">
        
            Valid Upto :
        
            </td>
        <td class="style9">
        
            <asp:TextBox ID="fi1" runat="server" Height="25px"></asp:TextBox>
        
            <asp:TextBoxWatermarkExtender ID="fi1_TextBoxWatermarkExtender" runat="server" 
                Enabled="True" WatermarkText="Enter license validity date" TargetControlID="fi1">
            </asp:TextBoxWatermarkExtender>
        
            </td>
        </tr>
        <tr>
        <td class="style2" align="center" style="border: medium ridge #339966;">
        
            E-mail:</td>
        <td class="style9">
        
            <asp:TextBox ID="f8" runat="server" Height="25px"></asp:TextBox>
        
            <asp:TextBoxWatermarkExtender ID="f8_TextBoxWatermarkExtender" runat="server" 
                Enabled="True" WatermarkText="Enter your email" TargetControlID="f8">
            </asp:TextBoxWatermarkExtender>
        
            </td>
        </tr>
        <tr>
        <td class="style2" align="center" style="border: medium ridge #339966;">
        
            Mobile:</td>
        <td class="style9">
        
            <asp:TextBox ID="f9" runat="server" Height="25px"></asp:TextBox>
        
            <asp:TextBoxWatermarkExtender ID="f9_TextBoxWatermarkExtender" runat="server" 
                Enabled="True" WatermarkText="Enter your mobile.." TargetControlID="f9">
            </asp:TextBoxWatermarkExtender>
        
            </td>
        </tr>
        <tr>
        <td class="style2" style="border: medium ridge #339966;">
        
            &nbsp;</td>
        <td class="style9" style="border: medium ridge #339966;">
        
            &nbsp;</td>
        <td class="style9" style="border: medium ridge #339966;">
        
            <asp:Button ID="b1" runat="server" Height="30px" Text="Create User" OnClick="b1_Click" />
            <asp:Button ID="b2" runat="server" Height="30px" Text="Reset" OnClick="b2_Click" />
            </td>
        </tr>
        </table>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style2
    {
        color: #FFFFFF;
            font-size: large;
        }
        .style8
        {
            font-size: xx-large;
        }
        .style9
        {
            color: #FFFFFF;
            font-size: large;
            width: 193px;
        }
    </style>
</asp:Content>


