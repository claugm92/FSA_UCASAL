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

public partial class nueva_actividad : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        login_load();
        txt_fecha_act.Text = DateTime.Now.ToString("yyyy-MM-dd");
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
        /**
         * FALTA HACER EL REDIRECT A ERROR.ASPX
         **/
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

                    String subtitulo = txt_copete.Text;

                    //String fecha_registro

                    String fecha_act = TextBox1.Text;

                    String dia=fecha_act.Substring(8, 2);
                    String mes = "";
                    int mes_int;
                    Int32.TryParse(fecha_act.Substring(5, 2), out mes_int);
                    
                                    

                    switch (mes_int)
                    {
                        case 01:
                            mes = "En";
                            break;
                        case 02:
                            mes = "Feb";
                            break;
                        case 03:
                            mes = "Mar";
                            break;
                        case 04:
                            mes = "Abr";
                            break;

                        case 05:
                            mes = "May";
                            break;

                        case 06:
                            mes = "Jun";
                            break;

                        case 07:
                            mes = "Jul";
                            break;

                        case 08:
                            mes = "Ago";
                            break;

                        case 09:
                            mes = "Sep";
                            break;

                        case 10:
                            mes = "Oct";
                            break;

                        case 11:
                            mes = "Nov";
                            break;
                        case 12:
                            mes = "Dic";
                            break;
                    }



                    String año = fecha_act.Substring(0, 4);
                    //String fecha_pub

                    String fecha_creacion = txt_fecha_act.Text;


                    //String Nick de usuario

                    String nick = txt_autor.Text;

                    SqlCommand cmd1 = new SqlCommand(
                        "INSERT INTO Actividades(nick_admin,titulo_act,subtitulo_act,nombre,extension,cuerpo_act,fecha_act,dia_act,mes_act,año_act) VALUES('" + nick + "','" + titulo + "','" + subtitulo + "','" + fileName + "','" + extension + "','" + cuerpo + "','" + fecha_creacion + "','" + mes_int + "','" + mes + "','" + año + "')", con);

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