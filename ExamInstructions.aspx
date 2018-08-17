<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/StudentsMaster.master" CodeFile="ExamInstructions.aspx.cs" Inherits="ExamInstructions" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center">
        <tr>
        <td style="font-family: Calibri; font-size: medium; color: #000000; font-style: italic;" 
                class="style7" >
        
            The exam is an online examination, please use the &quot;Submit OMR Sheet&quot; to submit 
            your answer sheet.</td>
        </tr>
        <tr>
        <td class="style6">
        
            You cannot jump to another question if you are already ib one question.<br />
            </td>
        </tr>
        <tr>
        <td class="style6">
        
            You have 4 options available in all:
            <br />
            Submit<br />
            Review and Submit<br />
            Mark for Review<br />
            Next</td>
        </tr>
        <tr>
        <td class="style6">
        
            Submit -: Clicking on this option saves your selected response but you cannot 
            change your response at a later point of time.</td>
        </tr>
        <tr>
        <td class="style6">
        
            Review and Submit : Clicking on this option saves your response but you can come 
            back and modify your answer at any point of time.</td>
        </tr>
        <tr>
        <td class="style6">
        
            Mark for Review : Clicking on this button enables you to come back to a question 
            that you haven&#39;t answered.</td>
        </tr>
        <tr>
        <td class="style6">
        
            Next : Clicking the next button shows you the next question. If you have marked 
            your response then it will be saved, if you haven&#39;t marked any of the available 
            responses the question will be treated as un-answered if you are clicking this 
            button. </td>
        </tr>
        <tr>
        <td class="style6">
        
            <asp:Button ID="Button1" runat="server" style="margin-left: 578px" 
                Text="Proceed to Exam" />
            </td>
        </tr>
        <table/>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style6
        {
            font-family: Calibri;
            font-style: italic;
        }
    </style>
</asp:Content>

