using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website.Forms
{
    public partial class Login : System.Web.UI.Page
    {
      //  private static string baseApiUrl = ConfigurationManager.AppSettings["baseApiUrl"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string uname = txtUName.Text.ToString().Trim();
            string pwd = txtPwd.Text.ToString().Trim();
            string role = "AUTH";
          
            Models.Users usr = new Models.Users();
           
            usr = new DataLayer.Users().loginUser(uname, pwd, role);

            if (usr.UserName != null)
            {
                Session["UserID"] = usr.UserID;
                Session["UserName"] = usr.UserName;
                Session["Email"] = usr.Email;
                if (usr.Roles!=null)
                {
                    foreach (Models.Roles roles in usr.Roles)
                    {
                        if (roles.RoleCode == "ADMIN")
                            Session["RoleCode"] = "ADMIN";
                        if (roles.RoleCode == "REVIEW")
                            Session["RoleCode"] = "REVIEW";
                        if (roles.RoleCode == "EDIT")
                            Session["RoleCode"] = "EDIT";
                    }
                }
                Response.Redirect("Home.aspx");
            }
            else
            {
               // Response.Redirect("Login.aspx");
                lblError.Text = usr.output.ToString();
            }

            //var URL = ConfigurationManager.AppSettings["baseApiUrl"].ToString() + "/users/GetLogin";
            //HttpClient client = new HttpClient();
            //client.BaseAddress = new Uri(URL);

            //// Add an Accept header for JSON format.
            //client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            //string serilized = JsonConvert.SerializeObject(usr);
            //var inputMessage = new HttpRequestMessage
            //{
            //    Content = new StringContent(serilized, Encoding.UTF8, "application/json")
            //};
            //HttpResponseMessage response = client.PostAsync(client.BaseAddress, inputMessage.Content).Result;
            //if (response.IsSuccessStatusCode)
            //{

            //}
            //else
            //{
            //   // Result = response.ReasonPhrase;
            //}
        }


        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}