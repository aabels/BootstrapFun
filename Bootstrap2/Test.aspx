<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Test.aspx.vb" Inherits="Bootstrap2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Burkegroup</title>
     <%--<link rel="icon" type="image/png" href="/Content/images/favicon.ico" />--%>
    <link rel="shortcut icon" href="/Content/images/favicon.ico" type="image/x-icon"/>
    <link href="/Content/bootstrap.css" rel="stylesheet" />
    <link href="/Content/custom.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="jumbotron" style="border:1px solid #888;box-shadow:0px 2px 5px #ccc;">
                <h1>Hellow World! </h1>
            </div>
        </div>
        <div class="col-md-4">
            <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn btn-danger" />
            <asp:Button ID="Button2" runat="server" Text="Button" CssClass="btn btn-success" />
            <asp:Button ID="Button3" runat="server" Text="Button" CssClass="btn btn-warning" />
        </div>        
        <div class="col-md-4">
            Hello
        </div>        
        <div class="col-md-4">
            <span class="glyphicon glyphicon-arrow-right"></span>
            <i class="glyphicon glyphicon-heart"></i>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </form>
</body>
</html>
