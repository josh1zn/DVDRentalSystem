//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DVDRentalData
{
    using System;
    using System.Collections.Generic;
    
    public partial class Sale
    {
        public int ID { get; set; }
        public System.DateTime Date { get; set; }
        public int RentalItemID { get; set; }
        public int CustomerID { get; set; }
        public int EmployeeID { get; set; }
    
        public virtual RentalItem RentalItem { get; set; }
        public virtual User User { get; set; }
        public virtual User User1 { get; set; }
    }
}