﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WAPP_Assignment
{
    public partial class Search : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public static int id = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uType"] == null || !Session["uType"].Equals("Admin"))
            {
                Response.Redirect("Login.aspx");
            }
            Panel1.Visible = false;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

            SqlDataAdapter da = new SqlDataAdapter("select * from Users where username='" + txtName.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count == 0)
            {
                Label1.Text = "No record";
            }
            else
            {
                Label1.Text = "";
                Panel1.Visible = true;
                id = Convert.ToInt16(dt.Rows[0][0]);
                txtUsername.Text = dt.Rows[0][1].ToString();
                txtPassword.Text = dt.Rows[0][2].ToString();
                txtEmail.Text = dt.Rows[0][3].ToString();
                rdbGender.Text = dt.Rows[0][4].ToString();
                ddlCountry.Text = dt.Rows[0][5].ToString();
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "update users set username ='" + txtUsername.Text + "',password = '" + txtPassword.Text + "', email = '" + txtEmail.Text + "', gender = '" + rdbGender.SelectedItem + "', country = '" + ddlCountry.SelectedItem + "' where id = '" + id + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "delete from Users where id = '" + id + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}