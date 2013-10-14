using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using DVDRentalCode;

namespace DVDRentalUI
{
    /// <summary>
    /// Summary description for DVDRental
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class DVDRental : System.Web.Services.WebService
    {
        [WebMethod]
        public RentalItemDto GetRentalItemById(string id)
        {
            var ri = new RentalItemBLL();
            return ri.GetRentalItemById(Convert.ToInt32(id));
        }

        [WebMethod]
        public List<RentalItemDto> GetAllRentalItemsByType(string type)
        {
            var ri = new RentalItemBLL();
            return ri.GetAllRentalItemsByType(type);
        }

        [WebMethod]
        public void AddSales(String d, String r, String c, String e)
        {
            var s = new SalesBLL();
            s.AddSales(Convert.ToDateTime(d), Convert.ToInt32(r), Convert.ToInt32(c), Convert.ToInt32(e));
        }

        [WebMethod]
        public void AddUser(string name, string surname, string idnumber, string address, string contactNumber, string email, string role, string username, string password)
        {
            new UserBLL().AddUser(name, surname, idnumber, address, contactNumber, email, role, username, password);
        }

        [WebMethod]
        public List<UserDto> getAllCustomers()
        {
            return new UserBLL().getAllCustomers();
        }

        [WebMethod]
        public UserDto getCustomerbyID(string id)
        {
            return new UserBLL().getCustomer(Convert.ToInt32(id));
        }

        [WebMethod]
        public UserDto getCustomerByIDNumber(string idnumber)
        {
            return new UserBLL().getCustomer(Convert.ToInt32(idnumber));
        }

        [WebMethod]
        public List<UserDto> getAllClerks()
        {
            return new UserBLL().getAllClerks();
        }

        [WebMethod]
        public UserDto getUserCredentials(string username)
        {
            return new UserBLL().getUserCredentials(username);
        }
    }
}
