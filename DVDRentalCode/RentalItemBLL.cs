using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DVDRentalData;

namespace DVDRentalCode
{
    public class RentalItemBLL
    {
        public List<RentalItemDto> GetAllRentalItems()
        {
            DVDRentalEntities db = new DVDRentalEntities();
            List<RentalItemDto> LRI = new List<RentalItemDto>();
            foreach (var ri in db.RentalItems)
            {
                LRI.Add(new RentalItemDto
                {
                    ID = ri.ID.ToString(),
                    Name = ri.Name,
                    Type = ri.Type,
                    Price = ri.Price.ToString()
                });
            }
            return LRI;
        }
    }

    public class RentalItemDto
    {
        public string ID { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public string Price { get; set; }
    }
}
