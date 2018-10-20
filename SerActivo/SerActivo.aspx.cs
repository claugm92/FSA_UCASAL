using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SerActivo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindImageRepeater();
            BindImageRepeater2();
            BindImageRepeater3();

        }
    }

    /*Primer repetidor, hace el select de las novedades que se muestran en carrusel*/
    private void BindImageRepeater()
    {
        string cs = ConfigurationManager.ConnectionStrings["conexion_fsa"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Novedades", con);
            con.Open();
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            {
                DataTable dt = new DataTable();
                sda.Fill(dt);
                rptrImages.DataSource = dt;
                rptrImages.DataBind();

            }

        }
    }
    /*Carga del segundo repetidor, contiene las noticias en detalle*/
    private void BindImageRepeater2()
    {
        string cs = ConfigurationManager.ConnectionStrings["conexion_fsa"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Noticias", con);
            con.Open();
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            {
                DataTable dt = new DataTable();
                sda.Fill(dt);
                Repeater2.DataSource = dt;
                Repeater2.DataBind();

            }

        }
    }

    /*Tercer repetidor, muestra las novedades que se cargan en cuadricula(grid)*/
    private void BindImageRepeater3()
    {
        string cs = ConfigurationManager.ConnectionStrings["conexion_fsa"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Actividades", con);
            con.Open();
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            {
                DataTable dt = new DataTable();
                sda.Fill(dt);
                Repeater3.DataSource = dt;
                Repeater3.DataBind();

            }

        }
    }

    protected string GetActiveClass(int ItemIndex)
    {
        if (ItemIndex == 0)
        {
            return "active";
        }
        else
        {
            return "";
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //genero la conexion
            string cs = ConfigurationManager.ConnectionStrings["conexion_fsa"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                //declaro las variables
                String nombre = tb_nombre.Text;
                String correo = tb_correo.Text;
                String asunto = tb_asunto.Text;
                String cuerpo = tb_cuerpo.Text;

                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Consultas(nom_cons, correo_cons, cuerpo_cons, asunto_cons) values('" + nombre + "', '" + correo + "', '" + cuerpo + "', '"+ asunto + "')", con);
                //ejecuto consulta
                cmd.ExecuteNonQuery();
                //pongo en blanco los controles
                 tb_nombre.Text="";
                 tb_correo.Text="";
                 tb_asunto.Text="";
                 tb_cuerpo.Text="";
                con.Close();

            }
        }
        catch(Exception ex)
        {
            //tb_nombre.Text = ex.ToString();
            Response.Redirect("Error.aspx");
        }    
    }
}

