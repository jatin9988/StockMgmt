using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
namespace DbClass
{
   public class purchse
    {

        classDB obj = new classDB();
        //global mthod of the purchase class with variable name 
        public String prouctname { get; set; }
        public String companyname { get; set; }
        public int qty { get; set; }
        public int price { get; set; }
        public int total { get; set; }
        public String sdate { get; set; }
        //this method is used to keep the record inthe database for insert query
        public void addProduct() {
            String query = "insert into product(companyname,productname,qty,price,total,sdate) values('"+companyname+"','"+prouctname+"',"+qty+","+price+","+total+",'"+sdate+"')";
            obj.InsDelUpdt(query);
            srch();
        }
        //this method is used to sale the record or product and keep the record 
        public void saleproduct() {
            String query = "insert into sale(companyname,productname,qty,price,total,sdate) values('" + companyname + "','" + prouctname + "'," + qty + "," + price + "," + total + ",'" + sdate + "')";
            obj.InsDelUpdt(query);

        }
//serch the record from the stock to update after sale and purchase 
        public void srch() {
            DataTable tb = new DataTable();
            int oldqty = 0;
            String query = "select * from stock where productname='"+prouctname+"'";
            tb = obj.Srch(query);
            
            if (tb.Rows.Count > 0)
            {
                oldqty =Convert.ToInt32(tb.Rows[0]["qty"].ToString());
                oldqty = oldqty + qty;
                query = "";
                query = "update stock set qty="+oldqty+" where productname='"+prouctname+"'";
                obj.InsDelUpdt(query);
            }
            else {
                query = "";
                query = "insert into stock (productname,qty)values('"+prouctname+"',"+qty+")";
                obj.InsDelUpdt(query);
            }

        }


    }
}
