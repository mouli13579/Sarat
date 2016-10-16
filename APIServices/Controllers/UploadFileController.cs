using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;

namespace APIServices.Controllers
{
    public class UploadFileController : ApiController
    {
        [HttpPost]
        public List<string> UploadFile()
        {
            if (HttpContext.Current.Request.Files.Count > 0)
            {
                string filePath = HttpContext.Current.Request.Form["filePath"];

                if (!string.IsNullOrEmpty(filePath))
                {
                    List<string> ret = new List<string>();
                    HttpPostedFile postedFile;
                    byte[] file = null;
                    MemoryStream ms;
                    string fileName;
                    string originalFileName;

                    for (int i = 0; i < HttpContext.Current.Request.Files.Count; i++)
                    {
                        postedFile = HttpContext.Current.Request.Files[i];
                        using (var binaryReader = new BinaryReader(postedFile.InputStream))
                        {
                            file = binaryReader.ReadBytes(postedFile.ContentLength);
                        }

                        try
                        {
                            if (filePath == "JournalForms")
                            {
                                originalFileName = "_" + HttpUtility.UrlDecode(postedFile.FileName);
                                if (originalFileName.Length > 63) originalFileName = originalFileName.Substring(0, 63);
                            }
                            else
                            {
                                originalFileName = Path.GetExtension(postedFile.FileName);
                            }

                            fileName = Guid.NewGuid().ToString() + originalFileName;

                            string path = System.Web.HttpContext.Current.Server.MapPath("~"); //"";
                            FileStream fs = new FileStream(path+"\\UploadFiles\\" + filePath + "\\" + fileName, FileMode.Create);

                            ms = new MemoryStream(file);
                            ms.WriteTo(fs);
                            ms.Close();

                            fs.Close();
                            fs.Dispose();
                           // ret.Add(HttpUtility.UrlDecode(postedFile.FileName));
                            ret.Add(fileName);
                        }
                        catch (Exception ex)
                        {
                            throw new HttpResponseException(Request.CreateErrorResponse(HttpStatusCode.BadRequest, ex.Message));
                        }
                    }

                    return ret;
                }
                else
                {
                    throw new HttpResponseException(Request.CreateErrorResponse(HttpStatusCode.BadRequest, "Missing \"filePath\" parameter."));
                }
            }
            else
            {
                throw new HttpResponseException(Request.CreateErrorResponse(HttpStatusCode.BadRequest, "No files posted."));
            }
        }
    }
}