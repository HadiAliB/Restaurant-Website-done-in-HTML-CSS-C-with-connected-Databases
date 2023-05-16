using Restaurant.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Restaurant
{
    public partial class admin : System.Web.UI.Page
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
        protected void InsertMenuItem(object sender, EventArgs e)
        {
            myDal myObjDal = new myDal();

            String iid = "I00" + (myObjDal.getNumItems() + 1).ToString();
            String iname = ItemName.Text;
            String icat = ItemCat.Text;
            int iprice = Convert.ToInt32(ItemPrice.Text);
            String idesc = ItemDesc.Text;

            if (iname == "" || icat == "" || iprice == 0 || idesc == "")
            {
                String myStringVariable = "Enter all fields.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                return;
            }

            DataTable DT = new DataTable();

            int found;
            found = myObjDal.AddMenuItem(iid, iname, icat, iprice, idesc, ref DT);

            if (found == 1)
            {
                Response.Redirect("admin.aspx");
            }
            else
            {
                String myStringVariable = "Invalid input.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);

            }
        }

    }
}