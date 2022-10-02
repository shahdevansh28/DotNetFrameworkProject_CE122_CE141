<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAllEmployee.aspx.cs" Inherits="HR_Management_System.ViewAllEmployee" %>

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

        <div class="w-75 mt-5">
            <asp:Panel ID="mesPanelViewemp" runat="server">
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <asp:Label ID="lbErrorViewemp" runat="server"></asp:Label>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </asp:Panel>
            <asp:GridView ID="GridViewEmp" runat="server" AutoGenerateColumns="False" DataKeyNames="emp_id" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="emp_id" HeaderText="emp_id" InsertVisible="False" ReadOnly="True" SortExpression="emp_id" />
                    <asp:BoundField DataField="emp_username" HeaderText="emp_username" SortExpression="emp_username" />
                    <asp:BoundField DataField="emp_email" HeaderText="emp_email" SortExpression="emp_email" />
                    <asp:BoundField DataField="emp_name" HeaderText="emp_name" SortExpression="emp_name" />
                    <asp:BoundField DataField="emp_gender" HeaderText="emp_gender" SortExpression="emp_gender" />
                    <asp:BoundField DataField="emp_dob" HeaderText="emp_dob" SortExpression="emp_dob" />
                    <asp:BoundField DataField="emp_mobile" HeaderText="emp_mobile" SortExpression="emp_mobile" />
                    <asp:BoundField DataField="emp_address" HeaderText="emp_address" SortExpression="emp_address" />
                    <asp:BoundField DataField="emp_join_date" HeaderText="emp_join_date" SortExpression="emp_join_date" />
                    <asp:BoundField DataField="salary_amount" HeaderText="salary_amount" SortExpression="salary_amount" />
                    <asp:BoundField DataField="salary_desc" HeaderText="salary_desc" SortExpression="salary_desc" />
                    <asp:BoundField DataField="department_name" HeaderText="department_name" SortExpression="department_name" />
                    <asp:BoundField DataField="department_des" HeaderText="department_des" SortExpression="department_des" />
                    <asp:TemplateField HeaderText="Update">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandArgument='<%# Bind("emp_id") %>' CommandName="Cancel" Text="update" OnClick="updateEmpClick" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button ID="Button2" runat="server" CausesValidation="false" CommandArgument='<%# Bind("emp_id") %>' CommandName="Cancel" Text="delete" OnClick="deleteEmpClick" />
                        </ItemTemplate>
                    </asp:TemplateField>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="Select emp_id,emp_username,emp_email,emp_name,emp_gender,emp_dob,emp_mobile,emp_address,emp_join_date,salary_amount,salary_desc,department_name,department_des from Department inner join Employee on Department.department_id = Employee.emp_department_id inner join Salary on salary.salary_emp_id = Employee.emp_id where isAdmin != 1"></asp:SqlDataSource>
        </div>


    </form>
</body>
</html>
