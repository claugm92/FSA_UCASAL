using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class modificar_noticia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*Metodo que llena los controles con el id que se obtiene*/
        cargar_controles();
        txt_autor.Text = string.Format("{0}", Thread.CurrentPrincipal.Identity.Name);
    }


    void cargar_controles()
    {
        /*obtengo el id de la url*/
        String id = Request.QueryString["id_noticia"];
        
        try
        {
            string sql = @"select * from Noticias where id_not=@id_noticia";


            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_fsa"].ConnectionString))
            {

                conn.Open();
                SqlCommand command = new SqlCommand(sql, conn);
                SqlDataReader dr;
                command.Parameters.AddWithValue("@id_noticia", id);
                SqlDataAdapter dataAdaptador = new SqlDataAdapter(command);

                dr = command.ExecuteReader();
                /*Si obtuve datos en la consulta entonces cargo los controles*/
                if (dr.Read())
                {
                    //llenado de textboxes
                    txt_titulo.Text = dr["titulo_not"].ToString();

                    txt_cuerpo.Text = dr["cuerpo_not"].ToString();
                    txt_copete.Text = dr["copete_not"].ToString();
                    txt_fecha_pub.Text = dr["fecha_not"].ToString();

                    //llenado dropdownlist
                    foreach (ListItem item in drop_cat.Items)
                    {
                        if (item.Value == dr["categoria"].ToString())
                        {
                            item.Selected = true;
                            break;

                        }
                    }

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

                    String copete = txt_copete.Text;

                    //String fecha_registro

                    String fecha_reg = fr_text.Text;

                    //String fecha_pub

                    String fecha_pub = txt_fecha_pub.Text;

                    //String categoria

                    String cat = drop_cat.SelectedValue.ToString();

                    //String Nick de usuario

                    String nick = txt_autor.Text;

                    String id = Request.QueryString["id_noticia"];
                    SqlCommand cmd1 = new SqlCommand(
                        "UPDATE Noticias set categoria='" + cat + "',nick_admin= '" + nick + "',titulo_not= '" + titulo + "',copete_not='" + copete + "',nombre='" + fileName + "',extension='" + extension + "',cuerpo_not='" + cuerpo + "', fecha_not='" + fecha_pub + "' where id_not='" + id + "'", con);
                    cmd1.ExecuteNonQuery();

                }
            }
        }
        catch (Exception ex)
        {

        }

        }
    }

