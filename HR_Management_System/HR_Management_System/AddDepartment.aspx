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
    <div class="container mt-5 mb-5">
        <form id="form1" runat="server">
            <asp:Panel ID="mesPanelAddDep" runat="server">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <asp:Label ID="lbErrorAddDep" runat="server"></asp:Label>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
            </asp:Panel>
            <asp:Panel ID="addDepPanel" runat="server">
                    <div>
                        <asp:Label class="form-label" ID="lbDepName" runat="server" associatedcontrolid="depName" Text="Department Name : "></asp:Label>
                        <asp:TextBox class="form-control" ID="depName" runat="server"></asp:TextBox>
                        <br/>
                        <asp:Label class="form-label" ID="lbDepDesc" runat="server" associatedcontrolid="DepDesc" Text="Department Description : "></asp:Label>
                        <asp:TextBox class="form-control" ID="depDesc" runat="server"></asp:TextBox>
                        <br/>
                        <br/>
                        <asp:Button class="btn btn-primary" ID="btnAddDep" runat="server" Text="Add Department" OnClick="btnAddEmp_Click" />

                    </div>


            </asp:Panel>
            <div class="row">
                <div class="col-5"></div>
                <asp:Button class="btn btn-primary col-2" ID="btnBack" runat="server" Text="Back" autopostback="false" OnClick="btnBack_Click" />
                <div class="col-5"></div>
            </div>
       </form>

    </div>
</body>
</html>
