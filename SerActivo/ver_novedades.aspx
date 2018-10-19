<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ver_novedades.aspx.cs" Inherits="ver_novedades" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ver Novedades</title>
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
          
          
          <h1 class="page-header">Ver Novedades</h1>
          
            <div>

            
<!-- Text input-->
<div id="adminPage">
            
            <div id="errorBox_halfPage"></div>
    
            <div class="row">

		        <div class="auto-style1">
			<div class="panel panel-default">
               <!-- AQUI SE COLAN LOS CONTROLES --> 
				<div class="panel-body" id="chartFatturazioneMensile">
                    
          
                <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
                    
          
                    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" DataKeyNames="id_nov" DataSourceID="SqlDataSourceNovedades" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="id_nov" HeaderText="id_nov" InsertVisible="False" ReadOnly="True" SortExpression="id_nov" />
                            <asp:BoundField DataField="titulo_nov" HeaderText="titulo_nov" SortExpression="titulo_nov" />
                            <asp:BoundField DataField="copete_nov" HeaderText="copete_nov" SortExpression="copete_nov" />
                            <asp:BoundField DataField="cuerpo_nov" HeaderText="cuerpo_nov" SortExpression="cuerpo_nov" />
                            <asp:BoundField DataField="fecha_nov" HeaderText="fecha_nov" SortExpression="fecha_nov" />
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>


				    <asp:SqlDataSource ID="SqlDataSourceNovedades" runat="server" ConnectionString="<%$ ConnectionStrings:conexion_fsa %>" SelectCommand="SELECT [id_nov], [titulo_nov], [copete_nov], [cuerpo_nov], [fecha_nov] FROM [Novedades]"></asp:SqlDataSource>
                    <br />
                    <asp:Button ID="bt_modificar" class="btn btn-default" runat="server" Text="Modificar" OnClick="bt_modificar_Click" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="bt_eliminar" class="btn btn-danger" runat="server" Text="Eliminar" OnClick="bt_elim_conf_Click" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="bt_nueva" class="btn btn-primary" runat="server" Text="Nueva novedad" PostBackUrl="~/nueva_novedad.aspx" />
                    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                <!-- HASTA AQUI LOS CONTROLES -->
			    <br />
                <br />
                <br />
                <div class="panel panel-default" id="confirmar_elim" runat="server">

                <asp:Label ID="lbl_confirmar_elim" runat="server" Text="Label de confirmacion" CssClass="form-control"></asp:Label>
                <br />
<asp:Button ID="bt_conf_elim" class="btn btn-danger" runat="server" Text="Eliminar" OnClick="bt_eliminar_Click" />
                    <asp:Button ID="bt_canc_elmin" class="btn btn-default" runat="server" Text="Cancelar" OnClick="bt_can_elim_Click" />
                    
                    <br />

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
