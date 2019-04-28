using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockMgmt
{
    public partial class Purchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            // get all the value from the user and then pass the data to the purchase class for inserting the record to the table of the purrchase for keep the record permanently 
            DbClass.purchse objLogin = new DbClass.purchse();

            objLogin.companyname = CompanyName.Text.ToString();
            objLogin.prouctname=Product.Text.ToString();
            objLogin.qty = Convert.ToInt32(Qty.Text.ToString());
            objLogin.price = Convert.ToInt32(Price.Text.ToString());
            objLogin.total = objLogin.qty * objLogin.price;
            objLogin.sdate = Sdate.Text.ToString();
            //calling the method of the puchrase class to stroe the record int he table 
            objLogin.addProduct();
            //reset all the textbox after inserting the record 
            CompanyName.Text = "";
            Product.Text = "";
            Qty.Text = "";
            Price.Text = "";
            Sdate.Text = "";
            rs.InnerHtml = "Product is Saved ";


        }
    }
}