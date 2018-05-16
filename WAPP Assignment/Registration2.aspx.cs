﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace WAPP_Assignment
{
    public partial class Registration2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUsername.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            rdbGender.SelectedIndex = 0;
            ddlCountry.SelectedIndex = 0;
            ddlUserType.SelectedIndex = 0;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                con.Open();
                string query = "select count(*) from Users where email ='" + txtEmail.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (check > 0)
                {
                    Response.Write("<script type=\"text/javascript\">alert('Email already exist.');</script>");
                }
                else
                {
                    string query1 = "insert into Users (username, password, name, email, gender, country, usertype) values (@uname,@pword,@name,@email,@gender,@country,@usertype) ";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@uname", txtUsername.Text);
                    cmd1.Parameters.AddWithValue("@pword", txtPassword.Text);
                    cmd1.Parameters.AddWithValue("name", txtName.Text);
                    cmd1.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd1.Parameters.AddWithValue("@gender", rdbGender.SelectedItem.ToString());
                    cmd1.Parameters.AddWithValue("@country", ddlCountry.SelectedItem.ToString());
                    cmd1.Parameters.AddWithValue("@usertype", ddlUserType.SelectedItem.ToString());
                    cmd1.ExecuteNonQuery();
                    Response.Write("<script type=\"text/javascript\">alert('Registration Successful.');</script>");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}