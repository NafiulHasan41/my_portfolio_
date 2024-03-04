using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Portfolio
{
    public partial class UpdateEdu : System.Web.UI.Page
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
                        SqlCommand cmd = new SqlCommand("SELECT * FROM EducationDB WHERE Id=@Id", con);

                        cmd.Parameters.AddWithValue("@Id", id);

                        SqlDataReader sdr = cmd.ExecuteReader();

                        if (sdr.HasRows)
                        {
                            sdr.Read();


                            txtId.Text = sdr["id"].ToString();
                            txtSchoolName.Text = sdr["SchoolName"].ToString();
                            txtStartYear.Text = sdr["StartYear"].ToString();
                            txtEndYear.Text = sdr["EndYear"].ToString();
                            txtDescription.Text = sdr["Description"].ToString();


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

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            UpdateSchool();
           
        }

        private void UpdateSchool()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand cmd = new SqlCommand("UPDATE EducationDB SET SchoolName=@SchoolName, StartYear=@StartYear, EndYear=@EndYear, Description=@Description WHERE id=@id", connection))
                {

                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(txtId.Text));
                    cmd.Parameters.AddWithValue("@Schoolname", txtSchoolName.Text);
                    cmd.Parameters.AddWithValue("@StartYear", txtStartYear.Text);
                    cmd.Parameters.AddWithValue("@EndYear", txtEndYear.Text);
                    cmd.Parameters.AddWithValue("@Description", txtDescription.Text);


                    cmd.ExecuteNonQuery();
                }

                connection.Close();

                Response.Redirect("~/adminDashboard.aspx");
            }
        }




    }
}