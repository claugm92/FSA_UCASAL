using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


public partial class form_nva_not : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        login_load();
        Label1.Text = string.Format("Bienvenido al Sistema: {0}", Thread.CurrentPrincipal.Identity.Name);
    }


    private void login_load()
    {
        if (Thread.CurrentPrincipal.Identity.Name.Equals("?") || Thread.CurrentPrincipal.Identity.Name.Equals(null))
        {
            Label1.Text = string.Format("DEBE AUTENTICARSE...");
            FormsAuthentication.RedirectToLoginPage();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("SerActivo.aspx");
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