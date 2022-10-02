using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;

namespace HR_Management_System
{
    public partial class ViewProfile : System.Web.UI.Page
    {
        DataSet ds;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] == null) {
                Response.Redirect("Login.aspx", false);
            }
            else {
                viewEmpPanel.Visible = true;
                editEmpPanel.Visible = false;
                mesPanelViewProfileErr.Visible = false;
                mesPanelViewProfileSucc.Visible = false;
                string conStr = WebConfigurationManager.ConnectionStrings["employeeConnection"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);
                string query = "Select * from Department inner join Employee on Department.department_id = Employee.emp_department_id inner join Salary on salary.salary_emp_id = Employee.emp_id where emp_username = @userName";
                try
                {
                    using (con)
                    {
                        using (SqlCommand cmd = new SqlCommand(query,con))
                        {
                            cmd.Parameters.AddWithValue("@userName", Session["userName"]);
                            con.Open();
                            SqlDataReader rdr = cmd.ExecuteReader();
                            while (rdr.Read()) {
                                empuName.Text = rdr["emp_username"].ToString();
                                empEmail.Text = rdr["emp_email"].ToString();
                                empPass.Text = rdr["emp_password"].ToString();
                                empName.Text = rdr["emp_name"].ToString();

                                if (rdr["emp_gender"].ToString() == "M") {
                                    empGen.Text = "Male";
                                }
                                else
                                {
                                    empGen.Text = "Female";
                                }
                                
                                empDOB.Text = rdr["emp_dob"].ToString();
                                empMobile.Text = rdr["emp_mobile"].ToString();
                                empAddress.Text = rdr["emp_address"].ToString();
                                empJoinDate.Text = rdr["emp_join_date"].ToString();
                                salaryAmount.Text = rdr["salary_amount"].ToString();
                                salaryDesc.Text = rdr["salary_desc"].ToString();
                                depName.Text = rdr["department_name"].ToString();
                                depDesc.Text = rdr["department_des"].ToString();

                                empUNameEF.Value = rdr["emp_username"].ToString();
                                empEmailEF.Text = rdr["emp_email"].ToString();
                                empNameEF.Text = rdr["emp_name"].ToString();
                                empGenEF.SelectedValue = rdr["emp_gender"].ToString();
                                empDOBEF.Text = Convert.ToDateTime(rdr["emp_dob"]).ToString("yyyy-MM-dd");
                                empMobileEF.Value = rdr["emp_mobile"].ToString();
                                empAddressEF.Text = rdr["emp_address"].ToString();
                                empJoinDateEF.Text = Convert.ToDateTime(rdr["emp_join_date"]).ToString("yyyy-MM-dd");
                            }
                        }
                    }
                }catch(Exception ex){
                    Response.Write("Error :"+ex.Message);
                }
            }
        }

        protected void btnEditEmp_Click(object sender, EventArgs e)
        {
            viewEmpPanel.Visible = false;
            editEmpPanel.Visible = true;
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
            try
            {
                using (con)
                {
                    con.Open();
                    da.Fill(ds, "Employee");
                    con.Close();

                    bool flag = true;
                    foreach (DataRow row in ds.Tables["Employee"].Rows)
                    {
                        if (((string)row["emp_username"]) != Session["userName"].ToString())
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
                                    editEmpPanel.Visible = true;
                                    viewEmpPanel.Visible = false;
                                    lbErrorViewProfile.Text = "Email id is already taken,Please take another one.";
                                    mesPanelViewProfileErr.Visible = true;
                                    //Response.Write("Email id is already taken,Please take another one.");
                                    break;
                                }
                            }
                            else
                            {
                                flag = false;
                                editEmpPanel.Visible = true;
                                viewEmpPanel.Visible = false;
                                lbErrorViewProfile.Text = "User name is already taken...Please take another one.";
                                mesPanelViewProfileErr.Visible = true;
                                //Response.Write("User name is already taken...Please take another one.");
                                break;
                            }
                        }
                    }

                    if (flag)
                    {
                        DataTable dt = ds.Tables["Employee"];
                        string name = Session["userName"].ToString();
                        string expression = $"emp_username = '{name}'";
                        DataRow[] dr = dt.Select(expression);
                        if (dr.Length == 1)
                        {
                            Session["username"] = Page.Request.Form["empUNameEF"];
                            dr[0]["emp_username"] = Page.Request.Form["empUNameEF"];
                            dr[0]["emp_email"] = Page.Request.Form["empEmailEF"];
                            dr[0]["emp_name"] = Page.Request.Form["empNameEF"];
                            dr[0]["emp_gender"] = Page.Request.Form["empGenEF"];
                            dr[0]["emp_dob"] = DateTime.Parse(Page.Request.Form["empDOBEF"]);
                            dr[0]["emp_mobile"] = Page.Request.Form["empMobileEF"];
                            dr[0]["emp_address"] = Page.Request.Form["empAddressEF"];
                            dr[0]["emp_join_date"] = DateTime.Parse(Page.Request.Form["empJoinDateEF"]);
                            da.Update(ds, "Employee");
                            lbSuccViewProfile.Text = "Update is done succeessfully";
                            mesPanelViewProfileSucc.Visible = true;
                            editEmpPanel.Visible = false;
                            viewEmpPanel.Visible = true;
                        }

                        Response.Redirect("ViewProfile.aspx",false);

                    }
                }
            }
            catch (Exception ex)
            {
                editEmpPanel.Visible = true;
                viewEmpPanel.Visible = false;
                lbErrorViewProfile.Text = "Error" + ex.Message;
                mesPanelViewProfileErr.Visible = true;
                //Response.Write("Error1 : " + ex.Message);
            }
        }
    }
}