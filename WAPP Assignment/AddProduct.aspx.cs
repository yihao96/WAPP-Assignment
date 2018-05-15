using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

namespace WAPP_Assignment
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                con.Open();
                Stream fs = fuProdImage.PostedFile.InputStream;
                BinaryReader br = new BinaryReader(fs);
                byte[] content = br.ReadBytes((Int32)fs.Length);

                string query1 = "Insert into Products (productName, productDescription, productPrice, productImage) values (@pName, @pDesc, @pPrice, @pImage) ";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                cmd1.Parameters.AddWithValue("@pName", txtProdName.Text);
                cmd1.Parameters.AddWithValue("@pDesc", txtProdDesc.Text);
                cmd1.Parameters.AddWithValue("@pPrice", txtProdPrice.Text);
                cmd1.Parameters.AddWithValue("@pImage", content);
                cmd1.ExecuteNonQuery();
                lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
                lblMessage.Text = "Product Added Sucessfully";
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtProdName.Text = string.Empty;
            txtProdDesc.Text = string.Empty;
            txtProdPrice.Text = string.Empty;
            fuProdImage.Attributes.Clear();
        }
    }
}