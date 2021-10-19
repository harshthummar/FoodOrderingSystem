using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace FOOD.WebForms
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string check="Select count(*) from [Register] where Email = '"+TextBox1.Text+"'and Password = '"+TextBox2.Text+"'";
            SqlCommand com = new SqlCommand(check,con);
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if(temp==1)
            {
                Session["email"] = TextBox1.Text;
                Response.Redirect("Menu.aspx");
            }
            else
            {
                Label4.ForeColor = System.Drawing.Color.Red;
                Label4.Text = "Your Email or Password is Invalid";
            }

        }
    }
}