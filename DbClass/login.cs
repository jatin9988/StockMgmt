using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
namespace DbClass
{
   public class login
    {
        classDB obj = new classDB();
        //global variable to get  the user name form the login class 
       public String Username { get; set; }
        public String Password { get; set; }
        //this method is used to check the user name or password is correct or  wrong if it is true and then next page will be display if it is false then the error message will be display 
        public int logincheck() {
            String query = "select * from login where UserName='"+Username+"' and Password='"+Password+"' ";
            DataTable tb = new DataTable();
            tb = obj.Srch(query);
            if (tb.Rows.Count > 0) {
                return 1;
            }
            else {
                return 0;
            }

        }

    }
}
