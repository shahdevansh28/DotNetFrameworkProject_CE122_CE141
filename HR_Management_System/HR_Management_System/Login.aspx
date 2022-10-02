<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HR_Management_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/bootstrap.bundle.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title>Login Page</title>
</head>
<body>
    <div class="container mt-5 w-25">
        
        <form id="form1" class="align-items-center" runat="server">
            <asp:Panel ID="mesPanel" runat="server">
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <asp:Label ID="lbError" runat="server"></asp:Label>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </asp:Panel>
            <br />
            <asp:Label class="form-label" ID="lbUname" runat="server" associatedcontrolid="uName" Text="User Name"></asp:Label>
            <input class="form-control" id="uName" type="text" runat="server" maxlength="50" required="required" /><br />
            <asp:Label class="form-label" ID="lbUpassword" runat="server" associatedcontrolid="uPassword" Text="Password"></asp:Label>
            <input class="form-control" id="uPassword" type="password" runat="server" minlength="6" maxlength="10" required="required" /><br />
            <div class="row">
                <div class="col-4"></div>
                <asp:Button class="btn btn-primary col-4" ID="loginBtn" runat="server" OnClick="loginBtn_Click" Text="Log in" />
                <div class="col-4"></div>
            </div>
            <br />
        </form>
        
    </div>
    
</body>
</html>
