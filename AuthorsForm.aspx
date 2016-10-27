<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="AuthorsForm.aspx.cs" Inherits="AuthorForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Night Owl</title>
    <link href="styles.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">

        <CustomControls:HeaderProps ID="Header1" runat="server" Heading="Authors" />

        <asp:Panel runat="server">
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="au_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="790px" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="au_lname" HeaderText="Last Name" SortExpression="au_lname" ReadOnly="True" />
                    <asp:BoundField DataField="au_fname" HeaderText="au_fname" SortExpression="au_fname" ReadOnly="True" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" ReadOnly="True" />
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" ReadOnly="True" />
                    <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" ReadOnly="True" />
                    <asp:BoundField DataField="zip" HeaderText="zip" SortExpression="zip" />
                    <asp:HyperLinkField DataNavigateUrlFields="au_id" DataNavigateUrlFormatString="~/AuthorUpdate.aspx?au_id={0}" Text="Edit" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mybookstoreConnectionString1 %>" DeleteCommand="DELETE FROM [authors] WHERE [au_id] = @au_id" InsertCommand="INSERT INTO [authors] ([au_lname], [au_fname], [phone], [address], [city], [state], [zip]) VALUES (@au_lname, @au_fname, @phone, @address, @city, @state, @zip)" ProviderName="<%$ ConnectionStrings:mybookstoreConnectionString1.ProviderName %>" SelectCommand="SELECT [au_id], [au_lname], [au_fname], [phone], [address], [city], [state], [zip] FROM [authors] ORDER BY [au_lname]" UpdateCommand="UPDATE [authors] SET  [phone] = @phone, [zip] = @zip WHERE [au_id] = @au_id">
                <DeleteParameters>
                    <asp:Parameter Name="au_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="au_lname" Type="String" />
                    <asp:Parameter Name="au_fname" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="zip" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    
                    <asp:Parameter Name="phone" Type="String" />
                   
                    <asp:Parameter Name="zip" Type="String" />
                    <asp:Parameter Name="au_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AuthorInsert.aspx">Add New Author</asp:HyperLink>
        </p>
    </form>
</body>
</html>
