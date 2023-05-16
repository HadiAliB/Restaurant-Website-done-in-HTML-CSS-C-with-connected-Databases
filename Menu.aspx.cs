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
    public partial class Menu : System.Web.UI.Page
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

        public void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "addtocart")
            {
                cartname.InnerHtml = "Your Cart:";
                checkoutlink.Visible = true;
                DataTable cart = ((DataTable)Application["cart"]);
                bool incart = false;
                if (cart.Columns.Count == 0)
                {
                    cart.Columns.Add("Quantity", typeof(int));
                    cart.Columns.Add("Price", typeof(float));
                    cart.Columns.Add("Name", typeof(string));
                }
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow selectedRow = GridView1.Rows[index];
                TableCell item_name = selectedRow.Cells[0];
                TableCell item_price = selectedRow.Cells[3];
                string p = item_price.Text;
                p = p.Remove(0, 2);
                float p1 = (float)Convert.ToDecimal(p);
                int temp = (int)Application["ordertotal"];
                temp = temp + (int)p1;
                Application["ordertotal"] = temp;
                string nam = item_name.Text;
                for (int i = 0; i < cart.Rows.Count; i++)
                {
                    if (cart.Rows[i][2].ToString() == nam)
                    {
                        int t = Convert.ToInt32(cart.Rows[i][0].ToString());
                        cart.Rows[i][0] = t + 1;
                        int t2 = Convert.ToInt32(cart.Rows[i][1].ToString());
                        cart.Rows[i][1] = t2 + p1;
                        incart = true;
                    }

                }
                if (!incart)
                {
                    cart.Rows.Add(1, p1, nam);
                }
                GridView2.DataSource = cart;
                Application["cart"] = cart;
                GridView2.DataBind();
            }
        }

        public void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "removefromcart")
            {
                DataTable cart = ((DataTable)Application["cart"]);
                DataRow dataRowrow = cart.Rows[Convert.ToInt32(e.CommandArgument)];
                Application["ordertotal"] = (int)Application["ordertotal"] - Convert.ToInt32(dataRowrow[1].ToString());
                cart.Rows.Remove(dataRowrow);
                GridView2.DataSource = cart;
                Application["cart"] = cart;
                if (cart.Rows.Count == 0)
                {
                    cartname.InnerHtml = "Cart Empty";
                    checkoutlink.Visible = false;
                }
                GridView2.DataBind();
            }

        }
    }
}