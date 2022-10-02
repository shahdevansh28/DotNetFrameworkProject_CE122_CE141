<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="HR_Management_System.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <script src="Scripts/bootstrap.bundle.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: rebeccapurple;">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">HRM System</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <asp:HyperLink ID="HyperLink7" class="nav-link active" runat="server" NavigateUrl="~/UserHome.aspx">Home</asp:HyperLink>
                            </li>
                            <li class="nav-item">
                                <asp:HyperLink ID="HyperLink12" class="nav-link active" runat="server" NavigateUrl="~/ViewProfile.aspx">My Profile</asp:HyperLink>
                            </li>
                            <li class="nav-item">
                                <asp:HyperLink ID="HyperLink13" class="nav-link active" runat="server" NavigateUrl="~/logout.aspx">Logout</asp:HyperLink>
                            </li>
                        </ul>
                        <ul class="navbar-nav me-2 mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" href="#">
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <div class="container w-75">

                <h1>Welcome To User Home Page</h1>

                <asp:HyperLink ID="viewProfile" runat="server" NavigateUrl="~/ViewProfile.aspx">View Profile</asp:HyperLink>
                
            </div>
        </div>
    </form>
</body>
</html>
