using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer
{
    public class FormSubmission : BaseClass
    {
        public int CreateManuscript(Models.FormSubmission obj)
        {           
            if (obj == null)            
                return 0;
            
            int FormSubmissionID = 0;
             SqlConnection connection =  OpenConnection();
             try
             {
                 SqlCommand command = connection.CreateCommand();
                 command.CommandType = CommandType.StoredProcedure;
                 command.CommandText = "[dbo].[CreateForm]";

                 command.Parameters.Add(new SqlParameter("UserID",obj.UserID));
                 command.Parameters.Add(new SqlParameter("Prefix", obj.Prefix));
                 command.Parameters.Add(new SqlParameter("CorrespondingAuthor", obj.CorrespondingAuthor));
                 command.Parameters.Add(new SqlParameter("Email", obj.Email));
                 command.Parameters.Add(new SqlParameter("Title", obj.Title));
                 command.Parameters.Add(new SqlParameter("Abstraction", obj.Abstraction));
                 command.Parameters.Add(new SqlParameter("Category", obj.Category));
                 command.Parameters.Add(new SqlParameter("Keywords", obj.Keywords));

                 if (obj.UploadFiles != null)
                 {
                     // FormSubmissionFiles table-valued parameter
                     DataTable dtFormSubmissionFiles = new DataTable("FormSubmissionFiles");
                     dtFormSubmissionFiles.Columns.Add("FormSubmissionFileID");
                     dtFormSubmissionFiles.Columns.Add("FormSubmissionID");
                     dtFormSubmissionFiles.Columns.Add("FileType");
                     dtFormSubmissionFiles.Columns.Add("FileName");
                     dtFormSubmissionFiles.Columns.Add("Action");

                     foreach (Models.FormSubmissionFiles file in obj.UploadFiles)
                     {
                         dtFormSubmissionFiles.Rows.Add(null, null,file.FileType, file.FileName, "insert");
                     }

                     SqlParameter formSubmissionFilesParam = command.Parameters.AddWithValue("FormSubmissionFilesTableParameter", dtFormSubmissionFiles);
                     formSubmissionFilesParam.SqlDbType = SqlDbType.Structured;
                 }

                 // Output parameter to return newly created FormID
                 SqlParameter formSubmissionID = command.Parameters.Add(new SqlParameter("FormSubmissionID", SqlDbType.Int));
                 formSubmissionID.Direction = ParameterDirection.Output;

                
                     command.ExecuteNonQuery();
                     FormSubmissionID = Convert.IsDBNull(formSubmissionID.Value) ? 0 : (int)formSubmissionID.Value;
                 
                 
             }
             finally { connection.Close(); }

             return FormSubmissionID;
        }

        public DataTable getManuScriptList(int userID)
        {
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();
             SqlConnection connection =  OpenConnection();
             try
             {
                 SqlCommand command = connection.CreateCommand();
                 command.CommandType = CommandType.StoredProcedure;
                 command.CommandText = "[dbo].[GetManuScriptList]";
                 command.Parameters.AddWithValue("@userID", userID);
                 SqlDataAdapter da = new SqlDataAdapter();
                 da.SelectCommand = command;
                 da.Fill(ds);
                 if (ds.Tables[0].Rows.Count > 0)
                 {
                     dt = ds.Tables[0];
                 }
             }
             finally { connection.Close(); }

            return dt;
        }
    }
}
