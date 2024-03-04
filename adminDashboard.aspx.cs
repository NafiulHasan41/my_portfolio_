using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Common;
using System.Configuration;

namespace Portfolio
{
    public partial class adminDashboard : System.Web.UI.Page
    {

        private string connectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 
                /*This section is for educaton */


                /*For showing Education Grid*/
                BindGrid();
                
                /*Showing Contact From Data*/
                BindContactList();

                /*This section is for educaton */



                /*This section is for Exprince */


                /*For showing Exprience Grid*/

                eBindGrid();

                /*This section is for educaton */

                /*This section is for Skill */


                /*For showing Skill Grid*/

                sBindGrid();

                /*This section is for Skill */


            }
        }



  /*This section is for Education */

        /*Button click listner to add data to database*/

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            InsertSchool();
            BindGrid();
            ClearInputFieldsEdu();
        }

       

        /*For inserting Education data to dataTable*/

        private void InsertSchool()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand cmd = new SqlCommand("INSERT INTO EducationDB (id ,SchoolName, StartYear, EndYear, Description) VALUES (@id,@SchoolName, @StartYear, @EndYear, @Description)", connection))
                {

                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(txtId.Text));
                    cmd.Parameters.AddWithValue("@Schoolname", txtSchoolName.Text);
                    cmd.Parameters.AddWithValue("@StartYear", txtStartYear.Text);
                    cmd.Parameters.AddWithValue("@EndYear",txtEndYear.Text);
                    cmd.Parameters.AddWithValue("@Description", txtDescription.Text);

                   
                    cmd.ExecuteNonQuery();
                }

                connection.Close();
            }
        }

        /*this for clearing educationInput*/
        private void ClearInputFieldsEdu()
        {
            txtId.Text = String.Empty;
            txtSchoolName.Text = string.Empty;
            txtStartYear.Text = string.Empty;
            txtEndYear.Text = string.Empty;
            txtDescription.Text = string.Empty;
        }

        /* click operation update and delete*/

        protected void schools_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Update")
            {
                Response.Redirect(string.Format("~/UpdateEdu.aspx?id="+ e.CommandArgument.ToString().Trim()+" ", e.CommandArgument));
            }
            else if (e.CommandName == "Delete")
            {
                try
                {
                    // Create new SqlConnection and connect to the database using the connection string from the web.config file  
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }

                        // Retrieve the ID from e.CommandArgument and delete the corresponding record
                        SqlCommand cmd = new SqlCommand("DELETE FROM EducationDB WHERE Id=@id", con);
                        cmd.Parameters.AddWithValue("@id", Convert.ToInt32(e.CommandArgument.ToString().Trim()));
                        cmd.ExecuteNonQuery();

                        // Close the connection
                        con.Close();
                      
                        Response.Redirect("~/adminDashboard.aspx");
                    }
                }
                catch (Exception ex)
                {
                    // Handle any exceptions and display an error message
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }

            }
        }




        /* Data displaying to ui For Education Part*/
        private void BindGrid()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM EducationDB", connection))
                {
                    connection.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    educationField.DataSource = dt;
                    educationField.DataBind();
                }

                connection.Close();
            }
        }

        /*This section is for educaton */







        /*This section is for Exprience */




        /*Button click listner to add data to database*/

        protected void ebtnAdd_Click(object sender, EventArgs e)
        {
            eInsertSchool();
            eBindGrid();
            eClearInputFieldsEdu();
        }



        /*For inserting Education data to dataTable*/

        private void eInsertSchool()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand cmd = new SqlCommand("INSERT INTO exprienceDB (id ,Title, Duration, Description) VALUES (@id,@Title, @Duration, @Description)", connection))
                {

                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(etxtId.Text));
                    cmd.Parameters.AddWithValue("@Title", etxtTitle.Text);
                    cmd.Parameters.AddWithValue("@Duration", etxtDuration.Text);
                    cmd.Parameters.AddWithValue("@Description", etxtDescription.Text);


                    cmd.ExecuteNonQuery();
                }

                connection.Close();
            }
        }

        /*this for clearing educationInput*/
        private void eClearInputFieldsEdu()
        {
            etxtId.Text = String.Empty;
            etxtTitle.Text = string.Empty;
            etxtDuration.Text = string.Empty;
            etxtDescription.Text = string.Empty;
        }

        /* click operation update and delete*/

        protected void exprience_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "eUpdate")
            {
                Response.Redirect(string.Format("~/UpdateExp.aspx?id=" + e.CommandArgument.ToString().Trim() + " ", e.CommandArgument));
            }
            else if (e.CommandName == "eDelete")
            {
                try
                {
                    // Create new SqlConnection and connect to the database using the connection string from the web.config file  
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }

                        // Retrieve the ID from e.CommandArgument and delete the corresponding record
                        SqlCommand cmd = new SqlCommand("DELETE FROM exprienceDB WHERE Id=@id", con);
                        cmd.Parameters.AddWithValue("@id", Convert.ToInt32(e.CommandArgument.ToString().Trim()));
                        cmd.ExecuteNonQuery();

                        // Close the connection
                        con.Close();

                        Response.Redirect("~/adminDashboard.aspx");
                    }
                }
                catch (Exception ex)
                {
                    // Handle any exceptions and display an error message
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }

            }
        }




        /* Data displaying to ui For Education Part*/
        private void eBindGrid()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM exprienceDB", connection))
                {
                    connection.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    eeducationField.DataSource = dt;
                    eeducationField.DataBind();
                }

                connection.Close();
            }
        }

        /*This section is for Exprince */




        /*This section is for Skill */




        /*Button click listner to add data to database*/

        protected void sbtnAdd_Click(object sender, EventArgs e)
        {
            sInsertSchool();
            sBindGrid();
            sClearInputFieldsEdu();
        }



        /*For inserting Education data to dataTable*/

        private void sInsertSchool()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand cmd = new SqlCommand("INSERT INTO skillDB (id ,SkillName, SkillPercentage) VALUES (@id,@skillName, @SkillPercentage)", connection))
                {

                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(stxtId.Text));
                    cmd.Parameters.AddWithValue("@SkillName", stxtSkillName.Text);
                    cmd.Parameters.AddWithValue("@SkillPercentage", stxtSkillPer.Text);


                    cmd.ExecuteNonQuery();
                }

                connection.Close();
            }
        }

        /*this for clearing educationInput*/
        private void sClearInputFieldsEdu()
        {
            stxtId.Text = String.Empty;
            stxtSkillName.Text = string.Empty;
            stxtSkillPer.Text = string.Empty;
           
        }

        /* click operation update and delete*/

        protected void skill_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "sUpdate")
            {
                Response.Redirect(string.Format("~/UpdateSkill.aspx?id=" + e.CommandArgument.ToString().Trim() + " ", e.CommandArgument));
            }
            else if (e.CommandName == "sDelete")
            {
                try
                {
                    // Create new SqlConnection and connect to the database using the connection string from the web.config file  
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }

                        // Retrieve the ID from e.CommandArgument and delete the corresponding record
                        SqlCommand cmd = new SqlCommand("DELETE FROM skillDB WHERE Id=@id", con);
                        cmd.Parameters.AddWithValue("@id", Convert.ToInt32(e.CommandArgument.ToString().Trim()));
                        cmd.ExecuteNonQuery();

                        // Close the connection
                        con.Close();

                        Response.Redirect("~/adminDashboard.aspx");
                    }
                }
                catch (Exception ex)
                {
                    // Handle any exceptions and display an error message
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }

            }
        }




        /* Data displaying to ui For Education Part*/
        private void sBindGrid()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM skillDB", connection))
                {
                    connection.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    seducationField.DataSource = dt;
                    seducationField.DataBind();
                }

                connection.Close();
            }
        }

        /*This section is for Exprince */








        /*This section is for Form */


        /*Displaying contact Form*/
        private void BindContactList()
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("SELECT FullName, emailUser, MessageUser FROM contactsDBT", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    gvContacts.DataSource = dt;
                    gvContacts.DataBind();

                    con.Close();
                }
            }
            catch (Exception ex)
            {
                // Handling the exception 
                Response.Write($"<script>alert('Error: {ex.Message}');</script>");
            }
        }

        /*This section is for Form */




    }
}


