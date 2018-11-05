<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ver_usuarios.aspx.cs" Inherits="ver_usuarios" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ver Consultas Leidas</title>
     <link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'/>
    <link rel='stylesheet' href='https://bootswatch.com/flatly/bootstrap.min.css'/>
    <link href="estilos/StyleHome.css" rel="stylesheet" />
    <!--hoja que contiene el estilo de la tabla (grid)-->
    <link href="estilos/StyleSheetTabla.css" rel="stylesheet" />
    

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="home.aspx">Panel de Administracion</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="SerActivo.aspx">ir a Ser Activo</a></li>
                            <li><a href="home.aspx">
                                <asp:Label ID="lbl_usuario" runat="server" Text="Label" /></a></li>
                             <li><asp:LinkButton ID="LinkButton5" runat="server" OnClick="salir_click">Cerrar Sesión</asp:LinkButton></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        
    
        <div class="container-fluid">
            <div class="overlay"></div>

            <div class="row">
                <div class="sidebar">
                    <div class="hamburger is-closed" data-toggle="offcanvas">
                        <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
                    </div>

                    <ul class="nav nav-sidebar">

                        <li><a role="button" href="#collapse-locali" data-toggle="collapse" data-parent="#accordion">Noticias</a></li>
                        <ul class="nav sub-menu collapse" id="collapse-locali" />
                        <li><a href="ver_noticias.aspx">Ver noticias</a></li>
                        <li><a href="nueva_noticia.aspx">Nueva noticia</a></li>
                    </ul>
                    <li><a role="button" href="#collapse-shopping" data-toggle="collapse" data-parent="#accordion">Actividades</a></li>
                    <ul class="nav sub-menu collapse" id="collapse-shopping">
                        <li><a href="ver_actividades.aspx">Ver Actividades</a></li>
                        <li><a href="nueva_actividad.aspx">Nueva Actividad</a></li>
                    </ul>
                    <li><a role="button" href="#collapse-novedades" data-toggle="collapse" data-parent="#accordion">Novedades(Carrusel)</a></li>
                    <ul class="nav sub-menu collapse" id="collapse-novedades">
                        <li><a href="ver_novedades.aspx">Ver Novedades</a></li>
                        <li><a href="nueva_novedad.aspx">Nueva Novedad</a></li>
                    </ul>
                    <li><a role="button" href="#collapse-consultas" data-toggle="collapse" data-parent="#accordion">Consultas</a></li>
                    <ul class="nav sub-menu collapse" id="collapse-consultas">
                        <li><a href="ver_consultas_le.aspx">Ver Leidas</a></li>
                        <li><a href="ver_consultas_nl.aspx">Ver no Leidas</a></li>
                    </ul>
                </div>

        <div class="container-fluid main">
          
          
          <h1 class="page-header">
              <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
          
            <div>

            
<!-- Text input-->
<div id="adminPage">
            
            <div id="errorBox_halfPage"></div>
    
            <div class="row">

		        <div class="auto-style1">
			<div class="panel panel-default">
               <!-- AQUI SE COLAN LOS CONTROLES --> 
				

                <table>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label2" runat="server" Text="DATOS PERSONALES DE LA CUENTA"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Nombre</td>
                <td class="auto-style6">
                    <asp:TextBox ID="tb_nombre" runat="server" MaxLength="50" Enabled="False" Width="142px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Apellido</td>
                <td class="auto-style6">
                    <asp:TextBox ID="tb_apellido" runat="server" MaxLength="50" Enabled="False" Width="220px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">DNI</td>
                <td class="auto-style6">
                    <asp:TextBox ID="tb_dni" runat="server" MaxLength="50" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Nick</td>
                <td class="auto-style6">
                    <asp:TextBox ID="tb_nick" runat="server" MaxLength="20" Enabled="False" Width="145px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Contraseña</td>
                <td class="auto-style6">
                    <asp:TextBox ID="tb_contraseña" runat="server" MaxLength="50" TextMode="Password" Enabled="false" Text="*************" Width="211px">*************</asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="bt_actualizar_contraseña0" runat="server" Text="CAMBIAR CONTRASEÑA" OnClick="bt_actualizar_contraseña0_Click" />
                </td>
            </tr>
            
            <tr>
                <td class="auto-style7" colspan="3">
                    <asp:Label ID="lbl_error" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            
            <tr>
                <td class="text-center" colspan="3">
                    <asp:Button ID="bt_actualizar_contraseña1" runat="server" Text="NUEVO USUARIO" OnClick="nuevo_usuario" />
                </td>
            </tr>
            </table>
                <table class="cs-btn-full" id="tabla_contraseña" runat="server">
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label3" runat="server" Text="Para modificar su contraseña es necesario que ingrese la actual"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Contraseña Actual</td>
                <td class="auto-style6">
                    <asp:TextBox ID="tb_contraseña0" runat="server" MaxLength="50" TextMode="Password" Width="134px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Contraseña Nueva</td>
                <td>
                    <asp:TextBox ID="tb_contraseña_nueva" runat="server" MaxLength="50" TextMode="Password" Width="136px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Re-ingrese Nueva Contraseña</td>
                <td>
                    <asp:TextBox ID="tb_contraseña_nueva_re" runat="server" MaxLength="50" TextMode="Password" Width="136px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="3">
                    <asp:Button ID="bt_actualizar_contraseña" runat="server" Text="ACTUALIZAR" OnClick="bt_actualizar_contraseña_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="bt_cancelar_contr" runat="server" Text="CANCELAR" />
                </td>
            </tr>
        </table>

                <br />
             
			</div>
		</div>

            </div>
          </div>          
            
        </div>
        
      </div>
    </div>

<div class="modal fade" tabindex="-1" role="dialog" id="modal-aggiungi-elemento">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Aggiungi elemento</h4>
      </div>
      <div class="modal-body">
        </div>

                          


   
      </div>
      <div class="modal-footer">
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>
    </form>
    <!-- /.modal -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.bundle.min.js'></script>
    <script src="js/ScripHome.js"></script>



        </div>
    </form>
</body>
</html>
