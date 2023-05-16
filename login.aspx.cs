using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Restaurant.DAL;
using System.Web.Services.Description;
using System.Text.RegularExpressions;

namespace Restaurant
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Application["adminVariable"] = "0";
        }

        protected void EnterStartPage(object sender, EventArgs e)
        {
            if (loginMail.Value == "admin" && loginPass.Value == "123")
            {
                Application["adminVariable"] = "1";
                Response.Redirect("startpage.aspx");
            }
            else
            {
                String cmail = loginMail.Value;
                String cpass = loginPass.Value;

                DataTable DT = new DataTable();
                myDal objMyDal = new myDal();
                String found;
                found = objMyDal.LoginCustomer(cmail, cpass, ref DT);

                if (found != "0")
                {
                    Application["currUser"] = found;
                    Application["currCustID"] = objMyDal.getCustID(cmail);
                    Response.Redirect("startpage.aspx");
                }
                else
                {
                    String myStringVariable = "Invalid email or password.";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                }
            }
        }
        protected void EnterStartPage2(object sender, EventArgs e)
        {
            myDal objMyDal = new myDal();

            int currCID = objMyDal.getNumCust() + 1;

            String cid = "C00" + currCID.ToString();
            Application["currCustID"] = cid;

            String cname = regName.Value;
            String cphone = regPhone.Value;
            String carea = regCode.Value;
            String caddr = regAddr.Value;
            String cmail = regEmail.Value;
            String cpass = regPass.Value;

            if (cname == "" || cphone == "" || carea == "" || caddr == "" || cmail == "" || cpass == "")
            {
                String myStringVariable = "Enter all fields.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                return;
            }

            DataTable DT = new DataTable();

            int found;
            found = objMyDal.AddCustomer(cid,cname,cphone,carea,caddr,cmail,cpass, ref DT);

            if (found == 1)
            {
                Application["currUser"] = cname;
                Response.Redirect("login.aspx");
            }
            else
            {
                String myStringVariable = "Invalid input or user with that email already exists.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);

            }
        }

        protected void ToggleLogins(object sender, EventArgs e)
        {
            regform.Attributes.CssStyle.Add("display", "inline");
            logform.Attributes.CssStyle.Add("display", "none");
        }
        protected void ToggleLogins2(object sender, EventArgs e)
        {
            regform.Attributes.CssStyle.Add("display", "none");
            logform.Attributes.CssStyle.Add("display", "inline");
        }
    }
}