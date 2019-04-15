using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockMgmt
{
    public partial class Sale : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {

            DbClass.purchse objLogin = new DbClass.purchse();

            objLogin.companyname = CompanyName.Text.ToString();
            objLogin.prouctname = Product.Text.ToString();
            objLogin.qty = Convert.ToInt32(Qty.Text.ToString());
            objLogin.price = Convert.ToInt32(Price.Text.ToString());
            objLogin.total = objLogin.qty * objLogin.price;
            objLogin.sdate = Sdate.Text.ToString();

            objLogin.addProduct();

            CompanyName.Text = "";
            Product.Text = "";
            Qty.Text = "";
            Price.Text = "";
            Sdate.Text = "";


        }
    }
}