<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JointData.aspx.cs" Inherits="JointData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <CustomControls:HeaderProps runat="server" Heading="Joint Data" />
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                    <asp:BoundField DataField="price" DataFormatString="{0:C}" HeaderText="Price" SortExpression="price" />
                    <asp:BoundField DataField="Full Name" HeaderText="Full Name" ReadOnly="True" SortExpression="Full Name" />
                    <asp:BoundField DataField="pub_name" HeaderText="Publisher" SortExpression="pub_name" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mybookstoreConnectionString1 %>" DeleteCommand="DELETE FROM [titles] WHERE [title_id] = @title_id" InsertCommand="INSERT INTO [titles] ([pub_id], [au_id], [title], [price], [pubdate], [notes]) VALUES (@pub_id, @au_id, @title, @price, @pubdate, @notes)" ProviderName="<%$ ConnectionStrings:mybookstoreConnectionString1.ProviderName %>" SelectCommand="SELECT titles.title, titles.price, authors.au_fname + ' ' + authors.au_lname AS [Full Name], publishers.pub_name FROM titles INNER JOIN publishers ON titles.pub_id = publishers.pub_id INNER JOIN authors ON titles.au_id = authors.au_id ORDER BY titles.title" UpdateCommand="UPDATE [titles] SET [pub_id] = @pub_id, [au_id] = @au_id, [title] = @title, [price] = @price, [pubdate] = @pubdate, [notes] = @notes WHERE [title_id] = @title_id">
                <DeleteParameters>
                    <asp:Parameter Name="title_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="pub_id" Type="Int32" />
                    <asp:Parameter Name="au_id" Type="Int32" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="pubdate" Type="DateTime" />
                    <asp:Parameter Name="notes" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="pub_id" Type="Int32" />
                    <asp:Parameter Name="au_id" Type="Int32" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="pubdate" Type="DateTime" />
                    <asp:Parameter Name="notes" Type="String" />
                    <asp:Parameter Name="title_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
