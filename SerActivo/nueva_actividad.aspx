<%@ Page Language="C#" AutoEventWireup="true" CodeFile="nueva_actividad.aspx.cs" Inherits="nueva_actividad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css' />
    <link rel='stylesheet' href='https://bootswatch.com/flatly/bootstrap.min.css' />
    <link href="estilos/StyleHome.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
        }
    </style>

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
                        <a class="navbar-brand" href="#">Panel de Administracion</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#">ir a Ser Activo</a></li>
                            <li><a href="#">Salir &nbsp; <span class="glyphicon glyphicon-share"></span></a></li>
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
            <ul class="nav sub-menu collapse" id="collapse-locali"/>
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
              <li><a href="ver_actividades.aspx">Ver Novedades</a></li>
              <li><a href="nueva_actividad.aspx">Nueva Novedad</a></li>
            </ul>
        </div>
            <!-- Titulo de la pagina -->
            <div class="container-fluid main">
                <h1 class="page-header">Nueva Actividad</h1>
                <div>
                    <!-- Text input-->
                    <div id="adminPage">
                        <div id="errorBox_halfPage"></div>
                        <div class="row">
                            <div class="auto-style1">
                                <div class="panel panel-default">
                                    <!-- AQUI SE COLAN LOS CONTROLES -->
                                    <div class="panel-body" id="chartFatturazioneMensile">

                                        <!-- Titulo-->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="txt_titulo">Título</label>                                            
                                                <asp:TextBox ID="txt_titulo" name="txt_titulo" class="form-control input-md" runat="server"></asp:TextBox>
                                                <span class="help-block">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe ingresar un título" ControlToValidate="txt_titulo" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </span>
                                        </div>

                                                <!-- Subtitulo-->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="txt_copete">Subtitulo</label>
                                            
                                                <asp:TextBox ID="txt_copete" name="txt_copete" class="form-control input-md" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Debe ingresar un copete" ControlToValidate="txt_copete" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <span class="help-block"></span>
                                            
                                        </div>


                                        <!-- Cuerpo -->

                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="txt_cuerpo">Cuerpo</label>
                                            
                                                <asp:TextBox ID="txt_cuerpo" name="txt_cuerpo" type="text" placeholder="" class="form-control input-md" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Debe ingresar el texto del cuerpo" ControlToValidate="txt_cuerpo" ForeColor="Red"></asp:RequiredFieldValidator>
                                            
                                        </div>

                                

                                        <!-- Autor-->
                                        
                                        <label class="col-md-4 control-label" for="txt_autor">Autor</label>
                                               <!-- corregir el css, el deshabilitado pierde el formato-->
                                            <asp:TextBox ID="txt_autor" name="txt_autor" class="form-control" runat="server" Enabled="False" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Debe ingresar un autor" ControlToValidate="txt_autor" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <span class="help-block"></span>
                                        



                                        <!-- Fecha de actividad-->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="fr_txt">Fecha de inicio de actividad</label>
                                            
                                                <asp:TextBox ID="txt_fecha_act" name="fr_text" type="text" placeholder="" class="form-control input-md" runat="server" TextMode="SingleLine" CssClass="form-control" Enabled="False"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Debe seleccionar una fecha de registro" ControlToValidate="txt_fecha_act" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <span class="help-block"></span>
                                            
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="fp_txt">Fecha de Inicio de actividad</label>
                                            
                                                <asp:TextBox ID="TextBox1" name="fp_text" type="text" placeholder="" class="form-control input-md" runat="server" TextMode="Date"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Debe seleccionar fecha de publicación" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <span class="help-block"></span>
                                            
                                        </div>


                                        <!-- File Button -->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="btnUpload">Subir foto</label>
                                            
                                                <asp:FileUpload ID="img01" runat="server" CssClass="form-control" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="img01" ErrorMessage="Debe seleccionar una imagen" ForeColor="Red"></asp:RequiredFieldValidator>
                                            
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="btnUpload"></label>
                                            
                                        </div>


                                        <!-- Button (Double) -->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="cargar_not_boton"></label>
                                            <div class="col-md-8">
                                                <asp:Button runat="server" ID="cargar_not_boton" OnClick="btnUploadClick" Text="Generar actividad" class="btn btn-success" />
                                                <asp:Button runat="server" ID="volver_boton" Text="Cancelar" class="btn btn-danger" />
                                            </div>
                                        </div>



                                    </div>
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

                    <div class="form-group">
                        <label for="form-cliente-pagina">Pagina</label>
                        <select class="form-control" id="form-cliente-pagina">
                            <option>Home</option>
                            <option>Locali</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="form-cliente-posizione">Posizione</label>
                        <select class="form-control" id="form-cliente-posizione">
                            <option>navbar-top</option>
                            <option>footer-center</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="form-cliente-dtinizio">Data inizio</label>
                        <input type="date" class="form-control" id="form-cliente-dtinizio"/>
                    </div>

                    <div class="form-group">
                        <label for="form-cliente-dtfine">Data fine</label>
                        <input type="date" class="form-control" id="form-cliente-dtfine"/>
                    </div>
                    <div class="form-group">
                        <label for="form-cliente-allegato">Allegati</label>
                        <input type="file" id="form-cliente-allegato"/>
                        <p class="help-block">Caricare gli allegati.</p>
                    </div>
    </form>

    </div>
      <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary" id="form-aggiungi-elemento-save">Save changes</button>
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
