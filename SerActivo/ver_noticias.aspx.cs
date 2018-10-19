using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ver_noticias : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_eliminar.Text = "";
        lbl_eliminar.Visible = false;
        lbl_usuario.Text = string.Format("{0}", Thread.CurrentPrincipal.Identity.Name);
    }

    protected void bt_modificar_Click(object sender, EventArgs e)
    {
        GridViewRow row;
        try
        {
            row = GridView1.SelectedRow;
            //Completa la url con el id del grid que esta en la columna 0
            Response.Redirect("modificar_noticia.aspx?id_noticia=" + GridView1.SelectedRow.Cells[0].Text);

        }
        catch (Exception ex)
        {
            lbl_eliminar.Text = "Debe seleccionar una fila antes de continuar";
            lbl_eliminar.Visible = true;
        }
    }

    protected void bt_eliminar_Click(object sender, EventArgs e)
    {
        try
        {
            string sql = @"delete from Noticias where id_not=@id_noticia";
            

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_fsa"].ConnectionString))
            {

                conn.Open();
                SqlCommand eliminar_ot = new SqlCommand(sql, conn);
                eliminar_ot.Parameters.AddWithValue("@id_noticia", GridView1.SelectedRow.Cells[0].Text);
                eliminar_ot.ExecuteNonQuery();
                
                conn.Close();
                GridView1.DataBind();
                
            }
            Response.Write("<script>alert('Noticia eliminada correctamente');</script>");
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            lbl_eliminar.Text = "Debe seleccionar una fila antes de continuar";
            lbl_eliminar.Visible = true;
        }
        
    }

    protected void salir_click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }


}