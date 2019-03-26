using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities())
        {
            var u1 = (from x in _db.UserTypes select new { TypeId = x.UserTypeId, TypeName = x.UserType1 }).ToList();
            ddlUserType.DataSource = u1;
            ddlUserType.DataTextField = "TypeName";
            ddlUserType.DataValueField = "TypeId";
            ddlUserType.DataBind();

            var team = (from x in _db.Teams select new { TeamId = x.TeamId, TeamName = x.TeamName }).ToList();
            ddlSupportedTeam.DataSource = team;
            ddlSupportedTeam.DataTextField = "TeamName";
            ddlSupportedTeam.DataValueField = "TeamId";
            ddlSupportedTeam.DataBind();
        }
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        RegisterService rs = new RegisterService();

        if (Convert.ToInt32(ddlUserType.SelectedItem.Value) == 1)
        {
            rs.supporterRegister(txtName.Text, txtSurname.Text, txtEmail.Text, txtPassword.Text, txtUserName.Text, ddlSupportedTeam.SelectedItem.Value);
            Response.Redirect("Login.aspx");
        }
        else if (Convert.ToInt32(ddlUserType.SelectedItem.Value) == 2)
        {
            rs.adminRegister(txtName.Text, txtSurname.Text, txtEmail.Text, txtPassword.Text, txtUserName.Text, ddlSupportedTeam.SelectedItem.Value);
            Response.Redirect("Login.aspx");
        }
        else
        {
            lblMessage.Visible = true;
            lblMessage.Text = "Registration failed!!";
        }

    }
}