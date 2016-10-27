<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header.ascx.cs" Inherits="Controls_Header" %>


<asp:Panel id="headerPanel" runat="server">
        <img alt="bookshelf" class="auto-style1" src="../Images/bookshelf.jpg" />
    </asp:Panel>
    <asp:Panel id="menuPanel" runat="server">
        <a href="Default.aspx">Home</a> |
        <a href="Titles.aspx">Titles</a> |
        <a href="AuthorsForm.aspx">Authors</a> |
        <a href="Publishers.aspx">Publishers</a>
    </asp:Panel>
