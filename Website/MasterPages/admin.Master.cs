using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website.MasterPages
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                var uName = Session["UserName"];
                if (uName == null)
                {
                    
                    Response.Redirect("~/Forms/Home.aspx");
                }
                else
                {
                    linksLogged.Visible = true;
                    lblUserName.Text = "Hi, " + uName.ToString();
                    hdnUserID.Value = Session["UserID"].ToString();
                    hdnRoleCode.Value = Session["RoleCode"].ToString();
                    if (hdnRoleCode.Value == "ADMIN")
                    {
                        lnkUsers.Visible = true;
                        lnkNewPapers.Visible = true;
                        lnkAssgn.Visible = false;
                    }
                    else
                    {
                        lnkUsers.Visible = false;
                        lnkNewPapers.Visible = false;
                        lnkAssgn.Visible = true;
                    }
                }

            }
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();            
            Response.Redirect("~/Forms/Home.aspx");
        }
    }
}