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

         public void updateBalance(int customerID, int rentalID)
         {
             DVDRentalEntities db = new DVDRentalEntities();
             var customer = db.Users.FirstOrDefault(x => x.ID == customerID);
             customer.Balance += Convert.ToDecimal(new RentalItemBLL().GetRentalItemById(rentalID).Price);
             db.SaveChanges();
         }
    }

}
