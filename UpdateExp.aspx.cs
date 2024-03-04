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
    public partial class UpdateExp : System.Web.UI.Page
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
                        SqlCommand cmd = new SqlCommand("SELECT * FROM exprienceDB WHERE Id=@Id", con);

                        cmd.Parameters.AddWithValue("@Id", id);

                        SqlDataReader sdr = cmd.ExecuteReader();

                        if (sdr.HasRows)
                        {
                            sdr.Read();


                            etxtId.Text = sdr["id"].ToString();
                            etxtTitle.Text = sdr["Title"].ToString();
                            etxtDuration.Text = sdr["Duration"].ToString();
                            etxtDescription.Text = sdr["Description"].ToString();


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


        protected void ebtnUpdate_Click(object sender, EventArgs e)
        {
            eUpdateSchool();

        }

        private void eUpdateSchool()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand cmd = new SqlCommand("UPDATE exprienceDB SET Title=@Title, Duration=@Duration, Description=@Description WHERE id=@id", connection))
                {

                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(etxtId.Text));
                    cmd.Parameters.AddWithValue("@Title", etxtTitle.Text);
                    cmd.Parameters.AddWithValue("@Duration", etxtDuration.Text);
                    cmd.Parameters.AddWithValue("@Description", etxtDescription.Text);


                    cmd.ExecuteNonQuery();
                }

                connection.Close();

                Response.Redirect("~/adminDashboard.aspx");
            }
        }



    }
}