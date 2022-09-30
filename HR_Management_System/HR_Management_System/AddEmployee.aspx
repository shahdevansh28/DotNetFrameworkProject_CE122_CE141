<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="HR_Management_System.AddEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/bootstrap.bundle.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div class="container mt-5 mb-5">
        <form id="form1" runat="server">
            <asp:Panel ID="mesPanelAddemp" runat="server">
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <asp:Label ID="lbErrorAddemp" runat="server"></asp:Label>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </asp:Panel>
        <div>
            <asp:Panel ID="addEmpPanel" runat="server">
                <asp:Label class="form-label" ID="lbEmpUName" runat="server" associatedcontrolid="empUName" Text="Employee User Name : "></asp:Label>
                <input class="form-control" id="empUName" type="text" runat="server" maxlength="50" required="required"/>
                <br/>
                <asp:Label class="form-label" ID="lbEmpEmail" runat="server" associatedcontrolid="empEmail" Text="E-mail : "></asp:Label>
                <input class="form-control" id="empEmail" type="email" runat="server" maxlength="100" required="required"/>
                <br/>
                <asp:Label class="form-label" ID="lbEmpPassword" runat="server" associatedcontrolid="empPassword" Text="Password : "></asp:Label>
                <input class="form-control" id="empPassword" type="password" runat="server" maxlength="10" required="required"/>
                <br/>
                <asp:Label class="form-label" ID="lbEmpName" runat="server" associatedcontrolid="empName" Text="Employee Name : "></asp:Label>
                <asp:TextBox class="form-control" ID="empName" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lbEmpGen" runat="server" associatedcontrolid="empGen" Text="Gender : "></asp:Label>
                <br/>
                <asp:RadioButtonList ID="empGen" runat="server">
                    <asp:ListItem Value="M">Male</asp:ListItem>
                    <asp:ListItem Value="F">Female</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:Label class="form-label" ID="lbEmpDOB" runat="server" associatedcontrolid="empDOB" Text="D.O.B : "></asp:Label>
                <input class="form-control" id="empDOB" type="date" runat="server" required="required"/>
                <br/>
                <asp:Label class="form-label" ID="lbEmpMobile" runat="server" associatedcontrolid="empMobile" Text="Mobile No. : "></asp:Label>
                <input class="form-control" id="empMobile" type="text" runat="server" maxlength="10" required="required"/>
                <br/>
                <asp:Label class="form-label" ID="lbEmpAddress" runat="server" associatedcontrolid="empAddress" Text="Address : "></asp:Label>
                <asp:TextBox class="form-control" ID="empAddress" runat="server"></asp:TextBox>
                <br/>
                <asp:Label class="form-label" ID="lbJoinDate" runat="server" associatedcontrolid="empJoinDate" Text="Joining date : "></asp:Label>
                <input class="form-control" id="empJoinDate" type="date" runat="server" required="required"/>
                <br/>
                <asp:Label class="form-label" ID="lbDepartment" runat="server" associatedcontrolid="empDepartment" Text="Department : "></asp:Label>
                <asp:DropDownList class="form-label" ID="empDepartment" runat="server"></asp:DropDownList>
                <br />
                <asp:Label class="form-label" ID="lbSalaryAmount" runat="server" associatedcontrolid="salaryAmount" Text="Salary Amount : "></asp:Label>
                <asp:TextBox class="form-control" ID="salaryAmount" runat="server"></asp:TextBox>
                <br/>
                <asp:Label class="form-label" ID="lbSalaryDesc" runat="server" associatedcontrolid="salaryDesc" Text="Salary Description : "></asp:Label>
                <asp:TextBox class="form-control" ID="salaryDesc" runat="server"></asp:TextBox>
                <br/>
                <br/>
                <asp:Button class="btn btn-primary" ID="btnAddEmp" runat="server" Text="Add Employee" OnClick="btnAddEmp_Click" />
            </asp:Panel>

            <div class="row">
                <div class="col-5"></div>
                <asp:Button class="btn btn-primary col-2" ID="btnBack" runat="server" Text="Back" autopostback="false" OnClick="btnBack_Click" />
                <div class="col-5"></div>
            </div>

        </div>
    </form>
    </div>
</body>
</html>