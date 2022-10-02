<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewAllDepartment.aspx.cs" Inherits="HR_Management_System.viewAllDepartment" %>

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

        <div class="row mt-5">

            <div class="col"></div>
        <div class="col">
            
            <asp:GridView ID="GridViewdep" runat="server" AutoGenerateColumns="False" DataKeyNames="department_id" DataSourceID="SqlDataSource1" AutoGenerateEditButton="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="department_id" HeaderText="department_id" InsertVisible="False" ReadOnly="True" SortExpression="department_id" />
                    <asp:BoundField DataField="department_name" HeaderText="department_name" SortExpression="department_name" />
                    <asp:BoundField DataField="department_des" HeaderText="department_des" SortExpression="department_des" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT * FROM [Department]"
                UpdateCommand="UPDATE [Department] Set [department_name]=@department_name, [department_des]=@department_des Where [department_id]=@department_id"></asp:SqlDataSource>
            
        </div>
            <div class="col"></div>
        </div>

        <div class="row mt-5">
                <div class="col-5"></div>
                <asp:Button class="btn btn-primary col-2" ID="btnBack" runat="server" Text="Home Page" autopostback="false" OnClick="btnBack_Click" style="background-color: rebeccapurple;"/>
                <div class="col-5"></div>
        </div>

    </form>
</body>
</html>
