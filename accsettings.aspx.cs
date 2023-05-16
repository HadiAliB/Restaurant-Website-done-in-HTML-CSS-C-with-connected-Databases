using Restaurant.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant
{
    public partial class accsettings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            myDal objMyDal = new myDal()
                ;
            string cid = Application["currCustID"].ToString(); 

            string cname = objMyDal.getCustName(cid);
            string cpass = objMyDal.getCustPass(cid);
            string cphone = objMyDal.getCustPhone(cid);
            string caddr = objMyDal.getCustAddress(cid);

            label1.InnerText = "Current Name: " + cname;
            label2.InnerText = "Current Password: " + cpass;
            label3.InnerText = "Current Phone: " + cphone;
            label4.InnerText = "Current Address: " + caddr;
        }

        protected void UpdateFields(object sender, EventArgs e)
        {
            myDal myObjDal = new myDal();

            string cid = Application["currCustID"].ToString();

            string cname = regName.Value;
            string cpass = regPass.Value;
            string cphone = regPass.Value;
            string caddr = regAddr.Value;
            
            if (cname != "")
                myObjDal.updateCustName(cid, cname);
            if (cpass != "")
                myObjDal.updateCustPass(cid, cpass);
            if (cphone != "")
                myObjDal.updateCustPhone(cid, cpass);
            if (caddr != "")
                myObjDal.updateCustAddress(cid, caddr);

            Response.Redirect("login.aspx");
        }
    }
}