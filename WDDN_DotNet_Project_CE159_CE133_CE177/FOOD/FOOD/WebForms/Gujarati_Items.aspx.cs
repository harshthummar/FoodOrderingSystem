using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FOOD.WebForms
{
    public partial class Gujrati_Items : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void add1_Click(object sender, EventArgs e)
        {
            int a1= Convert.ToInt32(Label1.Text);
            Label1.Text = (a1+1).ToString();
            
        }
        protected void sub1_Click1(object sender, EventArgs e)
        {
            int b1 = Convert.ToInt32(Label1.Text);
            if (b1 >= 1)
            {
                Label1.Text = (b1 - 1).ToString();

            }
        }
        

        protected void add2_Click(object sender, EventArgs e)
        {
            int a2 = Convert.ToInt32(Label2.Text);
            Label2.Text = (a2 + 1).ToString();
        }
        protected void sub2_Click(object sender, EventArgs e)
        {
            int b2 = Convert.ToInt32(Label2.Text);
            if (b2 >= 1)
            {
                Label2.Text = (b2 - 1).ToString();
            }
        }

        protected void add3_Click(object sender, EventArgs e)
        {
            int a3 = Convert.ToInt32(Label3.Text);
            Label3.Text = (a3 + 1).ToString();
        }

        protected void sub3_Click(object sender, EventArgs e)
        {
            int b3 = Convert.ToInt32(Label3.Text);
            if (b3 >= 1)
            {
                Label3.Text = (b3 - 1).ToString();
            }
        }

        protected void add4_Click(object sender, EventArgs e)
        {
            int a4 = Convert.ToInt32(Label4.Text);
            Label4.Text = (a4 + 1).ToString();
        }

        protected void sub4_Click(object sender, EventArgs e)
        {
            int b4 = Convert.ToInt32(Label4.Text);
            if (b4 >= 1)
            {
                Label4.Text = (b4 - 1).ToString();
            }
        }

        protected void mycard1_Click(object sender, EventArgs e)
        {
            int c1 = Convert.ToInt32(Label1.Text);
            int d1 = Convert.ToInt32(price1.Text);
            String e1 = (c1 * d1).ToString();
            if (c1 >= 1)
            {
                con.Open();
                string ins = "Insert into[MyCard](Name,Price,Quantity,Email) values('" + gujaratidish.Text + "','"+e1+"','" + Label1.Text + "','"+Session["email"]+"')";
                SqlCommand com = new SqlCommand(ins, con);

                com.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('your order is add');</script>");
            }
            else
            {
                Response.Write("<script>alert('please select the quantity');</script>");
            }


        }

        protected void mycard2_Click(object sender, EventArgs e)
        {
            int c2 = Convert.ToInt32(Label2.Text);
            int d2 = Convert.ToInt32(price2.Text);
            String e2 = (c2 * d2).ToString();
            if (c2 >= 1)
            {
                con.Open();
                string ins = "Insert into[MyCard](Name,Price,Quantity,Email) values('" + khamandhokla.Text + "','"+ e2+ "','" + Label2.Text + "','" + Session["email"] + "')";
                SqlCommand com = new SqlCommand(ins, con);

                com.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('your order is add');</script>");
            }
            else
            {
                Response.Write("<script>alert('please select the quantity');</script>");
            }
        }

        protected void mycard3_Click(object sender, EventArgs e)
        {
            int c3 = Convert.ToInt32(Label3.Text);
            int d3 = Convert.ToInt32(price3.Text);
            String e3 = (c3 * d3).ToString();
            if (c3 >= 1)
            {
                con.Open();
                string ins = "Insert into[MyCard](Name,Price,Quantity,Email) values('" + jalebifafada.Text + "','" + e3 + "','" + Label3.Text + "','" + Session["email"] + "')";
                SqlCommand com = new SqlCommand(ins, con);

                com.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('your order is add');</script>");
            }
            else
            {
                Response.Write("<script>alert('please select the quantity');</script>");
            }
        }

        protected void mycard4_Click(object sender, EventArgs e)
        {
            int c4 = Convert.ToInt32(Label4.Text);
            int d4 = Convert.ToInt32(price4.Text);
            String e4 = (c4 * d4).ToString();
            if (c4 >= 1)
            {
                con.Open();
                string ins = "Insert into[MyCard](Name,Price,Quantity,Email) values('" + bhajiya.Text + "','" + e4+ "','" + Label4.Text + "','" + Session["email"] + "')";
                SqlCommand com = new SqlCommand(ins, con);

                com.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('your order is add');</script>");
            }
            else
            {
                Response.Write("<script>alert('please select the quantity');</script>");
            }
        }

        protected void update1_Click(object sender, EventArgs e)
        {
            Label1.Text = 0.ToString();
            con.Open();
            string delete="DELETE FROM MyCard WHERE Name = 'Gujarati Dish'";
            SqlCommand com = new SqlCommand(delete, con);
            com.ExecuteNonQuery();
            con.Close();
        }

        protected void update2_Click(object sender, EventArgs e)
        {
            Label2.Text = 0.ToString();
            con.Open();
            string delete = "DELETE FROM MyCard WHERE Name = 'Khaman Dhokla'";
            SqlCommand com = new SqlCommand(delete, con);
            com.ExecuteNonQuery();
            con.Close();
        }

        protected void update3_Click(object sender, EventArgs e)
        {
            Label3.Text = 0.ToString();
            con.Open();
            string delete = "DELETE FROM MyCard WHERE Name = 'Jalebi Fafada'";
            SqlCommand com = new SqlCommand(delete, con);
            com.ExecuteNonQuery();
            con.Close();
        }

        protected void update4_Click(object sender, EventArgs e)
        {
            Label4.Text = 0.ToString();
            con.Open();
            string delete = "DELETE FROM MyCard WHERE Name = 'Bhajiya'";
            SqlCommand com = new SqlCommand(delete, con);
            com.ExecuteNonQuery();
            con.Close();
        }

       
    }
}