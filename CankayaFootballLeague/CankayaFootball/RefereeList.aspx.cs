using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RefereeList : System.Web.UI.Page
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
                    List<Referee> referee = (from x in _db.Referees where x.IsActive == true select x).ToList();

                    grvRefereeList.DataSource = referee;
                    grvRefereeList.DataBind();
                }
            }
        }
    }

    public string FindRefereeName(object id)
    {
        string refereeName = "";
        int rid = Convert.ToInt32(id);
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();
        RefereeType r = (from x in _db.RefereeTypes where x.RefereeTypeId == rid select x).SingleOrDefault();

        if (r != null)
        {
            refereeName = r.RefereeType1;
        }
        return refereeName;
    }

    protected void grvRefereeList_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)grvRefereeList.Rows[e.RowIndex];
        Label lblDeleteId = (Label)row.FindControl("lblRefereeId");
        TextBox newName = (TextBox)row.FindControl("txtName");
        TextBox newCity = (TextBox)row.FindControl("txtCity");
        TextBox newLicenceNumber = (TextBox)row.FindControl("txtLicenceNumber");
        TextBox newLastName = (TextBox)row.FindControl("txtLastName");
        TextBox newBirthDate = (TextBox)row.FindControl("txtBirthDate");
        TextBox newEmail = (TextBox)row.FindControl("txtEmail");
        DropDownList newRefereeType = (DropDownList)row.FindControl("ddlRefereeTypeId");

        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        int id = Convert.ToInt32(lblDeleteId.Text);

        RefereeType[] rf = (from x in _db.RefereeTypes select x).ToArray();
        newRefereeType.DataSource = rf;
        newRefereeType.DataTextField = "RefereeType1";
        newRefereeType.DataValueField = "RefereeTypeId";
        newRefereeType.DataBind();

        Referee r = (from x in _db.Referees where x.RefereeId == id && x.IsActive == true select x).SingleOrDefault();
        r.Name = newName.Text;
        r.City = newCity.Text;
        r.LicenceNumber = newLicenceNumber.Text;
        r.LastName = newLastName.Text;
        r.BirthDate = Convert.ToDateTime(newBirthDate.Text);
        r.Email = newEmail.Text;
        r.RefereeTypeId = Convert.ToInt32(newRefereeType.SelectedItem.Value);

        _db.SaveChanges();
        grvRefereeList.DataBind();

        grvRefereeList.EditIndex = -1;

        List<Referee> referee = (from x in _db.Referees where x.IsActive == true select x).ToList();
        grvRefereeList.DataSource = referee;
        grvRefereeList.DataBind();
    }

    protected void grvRefereeList_RowEditing(object sender, GridViewEditEventArgs e)
    {
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        grvRefereeList.EditIndex = e.NewEditIndex;

        List<Referee> referee = (from x in _db.Referees where x.IsActive == true select x).ToList();
        grvRefereeList.DataSource = referee;
        grvRefereeList.DataBind();
    }

    protected void grvRefereeList_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grvRefereeList.EditIndex = -1;

        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();
        List<Referee> referee = (from x in _db.Referees where x.IsActive == true select x).ToList();
        grvRefereeList.DataSource = referee;
        grvRefereeList.DataBind();
    }

    protected void grvRefereeList_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)grvRefereeList.Rows[e.RowIndex];
        Label lblDeleteId = (Label)row.FindControl("lblRefereeId");
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();
        int id = Convert.ToInt32(lblDeleteId.Text);

        Referee r = (from x in _db.Referees where x.RefereeId == id && x.IsActive == true select x).SingleOrDefault();
        r.IsActive = false;
        _db.SaveChanges();
        grvRefereeList.DataBind();
    }
}