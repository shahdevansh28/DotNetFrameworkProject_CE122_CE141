<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeaveForm.aspx.cs" Inherits="HR_Management_System.LeaveForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/bootstrap.bundle.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title>Leave Application Form</title>
</head>
<body>
    <div class="container mt-5">
        <center>
            <h1>Leave Application Form</h1>
        </center>
     </div>
    <div class="container mt-5 w-25">
        <form id="form1" class="align-items-center" runat="server">
                <asp:Label class="form-label" ID="lblLeaveDateFrom" runat="server" Text="Date from"></asp:Label>
                <asp:TextBox class="form-control" ID="tbLeaveDateFrom" runat="server" TextMode="Date"></asp:TextBox><br/>
                <asp:Label class="form-label" ID="lblLeaveDateTo" runat="server" Text="Date To"></asp:Label>
                <asp:TextBox class="form-control" ID="tbLeaveDateTo" runat="server" TextMode="Date"></asp:TextBox><br />
                <asp:Label class="form-label" ID="lblLeaveDesc" runat="server" Text="Reason"></asp:Label>
                <asp:TextBox class="form-control" ID="tbLeaveDesc" runat="server" TextMode="MultiLine"></asp:TextBox><br />
                <asp:Label class="form-label" ID="lblLeaveStatus" runat="server" Text="Status"></asp:Label>
                <asp:Label class="form-label" ID="lblLeaveValue" runat="server" Text="Not Approved" Visible="False"></asp:Label><br />
                <div class="row">
                    <div class="col-4"></div>    
                    <asp:Button class="btn btn-primary col-4" ID="btnApplyLeave" runat="server" Text="Apply for Leave" OnClick="btnApplyLeave_Click" />
                    <div class="col-4"></div>
                </div>
            <br />      
        </form>
    </div>
</body>
</html>
