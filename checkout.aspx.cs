using Restaurant.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.Services.Discovery;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Restaurant
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        static int count = 0;
        static int tip = 0;
        static float discValue = 0;
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
            if (count == 0)
            {
                ordertotal.InnerText = Application["ordertotal"].ToString();
                count++;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable cart = ((DataTable)Application["cart"]);
            myDal objMyDal = new myDal();
            int total = (int)Application["ordertotal"];

            int pointsEarned = (int)(total / 10);
            objMyDal.addCustPoints(Application["currCustID"].ToString(), pointsEarned);

            objMyDal.PlaceOrder(cart, tip, DropDownList1.Text.ToString(), total, TextBox2.Text.ToString(), Application["currCustID"].ToString(), discValue);

            DataTable newcart = new DataTable();
            Application["cart"] = newcart; 
            Application["ordertotal"] = 0;

            count = 0;
            tip = 0;
            discValue = 0; 
            Response.Redirect("thankyou.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int temp = (int)Application["ordertotal"];
            try
            {
                tip = Convert.ToInt32(TextBox1.Text.ToString());

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + "You can only enter integers" + "');", true);
                TextBox1.Text = "0";
                TextBox1.Focus();
            }
            string s = (tip + temp*(1-discValue)).ToString();
            ordertotal.InnerText = s;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            myDal objMyDal = new myDal();
            string discID = TextBox2.Text.ToString();
            int temp = (int)Application["ordertotal"];
            int temp2 = Convert.ToInt32(ordertotal.InnerText);


            int currentPoints = objMyDal.getCustPoints(Application["currCustID"].ToString());
            int reqPoints;
            reqPoints = objMyDal.getPointsRequired(discID);
            if (reqPoints == -1)
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + "Invalid discount code entered!" + "');", true);
                TextBox2.Text = "";
                TextBox2.Focus();
            }
            else
            {
                if (currentPoints >= reqPoints)
                {
                    discValue = objMyDal.getDiscountValue(discID);

                    float finalValue;
                    finalValue = temp * (1-discValue);
                    finalValue += tip;
                    string s = "Discount of " + (discValue * 100).ToString() + "% applied!";
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + s + "');", true);
                    ordertotal.InnerText = finalValue.ToString();
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + "Points not sufficient for this discount!" + "');", true);
                    TextBox2.Text = "";
                    TextBox2.Focus();
                }
            }
        }
    }
}