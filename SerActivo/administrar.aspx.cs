using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.UI;


public partial class noticias_administrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        login_load();
        Label1.Text = string.Format("Bienvenido al Sistema: {0}", Thread.CurrentPrincipal.Identity.Name);
    }


    private void login_load()
    {
        if (Thread.CurrentPrincipal.Identity.Name.Equals("?") || Thread.CurrentPrincipal.Identity.Name.Equals(null))
        {
            Label1.Text = string.Format("DEBE AUTENTICARSE...");
            FormsAuthentication.RedirectToLoginPage();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("SerActivo.aspx");
    }
}