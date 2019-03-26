using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SupporterFixture : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["supporterInfo"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            ShowFixture();
        }
    }

    #region Show Fixture
    private void ShowFixture()
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
    #endregion
}