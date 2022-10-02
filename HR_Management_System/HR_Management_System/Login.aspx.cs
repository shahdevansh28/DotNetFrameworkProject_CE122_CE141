using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Text;

namespace HR_Management_System
{
    public partial class Login : System.Web.UI.Page
    {
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            mesPanel.Visible = false;
        }
        
        protected void loginBtn_Click(object sender, EventArgs e)
        {
            string name = Page.Request.Form["uName"];
            string pass = Page.Request.Form["uPassword"];

            string conStr = WebConfigurationManager.ConnectionStrings["employeeConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select * from Employee";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            try {
                using (con) {
                    con.Open();
                    da.Fill(ds, "Employee");
                }
            } catch (Exception ex) {
                lbError.Text = "Error" + ex.Message;
                mesPanel.Visible = true;
                //Response.Write("Error : "+ex.Message);
            }

            bool success = false, isAdmin = false;
            foreach (DataRow row in ds.Tables["Employee"].Rows) {
                if ( (( (string)row["emp_username"]) == name) && (((string)row["emp_password"]) == pass) ) {
                    success = true;
                    Session["user_id"] = row["emp_id"];
                    if ( (int)(row["isAdmin"]) == 1 ) {
                        isAdmin = true;
                    }
                    break;
                }
            }
            if (success){

                Session["userName"] = name;

                if (isAdmin) { 
                    Session["isAdmin"] = 1;
                    Response.Redirect("AdminHome.aspx",false);
                }else { 
                    Session["isAdmin"] = 0;
                    Response.Redirect("UserHome.aspx",false);
                }

            }else{
                lbError.Text = "User name or password may be incorrect";
                mesPanel.Visible = true;
                //Response.Write("User name or password may be incorrect");
            }

        }
    }
}