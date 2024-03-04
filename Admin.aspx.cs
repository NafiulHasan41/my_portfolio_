using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            {
                string username = txtUsername.Text.Trim();
                string password = txtPassword.Text.Trim();

                // Example: Perform server-side validation (replace with your actual validation logic)

                if (username == "nafiulhasan" && password == "NaFiUl425262@")
                {
                    Response.Redirect("adminDashboard.aspx"); // Redirect on successful login
                }
                else
                {
                    lblErrorMessage.Text = "Invalid username or password.";
                }
            }
        }
    }
}