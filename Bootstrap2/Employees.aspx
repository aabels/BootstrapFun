<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Employees.aspx.vb" Inherits="Bootstrap2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.3.1.js"></script>
    <script src="Scripts/jquery-ui.js"></script>
    <link href="Scripts/jquery-ui.css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#txtEmpName').autocomplete({
                source: "EmployeeHandler.ashx"
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Employee Name
            <asp:TextBox ID="txtEmpName" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
