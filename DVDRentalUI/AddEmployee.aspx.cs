﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DVDRentalUI.Pages
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Session["ID"];
            var role = Session["Role"];
            var username = Session["Username"];
            sbyte pass;
        }
    }
}