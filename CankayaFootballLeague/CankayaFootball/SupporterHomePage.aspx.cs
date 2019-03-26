using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SupporterHomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["supporterInfo"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            using (CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities())
            {
                List<Team> team = (from x in _db.Teams where x.IsActive == true select x).OrderByDescending(i => i.GoalAverage).ToList();

                grvRating.DataSource = team.OrderByDescending(i => i.Point);
                grvRating.DataBind();

                for (int i = 0; i < grvRating.Rows.Count; i++)
                {
                    GridViewRow row = (GridViewRow)grvRating.Rows[i];
                    Label lblNumber = (Label)row.FindControl("lblNumber");
                    lblNumber.Text = (i + 1).ToString();
                }

                lblSupporterName.Text = "Welcome " + Session["supporterInfo"].ToString();
            }
        }     
    }
}