<%@ Page Language="C#" AutoEventWireup="true" Trace="true" CodeFile="AuthorsForm.aspx.cs" Inherits="AuthorForm" %>

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
            Welcome to The Night Owl, where all of 
        your technical needs are met!
        </asp:Panel>
    </form>
</body>
</html>
