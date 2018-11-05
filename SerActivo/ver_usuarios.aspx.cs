using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ver_usuarios : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = string.Format("Bienvenido al Sistema: {0}", Thread.CurrentPrincipal.Identity.Name);
        cargar_controles();

    }


    public void cargar_controles()
    {

        tb_contraseña.Text = "****************";
        tabla_contraseña.Visible = false;
        try
        {
            string sql = @"select * from Administradores where nick_admin=@nick";


            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_fsa"].ConnectionString))
            {

                conn.Open();
                SqlCommand command = new SqlCommand(sql, conn);
                SqlDataReader dr;
                command.Parameters.AddWithValue("@nick", Thread.CurrentPrincipal.Identity.Name.ToString());
                SqlDataAdapter dataAdaptador = new SqlDataAdapter(command);

                dr = command.ExecuteReader();
                if (dr.Read())
                {
                    //llenado de textboxes

                    tb_nombre.Text = dr["nombre_admin"].ToString();
                    tb_apellido.Text = dr["apellido_admin"].ToString();
                    //tb_fecha_alta.Text = dr["fecha_alta"].ToString();
                    tb_dni.Text = dr["dni_admin"].ToString();
                    tb_nick.Text = dr["nick_admin"].ToString();
                    conn.Close();
                }
            }
        }
        catch (Exception ex)
        {
            lbl_error.Text = ex.ToString();
        }
    }
    protected void bt_salir_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }


    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string usuario = tb_nick.Text;
        string password = Helper.EncodePassword(tb_contraseña.Text);


        if (Autenticar(usuario, password))
        {

            //MODIFICACION DE CONTRASEÑA
            try
            {

                string sql = @"update Administradores set nombre_admin=@nombre,apellido_admin=@apellido,nick_admin=@nick where dni like @dni";

                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_fsa"].ConnectionString))
                {
                    conn.Open();
                    SqlCommand update = new SqlCommand(sql, conn);
                    update.Parameters.AddWithValue("@nombre", tb_nombre.Text);
                    update.Parameters.AddWithValue("@apellido", tb_apellido.Text);
                    update.Parameters.AddWithValue("@nick", tb_nick.Text);
                    update.Parameters.AddWithValue("@dni", tb_dni.Text);
                    update.ExecuteNonQuery();
                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                lbl_error.Text = ex.ToString();
            }



        }
        else
        {
            lbl_error.Text = "contraseña INCORRECTA";
            lbl_error.Visible = true;
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



    public static bool Autenticar(string usuario, string password)
    {
        string sql = @"SELECT COUNT(*)
                      FROM Administradores
                      WHERE nick_admin = @nombre AND psw_admin = @password";


        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_fsa"].ConnectionString))
        {
            conn.Open();

            SqlCommand command = new SqlCommand(sql, conn);
            command.Parameters.AddWithValue("@nombre", usuario);
            command.Parameters.AddWithValue("@password", password);

            int count = Convert.ToInt32(command.ExecuteScalar());

            if (count == 0)
                return false;
            else
                conn.Close();
            return true;

        }

    }



    protected void bt_actualizar_contraseña0_Click(object sender, EventArgs e)
    {
        tabla_contraseña.Visible = true;
    }

    protected void bt_actualizar_contraseña_Click(object sender, EventArgs e)
    {
        string usuario = tb_nick.Text;
        string password = Helper.EncodePassword(tb_contraseña0.Text);


        if (Autenticar(usuario, password))
        {
            if (tb_contraseña_nueva.Text == tb_contraseña_nueva_re.Text)
            {
                //MODIFICACION DE CONTRASEÑA
                try
                {
                    string sql = @"update Administradores set psw_admin=@contraseña where dni_admin like @dni";

                    using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_fsa"].ConnectionString))
                    {
                        conn.Open();
                        SqlCommand command4 = new SqlCommand(sql, conn);
                        command4.Parameters.AddWithValue("@contraseña", Helper.EncodePassword(tb_contraseña_nueva_re.Text));
                        command4.Parameters.AddWithValue("@dni", tb_dni.Text);
                        command4.ExecuteNonQuery();
                        conn.Close();
                    }
                    FormsAuthentication.SignOut();
                    FormsAuthentication.RedirectToLoginPage();
                }
                catch (Exception ex)
                {
                    lbl_error.Text = ex.ToString();
                }
            }
        }
        else
        {
            lbl_error.Text = "contraseña INCORRECTA";
            lbl_error.Visible = true;
        }
    }


    protected void salir_click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }




    protected void bt_actualizar(object sender, EventArgs e)
    {

    }

    protected void bt_actualizar_contraseña1_Click(object sender, EventArgs e)
    {
        tb_nombre.Enabled = true;
        tb_nombre.Focus();

    }

    protected void nuevo_usuario(object sender, EventArgs e)
    {
        Response.Redirect("Nuevo Usuario");
    }
}