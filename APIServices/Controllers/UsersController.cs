using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

using System.Data;
using System.Net.Mail;


namespace APIServices.Controllers
{
    public class UsersController : ApiController
    {
        [HttpPost]
        public Models.Users GetLogin([FromBody]Models.Users obj)
        {
            Models.Users usr = new Models.Users();
            DataTable dt = new DataTable();
            usr = new DataLayer.Users().loginUser(obj.UserName, obj.Password, obj.RoleCode);


            return usr;
        }
        private bool checkAccess(DataTable dt, int roleID)
        {
            bool allow = false;
            int dbRole = Int16.Parse(dt.Rows[0]["RoleID"].ToString());
            DateTime validDate = DateTime.Parse(dt.Rows[0]["isValidDate"].ToString());
            if (dbRole == roleID)
            {
                allow = true;
                if (validDate < DateTime.Today)
                {
                    allow = false;
                }
            }
            return allow;

        }
        [HttpGet]
        public DataTable GetUser(int id)
        {
            DataTable ret = new DataTable();

            if (id != 0)
            {
                ret = new DataLayer.Users().GetUser(id);
            }

            if (ret == null)
            {
                throw new HttpResponseException(Request.CreateErrorResponse(HttpStatusCode.NotFound, "User not found."));
            }
            else
            {
                return ret;
            }
        }
        [HttpPost]
        public string CreateUser([FromBody] Models.Users objUser)
        {
            string result = string.Empty;
            if (objUser == null)
                return result;

            int userID = new DataLayer.Users().createUser(objUser);
            if (userID > 0)
                result = "Registered Succesfully.";
            else
                result = "Registration Failed";
            return result;
        }
        [HttpPost]
        public bool UpdateUser([FromBody] Models.Users objUser, int userID)
        {
            return new DataLayer.Users().updateUser(objUser, userID);
        }
        [HttpGet]
        public bool CheckUsernameExist(string uName)
        {
            bool allow = false;
            allow = new DataLayer.Users().CheckUsernameExist(uName);
            return allow;
        }
        [HttpPost]
        public bool TestService([FromBody] Models.Users objUser)
        {
            bool result = false;

            SmtpClient smtpClient = new SmtpClient();

            smtpClient.Host = "mail.paraapublications.com";
            //smtpClient.Host = "103.14.120.147";
            smtpClient.Port = 25;
            smtpClient.Credentials = new System.Net.NetworkCredential("support@paraapublications.com", "tHbk55%7");
            smtpClient.UseDefaultCredentials = false;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.EnableSsl = false;
            
            MailMessage mail = new MailMessage();
          
            //Setting From , To and CC
            mail.From = new MailAddress("support@paraapublications.com", "MyWeb Site");
            mail.To.Add(new MailAddress(objUser.Email));
            mail.Subject = "Testing";
            mail.BodyEncoding = System.Text.Encoding.GetEncoding("utf-8");

            System.Net.Mail.AlternateView plainView = System.Net.Mail.AlternateView.CreateAlternateViewFromString(System.Text.RegularExpressions.Regex.Replace("test", @"<(.|\n)*?>", string.Empty), null, "text/plain");

            mail.AlternateViews.Add(plainView);



            //mail.Body = "TEst Mail";
            // mail.CC.Add(new MailAddress("MyEmailID@gmail.com"));
            try
            {
                smtpClient.Send(mail);
            }
            catch (SmtpException ex)
            {
                string exceptionMessage = ex.Message.ToUpper();
            }
            //result = new DataLayer.Users().TestService(objUser);
            return result;
        }
    }
}