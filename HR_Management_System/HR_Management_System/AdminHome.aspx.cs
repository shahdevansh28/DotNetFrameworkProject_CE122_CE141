using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HR_Management_System
{
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] == null)
            {
                Response.Redirect("Login.aspx", false);
            }else{
                Response.Write(Session["userName"]);
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Remove("userName");
            Response.Redirect("Login.aspx",false);
        }
    }
}