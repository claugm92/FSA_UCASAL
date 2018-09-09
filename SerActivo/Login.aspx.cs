using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    


    protected void Button1_Click1(object sender, EventArgs e)
    {
        string usuario = Request.Form["tb_usuario"];
        string password = Helper.EncodePassword(Request.Form["tb_password"]);
        
        
        if (Autenticar(usuario, password))
        {

            FormsAuthentication.RedirectFromLoginPage(usuario, chk_remember.Checked);

        }
        else
        {
            lbl_error.Text = "Nombre de usuario o contraseña INVALIDOS";
            lbl_error.Visible = true;
        }


    }


    /*Clase interna definida para poder codificar los campos
contiene solo un metodo con parametro string que devuelve el valor convertido
*/
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
                      FROM Usuarios
                      WHERE nick = @nombre AND psw = @password";

        
        using (SqlConnection conn = new SqlConnection("Data Source=CLAU-NOTEBOOK\\MYSQLSERVER;Initial Catalog=itel;Integrated Security=True"))
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
}