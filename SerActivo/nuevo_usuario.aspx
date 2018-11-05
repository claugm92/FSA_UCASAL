<%@ Page Language="C#" AutoEventWireup="true" CodeFile="nuevo_usuario.aspx.cs" Inherits="nuevo_usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Administrar FSA</title>
    <link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css' />
    <link rel='stylesheet' href='https://bootswatch.com/flatly/bootstrap.min.css' />
    <link href="estilos/StyleHome.css" rel="stylesheet" />

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
                        <asp:Label ID="lbl_titulo" runat="server" Text="Label"></asp:Label></h1>

                    <div>


                        <!-- Text input-->
                        <div id="adminPage">

                            <div id="errorBox_halfPage"></div>

                            <div class="row">

                                <div class="auto-style1">
                                    <div class="panel panel-default">
                                        <!-- AQUI SE COLAN LOS CONTROLES -->
                                      
                                        <div class="panel-body" id="chartFatturazioneMensile">
                                        <asp:Label ID="lbl_error" runat="server" Text="Label" Visible="False"></asp:Label>
                                        <!-- Nombre-->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="txt_titulo">Nombre</label>                                            
                                                <asp:TextBox ID="tb_nombre" name="txt_titulo" class="form-control input-md" runat="server" MaxLength="100"></asp:TextBox>
                                                <span class="help-block">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe ingresar un nombre" ControlToValidate="tb_nombre" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </span>
                                        </div>

                                            <!-- Apellido-->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="txt_titulo">Apellido</label>                                            
                                                <asp:TextBox ID="tb_apellido" name="txt_titulo" class="form-control input-md" runat="server" MaxLength="100"></asp:TextBox>
                                                <span class="help-block">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe ingresar apellido" ControlToValidate="tb_apellido" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </span>
                                        </div>

                                              <!-- Numero de documento-->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="txt_titulo">Numero de documento</label>                                            
                                                <asp:TextBox ID="tb_dni" name="tb_dni" class="form-control input-md" runat="server" MaxLength="100"></asp:TextBox>
                                                <span class="help-block">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Debe ingresar número de documento" ControlToValidate="tb_dni" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </span>
                                        </div>


                                            <!-- Nombre de usuario(Nick)-->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="txt_titulo">Nombre de usuario (Nick)</label>                                            
                                                <asp:TextBox ID="tb_nick" name="txt_titulo" class="form-control input-md" runat="server" MaxLength="100"></asp:TextBox>
                                                <span class="help-block">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Debe ingresar nombre de usuario" ControlToValidate="tb_nick" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </span>
                                        </div>

                                            <!-- Contraseña-->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="txt_titulo">Contraseña</label>                                            
                                                <asp:TextBox ID="tb_contraseña" name="txt_titulo" class="form-control input-md" runat="server" MaxLength="100" TextMode="Password"></asp:TextBox>
                                                <span class="help-block">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Debe ingresar contraseña" ControlToValidate="tb_contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </span>
                                        </div>



                                            <!-- Confirmar Contraseña-->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="txt_titulo">Reingrese Nueva contraseña</label>                                            
                                                <asp:TextBox ID="tb_conf_contraseña" name="txt_titulo" class="form-control input-md" runat="server" MaxLength="100" TextMode="Password"></asp:TextBox>
                                                <span class="help-block">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Debe reingresar la contraseña" ControlToValidate="tb_conf_contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </span>
                                        </div>

                                        <!-- Button (Double) -->
                                        <div class="form-group">
                                            <div class="col-md-8">
                                                <asp:Button runat="server" ID="cargar_not_boton" OnClick="Nuevo_Usuario" Text="Generar Nuevo Usuario" class="btn btn-success" />
                                                      <a href="home.aspx" class="block"> <button type="button" class="btn btn-default" data-dismiss="modal" ">Volver atrás</button>
              </a>
                                            </div>
                                        </div>


                                    </div>
                                        <!-- HASTA AQUI LOS CONTROLES -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>




<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.bundle.min.js'></script>
<script src="js/ScripHome.js"></script>



        </div>
    </form>
</body>
</html>

