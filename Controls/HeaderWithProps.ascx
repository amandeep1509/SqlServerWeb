<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HeaderWithProps.ascx.cs" Inherits="Controls_HeaderWithProps" %>


<asp:Panel ID="headerPanel" runat="server">
    <img alt="bookshelf"
        class="auto-style1"
        src="../Images/bookshelf.jpg" />
</asp:Panel>

<asp:Panel ID="menuPanel" runat="server" CssClass="menuPanel">
    <a href="Default.aspx">Home</a> |
        <a href="Titles.aspx">Titles</a> |
        <a href="AuthorsForm.aspx">Authors</a> |
        <a href="Publishers.aspx">Publishers</a>
</asp:Panel>

<h1><%=Heading %></h1>
