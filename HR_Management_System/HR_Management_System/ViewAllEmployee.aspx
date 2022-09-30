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
        <div>
            <asp:Panel ID="mesPanelViewemp" runat="server">
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <asp:Label ID="lbErrorViewemp" runat="server"></asp:Label>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </asp:Panel>
            <asp:GridView ID="GridViewEmp" runat="server" AutoGenerateColumns="False" DataKeyNames="emp_id" DataSourceID="SqlDataSource1">
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
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="Select emp_id,emp_username,emp_email,emp_name,emp_gender,emp_dob,emp_mobile,emp_address,emp_join_date,salary_amount,salary_desc,department_name,department_des from Department inner join Employee on Department.department_id = Employee.emp_department_id inner join Salary on salary.salary_emp_id = Employee.emp_id where isAdmin != 1"></asp:SqlDataSource>
        </div>

        <div class="row">
                <div class="col-5"></div>
                <asp:Button class="btn btn-primary col-2" ID="btnBack" runat="server" Text="Home Page" autopostback="false" OnClick="btnBack_Click" />
                <div class="col-5"></div>
        </div>

    </form>
</body>
</html>
