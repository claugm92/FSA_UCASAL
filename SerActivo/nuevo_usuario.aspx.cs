using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class nuevo_usuario : System.Web.UI.Page
{
   

    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_titulo.Text = string.Format("Generar Nuevo Usuario Administrador");
        lbl_usuario.Text = string.Format("{0}", Thread.CurrentPrincipal.Identity.Name);
    }

    protected void salir_click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }

    protected void Nuevo_Usuario(object sender, EventArgs e)
    {
        if (tb_contraseña.Text.Equals( tb_conf_contraseña.Text))
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["conexion_fsa"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    // String nombre

                    String nombre = tb_nombre.Text;

                    //String apellido

                    String apellido = tb_apellido.Text;

                    //String nick

                    String nick = tb_nick.Text;

                    //String contraseña

                    String contrasñea = tb_contraseña.Text;

                    //String conf_contraseña

                    String conf_contraseña = tb_conf_contraseña.Text;

                    //String dni    

                    String dni = tb_dni.Text;


                    //Encriptacion de contraseña
                    string password_enc = Helper.EncodePassword(contrasñea);

                    SqlCommand cmd1 = new SqlCommand(
                        "INSERT INTO Administradores(nick_admin,psw_admin,nombre_admin,apellido_admin,dni_admin) VALUES('" + nick + "','" + password_enc + "','" + nombre + "','" + apellido + "','" + dni + "')", con);

                    cmd1.ExecuteNonQuery();
                }
             Response.Redirect("home.aspx");
            }

            catch (Exception ex)
            {
                lbl_error.Visible = true;
                lbl_error.Text = ex.ToString();
                //Response.Redirect("error.aspx");
            }
        }
        else
        {
            lbl_error.Visible = true;
            lbl_error.Text = "Las contraseñas ingresadas deben coincidir";
            tb_contraseña.Focus();
        }
    }



    internal class Helper
    {
        public static string EncodePassword(string originalPassword)
        {
            SHA1 sha1 = new SHA1CryptoServiceProvider();

            byte[] inputBytes = (new UnicodeEncoding()).GetBytes(originalPassword);
            byte[] hash = sha1.ComputeHash(inputBytes);

            return Convert.ToBase64String(hash);
        }
    }


}