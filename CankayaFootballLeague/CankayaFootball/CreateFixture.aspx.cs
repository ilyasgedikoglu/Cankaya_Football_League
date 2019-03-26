using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateFixture : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminInfo"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }

    #region Create Fixture
    private void CreationFixture()
    {
        using (CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities())
        {
            Team[] teamList = (from x in _db.Teams select x).OrderBy(i => i.TeamId).ToArray();

            Fixture f11 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[1].TeamId), AwayTeamId = Convert.ToInt32(teamList[0].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 1, IsActive = true };
            Fixture f12 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[2].TeamId), AwayTeamId = Convert.ToInt32(teamList[3].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 1, IsActive = true };
            Fixture f13 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[4].TeamId), AwayTeamId = Convert.ToInt32(teamList[5].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 1, IsActive = true };
            Fixture f21 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[0].TeamId), AwayTeamId = Convert.ToInt32(teamList[2].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 2, IsActive = true };
            Fixture f22 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[5].TeamId), AwayTeamId = Convert.ToInt32(teamList[3].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 2, IsActive = true };
            Fixture f23 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[4].TeamId), AwayTeamId = Convert.ToInt32(teamList[1].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 2, IsActive = true };
            Fixture f31 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[3].TeamId), AwayTeamId = Convert.ToInt32(teamList[0].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 3, IsActive = true };
            Fixture f32 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[2].TeamId), AwayTeamId = Convert.ToInt32(teamList[4].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 3, IsActive = true };
            Fixture f33 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[1].TeamId), AwayTeamId = Convert.ToInt32(teamList[5].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 3, IsActive = true };
            Fixture f41 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[0].TeamId), AwayTeamId = Convert.ToInt32(teamList[4].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 4, IsActive = true };
            Fixture f42 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[2].TeamId), AwayTeamId = Convert.ToInt32(teamList[5].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 4, IsActive = true };
            Fixture f43 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[1].TeamId), AwayTeamId = Convert.ToInt32(teamList[3].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 4, IsActive = true };
            Fixture f51 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[5].TeamId), AwayTeamId = Convert.ToInt32(teamList[0].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 5, IsActive = true };
            Fixture f52 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[2].TeamId), AwayTeamId = Convert.ToInt32(teamList[1].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 5, IsActive = true };
            Fixture f53 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[3].TeamId), AwayTeamId = Convert.ToInt32(teamList[4].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 5, IsActive = true };



            Fixture f61 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[0].TeamId), AwayTeamId = Convert.ToInt32(teamList[1].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 6, IsActive = true };
            Fixture f62 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[3].TeamId), AwayTeamId = Convert.ToInt32(teamList[2].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 6, IsActive = true };
            Fixture f63 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[5].TeamId), AwayTeamId = Convert.ToInt32(teamList[4].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 6, IsActive = true };
            Fixture f71 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[2].TeamId), AwayTeamId = Convert.ToInt32(teamList[0].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 7, IsActive = true };
            Fixture f72 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[3].TeamId), AwayTeamId = Convert.ToInt32(teamList[5].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 7, IsActive = true };
            Fixture f73 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[1].TeamId), AwayTeamId = Convert.ToInt32(teamList[4].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 7, IsActive = true };
            Fixture f81 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[0].TeamId), AwayTeamId = Convert.ToInt32(teamList[3].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 8, IsActive = true };
            Fixture f82 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[4].TeamId), AwayTeamId = Convert.ToInt32(teamList[2].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 8, IsActive = true };
            Fixture f83 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[5].TeamId), AwayTeamId = Convert.ToInt32(teamList[1].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 8, IsActive = true };
            Fixture f91 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[4].TeamId), AwayTeamId = Convert.ToInt32(teamList[0].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 9, IsActive = true };
            Fixture f92 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[5].TeamId), AwayTeamId = Convert.ToInt32(teamList[2].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 9, IsActive = true };
            Fixture f93 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[3].TeamId), AwayTeamId = Convert.ToInt32(teamList[1].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 9, IsActive = true };
            Fixture f101 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[0].TeamId), AwayTeamId = Convert.ToInt32(teamList[5].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 10, IsActive = true };
            Fixture f102 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[1].TeamId), AwayTeamId = Convert.ToInt32(teamList[2].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 10, IsActive = true };
            Fixture f103 = new Fixture { HomeTeamId = Convert.ToInt32(teamList[4].TeamId), AwayTeamId = Convert.ToInt32(teamList[3].TeamId), HomeGoals = 0, AwayGoals = 0, Week = 10, IsActive = true };

            _db.Fixtures.Add(f11);
            _db.Fixtures.Add(f12);
            _db.Fixtures.Add(f13);
            _db.Fixtures.Add(f21);
            _db.Fixtures.Add(f22);
            _db.Fixtures.Add(f23);
            _db.Fixtures.Add(f31);
            _db.Fixtures.Add(f32);
            _db.Fixtures.Add(f33);
            _db.Fixtures.Add(f41);
            _db.Fixtures.Add(f42);
            _db.Fixtures.Add(f43);
            _db.Fixtures.Add(f51);
            _db.Fixtures.Add(f52);
            _db.Fixtures.Add(f53);
            _db.Fixtures.Add(f61);
            _db.Fixtures.Add(f62);
            _db.Fixtures.Add(f63);
            _db.Fixtures.Add(f71);
            _db.Fixtures.Add(f72);
            _db.Fixtures.Add(f73);
            _db.Fixtures.Add(f81);
            _db.Fixtures.Add(f82);
            _db.Fixtures.Add(f83);
            _db.Fixtures.Add(f91);
            _db.Fixtures.Add(f92);
            _db.Fixtures.Add(f93);
            _db.Fixtures.Add(f101);
            _db.Fixtures.Add(f102);
            _db.Fixtures.Add(f103);
            _db.SaveChanges();
        }
    }
    #endregion

    #region Show Fixture
    private void showFixture()
    {
        using (CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities())
        {
            List<Fixture> week1 = (from x in _db.Fixtures where x.IsActive == true && x.Week == 1 select x).ToList();

            grvWeek1.DataSource = week1;
            grvWeek1.DataBind();

            List<Fixture> week2 = (from x in _db.Fixtures where x.IsActive == true && x.Week == 2 select x).ToList();

            grvWeek2.DataSource = week2;
            grvWeek2.DataBind();

            List<Fixture> week3 = (from x in _db.Fixtures where x.IsActive == true && x.Week == 3 select x).ToList();

            grvWeek3.DataSource = week3;
            grvWeek3.DataBind();

            List<Fixture> week4 = (from x in _db.Fixtures where x.IsActive == true && x.Week == 4 select x).ToList();

            grvWeek4.DataSource = week4;
            grvWeek4.DataBind();

            List<Fixture> week5 = (from x in _db.Fixtures where x.IsActive == true && x.Week == 5 select x).ToList();

            grvWeek5.DataSource = week5;
            grvWeek5.DataBind();

            List<Fixture> week6 = (from x in _db.Fixtures where x.IsActive == true && x.Week == 6 select x).ToList();

            grvWeek6.DataSource = week6;
            grvWeek6.DataBind();

            List<Fixture> week7 = (from x in _db.Fixtures where x.IsActive == true && x.Week == 7 select x).ToList();

            grvWeek7.DataSource = week7;
            grvWeek7.DataBind();

            List<Fixture> week8 = (from x in _db.Fixtures where x.IsActive == true && x.Week == 8 select x).ToList();

            grvWeek8.DataSource = week8;
            grvWeek8.DataBind();

            List<Fixture> week9 = (from x in _db.Fixtures where x.IsActive == true && x.Week == 9 select x).ToList();

            grvWeek9.DataSource = week9;
            grvWeek9.DataBind();

            List<Fixture> week10 = (from x in _db.Fixtures where x.IsActive == true && x.Week == 10 select x).ToList();

            grvWeek10.DataSource = week10;
            grvWeek10.DataBind();
        }
    }
    #endregion

    #region Help Functions
    public string FindHomeId(object id)
    {
        string TeamName = "";
        int rid = Convert.ToInt32(id);
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();
        Team t = (from x in _db.Teams where x.TeamId == rid select x).SingleOrDefault();

        if (t != null)
        {
            TeamName = t.TeamName;
        }
        return TeamName;
    }

    public int FindTeamId(string name)
    {
        int teamId = 0;
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();
        Team t = (from x in _db.Teams where x.TeamName == name select x).SingleOrDefault();

        if (t != null)
        {
            teamId = t.TeamId;
        }
        return teamId;
    }
    #endregion

    #region Button Click
    protected void btnCreationFixture_Click(object sender, EventArgs e)
    {
        lblWeek1.Visible = true;
        lblWeek2.Visible = true;
        lblWeek3.Visible = true;
        lblWeek4.Visible = true;
        lblWeek5.Visible = true;
        lblWeek6.Visible = true;
        lblWeek7.Visible = true;
        lblWeek8.Visible = true;
        lblWeek9.Visible = true;
        lblWeek10.Visible = true;
        grvWeek1.Visible = true;
        grvWeek2.Visible = true;
        grvWeek3.Visible = true;
        grvWeek4.Visible = true;
        grvWeek5.Visible = true;
        grvWeek6.Visible = true;
        grvWeek7.Visible = true;
        grvWeek8.Visible = true;
        grvWeek9.Visible = true;
        grvWeek10.Visible = true;

        showFixture();

        //CreationFixture();
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        lblWeek1.Visible = false;
        lblWeek2.Visible = false;
        lblWeek3.Visible = false;
        lblWeek4.Visible = false;
        lblWeek5.Visible = false;
        lblWeek6.Visible = false;
        lblWeek7.Visible = false;
        lblWeek8.Visible = false;
        lblWeek9.Visible = false;
        lblWeek10.Visible = false;
        grvWeek1.Visible = false;
        grvWeek2.Visible = false;
        grvWeek3.Visible = false;
        grvWeek4.Visible = false;
        grvWeek5.Visible = false;
        grvWeek6.Visible = false;
        grvWeek7.Visible = false;
        grvWeek8.Visible = false;
        grvWeek9.Visible = false;
        grvWeek10.Visible = false;
    }
    #endregion

    #region RowEditing
    protected void grvWeek1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        grvWeek1.EditIndex = e.NewEditIndex;

        List<Fixture> week1 = (from x in _db.Fixtures where x.IsActive == true && x.Week == 1 select x).ToList();
        grvWeek1.DataSource = week1;
        grvWeek1.DataBind();
    }

    protected void grvWeek2_RowEditing(object sender, GridViewEditEventArgs e)
    {
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        grvWeek2.EditIndex = e.NewEditIndex;

        List<Fixture> week2 = (from x in _db.Fixtures where x.IsActive == true && x.Week == 2 select x).ToList();
        grvWeek2.DataSource = week2;
        grvWeek2.DataBind();
    }

    protected void grvWeek3_RowEditing(object sender, GridViewEditEventArgs e)
    {
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        grvWeek3.EditIndex = e.NewEditIndex;

        List<Fixture> week3 = (from x in _db.Fixtures where x.IsActive == true && x.Week == 3 select x).ToList();
        grvWeek3.DataSource = week3;
        grvWeek3.DataBind();
    }

    protected void grvWeek4_RowEditing(object sender, GridViewEditEventArgs e)
    {
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        grvWeek4.EditIndex = e.NewEditIndex;

        List<Fixture> week4 = (from x in _db.Fixtures where x.IsActive == true && x.Week == 4 select x).ToList();
        grvWeek4.DataSource = week4;
        grvWeek4.DataBind();
    }

    protected void grvWeek5_RowEditing(object sender, GridViewEditEventArgs e)
    {
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        grvWeek5.EditIndex = e.NewEditIndex;

        List<Fixture> week5 = (from x in _db.Fixtures where x.IsActive == true && x.Week == 5 select x).ToList();
        grvWeek5.DataSource = week5;
        grvWeek5.DataBind();
    }

    protected void grvWeek6_RowEditing(object sender, GridViewEditEventArgs e)
    {
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        grvWeek6.EditIndex = e.NewEditIndex;

        List<Fixture> week6 = (from x in _db.Fixtures where x.IsActive == true && x.Week == 6 select x).ToList();
        grvWeek6.DataSource = week6;
        grvWeek6.DataBind();
    }

    protected void grvWeek7_RowEditing(object sender, GridViewEditEventArgs e)
    {
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        grvWeek7.EditIndex = e.NewEditIndex;

        List<Fixture> week7 = (from x in _db.Fixtures where x.IsActive == true && x.Week == 7 select x).ToList();
        grvWeek7.DataSource = week7;
        grvWeek7.DataBind();
    }

    protected void grvWeek8_RowEditing(object sender, GridViewEditEventArgs e)
    {
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        grvWeek8.EditIndex = e.NewEditIndex;

        List<Fixture> week8 = (from x in _db.Fixtures where x.IsActive == true && x.Week == 8 select x).ToList();
        grvWeek8.DataSource = week8;
        grvWeek8.DataBind();
    }

    protected void grvWeek9_RowEditing(object sender, GridViewEditEventArgs e)
    {
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        grvWeek9.EditIndex = e.NewEditIndex;

        List<Fixture> week9 = (from x in _db.Fixtures where x.IsActive == true && x.Week == 9 select x).ToList();
        grvWeek9.DataSource = week9;
        grvWeek9.DataBind();
    }

    protected void grvWeek10_RowEditing(object sender, GridViewEditEventArgs e)
    {
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        grvWeek10.EditIndex = e.NewEditIndex;

        List<Fixture> week10 = (from x in _db.Fixtures where x.IsActive == true && x.Week == 10 select x).ToList();
        grvWeek10.DataSource = week10;
        grvWeek10.DataBind();
    }
    #endregion

    #region RowUpdating
    protected void grvWeek1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)grvWeek1.Rows[e.RowIndex];
        Label lblDeleteId = (Label)row.FindControl("lblFixtureId");

        //----Rating----- Find Team Id
        Label lblHomeTeamId = (Label)row.FindControl("lblTeam1");
        Label lblAwayTeamId = (Label)row.FindControl("lblTeam2");
        //---------------

        TextBox newHomeScore = (TextBox)row.FindControl("txtTeam1ScoreEdit");
        TextBox newAwayscore = (TextBox)row.FindControl("txtTeam2ScoreEdit");

        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        int id = Convert.ToInt32(lblDeleteId.Text);

        //---Rating---
        int homeId = FindTeamId(lblHomeTeamId.Text);
        int awayId = FindTeamId(lblAwayTeamId.Text);
        //Home Team
        Team homeTeam = (from x in _db.Teams where x.IsActive == true && x.TeamId == homeId select x).SingleOrDefault();
        homeTeam.NumberThrowGoal = homeTeam.NumberThrowGoal + Convert.ToInt32(newHomeScore.Text);
        homeTeam.NumberGrabbedGoal =homeTeam.NumberGrabbedGoal + Convert.ToInt32(newAwayscore.Text);
        homeTeam.GoalAverage = Convert.ToInt32(newHomeScore.Text) - Convert.ToInt32(newAwayscore.Text);
        homeTeam.NumberMatchesPlayed = homeTeam.NumberMatchesPlayed + 1;
        if (Convert.ToInt32(newHomeScore.Text) > Convert.ToInt32(newAwayscore.Text))
        {
            homeTeam.Point = homeTeam.Point + 3;
            homeTeam.NumberWin = homeTeam.NumberWin + 1;
        }
        else if (Convert.ToInt32(newHomeScore.Text) < Convert.ToInt32(newAwayscore.Text))
        {
            homeTeam.Point = homeTeam.Point + 0;
            homeTeam.NumberLose = homeTeam.NumberLose + 1;
        }
        else
        {
            homeTeam.Point = homeTeam.Point + 1;
            homeTeam.NumberEquality = homeTeam.NumberEquality + 1;
        }
        //Away Team
        Team awayTeam = (from x in _db.Teams where x.IsActive == true && x.TeamId == awayId select x).SingleOrDefault();
        awayTeam.NumberThrowGoal = awayTeam.NumberThrowGoal + Convert.ToInt32(newAwayscore.Text);
        awayTeam.NumberGrabbedGoal =awayTeam.NumberGrabbedGoal + Convert.ToInt32(newHomeScore.Text);
        awayTeam.GoalAverage=awayTeam.GoalAverage + (Convert.ToInt32(newAwayscore.Text) - Convert.ToInt32(newHomeScore.Text));
        awayTeam.NumberMatchesPlayed = awayTeam.NumberMatchesPlayed + 1;
        if (Convert.ToInt32(newAwayscore.Text) > Convert.ToInt32(newHomeScore.Text))
        {
            awayTeam.Point = awayTeam.Point + 3;
            awayTeam.NumberWin = awayTeam.NumberWin + 1;
        }
        else if (Convert.ToInt32(newAwayscore.Text) < Convert.ToInt32(newHomeScore.Text))
        {
            awayTeam.Point = awayTeam.Point + 0;
            awayTeam.NumberLose = awayTeam.NumberLose + 1;
        }
        else
        {
            awayTeam.Point = awayTeam.Point + 1;
            awayTeam.NumberEquality = awayTeam.NumberEquality + 1;
        }
        //---------
        Fixture f = (from x in _db.Fixtures where x.Week == 1 && x.IsActive == true && x.FixtureId==id select x).SingleOrDefault();
        f.HomeGoals = Convert.ToInt32(newHomeScore.Text);
        f.AwayGoals = Convert.ToInt32(newAwayscore.Text);
       
        _db.SaveChanges();
        grvWeek1.DataBind();

        grvWeek1.EditIndex = -1;

        List<Fixture> fixture = (from x in _db.Fixtures where x.IsActive == true && x.Week == 1 select x).ToList();
        grvWeek1.DataSource = fixture;
        grvWeek1.DataBind();
    }

    protected void grvWeek2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)grvWeek2.Rows[e.RowIndex];
        Label lblDeleteId = (Label)row.FindControl("lblFixtureId");
        //----Rating----- Find Team Id
        Label lblHomeTeamId = (Label)row.FindControl("lblTeam1");
        Label lblAwayTeamId = (Label)row.FindControl("lblTeam2");
        //---------------
        TextBox newHomeScore = (TextBox)row.FindControl("txtTeam1ScoreEdit");
        TextBox newAwayscore = (TextBox)row.FindControl("txtTeam2ScoreEdit");

        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        int id = Convert.ToInt32(lblDeleteId.Text);
        //---Rating---
        int homeId = FindTeamId(lblHomeTeamId.Text);
        int awayId = FindTeamId(lblAwayTeamId.Text);
        //Home Team
        Team homeTeam = (from x in _db.Teams where x.IsActive == true && x.TeamId == homeId select x).SingleOrDefault();
        homeTeam.NumberThrowGoal = homeTeam.NumberThrowGoal + Convert.ToInt32(newHomeScore.Text);
        homeTeam.NumberGrabbedGoal = homeTeam.NumberGrabbedGoal + Convert.ToInt32(newAwayscore.Text);
        homeTeam.GoalAverage = homeTeam.GoalAverage + (Convert.ToInt32(newHomeScore.Text) - Convert.ToInt32(newAwayscore.Text));
        homeTeam.NumberMatchesPlayed = homeTeam.NumberMatchesPlayed + 1;
        if (Convert.ToInt32(newHomeScore.Text) > Convert.ToInt32(newAwayscore.Text))
        {
            homeTeam.Point = homeTeam.Point + 3;
            homeTeam.NumberWin = homeTeam.NumberWin + 1;
        }
        else if (Convert.ToInt32(newHomeScore.Text) < Convert.ToInt32(newAwayscore.Text))
        {
            homeTeam.Point = homeTeam.Point + 0;
            homeTeam.NumberLose = homeTeam.NumberLose + 1;
        }
        else
        {
            homeTeam.Point = homeTeam.Point + 1;
            homeTeam.NumberEquality = homeTeam.NumberEquality + 1;
        }
        //Away Team
        Team awayTeam = (from x in _db.Teams where x.IsActive == true && x.TeamId == awayId select x).SingleOrDefault();
        awayTeam.NumberThrowGoal = awayTeam.NumberThrowGoal + Convert.ToInt32(newAwayscore.Text);
        awayTeam.NumberGrabbedGoal = awayTeam.NumberGrabbedGoal + Convert.ToInt32(newHomeScore.Text);
        awayTeam.GoalAverage =awayTeam.GoalAverage + (Convert.ToInt32(newAwayscore.Text) - Convert.ToInt32(newHomeScore.Text));
        awayTeam.NumberMatchesPlayed = awayTeam.NumberMatchesPlayed + 1;
        if (Convert.ToInt32(newAwayscore.Text) > Convert.ToInt32(newHomeScore.Text))
        {
            awayTeam.Point = awayTeam.Point + 3;
            awayTeam.NumberWin = awayTeam.NumberWin + 1;
        }
        else if (Convert.ToInt32(newAwayscore.Text) < Convert.ToInt32(newHomeScore.Text))
        {
            awayTeam.Point = awayTeam.Point + 0;
            awayTeam.NumberLose = awayTeam.NumberLose + 1;
        }
        else
        {
            awayTeam.Point = awayTeam.Point + 1;
            awayTeam.NumberEquality = awayTeam.NumberEquality + 1;
        }
        //---------

        Fixture f = (from x in _db.Fixtures where x.Week == 2 && x.IsActive == true && x.FixtureId == id select x).SingleOrDefault();
        f.HomeGoals = Convert.ToInt32(newHomeScore.Text);
        f.AwayGoals = Convert.ToInt32(newAwayscore.Text);

        _db.SaveChanges();
        grvWeek2.DataBind();

        grvWeek2.EditIndex = -1;

        List<Fixture> fixture = (from x in _db.Fixtures where x.IsActive == true && x.Week == 2 select x).ToList();
        grvWeek2.DataSource = fixture;
        grvWeek2.DataBind();
    }

    protected void grvWeek3_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)grvWeek3.Rows[e.RowIndex];
        Label lblDeleteId = (Label)row.FindControl("lblFixtureId");
        //----Rating----- Find Team Id
        Label lblHomeTeamId = (Label)row.FindControl("lblTeam1");
        Label lblAwayTeamId = (Label)row.FindControl("lblTeam2");
        //---------------
        TextBox newHomeScore = (TextBox)row.FindControl("txtTeam1ScoreEdit");
        TextBox newAwayscore = (TextBox)row.FindControl("txtTeam2ScoreEdit");

        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        int id = Convert.ToInt32(lblDeleteId.Text);
        //---Rating---
        int homeId = FindTeamId(lblHomeTeamId.Text);
        int awayId = FindTeamId(lblAwayTeamId.Text);
        //Home Team
        Team homeTeam = (from x in _db.Teams where x.IsActive == true && x.TeamId == homeId select x).SingleOrDefault();
        homeTeam.NumberThrowGoal = homeTeam.NumberThrowGoal + Convert.ToInt32(newHomeScore.Text);
        homeTeam.NumberGrabbedGoal = homeTeam.NumberGrabbedGoal + Convert.ToInt32(newAwayscore.Text);
        homeTeam.GoalAverage = homeTeam.GoalAverage + (Convert.ToInt32(newHomeScore.Text) - Convert.ToInt32(newAwayscore.Text));
        homeTeam.NumberMatchesPlayed = homeTeam.NumberMatchesPlayed + 1;
        if (Convert.ToInt32(newHomeScore.Text) > Convert.ToInt32(newAwayscore.Text))
        {
            homeTeam.Point = homeTeam.Point + 3;
            homeTeam.NumberWin = homeTeam.NumberWin + 1;
        }
        else if (Convert.ToInt32(newHomeScore.Text) < Convert.ToInt32(newAwayscore.Text))
        {
            homeTeam.Point = homeTeam.Point + 0;
            homeTeam.NumberLose = homeTeam.NumberLose + 1;
        }
        else
        {
            homeTeam.Point = homeTeam.Point + 1;
            homeTeam.NumberEquality = homeTeam.NumberEquality + 1;
        }
        //Away Team
        Team awayTeam = (from x in _db.Teams where x.IsActive == true && x.TeamId == awayId select x).SingleOrDefault();
        awayTeam.NumberThrowGoal = awayTeam.NumberThrowGoal + Convert.ToInt32(newAwayscore.Text);
        awayTeam.NumberGrabbedGoal = awayTeam.NumberGrabbedGoal + Convert.ToInt32(newHomeScore.Text);
        awayTeam.GoalAverage = awayTeam.GoalAverage + (Convert.ToInt32(newAwayscore.Text) - Convert.ToInt32(newHomeScore.Text));
        awayTeam.NumberMatchesPlayed = awayTeam.NumberMatchesPlayed + 1;
        if (Convert.ToInt32(newAwayscore.Text) > Convert.ToInt32(newHomeScore.Text))
        {
            awayTeam.Point = awayTeam.Point + 3;
            awayTeam.NumberWin = awayTeam.NumberWin + 1;
        }
        else if (Convert.ToInt32(newAwayscore.Text) < Convert.ToInt32(newHomeScore.Text))
        {
            awayTeam.Point = awayTeam.Point + 0;
            awayTeam.NumberLose = awayTeam.NumberLose + 1;
        }
        else
        {
            awayTeam.Point = awayTeam.Point + 1;
            awayTeam.NumberEquality = awayTeam.NumberEquality + 1;
        }
        //---------

        Fixture f = (from x in _db.Fixtures where x.Week == 3 && x.IsActive == true && x.FixtureId == id select x).SingleOrDefault();
        f.HomeGoals = Convert.ToInt32(newHomeScore.Text);
        f.AwayGoals = Convert.ToInt32(newAwayscore.Text);

        _db.SaveChanges();
        grvWeek3.DataBind();

        grvWeek3.EditIndex = -1;

        List<Fixture> fixture = (from x in _db.Fixtures where x.IsActive == true && x.Week == 3 select x).ToList();
        grvWeek3.DataSource = fixture;
        grvWeek3.DataBind();
    }

    protected void grvWeek4_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)grvWeek4.Rows[e.RowIndex];
        Label lblDeleteId = (Label)row.FindControl("lblFixtureId");
        //----Rating----- Find Team Id
        Label lblHomeTeamId = (Label)row.FindControl("lblTeam1");
        Label lblAwayTeamId = (Label)row.FindControl("lblTeam2");
        //---------------
        TextBox newHomeScore = (TextBox)row.FindControl("txtTeam1ScoreEdit");
        TextBox newAwayscore = (TextBox)row.FindControl("txtTeam2ScoreEdit");

        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        int id = Convert.ToInt32(lblDeleteId.Text);
        //---Rating---
        int homeId = FindTeamId(lblHomeTeamId.Text);
        int awayId = FindTeamId(lblAwayTeamId.Text);
        //Home Team
        Team homeTeam = (from x in _db.Teams where x.IsActive == true && x.TeamId == homeId select x).SingleOrDefault();
        homeTeam.NumberThrowGoal = homeTeam.NumberThrowGoal + Convert.ToInt32(newHomeScore.Text);
        homeTeam.NumberGrabbedGoal = homeTeam.NumberGrabbedGoal + Convert.ToInt32(newAwayscore.Text);
        homeTeam.GoalAverage = homeTeam.GoalAverage + (Convert.ToInt32(newHomeScore.Text) - Convert.ToInt32(newAwayscore.Text));
        homeTeam.NumberMatchesPlayed = homeTeam.NumberMatchesPlayed + 1;
        if (Convert.ToInt32(newHomeScore.Text) > Convert.ToInt32(newAwayscore.Text))
        {
            homeTeam.Point = homeTeam.Point + 3;
            homeTeam.NumberWin = homeTeam.NumberWin + 1;
        }
        else if (Convert.ToInt32(newHomeScore.Text) < Convert.ToInt32(newAwayscore.Text))
        {
            homeTeam.Point = homeTeam.Point + 0;
            homeTeam.NumberLose = homeTeam.NumberLose + 1;
        }
        else
        {
            homeTeam.Point = homeTeam.Point + 1;
            homeTeam.NumberEquality = homeTeam.NumberEquality + 1;
        }
        //Away Team
        Team awayTeam = (from x in _db.Teams where x.IsActive == true && x.TeamId == awayId select x).SingleOrDefault();
        awayTeam.NumberThrowGoal = awayTeam.NumberThrowGoal + Convert.ToInt32(newAwayscore.Text);
        awayTeam.NumberGrabbedGoal = awayTeam.NumberGrabbedGoal + Convert.ToInt32(newHomeScore.Text);
        awayTeam.GoalAverage = awayTeam.GoalAverage + (Convert.ToInt32(newAwayscore.Text) - Convert.ToInt32(newHomeScore.Text));
        awayTeam.NumberMatchesPlayed = awayTeam.NumberMatchesPlayed + 1;
        if (Convert.ToInt32(newAwayscore.Text) > Convert.ToInt32(newHomeScore.Text))
        {
            awayTeam.Point = awayTeam.Point + 3;
            awayTeam.NumberWin = awayTeam.NumberWin + 1;
        }
        else if (Convert.ToInt32(newAwayscore.Text) < Convert.ToInt32(newHomeScore.Text))
        {
            awayTeam.Point = awayTeam.Point + 0;
            awayTeam.NumberLose = awayTeam.NumberLose + 1;
        }
        else
        {
            awayTeam.Point = awayTeam.Point + 1;
            awayTeam.NumberEquality = awayTeam.NumberEquality + 1;
        }
        //---------

        Fixture f = (from x in _db.Fixtures where x.Week == 4 && x.IsActive == true && x.FixtureId == id select x).SingleOrDefault();
        f.HomeGoals = Convert.ToInt32(newHomeScore.Text);
        f.AwayGoals = Convert.ToInt32(newAwayscore.Text);

        _db.SaveChanges();
        grvWeek4.DataBind();

        grvWeek4.EditIndex = -1;

        List<Fixture> fixture = (from x in _db.Fixtures where x.IsActive == true && x.Week == 4 select x).ToList();
        grvWeek4.DataSource = fixture;
        grvWeek4.DataBind();
    }

    protected void grvWeek5_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)grvWeek5.Rows[e.RowIndex];
        Label lblDeleteId = (Label)row.FindControl("lblFixtureId");
        //----Rating----- Find Team Id
        Label lblHomeTeamId = (Label)row.FindControl("lblTeam1");
        Label lblAwayTeamId = (Label)row.FindControl("lblTeam2");
        //---------------
        TextBox newHomeScore = (TextBox)row.FindControl("txtTeam1ScoreEdit");
        TextBox newAwayscore = (TextBox)row.FindControl("txtTeam2ScoreEdit");

        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        int id = Convert.ToInt32(lblDeleteId.Text);
        //---Rating---
        int homeId = FindTeamId(lblHomeTeamId.Text);
        int awayId = FindTeamId(lblAwayTeamId.Text);
        //Home Team
        Team homeTeam = (from x in _db.Teams where x.IsActive == true && x.TeamId == homeId select x).SingleOrDefault();
        homeTeam.NumberThrowGoal = homeTeam.NumberThrowGoal + Convert.ToInt32(newHomeScore.Text);
        homeTeam.NumberGrabbedGoal = homeTeam.NumberGrabbedGoal + Convert.ToInt32(newAwayscore.Text);
        homeTeam.GoalAverage = homeTeam.GoalAverage + (Convert.ToInt32(newHomeScore.Text) - Convert.ToInt32(newAwayscore.Text));
        homeTeam.NumberMatchesPlayed = homeTeam.NumberMatchesPlayed + 1;
        if (Convert.ToInt32(newHomeScore.Text) > Convert.ToInt32(newAwayscore.Text))
        {
            homeTeam.Point = homeTeam.Point + 3;
            homeTeam.NumberWin = homeTeam.NumberWin + 1;
        }
        else if (Convert.ToInt32(newHomeScore.Text) < Convert.ToInt32(newAwayscore.Text))
        {
            homeTeam.Point = homeTeam.Point + 0;
            homeTeam.NumberLose = homeTeam.NumberLose + 1;
        }
        else
        {
            homeTeam.Point = homeTeam.Point + 1;
            homeTeam.NumberEquality = homeTeam.NumberEquality + 1;
        }
        //Away Team
        Team awayTeam = (from x in _db.Teams where x.IsActive == true && x.TeamId == awayId select x).SingleOrDefault();
        awayTeam.NumberThrowGoal = awayTeam.NumberThrowGoal + Convert.ToInt32(newAwayscore.Text);
        awayTeam.NumberGrabbedGoal = awayTeam.NumberGrabbedGoal + Convert.ToInt32(newHomeScore.Text);
        awayTeam.GoalAverage = awayTeam.GoalAverage + (Convert.ToInt32(newAwayscore.Text) - Convert.ToInt32(newHomeScore.Text));
        awayTeam.NumberMatchesPlayed = awayTeam.NumberMatchesPlayed + 1;
        if (Convert.ToInt32(newAwayscore.Text) > Convert.ToInt32(newHomeScore.Text))
        {
            awayTeam.Point = awayTeam.Point + 3;
            awayTeam.NumberWin = awayTeam.NumberWin + 1;
        }
        else if (Convert.ToInt32(newAwayscore.Text) < Convert.ToInt32(newHomeScore.Text))
        {
            awayTeam.Point = awayTeam.Point + 0;
            awayTeam.NumberLose = awayTeam.NumberLose + 1;
        }
        else
        {
            awayTeam.Point = awayTeam.Point + 1;
            awayTeam.NumberEquality = awayTeam.NumberEquality + 1;
        }
        //---------

        Fixture f = (from x in _db.Fixtures where x.Week == 5 && x.IsActive == true && x.FixtureId == id select x).SingleOrDefault();
        f.HomeGoals = Convert.ToInt32(newHomeScore.Text);
        f.AwayGoals = Convert.ToInt32(newAwayscore.Text);

        _db.SaveChanges();
        grvWeek5.DataBind();

        grvWeek5.EditIndex = -1;

        List<Fixture> fixture = (from x in _db.Fixtures where x.IsActive == true && x.Week == 5 select x).ToList();
        grvWeek5.DataSource = fixture;
        grvWeek5.DataBind();
    }

    protected void grvWeek6_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)grvWeek6.Rows[e.RowIndex];
        Label lblDeleteId = (Label)row.FindControl("lblFixtureId");
        //----Rating----- Find Team Id
        Label lblHomeTeamId = (Label)row.FindControl("lblTeam1");
        Label lblAwayTeamId = (Label)row.FindControl("lblTeam2");
        //---------------
        TextBox newHomeScore = (TextBox)row.FindControl("txtTeam1ScoreEdit");
        TextBox newAwayscore = (TextBox)row.FindControl("txtTeam2ScoreEdit");

        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        int id = Convert.ToInt32(lblDeleteId.Text);
        //---Rating---
        int homeId = FindTeamId(lblHomeTeamId.Text);
        int awayId = FindTeamId(lblAwayTeamId.Text);
        //Home Team
        Team homeTeam = (from x in _db.Teams where x.IsActive == true && x.TeamId == homeId select x).SingleOrDefault();
        homeTeam.NumberThrowGoal = homeTeam.NumberThrowGoal + Convert.ToInt32(newHomeScore.Text);
        homeTeam.NumberGrabbedGoal = homeTeam.NumberGrabbedGoal + Convert.ToInt32(newAwayscore.Text);
        homeTeam.GoalAverage = homeTeam.GoalAverage + (Convert.ToInt32(newHomeScore.Text) - Convert.ToInt32(newAwayscore.Text));
        homeTeam.NumberMatchesPlayed = homeTeam.NumberMatchesPlayed + 1;
        if (Convert.ToInt32(newHomeScore.Text) > Convert.ToInt32(newAwayscore.Text))
        {
            homeTeam.Point = homeTeam.Point + 3;
            homeTeam.NumberWin = homeTeam.NumberWin + 1;
        }
        else if (Convert.ToInt32(newHomeScore.Text) < Convert.ToInt32(newAwayscore.Text))
        {
            homeTeam.Point = homeTeam.Point + 0;
            homeTeam.NumberLose = homeTeam.NumberLose + 1;
        }
        else
        {
            homeTeam.Point = homeTeam.Point + 1;
            homeTeam.NumberEquality = homeTeam.NumberEquality + 1;
        }
        //Away Team
        Team awayTeam = (from x in _db.Teams where x.IsActive == true && x.TeamId == awayId select x).SingleOrDefault();
        awayTeam.NumberThrowGoal = awayTeam.NumberThrowGoal + Convert.ToInt32(newAwayscore.Text);
        awayTeam.NumberGrabbedGoal = awayTeam.NumberGrabbedGoal + Convert.ToInt32(newHomeScore.Text);
        awayTeam.GoalAverage = awayTeam.GoalAverage + (Convert.ToInt32(newAwayscore.Text) - Convert.ToInt32(newHomeScore.Text));
        awayTeam.NumberMatchesPlayed = awayTeam.NumberMatchesPlayed + 1;
        if (Convert.ToInt32(newAwayscore.Text) > Convert.ToInt32(newHomeScore.Text))
        {
            awayTeam.Point = awayTeam.Point + 3;
            awayTeam.NumberWin = awayTeam.NumberWin + 1;
        }
        else if (Convert.ToInt32(newAwayscore.Text) < Convert.ToInt32(newHomeScore.Text))
        {
            awayTeam.Point = awayTeam.Point + 0;
            awayTeam.NumberLose = awayTeam.NumberLose + 1;
        }
        else
        {
            awayTeam.Point = awayTeam.Point + 1;
            awayTeam.NumberEquality = awayTeam.NumberEquality + 1;
        }
        //---------

        Fixture f = (from x in _db.Fixtures where x.Week == 6 && x.IsActive == true && x.FixtureId == id select x).SingleOrDefault();
        f.HomeGoals = Convert.ToInt32(newHomeScore.Text);
        f.AwayGoals = Convert.ToInt32(newAwayscore.Text);

        _db.SaveChanges();
        grvWeek6.DataBind();

        grvWeek6.EditIndex = -1;

        List<Fixture> fixture = (from x in _db.Fixtures where x.IsActive == true && x.Week == 6 select x).ToList();
        grvWeek6.DataSource = fixture;
        grvWeek6.DataBind();
    }

    protected void grvWeek7_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)grvWeek7.Rows[e.RowIndex];
        Label lblDeleteId = (Label)row.FindControl("lblFixtureId");
        //----Rating----- Find Team Id
        Label lblHomeTeamId = (Label)row.FindControl("lblTeam1");
        Label lblAwayTeamId = (Label)row.FindControl("lblTeam2");
        //---------------
        TextBox newHomeScore = (TextBox)row.FindControl("txtTeam1ScoreEdit");
        TextBox newAwayscore = (TextBox)row.FindControl("txtTeam2ScoreEdit");

        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        int id = Convert.ToInt32(lblDeleteId.Text);
        //---Rating---
        int homeId = FindTeamId(lblHomeTeamId.Text);
        int awayId = FindTeamId(lblAwayTeamId.Text);
        //Home Team
        Team homeTeam = (from x in _db.Teams where x.IsActive == true && x.TeamId == homeId select x).SingleOrDefault();
        homeTeam.NumberThrowGoal = homeTeam.NumberThrowGoal + Convert.ToInt32(newHomeScore.Text);
        homeTeam.NumberGrabbedGoal = homeTeam.NumberGrabbedGoal + Convert.ToInt32(newAwayscore.Text);
        homeTeam.GoalAverage = homeTeam.GoalAverage + (Convert.ToInt32(newHomeScore.Text) - Convert.ToInt32(newAwayscore.Text));
        homeTeam.NumberMatchesPlayed = homeTeam.NumberMatchesPlayed + 1;
        if (Convert.ToInt32(newHomeScore.Text) > Convert.ToInt32(newAwayscore.Text))
        {
            homeTeam.Point = homeTeam.Point + 3;
            homeTeam.NumberWin = homeTeam.NumberWin + 1;
        }
        else if (Convert.ToInt32(newHomeScore.Text) < Convert.ToInt32(newAwayscore.Text))
        {
            homeTeam.Point = homeTeam.Point + 0;
            homeTeam.NumberLose = homeTeam.NumberLose + 1;
        }
        else
        {
            homeTeam.Point = homeTeam.Point + 1;
            homeTeam.NumberEquality = homeTeam.NumberEquality + 1;
        }
        //Away Team
        Team awayTeam = (from x in _db.Teams where x.IsActive == true && x.TeamId == awayId select x).SingleOrDefault();
        awayTeam.NumberThrowGoal = awayTeam.NumberThrowGoal + Convert.ToInt32(newAwayscore.Text);
        awayTeam.NumberGrabbedGoal = awayTeam.NumberGrabbedGoal + Convert.ToInt32(newHomeScore.Text);
        awayTeam.GoalAverage = awayTeam.GoalAverage + (Convert.ToInt32(newAwayscore.Text) - Convert.ToInt32(newHomeScore.Text));
        awayTeam.NumberMatchesPlayed = awayTeam.NumberMatchesPlayed + 1;
        if (Convert.ToInt32(newAwayscore.Text) > Convert.ToInt32(newHomeScore.Text))
        {
            awayTeam.Point = awayTeam.Point + 3;
            awayTeam.NumberWin = awayTeam.NumberWin + 1;
        }
        else if (Convert.ToInt32(newAwayscore.Text) < Convert.ToInt32(newHomeScore.Text))
        {
            awayTeam.Point = awayTeam.Point + 0;
            awayTeam.NumberLose = awayTeam.NumberLose + 1;
        }
        else
        {
            awayTeam.Point = awayTeam.Point + 1;
            awayTeam.NumberEquality = awayTeam.NumberEquality + 1;
        }
        //---------

        Fixture f = (from x in _db.Fixtures where x.Week == 7 && x.IsActive == true && x.FixtureId == id select x).SingleOrDefault();
        f.HomeGoals = Convert.ToInt32(newHomeScore.Text);
        f.AwayGoals = Convert.ToInt32(newAwayscore.Text);

        _db.SaveChanges();
        grvWeek7.DataBind();

        grvWeek7.EditIndex = -1;

        List<Fixture> fixture = (from x in _db.Fixtures where x.IsActive == true && x.Week == 7 select x).ToList();
        grvWeek7.DataSource = fixture;
        grvWeek7.DataBind();
    }

    protected void grvWeek8_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)grvWeek8.Rows[e.RowIndex];
        Label lblDeleteId = (Label)row.FindControl("lblFixtureId");
        //----Rating----- Find Team Id
        Label lblHomeTeamId = (Label)row.FindControl("lblTeam1");
        Label lblAwayTeamId = (Label)row.FindControl("lblTeam2");
        //---------------
        TextBox newHomeScore = (TextBox)row.FindControl("txtTeam1ScoreEdit");
        TextBox newAwayscore = (TextBox)row.FindControl("txtTeam2ScoreEdit");

        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        int id = Convert.ToInt32(lblDeleteId.Text);
        //---Rating---
        int homeId = FindTeamId(lblHomeTeamId.Text);
        int awayId = FindTeamId(lblAwayTeamId.Text);
        //Home Team
        Team homeTeam = (from x in _db.Teams where x.IsActive == true && x.TeamId == homeId select x).SingleOrDefault();
        homeTeam.NumberThrowGoal = homeTeam.NumberThrowGoal + Convert.ToInt32(newHomeScore.Text);
        homeTeam.NumberGrabbedGoal = homeTeam.NumberGrabbedGoal + Convert.ToInt32(newAwayscore.Text);
        homeTeam.GoalAverage = homeTeam.GoalAverage + (Convert.ToInt32(newHomeScore.Text) - Convert.ToInt32(newAwayscore.Text));
        homeTeam.NumberMatchesPlayed = homeTeam.NumberMatchesPlayed + 1;
        if (Convert.ToInt32(newHomeScore.Text) > Convert.ToInt32(newAwayscore.Text))
        {
            homeTeam.Point = homeTeam.Point + 3;
            homeTeam.NumberWin = homeTeam.NumberWin + 1;
        }
        else if (Convert.ToInt32(newHomeScore.Text) < Convert.ToInt32(newAwayscore.Text))
        {
            homeTeam.Point = homeTeam.Point + 0;
            homeTeam.NumberLose = homeTeam.NumberLose + 1;
        }
        else
        {
            homeTeam.Point = homeTeam.Point + 1;
            homeTeam.NumberEquality = homeTeam.NumberEquality + 1;
        }
        //Away Team
        Team awayTeam = (from x in _db.Teams where x.IsActive == true && x.TeamId == awayId select x).SingleOrDefault();
        awayTeam.NumberThrowGoal = awayTeam.NumberThrowGoal + Convert.ToInt32(newAwayscore.Text);
        awayTeam.NumberGrabbedGoal = awayTeam.NumberGrabbedGoal + Convert.ToInt32(newHomeScore.Text);
        awayTeam.GoalAverage = awayTeam.GoalAverage + (Convert.ToInt32(newAwayscore.Text) - Convert.ToInt32(newHomeScore.Text));
        awayTeam.NumberMatchesPlayed = awayTeam.NumberMatchesPlayed + 1;
        if (Convert.ToInt32(newAwayscore.Text) > Convert.ToInt32(newHomeScore.Text))
        {
            awayTeam.Point = awayTeam.Point + 3;
            awayTeam.NumberWin = awayTeam.NumberWin + 1;
        }
        else if (Convert.ToInt32(newAwayscore.Text) < Convert.ToInt32(newHomeScore.Text))
        {
            awayTeam.Point = awayTeam.Point + 0;
            awayTeam.NumberLose = awayTeam.NumberLose + 1;
        }
        else
        {
            awayTeam.Point = awayTeam.Point + 1;
            awayTeam.NumberEquality = awayTeam.NumberEquality + 1;
        }
        //---------

        Fixture f = (from x in _db.Fixtures where x.Week == 8 && x.IsActive == true && x.FixtureId == id select x).SingleOrDefault();
        f.HomeGoals = Convert.ToInt32(newHomeScore.Text);
        f.AwayGoals = Convert.ToInt32(newAwayscore.Text);

        _db.SaveChanges();
        grvWeek8.DataBind();

        grvWeek8.EditIndex = -1;

        List<Fixture> fixture = (from x in _db.Fixtures where x.IsActive == true && x.Week == 8 select x).ToList();
        grvWeek8.DataSource = fixture;
        grvWeek8.DataBind();
    }

    protected void grvWeek9_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)grvWeek9.Rows[e.RowIndex];
        Label lblDeleteId = (Label)row.FindControl("lblFixtureId");
        //----Rating----- Find Team Id
        Label lblHomeTeamId = (Label)row.FindControl("lblTeam1");
        Label lblAwayTeamId = (Label)row.FindControl("lblTeam2");
        //---------------
        TextBox newHomeScore = (TextBox)row.FindControl("txtTeam1ScoreEdit");
        TextBox newAwayscore = (TextBox)row.FindControl("txtTeam2ScoreEdit");

        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        int id = Convert.ToInt32(lblDeleteId.Text);
        //---Rating---
        int homeId = FindTeamId(lblHomeTeamId.Text);
        int awayId = FindTeamId(lblAwayTeamId.Text);
        //Home Team
        Team homeTeam = (from x in _db.Teams where x.IsActive == true && x.TeamId == homeId select x).SingleOrDefault();
        homeTeam.NumberThrowGoal = homeTeam.NumberThrowGoal + Convert.ToInt32(newHomeScore.Text);
        homeTeam.NumberGrabbedGoal = homeTeam.NumberGrabbedGoal + Convert.ToInt32(newAwayscore.Text);
        homeTeam.GoalAverage = homeTeam.GoalAverage + (Convert.ToInt32(newHomeScore.Text) - Convert.ToInt32(newAwayscore.Text));
        homeTeam.NumberMatchesPlayed = homeTeam.NumberMatchesPlayed + 1;
        if (Convert.ToInt32(newHomeScore.Text) > Convert.ToInt32(newAwayscore.Text))
        {
            homeTeam.Point = homeTeam.Point + 3;
            homeTeam.NumberWin = homeTeam.NumberWin + 1;
        }
        else if (Convert.ToInt32(newHomeScore.Text) < Convert.ToInt32(newAwayscore.Text))
        {
            homeTeam.Point = homeTeam.Point + 0;
            homeTeam.NumberLose = homeTeam.NumberLose + 1;
        }
        else
        {
            homeTeam.Point = homeTeam.Point + 1;
            homeTeam.NumberEquality = homeTeam.NumberEquality + 1;
        }
        //Away Team
        Team awayTeam = (from x in _db.Teams where x.IsActive == true && x.TeamId == awayId select x).SingleOrDefault();
        awayTeam.NumberThrowGoal = awayTeam.NumberThrowGoal + Convert.ToInt32(newAwayscore.Text);
        awayTeam.NumberGrabbedGoal = awayTeam.NumberGrabbedGoal + Convert.ToInt32(newHomeScore.Text);
        awayTeam.GoalAverage = awayTeam.GoalAverage + (Convert.ToInt32(newAwayscore.Text) - Convert.ToInt32(newHomeScore.Text));
        awayTeam.NumberMatchesPlayed = awayTeam.NumberMatchesPlayed + 1;
        if (Convert.ToInt32(newAwayscore.Text) > Convert.ToInt32(newHomeScore.Text))
        {
            awayTeam.Point = awayTeam.Point + 3;
            awayTeam.NumberWin = awayTeam.NumberWin + 1;
        }
        else if (Convert.ToInt32(newAwayscore.Text) < Convert.ToInt32(newHomeScore.Text))
        {
            awayTeam.Point = awayTeam.Point + 0;
            awayTeam.NumberLose = awayTeam.NumberLose + 1;
        }
        else
        {
            awayTeam.Point = awayTeam.Point + 1;
            awayTeam.NumberEquality = awayTeam.NumberEquality + 1;
        }
        //---------

        Fixture f = (from x in _db.Fixtures where x.Week == 9 && x.IsActive == true && x.FixtureId == id select x).SingleOrDefault();
        f.HomeGoals = Convert.ToInt32(newHomeScore.Text);
        f.AwayGoals = Convert.ToInt32(newAwayscore.Text);

        _db.SaveChanges();
        grvWeek9.DataBind();

        grvWeek9.EditIndex = -1;

        List<Fixture> fixture = (from x in _db.Fixtures where x.IsActive == true && x.Week == 9 select x).ToList();
        grvWeek9.DataSource = fixture;
        grvWeek9.DataBind();
    }

    protected void grvWeek10_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)grvWeek10.Rows[e.RowIndex];
        Label lblDeleteId = (Label)row.FindControl("lblFixtureId");
        //----Rating----- Find Team Id
        Label lblHomeTeamId = (Label)row.FindControl("lblTeam1");
        Label lblAwayTeamId = (Label)row.FindControl("lblTeam2");
        //---------------
        TextBox newHomeScore = (TextBox)row.FindControl("txtTeam1ScoreEdit");
        TextBox newAwayscore = (TextBox)row.FindControl("txtTeam2ScoreEdit");

        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        int id = Convert.ToInt32(lblDeleteId.Text);
        //---Rating---
        int homeId = FindTeamId(lblHomeTeamId.Text);
        int awayId = FindTeamId(lblAwayTeamId.Text);
        //Home Team
        Team homeTeam = (from x in _db.Teams where x.IsActive == true && x.TeamId == homeId select x).SingleOrDefault();
        homeTeam.NumberThrowGoal = homeTeam.NumberThrowGoal + Convert.ToInt32(newHomeScore.Text);
        homeTeam.NumberGrabbedGoal = homeTeam.NumberGrabbedGoal + Convert.ToInt32(newAwayscore.Text);
        homeTeam.GoalAverage = homeTeam.GoalAverage + (Convert.ToInt32(newHomeScore.Text) - Convert.ToInt32(newAwayscore.Text));
        homeTeam.NumberMatchesPlayed = homeTeam.NumberMatchesPlayed + 1;
        if (Convert.ToInt32(newHomeScore.Text) > Convert.ToInt32(newAwayscore.Text))
        {
            homeTeam.Point = homeTeam.Point + 3;
            homeTeam.NumberWin = homeTeam.NumberWin + 1;
        }
        else if (Convert.ToInt32(newHomeScore.Text) < Convert.ToInt32(newAwayscore.Text))
        {
            homeTeam.Point = homeTeam.Point + 0;
            homeTeam.NumberLose = homeTeam.NumberLose + 1;
        }
        else
        {
            homeTeam.Point = homeTeam.Point + 1;
            homeTeam.NumberEquality = homeTeam.NumberEquality + 1;
        }
        //Away Team
        Team awayTeam = (from x in _db.Teams where x.IsActive == true && x.TeamId == awayId select x).SingleOrDefault();
        awayTeam.NumberThrowGoal = awayTeam.NumberThrowGoal + Convert.ToInt32(newAwayscore.Text);
        awayTeam.NumberGrabbedGoal = awayTeam.NumberGrabbedGoal + Convert.ToInt32(newHomeScore.Text);
        awayTeam.GoalAverage = awayTeam.GoalAverage + (Convert.ToInt32(newAwayscore.Text) - Convert.ToInt32(newHomeScore.Text));
        awayTeam.NumberMatchesPlayed = awayTeam.NumberMatchesPlayed + 1;
        if (Convert.ToInt32(newAwayscore.Text) > Convert.ToInt32(newHomeScore.Text))
        {
            awayTeam.Point = awayTeam.Point + 3;
            awayTeam.NumberWin = awayTeam.NumberWin + 1;
        }
        else if (Convert.ToInt32(newAwayscore.Text) < Convert.ToInt32(newHomeScore.Text))
        {
            awayTeam.Point = awayTeam.Point + 0;
            awayTeam.NumberLose = awayTeam.NumberLose + 1;
        }
        else
        {
            awayTeam.Point = awayTeam.Point + 1;
            awayTeam.NumberEquality = awayTeam.NumberEquality + 1;
        }
        //---------

        Fixture f = (from x in _db.Fixtures where x.Week == 10 && x.IsActive == true && x.FixtureId == id select x).SingleOrDefault();
        f.HomeGoals = Convert.ToInt32(newHomeScore.Text);
        f.AwayGoals = Convert.ToInt32(newAwayscore.Text);

        _db.SaveChanges();
        grvWeek10.DataBind();

        grvWeek10.EditIndex = -1;

        List<Fixture> fixture = (from x in _db.Fixtures where x.IsActive == true && x.Week == 10 select x).ToList();
        grvWeek10.DataSource = fixture;
        grvWeek10.DataBind();
    }
    #endregion
}