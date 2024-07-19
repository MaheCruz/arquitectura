<%@ Master Language="C#" AutoEventWireup="true" CodeBehind="Site.master.cs" Inherits="ControlEscolar.Site" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title><%: Page.Title %> - Control Escolar</title>
    <link href="~/Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ContentPlaceHolder ID="MainContent" runat="server">
            </asp:ContentPlaceHolder>
        </div>
    </form>
</body>
</html>
