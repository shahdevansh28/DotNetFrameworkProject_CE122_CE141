<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateEmployee.aspx.cs" Inherits="HR_Management_System.UpdateEmployee" %>

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
        <div class="container w-75 mt-5 mb-5">
            <asp:Panel ID="mesPanelUpdateempErr" runat="server">
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <asp:Label ID="lbErrorUpdateemp" runat="server"></asp:Label>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </asp:Panel>
            <asp:Panel ID="mesPanelUpdateempSucc" runat="server">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <asp:Label ID="lbSuccUpdateemp" runat="server"></asp:Label>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </asp:Panel>

            <asp:Panel ID="editEmpPanel" runat="server">
                <div class="container mt-5 mb-5">
                    <asp:Label class="form-label" ID="lbEmpUName" runat="server" associatedcontrolid="empUNameEF" Text="Employee User Name : "></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorUname" runat="server" ControlToValidate="empUNameEF" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<input class="form-control" id="empUNameEF" type="text" runat="server" maxlength="50" required="required"/>&nbsp;<br/><asp:Label ID="lbEmpEmail" runat="server" associatedcontrolid="empEmailEF" class="form-label" Text="E-mail : "></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="empEmailEF" ErrorMessage="E-mail is required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox class="form-control" ID="empEmailEF" runat="server" type="email" maxlength="100" required="required"></asp:TextBox>
                    <br/>
                    <asp:Label class="form-label" ID="lbEmpName" runat="server" associatedcontrolid="empNameEF" Text="Employee Name : "></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="empNameEF" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:TextBox ID="empNameEF" runat="server" class="form-control"></asp:TextBox>
                    <br />
                    <asp:Label ID="lbEmpGen" runat="server" associatedcontrolid="empGen" Text="Gender : "></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorGen" runat="server" ControlToValidate="empGen" ErrorMessage="Gender is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RadioButtonList ID="empGen" runat="server">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <asp:Label ID="lbEmpDOB" runat="server" associatedcontrolid="empDOBEF" class="form-label" Text="D.O.B : "></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorDOB" runat="server" ControlToValidate="empDOBEF" ErrorMessage="D.O.B is required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox class="form-control" ID="empDOBEF" runat="server" type="date" required="required"></asp:TextBox>
                    <br/>
                    <asp:Label class="form-label" ID="lbEmpMobile" runat="server" associatedcontrolid="empMobileEF" Text="Mobile No. : "></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorMobile" runat="server" ControlToValidate="empMobileEF" ErrorMessage="Mobile no. is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorMobile" runat="server" ControlToValidate="empMobileEF" ErrorMessage="Only digits are allowed and length must be 10" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    &nbsp;<input class="form-control" id="empMobileEF" type="text" runat="server" maxlength="10" required="required"/>
                    <br/>
                    <asp:Label class="form-label" ID="lbEmpAddress" runat="server" associatedcontrolid="empAddressEF" Text="Address : "></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ControlToValidate="empAddressEF" ErrorMessage="Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox class="form-control" ID="empAddressEF" runat="server"></asp:TextBox>
                    <br/>
                    <asp:Label class="form-label" ID="lbJoinDate" runat="server" associatedcontrolid="empJoinDateEF" Text="Joining date : "></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorJoinDate" runat="server" ControlToValidate="empJoinDateEF" ErrorMessage="Joining date is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox class="form-control" ID="empJoinDateEF" runat="server" type="date" required="required"></asp:TextBox>
                    <br />
                    <asp:Label class="form-label" ID="lbDepName" runat="server" associatedcontrolid="depNameEF" Text="Department : "></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorDep" runat="server" ControlToValidate="depNameEF" ErrorMessage="Department is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:DropDownList class="form-label" ID="depNameEF" runat="server"></asp:DropDownList>
                    <br />
                    <asp:Label class="form-label" ID="lbSalaryAmount" runat="server" associatedcontrolid="salaryAmountEF" Text="Salary Amount : "></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorSalary" runat="server" ControlToValidate="salaryAmountEF" ErrorMessage="Salary is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorSalAmount" runat="server" ControlToValidate="salaryAmountEF" ErrorMessage="Only digits are allowed" ForeColor="Red" ValidationExpression="[0-9]{1,100}"></asp:RegularExpressionValidator>
                    <asp:TextBox class="form-control" ID="salaryAmountEF" runat="server"></asp:TextBox>
                    <br/>
                    <asp:Label class="form-label" ID="lbSalaryDesc" runat="server" associatedcontrolid="salaryDescEF" Text="Salary Description : "></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorSalaryDesc" runat="server" ControlToValidate="salaryDescEF" ErrorMessage="Salary description is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox class="form-control" ID="salaryDescEF" runat="server"></asp:TextBox>
                    <br/>
                    <div class="row">
                        <div class="col-5"></div>
                        <asp:Button class="btn btn-primary col-2" ID="btnUpdateEmp" runat="server" Text="Update" autopostback="false" OnClick="btnUpdateEmp_Click" style="background-color: rebeccapurple;"/>
                        <div class="col-5"></div>
                    </div>
                </div>
            </asp:Panel>

            <div class="row">
                <div class="col-5"></div>
                <asp:Button class="btn btn-primary col-2" ID="btnBack" runat="server" Text="Back" autopostback="false" OnClick="btnBack_Click" style="background-color: rebeccapurple;"/>
                <div class="col-5"></div>
            </div>

        </div>
    </form>
</body>
</html>
