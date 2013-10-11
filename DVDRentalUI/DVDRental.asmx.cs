using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using DVDRentalData;

namespace DVDRentalUI
{
    /// <summary>
    /// Summary description for DVDRental
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class DVDRental : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public List<RentalItemDto> GetAllRentalItems()
        {
            DVDRentalEntities db = new DVDRentalEntities();
            List<RentalItemDto> LRI = new List<RentalItemDto>();
            foreach (var ri in db.RentalItems)
            {
                LRI.Add(new RentalItemDto
                {
                    Name = ri.Name,
                    Type = ri.Type,
                    Price = ri.Price.ToString()
                });
            }
            return LRI;
        }

        #region DTO's

        public class RentalItemDto
        {
            public string Name { get; set; }
            public string Type { get; set; }
            public string Price { get; set; }
        }

        #endregion
    }
}
