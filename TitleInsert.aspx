<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TitleInsert.aspx.cs" Inherits="TitleInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <CustomControls:HeaderProps runat="server" Heading="Insert Title" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mybookstoreConnectionString1 %>" DeleteCommand="DELETE FROM [titles] WHERE [title_id] = @title_id" InsertCommand="INSERT INTO [titles] ([pub_id], [au_id], [title], [price], [pubdate], [notes]) VALUES (@pub_id, @au_id, @title, @price, @pubdate, @notes)" ProviderName="<%$ ConnectionStrings:mybookstoreConnectionString1.ProviderName %>" SelectCommand="SELECT [title_id], [pub_id], [au_id], [title], [price], [pubdate], [notes] FROM [titles]" UpdateCommand="UPDATE [titles] SET [pub_id] = @pub_id, [au_id] = @au_id, [title] = @title, [price] = @price, [pubdate] = @pubdate, [notes] = @notes WHERE [title_id] = @title_id">
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
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="title_id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="128px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="411px">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:TemplateField HeaderText="Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="price" runat="server" Text="<%# Bind('price')%>"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="price" ErrorMessage="Price Is Required Field" Display="None" CssClass="ValidationError"></asp:RequiredFieldValidator >
                        <br />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="price" ErrorMessage="price must be 1 to 100" MaximumValue="100" MinimumValue="1" Type="Double" Display="None" CssClass="ValidationError"></asp:RangeValidator>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Publish Date">

                    <EditItemTemplate>
                        <asp:TextBox ID="pubdate" runat="server" Text="<%# Bind('pubdate')%>"></asp:TextBox>
                       <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pubdate" ErrorMessage="Date Is Required Field"></asp:RequiredFieldValidator>--%>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="pubdate" ErrorMessage="Please enter a valid date" MaximumValue="31/12/2050" MinimumValue="01/01/1900" Type="Date" Display="None" CssClass="ValidationError"></asp:RangeValidator>
                    </EditItemTemplate>

                 </asp:TemplateField>
                <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
                <asp:CommandField ShowDeleteButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ValidationError" />
    </form>
</body>
</html>
