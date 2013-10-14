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
    }
}
