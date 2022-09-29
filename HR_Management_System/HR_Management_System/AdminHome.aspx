<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="HR_Management_System.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="addEmp" runat="server" NavigateUrl="~/AddEmployee.aspx">Add Employee</asp:HyperLink>
            <br />
            <asp:HyperLink ID="viewAllEmployee" runat="server" NavigateUrl="~/ViewAllEmployee.aspx">View All Employee </asp:HyperLink>
            <br />
            <asp:HyperLink ID="addDepartment" runat="server" NavigateUrl="~/AddDepartment.aspx">Add Department</asp:HyperLink>
            <br />
            <asp:HyperLink ID="viewAllDepartment" runat="server" NavigateUrl="~/viewAllDepartment.aspx">View All Departments</asp:HyperLink>
            <br />
            <asp:HyperLink ID="viewProfile" runat="server" NavigateUrl="~/ViewProfile.aspx">View Profile</asp:HyperLink>
            <br />
            <asp:LinkButton ID="logout" runat="server" OnClick="logout_Click">Logout</asp:LinkButton>
        </div>
    </form>
</body>
</html>
