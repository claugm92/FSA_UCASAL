<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
            <li><a href="#">ir a Ser Activo</a></li>
    <li><a href="home.aspx"><asp:Label ID="lbl_usuario" runat="server" Text="Label"/></a></li>
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
          
          
          <h1 class="page-header"><asp:Label ID="lbl_titulo" runat="server" Text="Label"></asp:Label></h1>
          
            <div>

            
<!-- Text input-->
<div id="adminPage">
            
            <div id="errorBox_halfPage"></div>
    
            <div class="row">

		        <div class="auto-style1">
			<div class="panel panel-default">
               <!-- AQUI SE COLAN LOS CONTROLES --> 
				<div class="panel-body" id="chartFatturazioneMensile">
                    
          <div class="col-xs-12 col-sm-6 col-md-3 placeholder">
              <div class="panel panel-default">
                <div class="panel-heading">Cantidad de Noticias</div>
                <div class="panel-body">
                  <h1 class="dashboard-value"><asp:Label ID="lbl_cant_not" runat="server" Text="Label"></asp:Label></h1>
                </div>
              </div>
            </div>

            <div class="col-xs-12 col-sm-6 col-md-3 placeholder">
              <div class="panel panel-default">
                <div class="panel-heading">Cantidad de Actividades</div>
                <div class="panel-body">
                  <h1 class="dashboard-value"><asp:Label ID="lbl_cant_act" runat="server" Text="Label"></asp:Label></h1>
                </div>
              </div>
            </div>
                    

                    
            <div class="col-xs-12 col-sm-6 col-md-3 placeholder">
              <div class="panel panel-default">
                <div class="panel-heading">Cantidad de Novedades</div>
                <div class="panel-body">
                  <h1 class="dashboard-value"><asp:Label ID="lbl_cant_nov" runat="server" Text="Label"></asp:Label></h1>
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
