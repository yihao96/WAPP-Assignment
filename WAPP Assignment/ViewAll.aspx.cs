using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace WAPP_Assignment
{
    public partial class ViewAll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uType"] == null || !Session["uType"].Equals("Admin"))
                Response.Redirect("Login.aspx");
        }

        public string fetchData()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from Users";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                string username = reader.GetString(1);
                string name = reader.GetString(3);
                string email = reader.GetString(4);
                string gender = reader.GetString(5);
                string country = reader.GetString(6);
                string usertype = reader.GetString(7);
                htmlStr += "<tr><td>" + username + "</td><td>" + name + "</td><td>" + email + "</td><td>" + gender + "</td><td>" + country + "</td><td>" + usertype + "</td></tr>";
            }
            con.Close();
            return htmlStr;
        }
    }
}