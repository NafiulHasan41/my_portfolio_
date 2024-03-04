using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Portfolio
{
    public class EducationDataAccess
    {


        private string connectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        public List<Education> GetEducationData()
        {
            List<Education> educationList = new List<Education>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand("SELECT SchoolName, StartYear, EndYear, Description FROM EducationDB", connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Education education = new Education
                            {
                                SchoolName = reader["SchoolName"].ToString(),
                                StartYear = reader["StartYear"].ToString(),
                                EndYear = reader["EndYear"].ToString(),
                                Description = reader["Description"].ToString()
                            };

                            educationList.Add(education);
                        }
                    }
                }

                connection.Close();
            }
            
            educationList.Reverse();
            return educationList;
        }


    }
}