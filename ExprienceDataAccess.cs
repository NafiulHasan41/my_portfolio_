using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Portfolio
{
    public class ExprienceDataAccess
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        public List<Exprience> GetExprienceData()
        {
            List<Exprience> exprienceList = new List<Exprience>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand("SELECT Title, Duration, Description FROM exprienceDB", connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Exprience item = new Exprience
                            {
                                Title = reader["Title"].ToString(),
                                Duration = reader["Duration"].ToString(),
                                Description = reader["Description"].ToString()
                            };

                            exprienceList.Add(item);
                        }
                    }
                }

                connection.Close();
            }

            exprienceList.Reverse();
            return exprienceList;
        }


    }
}