using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminInfo"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            lblMesaage.Text = "Welcome " + Session["adminInfo"].ToString();

            using (CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities())
            {
                List<Supporter> sup = (from x in _db.Supporters where x.isActive == true && x.isApproval == false select x).ToList();

                grvSupporterList.DataSource = sup.OrderBy(i => i.Name);
                grvSupporterList.DataBind();

                for (int i = 0; i < grvSupporterList.Rows.Count; i++)
                {
                    GridViewRow row = (GridViewRow)grvSupporterList.Rows[i];
                    Label lblNumber = (Label)row.FindControl("lblNumber");
                    lblNumber.Text = (i + 1).ToString();
                }
            }
        }
    }

    protected void btnIsApproval_Click1(object sender, EventArgs e)
    {
        CankayaFootballLeagueEntities _db = new CankayaFootballLeagueEntities();

        for (int i = 0; i < grvSupporterList.Rows.Count; i++)
        {
            GridViewRow row = (GridViewRow)grvSupporterList.Rows[i];
            CheckBox c = (CheckBox)row.FindControl("cbIsApproval");
            Label lblId = (Label)row.FindControl("lblId");

            int idd = Convert.ToInt32(lblId.Text);

            if (c.Checked == true)
            {
                Supporter sup1 = (from x in _db.Supporters where x.isActive == true && x.isApproval == false && x.SupporterId == idd select x).SingleOrDefault();
                sup1.isApproval = true;
               
            }
        }
        _db.SaveChanges();

        List<Supporter> sup = (from x in _db.Supporters where x.isActive == true && x.isApproval == false select x).ToList();

        grvSupporterList.DataSource = sup.OrderBy(i => i.Name);
        grvSupporterList.DataBind();

        for (int i = 0; i < grvSupporterList.Rows.Count; i++)
        {
            GridViewRow row = (GridViewRow)grvSupporterList.Rows[i];
            Label lblNumber = (Label)row.FindControl("lblNumber");
            lblNumber.Text = (i + 1).ToString();
        }

    }
}