using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq.Expressions;

namespace HR_Management_System
{
    public partial class LeaveForm : System.Web.UI.Page
    {
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            //mesPanelAddemp.Visible = false;
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
                cmd.CommandText = "Select * from Leave";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                ds = new DataSet();

                try
                {
                    using (con)
                    {
                        con.Open();
                        da.Fill(ds, "Leave");
                    }
                }
                catch (Exception ex)
                {
                    //lbErrorAddemp.Text = "Error" + ex.Message;
                    //mesPanelAddemp.Visible = true;
                    Response.Write("Error : " + ex.Message);
                }

            }

        }
        protected void btnApplyLeave_Click(object sender, EventArgs e)
        {
            string conStr = WebConfigurationManager.ConnectionStrings["employeeConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select * from Leave";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            SqlCommandBuilder builder = new SqlCommandBuilder(da);
            try
            {
                using (con)
                {
                    con.Open();
                    da.Fill(ds, "Leave");
                    DataTable dt = ds.Tables["Leave"];
                    DataRow dr = dt.NewRow();
                    dr["leave_emp_id"] = Session["user_id"];
                    dr["leave_date_from"] = DateTime.Parse(Page.Request.Form["tbLeaveDateFrom"]);
                    dr["leave_date_to"] = DateTime.Parse(Page.Request.Form["tbLeaveDateTo"]);
                    dr["leave_desc"] = Page.Request.Form["tbLeaveDesc"];
                    dr["leave_status"] = "In Progress";
                    dt.Rows.Add(dr);
                    da.Update(ds, "Leave");
                    Response.Redirect("UserHome.aspx",false);
                 }
            }
            catch (Exception ex)
            {
                //lbErrorAddemp.Text = "Error" + ex.Message;
                //mesPanelAddemp.Visible = true;
                Response.Write("Error1 : " + ex.Message);
            }
        }
    }
}