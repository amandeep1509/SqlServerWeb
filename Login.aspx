﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
        <asp:Login ID="Login1" runat="server" CreateUserText="Register new User" DestinationPageUrl="~/Default.aspx" CreateUserUrl="~/Signup.aspx">
        </asp:Login>
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
    </form>
</body>
</html>
