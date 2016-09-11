using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using APIServices.Models;
using MySql.Data.MySqlClient;

namespace APIServices.DataLayer
{
    public class Users : BaseClass
    {
        public Utils util = new Utils();
        public int loginUser(string username, string password)
        {
            int userId = 0;
            string hashedPassword = util.Encrypt(password);
            SqlConnection connection = OpenConnection();

            try
            {
                    SqlCommand command = connection.CreateCommand();
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = "[dbo].[CheckloginAccess]";
                    command.Parameters.AddWithValue("@username", username);
                    command.Parameters.AddWithValue("@password", hashedPassword);                  

                    // Output parameter to return newly created UserID
                    SqlParameter userID = command.Parameters.Add(new SqlParameter("UserID", SqlDbType.Int));
                    userID.Direction = ParameterDirection.Output;
                    command.ExecuteNonQuery();

                    userId = Convert.IsDBNull(userID.Value) ? 0 : (int)userID.Value;
                
            }
            finally
            {
                CloseConnection(connection);
            }

            // Return the user id which is 0 if we did not found a user.
            return userId;
        }

        public DataTable GetUser(int userID)
        {
            DataTable ret = new DataTable();
            SqlConnection connection = OpenConnection();
            DataSet ds = new DataSet();
            try
            {
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "[dbo].[GetUser]";
                command.Parameters.AddWithValue("@userID", userID);

                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = command;
                da.Fill(ds);
                   if(ds.Tables[0].Rows.Count>0)
                   {
                       ret = ds.Tables[0];
                   }
                
            }
            finally
            {
                CloseConnection(connection);
            }

            return ret;
        }
        public int createUser(Models.Users user)
        {
            if (user == null)
                return 0;
           
            int UserID = 0;
          
            string hashedPassword = util.Encrypt(user.Password);

            MySql.Data.MySqlClient.MySqlConnection conn;
            string myConnectionString;

            myConnectionString = "server=127.0.0.1;uid=paraa_Krishna; pwd=Ype6g41!;database=paraapub_Journals;";
            DateTime theDate = DateTime.Now;
            DateTime yearInTheFuture = theDate.AddYears(1);
            conn = new MySql.Data.MySqlClient.MySqlConnection();
            try
            {
                
                conn.ConnectionString = myConnectionString;
               
                conn.Open();
                string Query = "INSERT INTO users(FirstName,LastName,GUID,Password,PhoneNumber,Email,Address,City,PostalCode,Country,ImageName,isActive,CreatedOn,isValidDate)" +
                    "VALUES('" + user.FirstName + "','" + user.LastName + "','"+hashedPassword+"','" + hashedPassword + "','" + user.Email + "','" + user.Address + "','" + user.City + "','" + user.PostalCode + "','" + user.Country + "','" + user.ImageName + "','0','" + theDate.ToString() + "','" + yearInTheFuture.ToString() + "');"+
                    "select last_insert_id();";
                MySqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = Query;

                UserID = Convert.ToInt32(cmd.ExecuteScalar());
                conn.Close();
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
               // return ex.Message;
            }
            //SqlConnection connection = OpenConnection();
            //try
            //{
            //    SqlCommand command = connection.CreateCommand();
            //    command.CommandType = CommandType.StoredProcedure;
            //    command.CommandText = "[dbo].[CreateUser]";

            //    command.Parameters.Add(new SqlParameter("Password", hashedPassword));
            //    command.Parameters.Add(new SqlParameter("FirstName", user.FirstName));
            //    command.Parameters.Add(new SqlParameter("MiddleName", user.MiddleName));
            //    command.Parameters.Add(new SqlParameter("LastName", user.LastName));
            //    command.Parameters.Add(new SqlParameter("UserName", user.UserName));             
            //    command.Parameters.Add(new SqlParameter("PhoneNumber", user.PhoneNumber));
            //    command.Parameters.Add(new SqlParameter("Email", user.Email));
            //    command.Parameters.Add(new SqlParameter("Address", user.Address));
            //    command.Parameters.Add(new SqlParameter("City", user.City));
            //    command.Parameters.Add(new SqlParameter("PostalCode", user.PostalCode));
            //    command.Parameters.Add(new SqlParameter("Country", user.Country));               
            //    command.Parameters.Add(new SqlParameter("ImageName", user.ImageName));
            //    command.Parameters.Add(new SqlParameter("RoleID", user.RoleID)); 


            //    // Output parameter to return newly created UserID
            //    SqlParameter userID = command.Parameters.Add(new SqlParameter("UserID", SqlDbType.Int));
            //    userID.Direction = ParameterDirection.Output;

            //    command.ExecuteNonQuery();

            //    UserID = Convert.IsDBNull(userID.Value) ? 0 : (int)userID.Value;
            //}
            finally { conn.Close(); }

            return UserID;
        }

        public bool updateUser(Models.Users user, int userID)
        {
            bool result = false;

            return result;
        }
        public bool CheckUsernameExist(string uName)
        {
            bool ret = false;
            DataSet ds = new DataSet();
            SqlConnection connection = OpenConnection();
            try
            {
                using (SqlCommand command = new SqlCommand("select [UserID] from [Users] where [UserName] = '" + uName + "' AND isDeleted = 0", connection))
                {
                    SqlDataAdapter da = new SqlDataAdapter(command);
                    da.Fill(ds);
                }
            }
            finally
            {
                CloseConnection(connection);
            }
            if (ds.Tables[0].Rows.Count == 0)
                ret = true;
            return ret;
        }

        //public bool TestService(Models.Users user)
        //{
        //    bool result = false;
        //    if (user.FirstName == "Mouli")
        //    {
        //        result = true;
        //    }
        //    return result;
        //}
    }
}
