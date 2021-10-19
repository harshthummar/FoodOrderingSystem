using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace FOOD.WebForms
{
    public partial class Chinese_Items : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add1_Click(object sender, EventArgs e)
        {
            int a1 = Convert.ToInt32(Label1.Text);
            Label1.Text = (a1 + 1).ToString();

        }

        protected void sub1_Click(object sender, EventArgs e)
        {
            int b1 = Convert.ToInt32(Label1.Text);
            if (b1 >= 1)
            {
                Label1.Text = (b1 - 1).ToString();

            }
        }

        protected void add2_Click1(object sender, EventArgs e)
        {
            int a2 = Convert.ToInt32(Label2.Text);
            Label2.Text = (a2 + 1).ToString();
        }

        protected void sub2_Click1(object sender, EventArgs e)
        {
            int b2 = Convert.ToInt32(Label2.Text);
            if (b2 >= 1)
            {
                Label2.Text = (b2 - 1).ToString();
            }
        }

        protected void add3_Click1(object sender, EventArgs e)
        {
            int a3 = Convert.ToInt32(Label3.Text);
            Label3.Text = (a3 + 1).ToString();
        }

        protected void sub3_Click1(object sender, EventArgs e)
        {
            int b3 = Convert.ToInt32(Label3.Text);
            if (b3 >= 1)
            {
                Label3.Text = (b3 - 1).ToString();
            }
        }

        protected void mycard1_Click1(object sender, EventArgs e)
        {
            int c1 = Convert.ToInt32(Label1.Text);
            if (c1 >= 1)
            {
                con.Open();
                string ins = "Insert into[MyCard](Name,Price,Quantity,Email) values('" + drymanchurian.Text + "','" + price1.Text + "','" + Label1.Text + "','" + Session["email"] + "')";
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

        protected void mycard2_Click1(object sender, EventArgs e)
        {
            int c2 = Convert.ToInt32(Label2.Text);
            if (c2 >= 1)
            {
                con.Open();
                string ins = "Insert into[MyCard](Name,Price,Quantity,Email) values('" + chinesebhel.Text + "','" + price2.Text + "','" + Label2.Text + "','" + Session["email"] + "')";
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

        protected void mycard3_Click1(object sender, EventArgs e)
        {
            int c3 = Convert.ToInt32(Label3.Text);
            if (c3 >= 1)
            {
                con.Open();
                string ins = "Insert into[MyCard](Name,Price,Quantity,Email) values('" + noodles.Text + "','" + price3.Text + "','" + Label3.Text + "','" + Session["email"] + "')";
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

        protected void update1_Click1(object sender, EventArgs e)
        {
            Label1.Text = 0.ToString();
            con.Open();
            string delete = "DELETE FROM MyCard WHERE Name = 'Dry Manchurian'";
            SqlCommand com = new SqlCommand(delete, con);
            com.ExecuteNonQuery();
            con.Close();
        }

        protected void update2_Click1(object sender, EventArgs e)
        {
            Label2.Text = 0.ToString();
            con.Open();
            string delete = "DELETE FROM MyCard WHERE Name = 'Chinese Bhel'";
            SqlCommand com = new SqlCommand(delete, con);
            com.ExecuteNonQuery();
            con.Close();
        }

        protected void update3_Click1(object sender, EventArgs e)
        {
            Label3.Text = 0.ToString();
            con.Open();
            string delete = "DELETE FROM MyCard WHERE Name = 'Noodles'";
            SqlCommand com = new SqlCommand(delete, con);
            com.ExecuteNonQuery();
            con.Close();
        }
    }
}