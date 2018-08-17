<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" MasterPageFile="~/exammain.master" Inherits="login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style type="text/css">
        .style4
        {
            color: #66FFFF;
        }
        .style6
        {
            font-family: Calibri;
            font-size: large;
            color: #000000;
            width: 66px;
        }
        .style7
        {
            font-weight: normal;
            font-size: large;
            font-family: Calibri;
        color: #000000;
    }
    .style8
    {
        width: 473px;
    }
        .style10
        {
            color: #66FFFF;
            font-family: Calibri;
            font-size: x-large;
            height: 3px;
            width: 66px;
        }
        .style11
        {
            color: #C0C0C0;
            font-family: Calibri;
            font-size: large;
        }
        .style12
        {
            width: 66px;
        }
        .style15
        {
            color: #C0C0C0;
            font-family: Calibri;
            font-size: large;
            width: 46px;
        }
    .style16
    {
        color: #C0C0C0;
        font-family: Calibri;
        font-size: large;
        width: 221px;
    }
    </style>
   
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <div>
        <table style="width: 100%; border: 0; border-spacing: 0; border-collapse: collapse">
            <tr>
                <td>
                </td>
            </tr>
        </table>
        <table style="width: 100%; border: 0; border-spacing: 0; border-collapse: collapse">
            <tr>
                <td>
                    <table style="width: 100%; border: 0; border-spacing: 0; border-collapse: collapse;
                        height: 700px">
                        <tr>
                            <td style="text-align: right; vertical-align: middle" class="style8">
                                &nbsp;</td>
                            <td style="text-align: center; vertical-align: middle">
                                <div>
                                    <asp:Panel ID="pnlRegis2" runat="server" CssClass="rounded-corners" Style="border: 0px solid #000000;
                                        " Height="127px" Width="316px">
                                        <table style="width: 100%; border: 0; border-spacing: 0; padding: 0; border-collapse: collapse">
                                            <tr>
                                                <td colspan="6">
                                                    <div>
                                                        <table style="width: 100%; border: 0; border-spacing: 0; border-collapse: collapse" >
                                                            <tr>
                                                                <td style="border: 0px solid #000000; text-align: left" class="rounded-corners">
                                                                  </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style15">
                                                    
                                                </td>
                                                <td style="text-align: left" class="style12">
                                                    
                                                </td>
                                                <td style="width: 150px; text-align: left" colspan="2">
                                                   
                                                </td>
                                                <td style="text-align: left">
                                                    
                                                </td>
                                                <td>
                                                   
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style15">
                                                </td>
                                                <td style="text-align: left; " class="style6">
                                                    User ID:
                                                </td>
                                                <td style="width: 150px; text-align: left" colspan="2">
                                                    <asp:TextBox ID="txtUID" runat="server" Width="150px" style="margin-right: 0px"></asp:TextBox>
                                                 
                                                </td>
                                                <td style="text-align: left">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your user id."
                                                        ControlToValidate="txtUID" SetFocusOnError="True" ForeColor="Maroon">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style15">
                                                </td>
                                                <td style="text-align: left; font-weight: 700; font-family: 'Bookman Old Style'; font-size: small;" 
                                                    class="style10">
                                                    <span class="style7">Password:</span>
                                                </td>
                                                <td style="width: 150px; text-align: left" colspan="2">
                                                    <asp:TextBox ID="txtPWD" runat="server" MaxLength="16" TextMode="Password" Width="150px"></asp:TextBox>
                                                </td>
                                                <td style="text-align: left">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter your password."
                                                        ControlToValidate="txtPWD" SetFocusOnError="True" ForeColor="Maroon">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style15">
                                                </td>
                                                <td style="text-align: left" colspan="3">
                                                    <asp:CheckBox ID="chkRemember" runat="server" Text="Remember me" 
                                                        
                                                        
                                                        style="font-family: 'Bookman Old Style'; font-weight: 700; font-size: small; color: #66FFFF;" 
                                                        Font-Overline="True" ForeColor="Gray" Visible="False" />
                                                </td>
                                                <td style="text-align: left">
                                                </td>
                                                <td>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style15">
                                                    &nbsp;</td>
                                                <td class="style12" style="text-align: left">
                                                    &nbsp;</td>
                                                <td style="text-align: left" colspan="2">
                                                    <asp:Button ID="bbton1" runat="server" Height="30px" style="margin-left: 77px" 
                                                        Text="Submit" Width="73px" />
                                                </td>
                                                <td style="text-align: left">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="style11" colspan="6">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="style11" colspan="6">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="style11" colspan="6">
                                                    <asp:HyperLink ID="hypl1" runat="server" NavigateUrl="~/CreateId.aspx" 
                                                        style="color: #000000">Not an user? Click here..</asp:HyperLink>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="style16" colspan="3">
                                                    &nbsp; &nbsp; &nbsp;
                                                </td>
                                                <td align="center" class="style11" colspan="3">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                        <table style="width: 100%; border: 0; border-spacing: 0; border-collapse: collapse">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblMSG" runat="server" style="color: #66FFFF" 
                                                        Font-Names="Calibri"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </div>
                            </td>
                            <td style="width: 450px; text-align: right; vertical-align: middle">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table style="width: 100%; border: 0; border-spacing: 0; border-collapse: collapse">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>


