using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace DataLayer
{
    public class BaseClass
    {
        public BaseClass()
        {
        }

        private string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["JournalConnection"].ToString();
        }

        public SqlConnection OpenConnection()
        {
            SqlConnection connection = new SqlConnection(GetConnectionString());
            if (connection.State != ConnectionState.Open) connection.Open();
            return connection;
        }

        public void CloseConnection(SqlConnection connection)
        {
            if (connection.State != ConnectionState.Closed) connection.Close();
        }
    }
}
