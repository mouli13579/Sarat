using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace APIServices.Controllers
{
    public class FormsController : ApiController
    {
        [HttpPost]
        public string CreateManuscript([FromBody]Models.FormSubmission objForm)
        {
            string result = string.Empty;
            if (objForm == null)
                return result;
            int formID = new DataLayer.FormSubmission().CreateManuscript(objForm);
            if (formID > 0)
                result = "Form Submitted Succesfully ";
            else
                result = "Form Submission Failed";
            return result;
            
        }

        public DataTable GetManuScriptList(int userID)
        {
            DataTable dt = new DataTable();
            dt = new DataLayer.FormSubmission().getManuScriptList(userID);
            return dt;
        }
    }
}