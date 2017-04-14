using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer
{
    public class Dashboard : BaseClass
    {
        public DataTable GetDashboardItemsCount()
        {
            DataTable ret = new DataTable();
            SqlConnection connection = OpenConnection();
            DataSet ds = new DataSet();
            try
            {
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "[dbo].[GetDashboardItems]";

                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = command;
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
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
    }
}
