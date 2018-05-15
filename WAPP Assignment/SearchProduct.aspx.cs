using System;
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
    public partial class SearchProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtProdName.Text = string.Empty;
            lblProdName.Text = string.Empty;
            lblProdDesc.Text = string.Empty;
            lblProdPrice.Text = string.Empty;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from products where productName Like '%" + txtProdName.Text + "%'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                Panel1.Visible = false;

                Response.Write("<script type=\"text/javascript\">alert('Record not found.');</script>");
            }
            else
            {
                Panel1.Visible = true;
                string id = dt.Rows[0][0].ToString();
                lblProdName.Text = dt.Rows[0][1].ToString();
                lblProdDesc.Text = dt.Rows[0][2].ToString();
                lblProdPrice.Text = dt.Rows[0][3].ToString();
                imgProd.ImageUrl = "ImageHandler.ashx?ID=" + id;
            }
            con.Close();
        }
    }
}