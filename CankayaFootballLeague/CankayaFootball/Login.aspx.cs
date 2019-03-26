using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string email = txtEmail.Text;
        string password = txtPassword.Text;

        LoginService ls = new LoginService();

        Admin a = ls.isAdminFound(email, password);
        if (a != null)
        {
            Session["adminInfo"] = a.Name + " " + a.Surname;
            Response.Redirect("~/AdminHomePage.aspx");

        }

        Supporter s = ls.isSupporterFound(email, password);

        if (s != null)
        {
            if (s.isApproval==false)
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Admin did not approve you";
            }
            else
            {
                Session["supporterInfo"] = s.Name + " " + s.SurName;
                Response.Redirect("~/SupporterHomePage.aspx");
            }          
        }

        if (a==null && s==null)
        {
            lblMessage.Visible = true;
            lblMessage.Text = "User not found!!";
        }
    }
}