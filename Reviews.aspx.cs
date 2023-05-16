using Restaurant.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant
{
    public partial class Reviews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["adminVariable"].ToString() != "0")
            {
                adminPage.Attributes.CssStyle.Add("display", "inline");
                userBar.Attributes.CssStyle.Add("display", "none");
            }
            else
            {
                adminPage.Attributes.CssStyle.Add("display", "none");
                userBar.Attributes.CssStyle.Add("display", "inline");
                myDal objMyDal = new myDal();
                Application["currUser"] = objMyDal.getCustName(Application["currCustID"].ToString());
            }
        }
        protected void FirstFunction(object sender, EventArgs e)
        {
            myDal objMyDal = new myDal();

            String reviewid = "R00" + (objMyDal.getNumReviews() + 1).ToString();
            String custid = Application["currCustID"].ToString(); ;
            int rt = Convert.ToInt32(rating.Value);
            String reviewdesc = message.Value;

            DataTable DT = new DataTable();
            int found;
            found = objMyDal.AddReview(reviewid, custid, rt, reviewdesc, ref DT);

            if (found == 1)
            {
                Response.Redirect("Reviews.aspx");
            }
            else
            {
                String myStringVariable = "Error.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);

            }
        }
    }
}