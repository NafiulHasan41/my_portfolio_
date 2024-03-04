using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio
{
    public partial class UpdateSkill : System.Web.UI.Page
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["id"].Trim());

                try
                {
                    // Create a new SqlConnection and connect to the database using the connection string from web.config
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }

                        // Query to select record by ID
                        SqlCommand cmd = new SqlCommand("SELECT * FROM skillDB WHERE Id=@Id", con);

                        cmd.Parameters.AddWithValue("@Id", id);

                        SqlDataReader sdr = cmd.ExecuteReader();

                        if (sdr.HasRows)
                        {
                            sdr.Read();


                            stxtId.Text = sdr["id"].ToString();
                            stxtSkillName.Text = sdr["SkillName"].ToString();
                            stxtSkillPer.Text = sdr["SkillPercentage"].ToString();


                        }

                        // Close the connection
                        con.Close();
                    }
                }
                catch (Exception ex)
                {
                    // Display error message
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
            }
        }

        protected void sbtnUpdate_Click(object sender, EventArgs e)
        {
            sUpdateSchool();

        }

        private void sUpdateSchool()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand cmd = new SqlCommand("UPDATE skillDB SET SkillName=@SkillName, SkillPercentage=@SkillPercentage WHERE id=@id", connection))
                {

                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(stxtId.Text));
                    cmd.Parameters.AddWithValue("@SkillName", stxtSkillName.Text);
                    cmd.Parameters.AddWithValue("@SkillPercentage", stxtSkillPer.Text);


                    cmd.ExecuteNonQuery();
                }

                connection.Close();

                Response.Redirect("~/adminDashboard.aspx");
            }
        }


    }
   
}