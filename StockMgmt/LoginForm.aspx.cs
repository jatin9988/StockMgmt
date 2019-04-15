using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockMgmt
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            DbClass.login objLogin = new DbClass.login();

            objLogin.Username = Username.Text.ToString();
            objLogin.Password = password.Text.ToString();
            if (objLogin.logincheck() >= 1)
            {

                //if valid then do this
                Response.Redirect("AdminArea.aspx");
            }
            else {
                /// if invalid then do this 
                /// 
                data.InnerHtml = "Invalid User Name or Password";
            }


        }
    }
}