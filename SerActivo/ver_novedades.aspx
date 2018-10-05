<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ver_novedades.aspx.cs" Inherits="ver_novedades" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ver Novedades</title>
     <link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'/>
    <link rel='stylesheet' href='https://bootswatch.com/flatly/bootstrap.min.css'/>
    <link href="estilos/StyleHome.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
        }
        @import url(https://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100);


div.table-title {
   display: block;
  margin: auto;
  max-width: 600px;
  padding:5px;
  width: 100%;
}

.table-title h3 {
   color: #fafafa;
   font-size: 30px;
   font-weight: 400;
   font-style:normal;
   font-family: "Roboto", helvetica, arial, sans-serif;
   text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
   text-transform:uppercase;
}


/*** Table Styles **/

.table-fill {
  background: white;
  border-radius:5px;
  border-collapse: collapse;
  height: 320px;
  margin: auto;
  max-width: 600px;
  padding:5px;
  width: 100%;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  animation: float 5s infinite;
}
 
th {
  color:#D5DDE5;;
  background:#1b1e24;
  border-bottom:4px solid #9ea7af;
  border-right: 1px solid #343a45;
  font-size:14px;
  font-weight: 100;
  padding:12px;
  text-align:left;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  vertical-align:middle;
}

th:first-child {
  border-top-left-radius:3px;
}
 
th:last-child {
  border-top-right-radius:3px;
  border-right:none;
}
  
tr {
  border-top: 1px solid #C1C3D1;
  border-bottom-: 1px solid #C1C3D1;
  color:#666B85;
  font-size:16px;
  font-weight:normal;
  text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
}
 
tr:hover td {
  background:#4E5066;
  color:#FFFFFF;
  border-top: 1px solid #22262e;
}
 
tr:first-child {
  border-top:none;
}

tr:last-child {
  border-bottom:none;
}
 
tr:nth-child(odd) td {
  background:#EBEBEB;
}
 
tr:nth-child(odd):hover td {
  background:#4E5066;
}

tr:last-child td:first-child {
  border-bottom-left-radius:3px;
}
 
tr:last-child td:last-child {
  border-bottom-right-radius:3px;
}
 
td {
  background:#FFFFFF;
  padding:20px;
  text-align:left;
  vertical-align:middle;
  font-weight:300;
  font-size:12px;
  text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
  border-right: 1px solid #C1C3D1;
}

td:last-child {
  border-right: 0px;
}

th.text-left {
  text-align: left;
}

th.text-center {
  text-align: center;
}

th.text-right {
  text-align: right;
}

td.text-left {
  text-align: left;
}

td.text-center {
  text-align: center;
}

td.text-right {
  text-align: right;
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
            <li><a href="http://www.fundacionseractivo.org.ar/">ir a Ser Activo</a></li>
            <li><a href="SerActivo.aspx">ir a Noticias F.S.A</a></li>
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
                <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
                <asp:Label ID="lbl_eliminar" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
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

        <div class="form-group">
          <label for="form-cliente-pagina">Pagina</label>
          <select class="form-control" id="form-cliente-pagina">
            <option>Home</option>
            <option>Locali</option>
          </select>
        </div>
                          


       </form>
        
        
        
        
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
