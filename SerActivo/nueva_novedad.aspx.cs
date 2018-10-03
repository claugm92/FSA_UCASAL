using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class nueva_novedad : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        login_load();
        fr_text.Text= DateTime.Now.ToString("yyyy.MM.dd");
        txt_autor.Text = string.Format("{0}", Thread.CurrentPrincipal.Identity.Name);
    }
    private void login_load()
    {
        /*Si el usuario no esta identificado, se redirije a la pagina de logueo*/
        if (Thread.CurrentPrincipal.Identity.Name.Equals("?") || Thread.CurrentPrincipal.Identity.Name.Equals(null))
        {
            
            FormsAuthentication.RedirectToLoginPage();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("SerActivo.aspx");
    }


    protected void btnUploadClick(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["conexion_fsa"].ConnectionString;
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

                String titulo = txt_titulo.Text;

                //String cuerpa

                String cuerpo = txt_cuerpo.Text;

                //String copete

                String copete = txt_copete.Text;

                //String fecha_registro

                String fecha_reg = fr_text.Text;

                //String fecha_pub

                String fecha_pub = TextBox1.Text;

                //String categoria

                String cat = drop_cat.SelectedValue.ToString();

                //String Nick de usuario

                String nick = txt_autor.Text;

                SqlCommand cmd1 = new SqlCommand(
                    "INSERT INTO Novedades(categoria,nick_admin,titulo_nov,copete_nov,nombre,extension,cuerpo_nov,fecha_nov) VALUES('" + cat + "','" + nick + "','" + titulo + "','" + copete + "','" + fileName + "','" + extension + "','" + cuerpo + "','" + fecha_pub + "')", con);
                //" VALUES ('" + fileName + "','" + extension + "','" + titulo + "','" + cuerpo + "','" + copete + "','" + fecha_reg + "','" + fecha_pub + "','" + cat + "')", con);
                cmd1.ExecuteNonQuery();

            }
            //Label1.Text = "Saved successfully.";
            Response.Redirect("ver_noticias.aspx");
        }
    }
}