using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace FOOD.WebForms
{
    public partial class MyOrder : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            totalprice.Text = "";
            if(!IsPostBack)
            {
                GVbind();
            }

           

        }
        
        protected void GVbind()
        {
            con.Open();
            string check = "select Id,Name,Price,Quantity from MyCard where Email='"+Session["email"]+"'";
            string price = "SELECT Price FROM MyCard where Email='" + Session["email"] + "'";
            SqlCommand cmd = new SqlCommand(check, con);
            SqlCommand cmd1 = new SqlCommand(price, con);
            SqlDataReader dr = cmd1.ExecuteReader();
          
            int sum = 340;
            while(dr.Read())
            {
                Console.WriteLine(dr["Price"].ToString());
               // sum = sum + Convert.ToInt32(dr["Price"].ToString());
            }
         
            dr.Close();
            totalprice.Text = "Total Price:"+sum.ToString();
            dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
 
                con.Close();

            }
            else
            {
                Response.Write("Your Order is 0");
                con.Close();
            }
           

        }

        protected void continueorder_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            using (SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True"))
            {
                con.Open();
                string delete = "DELETE FROM MyCard WHERE Id='" + id + "' ";
                SqlCommand cmd = new SqlCommand(delete, con);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script language=javascript>alert('your order is deleted')</script>");
                    GridView1.EditIndex = -1;
                    GVbind();
                }
                con.Close();
            }
           
        }
        
       
    }
}