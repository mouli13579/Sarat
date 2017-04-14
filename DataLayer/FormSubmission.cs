using System;
using System.Collections.Generic;
using System.Configuration;
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

        public DataTable getManuScriptList(int userID , bool isadmin)
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
                 command.Parameters.AddWithValue("@isAdmin", isadmin);
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
        public Models.FormSubmission getManuScript(int id)
        {
            Models.FormSubmission ret = new Models.FormSubmission();
            DataSet ds = new DataSet();
            SqlConnection connection = OpenConnection();
            try
            {
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "[dbo].[GetManuScript]";
                command.Parameters.AddWithValue("@formid", id);
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = command;
                da.TableMappings.Add("Table", "Form");
                da.TableMappings.Add("Table1", "FormFiles");
                da.TableMappings.Add("Table2", "StatusLog");
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                  ret=  ProcessData(ds);
                }
            }
            finally { connection.Close(); }

            return ret;
        }

        public Models.FormSubmission ProcessData(DataSet ds)
        {
            Models.FormSubmission form = new Models.FormSubmission();
           foreach (DataRow dr in ds.Tables["Form"].Rows)
            {
                form = new Models.FormSubmission
                {
                    FormSubmissionID = (int)dr["FormSubmissionID"],
                    FormRefNumber = dr["FormReferenceNumber"].ToString(),
                    UserID = (int)dr["UserID"],
                    Prefix = dr["Prefix"].ToString(),
                    CorrespondingAuthor = dr["CorrespondingAuthor"].ToString(),
                    Email = dr["Email"].ToString(),
                    Title = dr["Title"].ToString(),
                    Abstraction = dr["Abstraction"].ToString(),
                    CategoryName = dr["CategoryName"].ToString(),
                    Keywords = dr["Keywords"].ToString(),
                    CreatedOn = (DateTime)dr["CreatedDate"],
                    UploadFiles = ProcessFormFilesDataRows(ds.Tables["FormFiles"].Select(string.Format("FormSubmissionID = {0}", (int)dr["FormSubmissionID"]))),
                    StatusLog = ProcessStatusLogDataRows(ds.Tables["StatusLog"].Select(string.Format("FormSubmissionID = {0}", (int)dr["FormSubmissionID"])))

                };
           }
            return form;
        }
        public List<Models.FormSubmissionFiles> ProcessFormFilesDataRows(IEnumerable<DataRow> rowsuploadFiles)
        {
            List<Models.FormSubmissionFiles> uploadfiles = new List<Models.FormSubmissionFiles>();
            Models.FormSubmissionFiles ifile;
            foreach (DataRow dr in rowsuploadFiles)
            {
                ifile = new Models.FormSubmissionFiles
                {
                    FormSubmissionFileID = (int)dr["FormSubmissionFileID"],
                    FileType = dr["FileType"] != DBNull.Value ? dr["FileType"].ToString() : null,
                    FileName = dr["FileName"] != DBNull.Value ? dr["FileName"].ToString() : null,
                    FileURL = dr["FileName"] == DBNull.Value ? null : ConfigurationManager.AppSettings["FilesURL10"] + "/UploadFiles/JournalForms/" + (string)dr["FileName"],
                };

                uploadfiles.Add(ifile);
            }
            return uploadfiles;
        }
        public List<Models.FormStatusLog> ProcessStatusLogDataRows(IEnumerable<DataRow> rowsStatusLog)
        {
            List<Models.FormStatusLog> statusLog = new List<Models.FormStatusLog>();
            Models.FormStatusLog ifile;
            foreach (DataRow dr in rowsStatusLog)
            {
                ifile = new Models.FormStatusLog
                {
                    FormStatusID = (int)dr["FormStatusID"],
                    FormSubmissionID = (int)dr["FormSubmissionID"],
                    FormStatusName = dr["FormStatusName"] != DBNull.Value ? dr["FormStatusName"].ToString() : null,
                    FormStatusCode = dr["FormStatusCode"] != DBNull.Value ? dr["FormStatusCode"].ToString() : null
                };

                statusLog.Add(ifile);
            }
            return statusLog;
        }
    }
}
