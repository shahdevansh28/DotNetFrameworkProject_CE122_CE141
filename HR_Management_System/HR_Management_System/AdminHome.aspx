<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="HR_Management_System.AdminHome" %>

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
                            <asp:HyperLink ID="HyperLink8" class="nav-link active" runat="server" NavigateUrl="~/viewListAdmin.aspx">View/Grant Leave</asp:HyperLink>
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

        <div class="container w-75">

            <div class="row mt-5">
                <div class="col">
                    <div class="card text-dark bg-light mb-3" style="max-width: 18rem;" >
                      <div class="card-header text-light" style="background-color: rebeccapurple!important;">Add Employee</div>
                      <div class="card-body">
                        <p class="card-text">Add employee is one feature that is used by admin to add new employee.</p>
                        <asp:HyperLink ID="addEmp" runat="server" NavigateUrl="~/AddEmployee.aspx">Add Employee</asp:HyperLink>
                      </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card text-dark bg-light mb-3" style="max-width: 18rem;" >
                      <div class="card-header text-light" style="background-color: rebeccapurple!important;">View Employee</div>
                      <div class="card-body">
                        <p class="card-text">View all employee is one feature that is used by admin to see employee.</p>
                        <asp:HyperLink ID="viewAllEmployee" runat="server" NavigateUrl="~/ViewAllEmployee.aspx">View All Employee </asp:HyperLink>
                      </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card text-dark bg-light mb-3" style="max-width: 18rem;" >
                      <div class="card-header text-light" style="background-color: rebeccapurple!important;">Add Department</div>
                      <div class="card-body">
                        <p class="card-text">Add Department is one feature that is used by admin to add new department.</p>
                        <asp:HyperLink ID="addDepartment" runat="server" NavigateUrl="~/AddDepartment.aspx">Add Department</asp:HyperLink>                      </div>
                    </div>
                </div>
            </div>

            <div class="row mt-5">
                <div class="col-4">
                    <div class="card text-dark bg-light mb-3" style="max-width: 18rem;">
                      <div class="card-header text-light" style="background-color: rebeccapurple!important;">View All Department</div>
                      <div class="card-body">
                        <p class="card-text">View all department is one feature that is used by admin to see all department.</p>
                        <asp:HyperLink ID="viewAllDepartment" runat="server" NavigateUrl="~/viewAllDepartment.aspx">View All Departments</asp:HyperLink>
                      </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="card text-dark bg-light mb-3" style="max-width: 18rem;">
                      <div class="card-header text-light" style="background-color: rebeccapurple!important;">View All Department</div>
                      <div class="card-body">
                        <p class="card-text">View profile is one feature that is used by admin to his/her own profile.</p>
                        <asp:HyperLink ID="viewProfile" runat="server" NavigateUrl="~/ViewProfile.aspx">View Profile</asp:HyperLink>
                      </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="card text-dark bg-light mb-3" style="max-width: 18rem;">
                      <div class="card-header text-light" style="background-color: rebeccapurple!important;">Grant/View Leave</div>
                      <div class="card-body">
                        <p class="card-text">Grant/View leave is one feature that is used by admin to view or grant leave of an employee.</p>
                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/viewListAdmin.aspx">View All Departments</asp:HyperLink>
                      </div>
                    </div>
                </div>
            </div>

            <%--<div class="card-group justify-content-between">
            <div class="card text-dark bg-light mb-3" style="max-width: 18rem;">
              <div class="card-header">Header</div>
              <div class="card-body">
                <h5 class="card-title">Light card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              </div>
            </div>
            <div class="card text-dark bg-light mb-3" style="max-width: 18rem;">
              <div class="card-header">Header</div>
              <div class="card-body">
                <h5 class="card-title">Light card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              </div>
            </div>
            <div class="card text-dark bg-light mb-3" style="max-width: 18rem;">
              <div class="card-header">Header</div>
              <div class="card-body">
                <h5 class="card-title">Light card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              </div>
            </div>
            <div class="card text-dark bg-light mb-3" style="max-width: 18rem;">
              <div class="card-header">Header</div>
              <div class="card-body">
                <h5 class="card-title">Light card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              </div>
            </div>
            <div class="card text-dark bg-light mb-3" style="max-width: 18rem;">
              <div class="card-header">Header</div>
              <div class="card-body">
                <h5 class="card-title">Light card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              </div>
            </div>
            </div>--%>

            <%--<asp:HyperLink ID="addEmp" runat="server" NavigateUrl="~/AddEmployee.aspx">Add Employee</asp:HyperLink>
            <br />--%>
<%--            <asp:HyperLink ID="viewAllEmployee" runat="server" NavigateUrl="~/ViewAllEmployee.aspx">View All Employee </asp:HyperLink>--%>
            <br />
            <%--<asp:HyperLink ID="addDepartment" runat="server" NavigateUrl="~/AddDepartment.aspx">Add Department</asp:HyperLink>--%>
            <br />
            <%--<asp:HyperLink ID="viewAllDepartment" runat="server" NavigateUrl="~/viewAllDepartment.aspx">View All Departments</asp:HyperLink>--%>
            <br />
            <%--<asp:HyperLink ID="viewProfile" runat="server" NavigateUrl="~/ViewProfile.aspx">View Profile</asp:HyperLink>--%>
            
        </div>
    </form>
</body>
</html>
