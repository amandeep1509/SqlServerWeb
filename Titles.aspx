<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Titles.aspx.cs" Inherits="Titles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <CustomControls:HeaderProps runat="server" Heading="Titles" />


        <p>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                <ItemTemplate>
                    price:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price", "${0:F2}") %>' />
                    <br />
                    title:
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' Font-Bold="true" Font-Italic="true" />
                    <br />
                    pubdate:
                    <asp:Label ID="pubdateLabel" runat="server" Text='<%# Eval("pubdate", "{0:d}") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mybookstoreConnectionString1 %>" SelectCommand="SELECT [price], [title], [pubdate] FROM [titles]"></asp:SqlDataSource>
        </p>


    </form>
</body>
</html>
