<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

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
                                            <div>
                                                <asp:Label ID="Label1" runat="server" Text="La cantidad de articulos publicados se detallan a continuación" Font-Bold="True"></asp:Label>

                                                <br />
                                            </div>

                                            <div></div>
                                            <div class="col-xs-12 col-sm-6 col-md-3 placeholder">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">Cantidad de Noticias</div>
                                                    <div class="panel-body">
                                                        <h1 class="dashboard-value">
                                                            <asp:Label ID="lbl_cant_not" runat="server" Text="Label"></asp:Label></h1>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-xs-12 col-sm-6 col-md-3 placeholder">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">Cantidad de Actividades</div>
                                                    <div class="panel-body">
                                                        <h1 class="dashboard-value">
                                                            <asp:Label ID="lbl_cant_act" runat="server" Text="Label"></asp:Label></h1>
                                                    </div>
                                                </div>
                                            </div>



                                            <div class="col-xs-12 col-sm-6 col-md-3 placeholder">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">Cantidad de Novedades</div>
                                                    <div class="panel-body">
                                                        <h1 class="dashboard-value">
                                                            <asp:Label ID="lbl_cant_nov" runat="server" Text="Label"></asp:Label></h1>
                                                    </div>
                                                </div>
                                            </div>


                                            
                                            <div class="col-xs-12 col-sm-6 col-md-3 placeholder">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">Cantidad de Consultas</div>
                                                    <div class="panel-body">
                                                        <h1 class="dashboard-value">
                                                            <asp:Label ID="lbl_cant_cons" runat="server" Text="Label"></asp:Label></h1>
                                                    </div>
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

