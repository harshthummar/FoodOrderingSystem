using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace FOOD.WebForms
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
      
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register1_Click(object sender, EventArgs e)
        {
            
            con.Open();
            string check = "Select count(*) from [Register] where Email = '" + TextBox2.Text + "'";
            SqlCommand com1 = new SqlCommand(check, con);
            int temp = Convert.ToInt32(com1.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("You have already Register this Email_id, Please Login Now !");
                Response.Redirect("Login.aspx");
            }
            else
            {
                string ins = "Insert into[Register](UserName,Email,Password,RePassword) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
                SqlCommand com2 = new SqlCommand(ins, con);

                com2.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
              
            }
            con.Close();

        }
    }
}