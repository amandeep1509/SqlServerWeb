<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Authordetails.aspx.cs" Inherits="Authordetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <CustomControls:HeaderProps runat="server" />
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mybookstoreConnectionString1 %>" SelectCommand="SELECT * FROM [authors]"></asp:SqlDataSource>
        </p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="au_id" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="au_id" HeaderText="AuthorID" InsertVisible="False" ReadOnly="True" SortExpression="au_id">
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="au_lname" HeaderText="Lastname" SortExpression="au_lname" >
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="au_fname" HeaderText="Firstname" SortExpression="au_fname" >
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" >
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" >
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" >
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" >
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="zip" HeaderText="zip" SortExpression="zip" >
                <ItemStyle Wrap="False" />
                </asp:BoundField>
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>

    </form>
</body>
</html>
