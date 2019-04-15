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

       public String Username { get; set; }
        public String Password { get; set; }

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
