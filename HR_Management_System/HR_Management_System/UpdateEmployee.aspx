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
        <div>
            <asp:Panel ID="editEmpPanel" runat="server">
                <div class="container mt-5 mb-5">
                    <asp:Label class="form-label" ID="lbEmpUName" runat="server" associatedcontrolid="empUNameEF" Text="Employee User Name : "></asp:Label>
                    <input class="form-control" id="empUNameEF" type="text" runat="server" maxlength="50" required="required"/>
                    <br/>
                    <asp:Label class="form-label" ID="lbEmpEmail" runat="server" associatedcontrolid="empEmailEF" Text="E-mail : "></asp:Label>
                    <asp:TextBox class="form-control" ID="empEmailEF" runat="server" type="email" maxlength="100" required="required"></asp:TextBox>
                    <br/>
                    <asp:Label class="form-label" ID="lbEmpName" runat="server" associatedcontrolid="empNameEF" Text="Employee Name : "></asp:Label>
                    <asp:TextBox class="form-control" ID="empNameEF" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="lbEmpGen" runat="server" associatedcontrolid="empGen" Text="Gender : "></asp:Label>
                    <asp:RadioButtonList ID="empGen" runat="server">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <asp:Label class="form-label" ID="lbEmpDOB" runat="server" associatedcontrolid="empDOBEF" Text="D.O.B : "></asp:Label>
                    <asp:TextBox class="form-control" ID="empDOBEF" runat="server" type="date" required="required"></asp:TextBox>
                    <br/>
                    <asp:Label class="form-label" ID="lbEmpMobile" runat="server" associatedcontrolid="empMobileEF" Text="Mobile No. : "></asp:Label>
                    <input class="form-control" id="empMobileEF" type="text" runat="server" maxlength="10" required="required"/>
                    <br/>
                    <asp:Label class="form-label" ID="lbEmpAddress" runat="server" associatedcontrolid="empAddressEF" Text="Address : "></asp:Label>
                    <asp:TextBox class="form-control" ID="empAddressEF" runat="server"></asp:TextBox>
                    <br/>
                    <asp:Label class="form-label" ID="lbJoinDate" runat="server" associatedcontrolid="empJoinDateEF" Text="Joining date : "></asp:Label>
                    <asp:TextBox class="form-control" ID="empJoinDateEF" runat="server" type="date" required="required"></asp:TextBox>
                    <br />
                    <asp:Label class="form-label" ID="lbDepName" runat="server" associatedcontrolid="depNameEF" Text="Department : "></asp:Label>
                    <asp:DropDownList class="form-label" ID="depNameEF" runat="server"></asp:DropDownList>
                    <br />
                    <asp:Label class="form-label" ID="lbSalaryAmount" runat="server" associatedcontrolid="salaryAmountEF" Text="Salary Amount : "></asp:Label>
                    <asp:TextBox class="form-control" ID="salaryAmountEF" runat="server"></asp:TextBox>
                    <br/>
                    <asp:Label class="form-label" ID="lbSalaryDesc" runat="server" associatedcontrolid="salaryDescEF" Text="Salary Description : "></asp:Label>
                    <asp:TextBox class="form-control" ID="salaryDescEF" runat="server"></asp:TextBox>
                    <br/>
                    <div class="row">
                        <div class="col-5"></div>
                        <asp:Button class="btn btn-primary col-2" ID="btnUpdateEmp" runat="server" Text="Update" autopostback="false" OnClick="btnUpdateEmp_Click" />
                        <div class="col-5"></div>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
