using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DVDRentalUI
{
    public partial class Account_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] == null || Session["Role"].ToString() != "Customer")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                hfID.Value = Session["ID"].ToString();
            }
        }
    }
}