<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Employees.aspx.vb" Inherits="Bootstrap2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--Compiled jQuery Autocomplete plugin ref--%>
    <script src="Scripts/jquery-3.3.1.js"></script>
    <script src="Scripts/jquery-ui.js"></script>
    <link href="Scripts/jquery-ui.css" rel="stylesheet" />

   <%-- Custom jsx code to envoke the Employee.ashx handler which calls spGetEmpNames--%>
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
<%--            Using Textbox ID tag to connect script to TextBox,
            Textbox input:=M ---> calls EmployeeHandler.ashx?term=M and returns values--%>
            <asp:TextBox ID="txtEmpName" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
