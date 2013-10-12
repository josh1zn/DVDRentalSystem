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
        public RentalItemDto GetAllRentalItems(string id)
        {
            var ri = new RentalItemBLL();
            return ri.GetAllRentalItems(Convert.ToInt32(id));
        }
    }
}
