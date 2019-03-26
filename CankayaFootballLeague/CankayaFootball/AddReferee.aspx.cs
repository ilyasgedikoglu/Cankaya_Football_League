using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddReferee : System.Web.UI.Page
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
                List<RefereeType> rf = (from x in _db.RefereeTypes select x).ToList();
                ddlRefereeType.DataSource = rf;
                ddlRefereeType.DataTextField = "RefereeType1";
                ddlRefereeType.DataValueField = "RefereeTypeId";
                ddlRefereeType.DataBind();
            }
        }
     
    }



    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        RefereeAdd();
    }

    private void RefereeAdd()
    {
        Referee referee = new Referee();
        referee.LicenceNumber = txtLicenceNumber.Text;
        referee.Name = txtName.Text;
        referee.LastName = txtSurname.Text;
        referee.City = txtCity.Text;
        referee.BirthDate = Convert.ToDateTime(txtBirthdate.Text);
        referee.Email = txtEmail.Text;
        referee.RefereeTypeId = Convert.ToInt32(ddlRefereeType.SelectedItem.Value);
        referee.IsActive = cbIsActive.Checked;

        using (CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities())
        {
            _db.Referees.Add(referee);
            _db.SaveChanges();
        }
        Response.Redirect("~/RefereeList.aspx");
    }
}