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
        //RENTAL METHODS
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

        [WebMethod(EnableSession=true)]
        public void AddSales(String rentalItemID, String customerID)
        {
            var s = new SalesBLL();
            s.AddSales(Convert.ToInt32(rentalItemID), Convert.ToInt32(customerID), Convert.ToInt32(Session["ID"]));
        }


        //USER METHODS
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
            return new UserBLL().getCustomer(idnumber);
        }

        [WebMethod]
        public List<UserDto> getAllClerks()
        {
            return new UserBLL().getAllClerks();
        }

        [WebMethod]
        public List<UserDto> GetAllUsersWithFines()
        {
            return new UserBLL().getUserFines();
        }

        //NOTIFICATION METHODS
        [WebMethod]
        public NotificationDto GetNotificationById(string id)
        {
            return new NotificationBLL().GetNotificationById(Convert.ToInt32(id));
        }

        [WebMethod]
        public void SendNotification(string id)
        {
            new NotificationBLL().AddNotification(Convert.ToInt32(id));
        }

        [WebMethod]
        public List<NotificationDto> GetAllNotificationsByDate(string date)
        {
            return new NotificationBLL().GetAllNotificationsByDate(date);
        }

        [WebMethod]
        public List<NotificationDto> GetAllNotifications()
        {
            return new NotificationBLL().GetAllNotifications();
        }

        //SESSION METHOD
        [WebMethod(EnableSession = true)]
        public resultDto checkLogin(string username, string password)
        {
            HashBLL h = new HashBLL();
            resultDto result = new resultDto();
            var user = new UserBLL().getUserCredentials(username);
            if (user != null)
            {
                if (h.VerifyHash(password, user.Password))
                {
                    //login details are correct
                    result.Pass = "true";
                    result.Role = user.Role;
                    Session.Timeout = 30;
                    Session["ID"] = user.ID;
                    Session["UserName"] = user.Username;
                    Session["Role"] = user.Role;
                }
                else
                    result.Pass = "Incorrect Password";
            }
            else
                result.Pass = "Incorrect Username";

            return result;
        }

        [WebMethod(EnableSession=true)]
        public void logout()
        {
            Session.Abandon();
        }

        public class resultDto
        {
            public string Pass { get; set; }
            public string Role { get; set; }
        }
    }
}
