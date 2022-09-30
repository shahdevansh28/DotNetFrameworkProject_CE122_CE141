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

namespace HR_Management_System
{
    public partial class UpdateEmployee : System.Web.UI.Page
    {
        DataSet ds;
        string id = null;
        string uname = null;
        int dep_id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] == null){
                Response.Redirect("Login.aspx", false);
            }
            else {
                editEmpPanel.Visible = true;
                mesPanelUpdateemp.Visible = false;
                //String s = Request.QueryString["emp_id"];
                String s = Request.QueryString["empId"];
                //String s = Page.Request.Form["empId"];
                id = s;
                string conStr = WebConfigurationManager.ConnectionStrings["employeeConnection"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = $"Select * from Department inner join Employee on Department.department_id = Employee.emp_department_id inner join Salary on salary.salary_emp_id = Employee.emp_id where Employee.emp_id = {s}";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                try
                {
                    using (con)
                    {
                        con.Open();
                        da.Fill(ds, "Employeedata");

                        cmd.CommandText = "select * from Department";
                        da = new SqlDataAdapter(cmd);
                        da.Fill(ds,"Department");

                        con.Close();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Error : " + ex.Message);
                }
                DataTable dt = ds.Tables["Employeedata"];
                //if (!IsPostBack) {
                    DataRow[] dr = dt.Select();
                    depNameEF.DataSource = ds.Tables["Department"];
                    depNameEF.DataTextField = "department_name";
                    depNameEF.DataValueField = "department_id";
                    depNameEF.DataBind();

                    string depId = "1";
                    foreach (DataRow row in ds.Tables["Department"].Rows)
                    {
                        if (((string)row["department_name"]) == dr[0]["department_name"].ToString())
                        {
                            depId = row["department_id"].ToString();
                        }
                    }

                    depNameEF.SelectedValue = depId;

                    empUNameEF.Value = dr[0]["emp_username"].ToString();
                    empEmailEF.Text = dr[0]["emp_email"].ToString();
                    empNameEF.Text = dr[0]["emp_name"].ToString();
                    empDOBEF.Text = Convert.ToDateTime(dr[0]["emp_dob"]).ToString("yyyy-MM-dd");
                    empMobileEF.Value = dr[0]["emp_mobile"].ToString();
                    empAddressEF.Text = dr[0]["emp_address"].ToString();
                    empJoinDateEF.Text = Convert.ToDateTime(dr[0]["emp_join_date"]).ToString("yyyy-MM-dd");
                    salaryAmountEF.Text = dr[0]["salary_amount"].ToString();
                    salaryDescEF.Text = dr[0]["salary_desc"].ToString();
                    empGen.SelectedValue = dr[0]["emp_gender"].ToString();

                    uname = dr[0]["emp_username"].ToString();
                    dep_id = int.Parse(dr[0]["department_id"].ToString());
                //}

                
            }
            
        }

        protected void btnUpdateEmp_Click(object sender, EventArgs e)
        {
            
            string conStr = WebConfigurationManager.ConnectionStrings["employeeConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select * from Employee";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            SqlCommandBuilder builder = new SqlCommandBuilder(da);

            SqlCommand cmd2 = new SqlCommand("Select * from Salary", con);
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            SqlCommandBuilder builder2 = new SqlCommandBuilder(da2);

            try
            {
                using (con)
                {
                    con.Open();
                    da.Fill(ds, "Employee");

                    //da1.Fill(ds,"Department");

                    da2.Fill(ds, "Salary");

                    con.Close();

                    bool flag = true;
                    foreach (DataRow row in ds.Tables["Employee"].Rows)
                    {
                        if (((string)row["emp_username"]) != uname)
                        {
                            if ((((string)row["emp_username"]) != Page.Request.Form["empUNameEF"]))
                            {
                                if ((((string)row["emp_email"]) != Page.Request.Form["empEmailEF"]))
                                {
                                    continue;
                                }
                                else
                                {
                                    flag = false;
                                    //editEmpPanel.Visible = true;
                                    //viewEmpPanel.Visible = false;
                                    //lbErrorUpdateemp.Text = "Email id is already taken,Please take another one.";
                                    //mesPanelUpdateemp.Visible = true;
                                    Response.Write("Email id is already taken,Please take another one.");
                                    break;
                                }
                            }
                            else
                            {
                                flag = false;
                                //editEmpPanel.Visible = true;
                                //viewEmpPanel.Visible = false;
                                //lbErrorUpdateemp.Text = "User name is already taken...Please take another one.";
                                //mesPanelUpdateemp.Visible = true;
                                Response.Write("User name is already taken...Please take another one.");
                                break;
                            }
                        }
                    }

                    if (flag)
                    {
                        DataTable dt = ds.Tables["Employee"];
                        string expression = $"emp_username = '{uname}'";
                        DataRow[] dr = dt.Select(expression);

                        DataTable dt2 = ds.Tables["Salary"];
                        int emp_id = int.Parse(id);
                        string expression2 = $"salary_emp_id = '{emp_id}'";
                        DataRow[] dr2 = dt2.Select(expression2);

                        if (dr.Length == 1 && dr2.Length == 1)
                        {
                            dr[0]["emp_username"] = Page.Request.Form["empUNameEF"];
                            dr[0]["emp_email"] = Page.Request.Form["empEmailEF"];
                            dr[0]["emp_name"] = Page.Request.Form["empNameEF"];
                            dr[0]["emp_dob"] = DateTime.Parse(Page.Request.Form["empDOBEF"]);
                            dr[0]["emp_mobile"] = Page.Request.Form["empMobileEF"];
                            dr[0]["emp_address"] = Page.Request.Form["empAddressEF"];
                            dr[0]["emp_join_date"] = DateTime.Parse(Page.Request.Form["empJoinDateEF"]);
                            dr[0]["emp_department_id"] = Page.Request.Form["depNameEF"];
                            dr[0]["emp_gender"] = Page.Request.Form["empGen"];
                            da.Update(ds, "Employee");

                            dr2[0]["salary_amount"] = Page.Request.Form["salaryAmountEF"];
                            dr2[0]["salary_desc"] = Page.Request.Form["salaryDescEF"];
                            da2.Update(ds,"Salary");
                            lbErrorUpdateemp.Text = "Update is done succeessfully";
                            mesPanelUpdateemp.Visible = true;
                            editEmpPanel.Visible = false;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                editEmpPanel.Visible = true;
                lbErrorUpdateemp.Text = "Error" + ex.Message;
                mesPanelUpdateemp.Visible = true;
                Response.Write("Error1 : " + ex.Message);
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewAllEmployee.aspx",false);
        }
    }
}