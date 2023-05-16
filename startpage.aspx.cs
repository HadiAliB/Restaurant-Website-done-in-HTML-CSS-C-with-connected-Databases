using Restaurant.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant
{
    public partial class WebForm1 : System.Web.UI.Page
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
    }
}