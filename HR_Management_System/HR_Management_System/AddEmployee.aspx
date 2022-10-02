<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="HR_Management_System.AddEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
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
                <asp:Panel ID="mesPanelAddempErr" runat="server">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <asp:Label ID="lbErrorAddemp" runat="server"></asp:Label>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                </asp:Panel>
                <asp:Panel ID="mesPanelAddempSucc" runat="server">
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <asp:Label ID="lbSuccAddemp" runat="server"></asp:Label>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                </asp:Panel>

                <div>
                    <asp:Panel ID="addEmpPanel" runat="server">
                        <asp:Label class="form-label" ID="lbEmpUName" runat="server" associatedcontrolid="empUName" Text="Employee User Name : "></asp:Label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorUname" runat="server" ControlToValidate="empUName" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <input class="form-control" id="empUName" type="text" runat="server" maxlength="50" required="required"/>
                        <br />
                        <asp:Label class="form-label" ID="lbEmpEmail" runat="server" associatedcontrolid="empEmailId" Text="E-mail : "></asp:Label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="empEmailId" ErrorMessage="E-mail is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="empEmailId" runat="server" class="form-control" maxlength="100" required="required" type="email"></asp:TextBox>
                        <br />
                        <%--<input class="form-control" id="empEmail" type="email" runat="server" maxlength="100" required="required"/>
                        <br/>--%>
                        <asp:Label class="form-label" ID="lbEmpPassword" runat="server" associatedcontrolid="empPassword" Text="Password : "></asp:Label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ControlToValidate="empPassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorPass" runat="server" ControlToValidate="empPassword" ErrorMessage="Password length must be in range 6-10" ForeColor="Red" ValidationExpression="[a-zA-Z0-9\s]{6,10}"></asp:RegularExpressionValidator>
                        <input class="form-control" id="empPassword" type="password" runat="server" maxlength="10" required="required"/>
                        <br />
                        <asp:Label class="form-label" ID="lbEmpName" runat="server" associatedcontrolid="empName" Text="Employee Name : "></asp:Label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="empName" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="empName" runat="server" class="form-control" maxlength="100" required="required"></asp:TextBox>
                        <br />
                        <asp:Label ID="lbEmpGen" runat="server" associatedcontrolid="empGen" Text="Gender : "></asp:Label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorGen" runat="server" ControlToValidate="empGen" ErrorMessage="Gender is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br/>
                        <asp:RadioButtonList ID="empGen" runat="server" required="required">
                            <asp:ListItem Value="M">Male</asp:ListItem>
                            <asp:ListItem Value="F">Female</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                        <asp:Label class="form-label" ID="lbEmpDOB" runat="server" associatedcontrolid="empDOB" Text="D.O.B : "></asp:Label>
                        <%--<input class="form-control" id="empDOB" type="date" runat="server" required="required"/>
                        <br/>--%>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorDOB" runat="server" ControlToValidate="empDOB" ErrorMessage="D.O.B is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="empDOB" runat="server" class="form-control" required="required" type="date"></asp:TextBox>
                        <br />
                        <asp:Label class="form-label" ID="lbEmpMobile" runat="server" associatedcontrolid="empMobile" Text="Mobile No. : "></asp:Label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorMobile" runat="server" ControlToValidate="empMobile" ErrorMessage="Mobile no. is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorMobile" runat="server" ControlToValidate="empMobile" ErrorMessage="Only digits are allowed and length must be 10" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        <input class="form-control" id="empMobile" type="text" runat="server" maxlength="10" required="required"/>
                        <br />
                        <asp:Label class="form-label" ID="lbEmpAddress" runat="server" associatedcontrolid="empAddress" Text="Address : "></asp:Label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ControlToValidate="empAddress" ErrorMessage="Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="empAddress" runat="server" class="form-control" maxlength="100" required="required"></asp:TextBox>
                        <br />
                        <asp:Label class="form-label" ID="lbJoinDate" runat="server" associatedcontrolid="empJoinDate" Text="Joining date : "></asp:Label>
                        <%--<input class="form-control" id="empJoinDate" type="date" runat="server" required="required"/>
                        <br/>--%>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorJoinDate" runat="server" ControlToValidate="empJoinDate" ErrorMessage="Joining date is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="empJoinDate" runat="server" class="form-control" required="required" type="date"></asp:TextBox>
                        <br />
                        <asp:Label class="form-label" ID="lbDepartment" runat="server" associatedcontrolid="empDepartment" Text="Department : "></asp:Label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorDep" runat="server" ControlToValidate="empDepartment" ErrorMessage="Department is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:DropDownList class="form-label" ID="empDepartment" required="required" runat="server"></asp:DropDownList>
                        <br />
                        <br />
                        <asp:Label class="form-label" ID="lbSalaryAmount" runat="server" associatedcontrolid="salaryAmount" Text="Salary Amount : "></asp:Label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorSalary" runat="server" ControlToValidate="salaryAmount" ErrorMessage="Salary is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorSalAmount" runat="server" ControlToValidate="salaryAmount" ErrorMessage="Only digits are allowed" ForeColor="Red" ValidationExpression="[0-9]{1,100}"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="salaryAmount" runat="server" class="form-control" required="required"></asp:TextBox>
                        <br />
                        <asp:Label class="form-label" ID="lbSalaryDesc" runat="server" associatedcontrolid="salaryDesc" Text="Salary Description : "></asp:Label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorSalaryDesc" runat="server" ControlToValidate="salaryDesc" ErrorMessage="Salary description is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="salaryDesc" runat="server" class="form-control" maxlength="100" required="required"></asp:TextBox>
                        <br />
                        <br/>
                        <div class="row">
                            <div class="col-5"></div>
                            <asp:Button class="btn btn-primary col-2" ID="btnAddEmp" runat="server" Text="Add Employee" OnClick="btnAddEmp_Click" style="background-color: rebeccapurple;"/>
                            <div class="col-5"></div>
                        </div>
                    </asp:Panel>

                </div>
        </div>
    </form>
</body>
</html>