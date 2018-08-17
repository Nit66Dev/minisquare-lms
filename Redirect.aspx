<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/StudentsMaster.master" CodeFile="Redirect.aspx.cs" Inherits="Redirect" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/temp/thumbs-up-smiley-hi.png" onclick="ImageButton1_Click" 
        style="margin-left: 487px" Width="200px" />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
        CellPadding="3" CellSpacing="1" DataKeyNames="Roll_No" 
        DataSourceID="dsStudent1" GridLines="None" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="Roll_No" HeaderText="Roll_No" ReadOnly="True" 
                SortExpression="Roll_No" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" 
                SortExpression="UserName" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                SortExpression="Mobile" />
            <asp:BoundField DataField="ValidUpto" HeaderText="ValidUpto" 
                SortExpression="ValidUpto" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
    <asp:SqlDataSource ID="dsStudent1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Library_DBConnectionString %>" 
        SelectCommand="SELECT [Roll_No], [UserName], [Name], [DeptCode], [Department], [Year], [Email], [Mobile], [ValidUpto] FROM [Student_Master] WHERE (([Status] = @Status) AND ([UserName] = @UserName))">
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="Status" Type="Boolean" />
            <asp:SessionParameter Name="UserName" SessionField="UserName" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>