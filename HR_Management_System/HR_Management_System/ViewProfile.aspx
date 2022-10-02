<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="HR_Management_System.ViewProfile" %>

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

        <% if (int.Parse(Session["isAdmin"].ToString()) == 1)
            { %>
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
                        </ul>
                    </div>
                </div>
            </nav>
        <% }else{ %>
            
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
                    </div>
                </div>
            </nav>

        <% } %>

        

        <div class="container w-75 mb-5 mt-5">
            <asp:Panel ID="mesPanelViewProfileErr" runat="server">
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <asp:Label ID="lbErrorViewProfile" runat="server"></asp:Label>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </asp:Panel>
            <asp:Panel ID="mesPanelViewProfileSucc" runat="server">
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <asp:Label ID="lbSuccViewProfile" runat="server"></asp:Label>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </asp:Panel>


            <asp:Panel ID="viewEmpPanel" runat="server">
                <div class="container">
                    <div class="main-body">


                        <!-- /Breadcrumb -->

                        <div class="row gutters-sm">
                            <div class="col-md-4 mb-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex flex-column align-items-center text-center">
                                            <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
                                            <div class="mt-3">
                                                <h4>
                                                    <asp:Label ID="empName" runat="server"></asp:Label></h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="card mb-3">
                                    <div class="card-body">

                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">User Name</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <asp:Label ID="empuName" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <hr />

                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">E-mail</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <asp:Label ID="empEmail" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <hr />

                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Password</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <asp:Label ID="empPass" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <hr />

                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Gender</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <asp:Label ID="empGen" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <hr />

                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">D.O.B</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <asp:Label ID="empDOB" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <hr />

                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Mobile</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <asp:Label ID="empMobile" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <hr />

                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Address</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <asp:Label ID="empAddress" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <hr />

                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Joining Date</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <asp:Label ID="empJoinDate" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <hr />

                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Salary amount</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <asp:Label ID="salaryAmount" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <hr />


                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Salary Description</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <asp:Label ID="salaryDesc" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <hr />

                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Department Name</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <asp:Label ID="depName" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <hr />

                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h6 class="mb-0">Department Name</h6>
                                            </div>
                                            <div class="col-sm-9 text-secondary">
                                                <asp:Label ID="depDesc" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <hr />

                                        <div class="row">
                                            <div class="col-5"></div>
                                            <asp:Button class="btn btn-primary col-2" ID="Button1" runat="server" OnClick="btnEditEmp_Click" Text="Edit Details" Style="background-color: rebeccapurple;" />
                                            <div class="col-5"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </asp:Panel>

            

            <asp:Panel ID="editEmpPanel" runat="server">
                <div class="container mt-5 mb-5 w-75">
                    <asp:Label class="form-label" ID="lbEmpUName" runat="server" associatedcontrolid="empUNameEF" Text="Employee User Name : "></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorUname" runat="server" ControlToValidate="empUNameEF" ErrorMessage="User name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<input class="form-control" id="empUNameEF" type="text" runat="server" maxlength="50" required="required"/>
                    <br/>
                    <asp:Label class="form-label" ID="lbEmpEmail" runat="server" associatedcontrolid="empEmailEF" Text="E-mail : "></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="empEmailEF" ErrorMessage="E-mail is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox class="form-control" ID="empEmailEF" runat="server" type="email" maxlength="100" required="required"></asp:TextBox>
                    <br/>
                    <asp:Label class="form-label" ID="lbEmpName" runat="server" associatedcontrolid="empNameEF" Text="Employee Name : "></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="empNameEF" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:TextBox class="form-control" ID="empNameEF" runat="server" maxlength="100" required="required"></asp:TextBox>
                    <br/>
                    <asp:Label ID="lbEmpGen" runat="server" associatedcontrolid="empGenEF" Text="Gender : "></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorGen" runat="server" ControlToValidate="empGenEF" ErrorMessage="Gender is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RadioButtonList ID="empGenEF" runat="server">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <asp:Label class="form-label" ID="lbEmpDOB" runat="server" associatedcontrolid="empDOBEF" Text="D.O.B : "></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorDOB" runat="server" ControlToValidate="empDOBEF" ErrorMessage="D.O.B is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox class="form-control" ID="empDOBEF" runat="server" type="date" required="required"></asp:TextBox>
                    <br/>
                    <asp:Label class="form-label" ID="lbEmpMobile" runat="server" associatedcontrolid="empMobileEF" Text="Mobile No. : "></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorMobile" runat="server" ControlToValidate="empMobileEF" ErrorMessage="Mobile no. is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorMobile" runat="server" ControlToValidate="empMobileEF" ErrorMessage="Only digits are allowed and length must be 10" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
&nbsp;<input class="form-control" id="empMobileEF" type="text" runat="server" maxlength="10" required="required"/>
                    <br/>
                    <asp:Label class="form-label" ID="lbEmpAddress" runat="server" associatedcontrolid="empAddressEF" Text="Address : "></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ControlToValidate="empAddressEF" ErrorMessage="Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox class="form-control" ID="empAddressEF" runat="server" maxlength="100" required="required"></asp:TextBox>
                    <br/>
                    <asp:Label class="form-label" ID="lbJoinDate" runat="server" associatedcontrolid="empJoinDateEF" Text="Joining date : "></asp:Label>
                    <%--<input class="form-control" id="Date2" type="date" runat="server" required="required"/>--%>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorJoinDate" runat="server" ControlToValidate="empJoinDateEF" ErrorMessage="Joining date is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox class="form-control" ID="empJoinDateEF" runat="server" type="date" required="required"></asp:TextBox>
                    <br />
                    <div class="row">
                        <div class="col-5"></div>
                        <asp:Button class="btn btn-primary col-2" ID="btnUpdateEmp" runat="server" Text="Update" OnClick="btnUpdateEmp_Click" style="background-color: rebeccapurple;"/>
                        <div class="col-5"></div>
                    </div>
                </div>
            </asp:Panel>

        </div>
    </form>
</body>
</html>
