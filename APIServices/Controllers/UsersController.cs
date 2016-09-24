using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

using System.Data;


namespace APIServices.Controllers
{
    public class UsersController : ApiController
    {
        public Models.Users GetLogin(string username, string password, int roleID)
        {
            Models.Users usr = new Models.Users();
            DataTable dt = new DataTable();
            int userID = new DataLayer.Users().loginUser(username, password);

            if (userID == 0)
            {
                throw new HttpResponseException(Request.CreateErrorResponse(HttpStatusCode.NotFound, "User not found."));
            }
            else
            {
              dt= GetUser(userID);
                
              if(!checkAccess(dt,roleID))
              {
                  throw new HttpResponseException(Request.CreateErrorResponse(HttpStatusCode.NotFound, "Access Denied.Please Contact Administrator"));
              }

            }
           foreach(DataRow dr in dt.Rows)
           {
               usr.UserID = userID;
               usr.FirstName = dr["FirstName"].ToString();
           }
            return usr;
        }
        private bool checkAccess(DataTable dt,int roleID)
        {
            bool allow = false;
            int dbRole = Int16.Parse(dt.Rows[0]["RoleID"].ToString());
            DateTime validDate = DateTime.Parse(dt.Rows[0]["isValidDate"].ToString());
            if(dbRole==roleID)
            {
                allow = true;
                if(validDate<DateTime.Today)
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
                result = "Registered Succesfully. Please Check your Email";
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
        //[HttpPost] 
        //public bool TestService([FromBody] Users objUser)
        //{
        //    bool result = false;

        //    result = new DataLayer.Users().TestService(objUser);
        //    return result;
        //}
    }
}