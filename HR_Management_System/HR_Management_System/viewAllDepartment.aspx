<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewAllDepartment.aspx.cs" Inherits="HR_Management_System.viewAllDepartment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:GridView ID="GridViewdep" runat="server" AutoGenerateColumns="False" DataKeyNames="department_id" DataSourceID="SqlDataSource1" AutoGenerateEditButton="True">
                <Columns>
                    <asp:BoundField DataField="department_id" HeaderText="department_id" InsertVisible="False" ReadOnly="True" SortExpression="department_id" />
                    <asp:BoundField DataField="department_name" HeaderText="department_name" SortExpression="department_name" />
                    <asp:BoundField DataField="department_des" HeaderText="department_des" SortExpression="department_des" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT * FROM [Department]"
                UpdateCommand="UPDATE [Department] Set [department_name]=@department_name, [department_des]=@department_des Where [department_id]=@department_id"></asp:SqlDataSource>
            
        </div>
    </form>
</body>
</html>
