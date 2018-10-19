using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ver_consultas_le : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        confirmar_elim.Visible = false;
        lbl_usuario.Text = string.Format("{0}", Thread.CurrentPrincipal.Identity.Name);
    }


    protected void bt_modificar_Click(object sender, EventArgs e)
    {

        try
        {
            string connectionString = ConfigurationManager.ConnectionStrings["conexion_fsa"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                String id = GridView1.SelectedRow.Cells[0].Text;
                    SqlCommand cmd1 = new SqlCommand(
                        "UPDATE Consultas set leido_cons=0 where id_cons='" + id + "'", con);
                    cmd1.ExecuteNonQuery();
                GridView1.DataBind();
            }
            
        }
        catch (Exception ex)
        {
            lbl_error.Text = "Debe seleccionar una fila para continuar";
            lbl_error.Visible = true;
        }
    }

    protected void bt_eliminar_Click(object sender, EventArgs e)
    {
            try
            {
                string sql = @"delete from Consultas where id_cons=@id_cons";
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion_fsa"].ConnectionString))
                {

                    conn.Open();
                    SqlCommand eliminar_act = new SqlCommand(sql, conn);
                    eliminar_act.Parameters.AddWithValue("@id_cons", GridView1.SelectedRow.Cells[0].Text);
                    eliminar_act.ExecuteNonQuery();

                    conn.Close();
                    GridView1.DataBind();

                }
                

            }
            catch (Exception ex)
            {
            lbl_error.Text = "Debe seleccionar una fila para aliminar!";
            lbl_error.Visible = true;
            }
    }
    

    protected void bt_can_elim_Click(object sender, EventArgs e)
    {
        confirmar_elim.Visible = false;
        GridView1.Focus();
    }

    protected void bt_elim_conf_Click(object sender, EventArgs e)
    {
        GridViewRow row;
        row = GridView1.SelectedRow;
        if (row==null)
        {
            lbl_error.Text = "Debe seleccionar una fila antes de eliminar";
            lbl_error.Visible = true;
        }
        else
        {
            lbl_confirmar_elim.Text = "¿Esta seguro que desea eliminar la Consulta seleccionada?";
            confirmar_elim.Visible = true;
            bt_canc_elmin.Focus();
        }

    }

    protected void salir_click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }


}