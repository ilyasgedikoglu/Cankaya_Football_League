using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TeamList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminInfo"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            using (CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities())
            {
                if (!IsPostBack)
                {
                    List<Team> team = (from x in _db.Teams where x.IsActive == true select x).ToList();

                    grvTeamList.DataSource = team.OrderBy(i => i.TeamName);
                    grvTeamList.DataBind();
                }
            }
        }
    }

    protected void grvTeamList_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grvTeamList.EditIndex = e.NewEditIndex;

        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();
        List<Team> team = (from x in _db.Teams where x.IsActive == true select x).ToList();
        grvTeamList.DataSource = team;
        grvTeamList.DataBind();
    }

    protected void grvTeamList_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)grvTeamList.Rows[e.RowIndex];
        Label lblDeleteId = (Label)row.FindControl("lblTeamId");
        FileUpload newImage = (FileUpload)row.FindControl("fuImage");
        TextBox newName = (TextBox)row.FindControl("txtTeamName");
        TextBox newCity = (TextBox)row.FindControl("txtCity");
        TextBox newMainColor = (TextBox)row.FindControl("txtMainColor");
        TextBox newSecondaryColor = (TextBox)row.FindControl("txtSecondaryColor");
        TextBox newEstablishmentYear = (TextBox)row.FindControl("txtEstablishmentYear");
        TextBox newAccountBalance = (TextBox)row.FindControl("txtAccountBalance");
        TextBox newPositionLeague = (TextBox)row.FindControl("txtPositionLeague");
        TextBox newNumberWin = (TextBox)row.FindControl("txtG");
        TextBox newNumberLose = (TextBox)row.FindControl("txtM");
        TextBox newNumberEquality = (TextBox)row.FindControl("txtB");
        TextBox newNumberMatchesPlayed = (TextBox)row.FindControl("txtOM");
        TextBox newNumberThrowGoal = (TextBox)row.FindControl("txtAG");
        TextBox newNumberGrabbedGoal = (TextBox)row.FindControl("txtYG");
        TextBox newGoalAverage = (TextBox)row.FindControl("txtA");
        TextBox newPoint = (TextBox)row.FindControl("txtPoint");
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        int id = Convert.ToInt32(lblDeleteId.Text);

        Team t = (from x in _db.Teams where x.TeamId == id && x.IsActive == true select x).SingleOrDefault();
        t.TeamName = newName.Text;
        t.City = newCity.Text;
        t.MainColor = newMainColor.Text;
        t.SecondaryColor = newSecondaryColor.Text;
        t.EstablishmentYear = Convert.ToDateTime(newEstablishmentYear.Text);
        t.AccountBalance = Convert.ToDecimal(newAccountBalance.Text);
        t.PositionLeague = Convert.ToInt32(newPositionLeague.Text);
        t.NumberWin = Convert.ToInt32(newNumberWin.Text);
        t.NumberLose = Convert.ToInt32(newNumberLose.Text);
        t.NumberEquality = Convert.ToInt32(newNumberEquality.Text);
        t.NumberMatchesPlayed = Convert.ToInt32(newNumberMatchesPlayed.Text);
        t.NumberThrowGoal = Convert.ToInt32(newNumberThrowGoal.Text);
        t.NumberGrabbedGoal = Convert.ToInt32(newNumberGrabbedGoal.Text);
        t.GoalAverage = Convert.ToInt32(newGoalAverage.Text);
        t.Point = Convert.ToInt32(newPoint.Text);
        t.TeamImage = newImage.FileName;

        _db.SaveChanges();
        grvTeamList.DataBind();

        grvTeamList.EditIndex = -1;

        List<Team> team = (from x in _db.Teams where x.IsActive == true select x).ToList();
        grvTeamList.DataSource = team;
        grvTeamList.DataBind();  
    }

    protected void grvTeamList_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grvTeamList.EditIndex = -1;

        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();
        List<Team> team = (from x in _db.Teams where x.IsActive == true select x).ToList();
        grvTeamList.DataSource = team;
        grvTeamList.DataBind();
    }

    protected void grvTeamList_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)grvTeamList.Rows[e.RowIndex];
        Label lblDeleteId = (Label)row.FindControl("lblTeamId");
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();
        int id = Convert.ToInt32(lblDeleteId.Text);

        Team t = (from x in _db.Teams where x.TeamId == id && x.IsActive == true select x).SingleOrDefault();
        t.IsActive = false;
        _db.SaveChanges();
        grvTeamList.DataBind();
    }
}