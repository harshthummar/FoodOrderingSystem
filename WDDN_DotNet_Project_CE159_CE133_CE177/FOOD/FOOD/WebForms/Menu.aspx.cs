using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FOOD.WebForms
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ImageButton1.Attributes.Add("onmouseover", "SomeJavaScriptFunction();");
        }
        protected void SomeJavaScriptFunction()
        {
            Response.Write("Gujarati_Items");
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Gujarati_Items.aspx");
     
           
        }


        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Chinese_Items.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Punjabi_Items.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("FastFood_Items.aspx");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("SouthIndians_Items.aspx");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
             Response.Redirect("ColdDrinks_Items.aspx");
        }

     
    }
}