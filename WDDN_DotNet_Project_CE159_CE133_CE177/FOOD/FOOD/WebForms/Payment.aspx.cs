using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FOOD.WebForms
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            price.Text = Session["tp"].ToString();

        }

        protected void offline_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment_Offline.html");
        }

        protected void online_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment_Online.html");
        }
    }
}