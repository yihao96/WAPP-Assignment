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
    public partial class EventList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uType"] == null || !Session["uType"].Equals("Admin") || !Session["uType"].Equals("Member"))
            {
                Register1.Enabled = false;
                Register2.Enabled = false;
            }
        }

        protected void Register1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                con.Open();

                string query = "insert into RegisterEvent (eventname, userName) values (@ename,@name) ";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@ename", lblEvent1.Text);;
                cmd.Parameters.AddWithValue("@name", Session["uName"].ToString());
                cmd.ExecuteNonQuery();
                Response.Write("<script type=\"text/javascript\">alert('Registration Successful.');</script>");

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }

        protected void Register2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                con.Open();

                string query = "insert into RegisterEvent (eventname, userName) values (@ename,@name) ";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@ename", lblEvent2.Text); ;
                cmd.Parameters.AddWithValue("@name", Session["uName"].ToString());
                cmd.ExecuteNonQuery();
                Response.Write("<script type=\"text/javascript\">alert('Registration Successful.');</script>");

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}