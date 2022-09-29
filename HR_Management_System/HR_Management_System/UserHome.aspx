<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="HR_Management_System.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome To User Home Page</h1>

            <asp:HyperLink ID="viewProfile" runat="server" NavigateUrl="~/ViewProfile.aspx">View Profile</asp:HyperLink>
            <br />

            <br />
            <asp:LinkButton ID="logout" runat="server" OnClick="logout_Click">Logout</asp:LinkButton>
        </div>
    </form>
</body>
</html>
