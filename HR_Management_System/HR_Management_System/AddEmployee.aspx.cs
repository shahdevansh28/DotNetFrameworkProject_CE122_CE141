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
using System.Text;

namespace HR_Management_System
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            mesPanelAddemp.Visible = false;
            addEmpPanel.Visible = true;
            if (Session["userName"] == null)
            {
                Response.Redirect("Login.aspx", false);
            }
            else
            {
                string conStr = WebConfigurationManager.ConnectionStrings["employeeConnection"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "Select * from Department";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                ds = new DataSet();

                try
                {
                    using (con)
                    {
                        con.Open();
                        da.Fill(ds, "Department");
                    }
                }
                catch (Exception ex)
                {
                    lbErrorAddemp.Text = "Error" + ex.Message;
                    mesPanelAddemp.Visible = true;
                    //Response.Write("Error : " + ex.Message);
                }

                empDepartment.DataSource = ds.Tables["Department"];
                empDepartment.DataTextField = "department_name";
                empDepartment.DataValueField = "department_id";
                empDepartment.DataBind();

            }

        }

        protected void btnAddEmp_Click(object sender, EventArgs e)
        {
            string conStr = WebConfigurationManager.ConnectionStrings["employeeConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select * from Employee";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            SqlCommandBuilder builder = new SqlCommandBuilder(da);

            string uname = Page.Request.Form["empUName"];
            try
            {
                using (con)
                {
                    con.Open();
                    da.Fill(ds, "Employee");

                    //da2.Fill(ds, "Salary");

                    con.Close();

                    bool flag = true;
                    foreach (DataRow row in ds.Tables["Employee"].Rows)
                    {
                        if ( ( ((string)row["emp_username"]) != Page.Request.Form["empUName"] ) )
                        {
                            if ((((string)row["emp_email"]) != Page.Request.Form["empEmail"])) {
                                continue;
                            }
                            else
                            {
                                flag = false;
                                lbErrorAddemp.Text = "Email id is already taken,Please take another one.";
                                mesPanelAddemp.Visible = true;
                                //Response.Write("Email id is already taken,Please take another one.");
                                break;
                            }
                        }
                        else
                        {
                            flag = false;
                            lbErrorAddemp.Text = "User name is already taken...Please take another one.";
                            mesPanelAddemp.Visible = true;
                            //Response.Write("User name is already taken...Please take another one.");
                            break;
                        }
                    }

                    if (flag)
                    {
                        DataTable dt = ds.Tables["Employee"];
                        DataRow dr = dt.NewRow();

                        dr["emp_username"] = uname;
                        dr["emp_email"] = Page.Request.Form["empEmail"];
                        dr["emp_password"] = Page.Request.Form["empPassword"];
                        dr["emp_name"] = Page.Request.Form["empName"];
                        dr["emp_gender"] = Page.Request.Form["empGen"];
                        dr["emp_dob"] = DateTime.Parse(Page.Request.Form["empDOB"]);
                        dr["emp_mobile"] = Page.Request.Form["empMobile"];
                        dr["emp_address"] = Page.Request.Form["empAddress"];
                        dr["emp_join_date"] = DateTime.Parse(Page.Request.Form["empJoinDate"]);
                        dr["emp_department_id"] = int.Parse(Page.Request.Form["empDepartment"]);
                        dr["isAdmin"] = 0;
                        dt.Rows.Add(dr);
                        da.Update(ds, "Employee");
                        
                        //Response.Redirect("");
                    }
                }
                
            }
            catch (Exception ex)
            {
                lbErrorAddemp.Text = "Error" + ex.Message;
                mesPanelAddemp.Visible = true;
                //Response.Write("Error1 : " + ex.Message);
            }

            updateSalary();
        }

        protected void updateSalary()
        {
            string conStr = WebConfigurationManager.ConnectionStrings["employeeConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select IDENT_CURRENT('Employee') as empId";
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            con = new SqlConnection(conStr);
            SqlCommand cmd2 = new SqlCommand("Select * from Salary", con);
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            SqlCommandBuilder builder2 = new SqlCommandBuilder(da2);

            int lastId = 0;
            try
            {
                using (con)
                {
                    con.Open();
                    da.Fill(ds, "LastEmployee");
                    da2.Fill(ds,"Salary");
                    con.Close();

                    DataTable dt = ds.Tables["LastEmployee"];
                    DataRow[] dr = dt.Select();

                    if (dr.Length == 1)
                    {
                        //Response.Write(dr[0]["empId"]);
                        lastId = int.Parse(dr[0]["empId"].ToString());
                    }

                    DataTable dt2 = ds.Tables["Salary"];
                    DataRow dr2 = dt2.NewRow();
                    dr2["salary_amount"] = Page.Request.Form["salaryAmount"];
                    dr2["salary_desc"] = Page.Request.Form["salaryDesc"];
                    dr2["salary_emp_id"] = lastId;
                    dt2.Rows.Add(dr2);
                    da2.Update(ds,"Salary");

                    lbErrorAddemp.Text = "Employee added succeessfully";
                    mesPanelAddemp.Visible = true;
                    addEmpPanel.Visible = false;

                }
            }
            catch (Exception ex)
            {
                lbErrorAddemp.Text = "Error" + ex.Message;
                mesPanelAddemp.Visible = true;
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHome.aspx", false);
        }
        
    }
}