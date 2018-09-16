using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descripción breve de WebServiceNoticias
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
// [System.Web.Script.Services.ScriptService]
public class WebServiceNoticias : System.Web.Services.WebService
{

    public WebServiceNoticias()
    {

        //Elimine la marca de comentario de la línea siguiente si utiliza los componentes diseñados 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataSet getNoticias()
    {
        string cs = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;

        DataSet DS = new DataSet();
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("SELECT [Name],[Extension],[titulo],[cuerpo] FROM tblImages", con);
            con.Open();
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            {
                sda.Fill(DS);
            }

        }
        return DS;
    }
}
