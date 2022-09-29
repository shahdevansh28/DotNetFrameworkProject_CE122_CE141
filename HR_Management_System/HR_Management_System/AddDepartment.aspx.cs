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
    public partial class AddDepartment : System.Web.UI.Page
    {
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            mesPanelAddemp.Visible = false;
            if (Session["userName"] == null)
            {
                Response.Redirect("Login.aspx", false);
            }
        }

        protected void btnAddEmp_Click(object sender, EventArgs e)
        {
            string conStr = WebConfigurationManager.ConnectionStrings["employeeConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select * from Department";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            SqlCommandBuilder builder = new SqlCommandBuilder(da);

            try
            {
                using (con)
                {
                    con.Open();
                    da.Fill(ds, "Department");
                    con.Close();

                    bool flag = true;
                    foreach (DataRow row in ds.Tables["Department"].Rows)
                    {
                        if ((((string)row["department_name"]) != Page.Request.Form["depName"]))
                        {
                            continue;
                        }
                        else
                        {
                            flag = false;
                            lbErrorAddemp.Text = "Department name is already taken.";
                            mesPanelAddemp.Visible = true;
                            break;
                        }
                    }

                    if (flag)
                    {
                        DataTable dt = ds.Tables["Department"];
                        DataRow dr = dt.NewRow();
                        dr["department_name"] = Page.Request.Form["depName"];
                        dr["department_des"] = Page.Request.Form["depDesc"];
                        dt.Rows.Add(dr);
                        da.Update(ds, "Department");
                    }
                }
            }
            catch (Exception ex)
            {
                lbErrorAddemp.Text = "Error" + ex.Message;
                mesPanelAddemp.Visible = true;
                //Response.Write("Error1 : " + ex.Message);
            }

        }
    }
}