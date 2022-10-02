using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HR_Management_System
{
    public partial class viewListAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] == null)
            {
                Response.Redirect("Login.aspx", false);
            }
            else
            {
                Response.Write(Session["userName"]);
                Response.Write(Session["user_id"]);
            }
        }
        protected void AdminLeaveGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int leave_Id = Convert.ToInt32(e.CommandArgument);
            Response.Write(leave_Id);
            GridViewRow selectedRow = AdminLeaveGridView.Rows[leave_Id];
            TableCell leaveId = selectedRow.Cells[0];
            int leaveID = Int32.Parse(leaveId.Text);

            if (e.CommandName.CompareTo("grantLeave") == 0)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["employeeConnection"].ConnectionString;
                string query = "UPDATE Leave SET leave_status = 'Granted' WHERE leave_id=@leave_id";
                try
                {
                    using (con)
                    {
                        using (SqlCommand cmd = new SqlCommand(query))
                        {
                            cmd.Parameters.AddWithValue("@leave_id", leaveID);
                            cmd.Connection = con;
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Exception Occured" + ex);
                }
            }
            else
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["employeeConnection"].ConnectionString;
                string query = "UPDATE Leave SET leave_status = 'Not Granted' WHERE leave_id=@leave_id";
                try
                {
                    using (con)
                    {
                        using (SqlCommand cmd = new SqlCommand(query))
                        {
                            cmd.Parameters.AddWithValue("@leave_id", leaveID);
                            cmd.Connection = con;
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Exception Occured" + ex);
                }
            }
            Response.Redirect("viewListAdmin.aspx", false);
        }
    }
}