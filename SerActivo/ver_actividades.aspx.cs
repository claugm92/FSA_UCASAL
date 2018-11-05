using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ver_actividades : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void bt_modificar_Click(object sender, EventArgs e)
    {
        GridViewRow row;
        try
        {
            row = GridView1.SelectedRow;
            //Completa la url con el id del grid que esta en la columna 0
            Response.Redirect("modificar_actividad.aspx?id_actividad=" + GridView1.SelectedRow.Cells[0].Text);

        }
        catch
        {
            Label1.Text = "Debe seleccionar una fila antes de continuar";
            Label1.Visible = true;
        }
    }

    protected void bt_eliminar_Click(object sender, EventArgs e)
    {
        try
        {
            string sql = @"delete from Novedades where id_nov=@id_nov";

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_fsa"].ConnectionString))
            {
                conn.Open();
                SqlCommand eliminar_act = new SqlCommand(sql, conn);
                eliminar_act.Parameters.AddWithValue("@id_nov", GridView1.SelectedRow.Cells[0].Text);
                eliminar_act.ExecuteNonQuery();
                conn.Close();
                GridView1.DataBind();
            }

        }
        catch(Exception ex)
        {
            Label1.Text = ex.ToString();
            //Label1.Text = "Debe seleccionar una fila para eliminar!";
            Label1.Visible = true;
        }

    }

    protected void salir_click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }


}