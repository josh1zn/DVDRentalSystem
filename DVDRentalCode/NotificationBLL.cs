using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DVDRentalData;

namespace DVDRentalCode
{
    public class NotificationBLL
    {

     



        
        public NotificationDto GetNotificationById(int id)
        {
            DVDRentalEntities db = new DVDRentalEntities();

            var n = db.Notifications.FirstOrDefault(x => x.ID == id);
            return new NotificationDto { ID = n.ID.ToString(), Date = n.Date.ToString(), CustomerID = n.CustomerID.ToString() };
        }

        public List<NotificationDto> GetAllNotificationsByDate(string date)
        {
            DVDRentalEntities db = new DVDRentalEntities();
            List<NotificationDto> LRI = new List<NotificationDto>();
            DateTime dtstring = Convert.ToDateTime(date);
            foreach (var n in db.Notifications.Where(x => x.Date == dtstring))
            {
                LRI.Add(new NotificationDto
                {
                    ID = n.ID.ToString(),
                    Date = n.Date.ToString(),
                    CustomerID = n.CustomerID.ToString(),
                });
            }
            return LRI;
        }
        //Add notifications that use the getUserFines method in the user class.
        public void AddNotification(DateTime date, int cid)
        {
            var db = new DVDRentalEntities();
            var n = new Notification
            {
                Date = date,
                CustomerID = cid,
            };
            db.Notifications.Add(n);
            db.SaveChanges();

        }

        public List<NotificationDto> GetAllNotifications()
        {
            DVDRentalEntities db = new DVDRentalEntities();
            List<NotificationDto> LRI = new List<NotificationDto>();

            foreach (var n in db.Notifications)
            {
                LRI.Add(new NotificationDto
                {
                    ID = n.ID.ToString(),
                    Date = n.Date.ToString(),
                    CustomerID = n.CustomerID.ToString(),
                    FName = n.User.Name + " " + n.User.Surname,
                });
            }
            return LRI;
        }


    }

    public class NotificationDto
    {
        public string ID { get; set; }
        public string Date { get; set; }
        public string CustomerID { get; set; }
        public string FName { get; set; }
    }
}
