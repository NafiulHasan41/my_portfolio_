using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio
{
    public partial class PublicView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               BindEducationData();
                BindExprienceData();
                BindSkillData();
            }
        }


        /*for education section*/
        private void BindEducationData()
        {
            EducationDataAccess dataAccess = new EducationDataAccess();
            rptEducation.DataSource = dataAccess.GetEducationData();
            rptEducation.DataBind();
        }

        /*    Exprience data access from Database */

        private void BindExprienceData()
        {
            ExprienceDataAccess dataAccess = new ExprienceDataAccess();
            timelineRepeater.DataSource = dataAccess.GetExprienceData();
            timelineRepeater.DataBind();

        }

        /*Skill data access from Database*/

        private void BindSkillData()
        {
            SkillDataAccess dataAccess = new SkillDataAccess();
            rptSkill.DataSource = dataAccess.GetSkillData();
            rptSkill.DataBind();

        } 




        /*Button clicked for sending Data to database*/

         protected void btnSendMessage_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("INSERT INTO contactsDBT (FullName, emailUser, MessageUser) VALUES (@FullName, @emailUser, @MessageUser)", con);
                    cmd.Parameters.AddWithValue("@FullName", txtFullname.Text);
                    cmd.Parameters.AddWithValue("@emailUser", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@MessageUser", txtMessage.Text);

                    cmd.ExecuteNonQuery();

                    con.Close();
                }

                txtFullname.Text = "";
                txtEmail.Text = "";
                txtMessage.Text = "";



            }
            catch (Exception ex)
            {
                // Handling the exception 
                Response.Write($"<script>alert('Error: {ex.Message}');</script>");
            }
        }




    }


}