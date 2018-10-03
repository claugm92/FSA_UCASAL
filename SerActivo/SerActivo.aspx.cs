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

}

