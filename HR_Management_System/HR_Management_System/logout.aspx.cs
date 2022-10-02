using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HR_Management_System
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] != null) {
                Session.Abandon();
                Session.Remove("userName");
                Response.Redirect("Login.aspx", false);
            }
        }
    }
}