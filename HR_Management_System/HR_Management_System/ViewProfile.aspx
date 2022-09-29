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
        <div>
            <h1>Profile page</h1>
            <asp:Panel ID="mesPanelAddemp" runat="server">
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <asp:Label ID="lbErrorAddemp" runat="server"></asp:Label>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </asp:Panel>
            <asp:Panel ID="viewEmpPanel" runat="server">
                Employee personal Details :-<br />
                <br />
                <asp:Label ID="empuName" runat="server"></asp:Label>
                <br />
                <asp:Label ID="empEmail" runat="server"></asp:Label>
                <br />
                <asp:Label ID="empPass" runat="server"></asp:Label>
                <br />
                <asp:Label ID="empName" runat="server"></asp:Label>
                <br />
                <asp:Label ID="empGen" runat="server"></asp:Label>
                <br />
                <asp:Label ID="empDOB" runat="server"></asp:Label>
                <br />
                <asp:Label ID="empMobile" runat="server"></asp:Label>
                <br />
                <asp:Label ID="empAddress" runat="server"></asp:Label>
                <br />
                <asp:Label ID="empJoinDate" runat="server"></asp:Label>
                <br />
                <br />
                Salary Details :-<br />
                <br />
                <asp:Label ID="salaryAmount" runat="server"></asp:Label>
                <br />
                <asp:Label ID="salaryDesc" runat="server"></asp:Label>
                <br />
                <br />
                Department Details :-<br />
                <br />
                <asp:Label ID="depName" runat="server"></asp:Label>
                <br />
                <asp:Label ID="depDesc" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Button ID="btnEditEmp" runat="server" OnClick="btnEditEmp_Click" Text="Edit Details" />
            </asp:Panel>

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
                    <br/>
                    <asp:Label ID="lbEmpGen" runat="server" associatedcontrolid="empGenEF" Text="Gender : "></asp:Label>
                    <asp:RadioButtonList ID="empGenEF" runat="server">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
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
                    <%--<input class="form-control" id="Date2" type="date" runat="server" required="required"/>--%>
                    <asp:TextBox class="form-control" ID="empJoinDateEF" runat="server" type="date" required="required"></asp:TextBox>
                    <br />
                    <div class="row">
                        <div class="col-5"></div>
                        <asp:Button class="btn btn-primary col-2" ID="btnUpdateEmp" runat="server" Text="Update" OnClick="btnUpdateEmp_Click" />
                        <div class="col-5"></div>
                    </div>
                </div>
            </asp:Panel>

        </div>
    </form>
</body>
</html>
