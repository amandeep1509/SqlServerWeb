<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Publishers.aspx.cs" Inherits="Publishers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <CustomControls:HeaderProps runat="server" Heading="Publishers" />
        <p><span lang="en-us">This page will show a list of Publishers.</span></p>
        <p>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="pub_id" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    
                    publisher:
                    <asp:Label ID="pub_nameLabel" runat="server" Text='<%# Eval("pub_name") %>' />
                    <br />

                </ItemTemplate>
            </asp:DataList>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mybookstoreConnectionString1 %>" DeleteCommand="DELETE FROM [publishers] WHERE [pub_id] = @pub_id" InsertCommand="INSERT INTO [publishers] ([pub_name]) VALUES (@pub_name)" ProviderName="<%$ ConnectionStrings:mybookstoreConnectionString1.ProviderName %>" SelectCommand="SELECT [pub_id], [pub_name] FROM [publishers]" UpdateCommand="UPDATE [publishers] SET [pub_name] = @pub_name WHERE [pub_id] = @pub_id">
                <DeleteParameters>
                    <asp:Parameter Name="pub_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="pub_name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="pub_name" Type="String" />
                    <asp:Parameter Name="pub_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
