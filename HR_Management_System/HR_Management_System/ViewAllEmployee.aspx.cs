using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Specialized;
using System.Text;

namespace HR_Management_System
{
    public partial class ViewAllEmployee : System.Web.UI.Page
    {

        DataSet ds;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] == null){
                Response.Redirect("Login.aspx", false);
            }
            mesPanelViewemp.Visible = false;
            //if (IsPostBack) { 
            //    mesPanelViewemp.Visible = true;
            //}
        }

        protected void updateEmpClick(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string empId = btn.CommandArgument.ToString();
            Response.Redirect($"UpdateEmployee.aspx?empId={empId}",false);
        }

        protected void deleteEmpClick(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string empId = btn.CommandArgument.ToString();
            int id = int.Parse(empId);

            string conStr = WebConfigurationManager.ConnectionStrings["employeeConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = $"Select * from Employee";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            SqlCommandBuilder builder = new SqlCommandBuilder(da);

            string conStr2 = WebConfigurationManager.ConnectionStrings["employeeConnection"].ConnectionString;
            con = new SqlConnection(conStr2);
            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = con;
            cmd2.CommandText = "Select * from Salary";
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            SqlCommandBuilder builder2 = new SqlCommandBuilder(da2);

            bool flag = false;
            try
            {
                using (con)
                {
                    con.Open();
                    da.Fill(ds, "Employee");
                    da2.Fill(ds, "Salary");
                    con.Close();

                    DataTable dt2 = ds.Tables["Salary"];
                    string expression2 = $"salary_emp_id = '{id}'";
                    DataRow[] dr2 = dt2.Select(expression2);
                    if (dr2[0] != null)
                        dr2[0].Delete();
                    da2.Update(ds, "Salary");

                    DataTable dt = ds.Tables["Employee"];
                    string expression = $"emp_id = '{id}'";
                    DataRow[] dr = dt.Select(expression);
                    if (dr[0] != null)
                        dr[0].Delete();
                    da.Update(ds, "Employee");
                    flag = true;
                }
            }
            catch (Exception ex)
            {
                lbErrorViewemp.Text = "Error" + ex.Message;
                mesPanelViewemp.Visible = true;
                //Response.Write("Error1 : " + ex.Message);
            }

            if (flag)
            {
                //Response.Redirect("ViewAllEmployee.aspx",false);
                lbErrorViewemp.Text = "Deleted succesfully..";
                mesPanelViewemp.Visible = true;
            }
            else
            {
                lbErrorViewemp.Text = "Something went wrong..";
                mesPanelViewemp.Visible = true;
            }
            
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHome.aspx", false);
        }
    }
}