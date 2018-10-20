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

public partial class modificar_actividad : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*Metodo que llena los controles con el id que se obtiene*/
        cargar_controles();
        txt_autor.Text = string.Format("{0}", Thread.CurrentPrincipal.Identity.Name);

        lbl_usuario.Text = string.Format("{0}", Thread.CurrentPrincipal.Identity.Name);
    }


    void cargar_controles()
    {
        /*obtengo el id de la url*/
        String id = Request.QueryString["id_actividad"];
        
        try
        {
            string sql = @"select * from Actividades where id_act=@id_actividad";


            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_fsa"].ConnectionString))
            {

                conn.Open();
                SqlCommand command = new SqlCommand(sql, conn);
                SqlDataReader dr;
                command.Parameters.AddWithValue("@id_actividad", id);
                SqlDataAdapter dataAdaptador = new SqlDataAdapter(command);

                dr = command.ExecuteReader();
                /*Si obtuve datos en la consulta entonces cargo los controles*/
                if (dr.Read())
                {
                    //llenado de textboxes
                    txt_titulo.Text = dr["titulo_act"].ToString();

                    txt_cuerpo.Text = dr["cuerpo_act"].ToString();
                    txt_copete.Text = dr["subtitulo_act"].ToString();
                    txt_fecha_pub.Text = dr["fecha_act"].ToString();
                    

                }

                conn.Close();

            }
        }
        catch (Exception ex)
        {
            lbl_error.Text = ex.ToString();
        }

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

                    //String cuerpo

                    String cuerpo = txt_cuerpo.Text;

                    //String copete

                    String subtitulo = txt_copete.Text;

                    //String fecha_pub

                    String fecha_pub = txt_fecha_pub.Text;

                    String fecha_act = txt_fecha_pub.Text;

                    String dia = fecha_act.Substring(8, 2);
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
                    
                    //String Nick de usuario

                    String nick = txt_autor.Text;

                    String id = Request.QueryString["id_actividad"];
                    SqlCommand cmd1 = new SqlCommand(
                        "UPDATE Actividades set titulo_act= '" + titulo + "',subtitulo_act='" + subtitulo + "',cuerpo_act='" + cuerpo + "',nombre='" + fileName + "',extension='" + extension + "', fecha_act='" + fecha_pub + "', dia_act='" + dia + "', mes_act='" + mes + "', año_act='" + año + "' where id_act='" + id + "'", con);
                    cmd1.ExecuteNonQuery();

                }
                Response.Redirect("ver_actividades.aspx");
            }
        }
        catch(Exception ex)
        {
            lbl_error.Visible = true;
            lbl_error.Text = ex.ToString();
        }

        }

    protected void salir_click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }



}

