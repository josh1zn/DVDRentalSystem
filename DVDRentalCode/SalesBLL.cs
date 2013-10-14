using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DVDRentalData;

namespace DVDRentalCode
{
     public class SalesBLL
    {    //Add a sale into the database.
         public void AddSales(int rid,int cid,int eid)
         {
             var db = new DVDRentalEntities();
             var s = new Sale
             {
                 Date= DateTime.Now,
                 RentalItemID=rid,
                 CustomerID=cid,
                 EmployeeID=eid,
             };
             db.Sales.Add(s);
             db.SaveChanges();
         }
         //get sales method (will code if needed).   
    }
    //Use when retrieving all sales /particular sales from the dtatabse if needed.
    // public class SalesDto
     //{
       //  public String Date { get; set; }
        // public String RentalItemID { get; set; }
        // public String CustomerID { get; set; }
         //public String EmployeeID { get; set; }
     // }

}
