using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Portfolio
{
    public class SkillDataAccess
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        public List<Skill> GetSkillData()
        {
            List<Skill> skillList = new List<Skill>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand("SELECT SkillName, SkillPercentage FROM skillDB", connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Skill skill = new Skill
                            {
                                SkillName = reader["SkillName"].ToString(),
                                SkillPercentage = Convert.ToInt32(reader["SkillPercentage"])
                           
                            };

                            skillList.Add(skill);
                        }
                    }
                }

                connection.Close();
            }

           
            return skillList;
        }
    }
}