using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class noticias : System.Web.UI.Page
{
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                if (img01.HasFile)
                {
                    // Getting the image path.
                    string SavePath = Server.MapPath("~/Images/");

                    // Getting image name.
                    string fileName = Path.GetFileNameWithoutExtension(img01.PostedFile.FileName);

                    // Getting image extension
                    string extension = Path.GetExtension(img01.PostedFile.FileName);

                    //Saving images into folder.
                    img01.SaveAs(SavePath + fileName + extension);

                    // String titulo

                    String titulo = tb_titulo.Text;

                    //String cuerpa

                    String cuerpa = tb_cuerpo.Text;

                    SqlCommand cmd1 = new SqlCommand("INSERT INTO tblImages VALUES ('" + fileName + "','" + extension + "','" + titulo + "','" + cuerpa + "')", con);
                    cmd1.ExecuteNonQuery();

                }
                lblMessage.Text = "Saved successfully.";
            Response.Redirect("fsa_noticias.aspx");
            }
        }
    
}