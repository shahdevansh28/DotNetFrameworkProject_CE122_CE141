<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDepartment.aspx.cs" Inherits="HR_Management_System.AddDepartment" %>

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

            <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: rebeccapurple;">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">HRM System</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <asp:HyperLink ID="HyperLink0" class="nav-link active" runat="server" NavigateUrl="~/AdminHome.aspx">Home</asp:HyperLink>
                            </li>
                            <li class="nav-item">
                                <asp:HyperLink ID="HyperLink1" class="nav-link active" runat="server" NavigateUrl="~/AddEmployee.aspx">Add Employee</asp:HyperLink>
                            </li>
                            <li class="nav-item">
                                <asp:HyperLink ID="HyperLink2" class="nav-link active" runat="server" NavigateUrl="~/ViewAllEmployee.aspx">View All Employee </asp:HyperLink>
                            </li>
                            <li class="nav-item">
                                <asp:HyperLink ID="HyperLink3" class="nav-link active" runat="server" NavigateUrl="~/AddDepartment.aspx">Add Department</asp:HyperLink>
                            </li>
                            <li class="nav-item">
                                <asp:HyperLink ID="HyperLink4" class="nav-link active" runat="server" NavigateUrl="~/viewAllDepartment.aspx">View All Departments</asp:HyperLink>
                            </li>
                            <li class="nav-item">
                                <asp:HyperLink ID="HyperLink5" class="nav-link active" runat="server" NavigateUrl="~/ViewProfile.aspx">My Profile</asp:HyperLink>
                            </li>
                            <li class="nav-item">
                                <asp:HyperLink ID="HyperLink6" class="nav-link active" runat="server" NavigateUrl="~/logout.aspx">Logout</asp:HyperLink>
                            </li>
                            <%--<li class="nav-item">
                                <asp:LinkButton ID="LinkButton1" class="nav-link active" runat="server" OnClick="logout_Click">Logout</asp:LinkButton>
                            </li>--%>
                        </ul>
                        <ul class="navbar-nav me-2 mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" href="#">
                                    <asp:Label ID="lbUserName" runat="server"></asp:Label>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <div class="container mt-5 mb-5 w-75">
                <asp:Panel ID="mesPanelAddDepErr" runat="server">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <asp:Label ID="lbErrorAddDep" runat="server"></asp:Label>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                </asp:Panel>
                <asp:Panel ID="mesPanelAddDepSucc" runat="server">
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <asp:Label ID="lbSuccAddDep" runat="server"></asp:Label>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                </asp:Panel>
            </div>
            <div class="container mt-5 mb-5 w-75">
                <asp:Panel ID="addDepPanel" runat="server">
                        <div>
                            <asp:Label class="form-label" ID="lbDepName" runat="server" associatedcontrolid="depName" Text="Department Name : "></asp:Label>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorDepName" runat="server" ControlToValidate="depName" ErrorMessage="Department name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox class="form-control" ID="depName" runat="server" maxlength="50" required="required"></asp:TextBox>
                            <br/>
                            <asp:Label class="form-label" ID="lbDepDesc" runat="server" associatedcontrolid="DepDesc" Text="Department Description : "></asp:Label>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorDepDesc" runat="server" ControlToValidate="depDesc" ErrorMessage="Department description is required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox class="form-control" ID="depDesc" runat="server" maxlength="500" required="required"></asp:TextBox>
                            <br/>
                            <br/>
                            <div class="row mt-5">
                                <div class="col-5"></div>
                                <asp:Button class="btn btn-primary col-2" ID="btnAddDep" runat="server" Text="Add Department" OnClick="btnAddEmp_Click" style="background-color: rebeccapurple;"/>
                                <div class="col-5"></div>
                            </div>
                        </div>
                </asp:Panel>
            </div>
        </form>

</body>
</html>
