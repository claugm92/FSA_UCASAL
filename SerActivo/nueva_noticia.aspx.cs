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

public partial class nueva_noticia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        login_load();
        fr_text.Text= DateTime.Now.ToString("yyyy.MM.dd");
        txt_autor.Text = string.Format("{0}", Thread.CurrentPrincipal.Identity.Name);
        lbl_usuario.Text = string.Format("{0}", Thread.CurrentPrincipal.Identity.Name);
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
        try
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

                    //String fecha_pub

                    String fecha_pub = TextBox1.Text;

                    //Separo el dia, mes y año del textbox para almacenarlo en la BD
                    String dia = fecha_pub.Substring(8, 2);
                    String mes = fecha_pub.Substring(5, 2);
                    String año = fecha_pub.Substring(0, 4);



                    //String categoria

                    String cat = drop_cat.SelectedValue.ToString();

                    //String Nick de usuario

                    String nick = txt_autor.Text;

                    SqlCommand cmd1 = new SqlCommand(
                        "INSERT INTO Noticias(categoria,nick_admin,titulo_not,copete_not,nombre,extension,cuerpo_not,fecha_not,dia_not,mes_not,año_not) VALUES('" + cat + "','" + nick + "','" + titulo + "','" + copete + "','" + fileName + "','" + extension + "','" + cuerpo + "','" + fecha_pub + "','" + dia + "','" + mes + "','" + año + "')", con);
                    //" VALUES ('" + fileName + "','" + extension + "','" + titulo + "','" + cuerpo + "','" + copete + "','" + fecha_reg + "','" + fecha_pub + "','" + cat + "')", con);
                    cmd1.ExecuteNonQuery();

                }
                //Label1.Text = "Saved successfully.";
                Response.Redirect("ver_noticias.aspx");
            }
        }
        catch(Exception ex)
        {
            lbl_error.Visible = true;
            lbl_error.Text = ex.ToString();
            //Response.Redirect("error.aspx");
        }

    }

    protected void salir_click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }


}