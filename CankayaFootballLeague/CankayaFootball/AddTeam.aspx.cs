using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddTeam : System.Web.UI.Page
{
    CankayaFootballLeagueEntities _db;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminInfo"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        TeamAdd();
    }

    private void TeamAdd()
    {
        Team team = new Team();
        team.TeamName = txtTeamName.Text;
        team.City = txtCity.Text;
        team.MainColor = txtMainColor.Text;
        team.SecondaryColor = txtSecondaryColor.Text;
        team.EstablishmentYear = Convert.ToDateTime(txtEstablishmentYear.Text);
        team.AccountBalance = Convert.ToDecimal(txtAccountBalance.Text);
        team.PositionLeague = Convert.ToInt32(txtPositionLeague.Text);
        team.NumberWin = Convert.ToInt32(txtNumberWin.Text);
        team.NumberLose = Convert.ToInt32(txtNumberLose.Text);
        team.NumberThrowGoal = Convert.ToInt32(txtThrowGoal.Text);
        team.NumberGrabbedGoal = Convert.ToInt32(txtGrabbedGoal.Text);
        team.GoalAverage = Convert.ToInt32(txtGoalAverage.Text);
        team.Point = Convert.ToInt32(txtPoint.Text);
        team.NumberEquality = Convert.ToInt32(txtNumberEquality.Text);
        team.IsActive = cbIsActive.Checked;
        team.NumberMatchesPlayed = Convert.ToInt32(txtNumberMatchesPlayed.Text);

        if (fuTeamImage.HasFile)
        {
            fuTeamImage.SaveAs(Server.MapPath("~/image/" + fuTeamImage.FileName));
            team.TeamImage = fuTeamImage.FileName;
        }
        using (_db = new CankayaFootballLeagueEntities())
        {
            _db.Teams.Add(team);
            _db.SaveChanges();
        }
        Response.Redirect("~/TeamList.aspx");
    }
}