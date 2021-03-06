﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_titulo.Text = string.Format("Bienvenido al Sistema");
        lbl_usuario.Text = string.Format("{0}", Thread.CurrentPrincipal.Identity.Name);
        cargar_controles();
    }

    /*
     * metodo de deslogueo
     * 
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }
    */
    private void cargar_controles()
    {
        try
        {

            string sql1 = @"SELECT COUNT(*)
                      FROM Noticias";
            string sql2 = @"SELECT COUNT(*)
                      FROM Actividades";
            string sql3 = @"SELECT COUNT(*)
                      FROM Novedades";
            string sql4 = @"SELECT COUNT(*)
                      FROM Consultas";


            string cs = ConfigurationManager.ConnectionStrings["conexion_fsa"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(cs))
            {
                conn.Open();

                SqlCommand command1 = new SqlCommand(sql1, conn);
                SqlCommand command2 = new SqlCommand(sql2, conn);
                SqlCommand command3 = new SqlCommand(sql3, conn);
                SqlCommand command4 = new SqlCommand(sql4, conn);

                lbl_cant_not.Text = Convert.ToString(command1.ExecuteScalar());
                lbl_cant_act.Text = Convert.ToString(command2.ExecuteScalar());
                lbl_cant_nov.Text = Convert.ToString(command3.ExecuteScalar());
                lbl_cant_cons.Text = Convert.ToString(command4.ExecuteScalar());

            }
        }
        catch (Exception ex) {
            /*Falta capturar la excepcion, decidir si se muestra o no*/
            Response.Redirect("error.aspx");
        }



    }

    protected void salir_click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }

}