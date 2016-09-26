using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website.MasterPages
{
    public partial class main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              var uName = Session["UserName"];
                   if (uName == null)
                    {
                        links.Visible = true;
                        linksLogged.Visible = false;

                    }
                    else
                    {
                        links.Visible = false;
                        linksLogged.Visible = true;
                        lblUserName.Text = "Hi, "+uName.ToString();
                    }
                
            }
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            links.Visible = true;
            linksLogged.Visible = false;
            Response.Redirect("Home.aspx");
        }
    }
}