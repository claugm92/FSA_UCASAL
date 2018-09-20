<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form_nva_not.aspx.cs" Inherits="form_nva_not" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="estilos/StyleSheet_nv_not.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>

<body>

<form id="form2" class="form-horizontal" runat="server">
<fieldset>
<!-- Form Name -->
<legend>Registro de Noticias</legend>
            <div>
            nombre de usuario logueado
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="txt_titulo">Título</label>  
  <div class="col-md-4">
  <asp:TextBox id="txt_titulo" name="txt_titulo" class="form-control input-md" runat="server"></asp:TextBox>
  <span class="help-block">
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe ingresar un título" ControlToValidate="txt_titulo" ForeColor="Red"></asp:RequiredFieldValidator>
      </span>  
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="txt_autor">Autor</label>  
  <div class="col-md-4">
  <asp:TextBox id="txt_autor" name="txt_autor" class="form-control input-md" runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Debe ingresar un autor" ControlToValidate="txt_autor" ForeColor="Red"></asp:RequiredFieldValidator>
  <span class="help-block"></span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="txt_copete">Copete</label>  
  <div class="col-md-4">
  <asp:TextBox id="txt_copete" name="txt_copete" class="form-control input-md" runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Debe ingresar un copete" ControlToValidate="txt_copete" ForeColor="Red"></asp:RequiredFieldValidator>
  <span class="help-block"></span>  
  </div>
</div>

<!-- Text tarea-->
<div class="form-group">
  <label class="col-md-4 control-label" for="txt_cuerpo">Cuerpo</label>  
  <div class="col-md-4">
  <asp:TextBox id="txt_cuerpo" name="txt_cuerpo" type="text" placeholder="" class="form-control input-md" runat="server" TextMode="MultiLine"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Debe ingresar el texto del cuerpo" ControlToValidate="txt_cuerpo" ForeColor="Red"></asp:RequiredFieldValidator>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="fr_txt">Fecha de registro</label>  
  <div class="col-md-4">
  <asp:TextBox id="fr_text" name="fr_text" type="text" placeholder="" class="form-control input-md" runat="server" TextMode="Date"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Debe seleccionar una fecha de registro" ControlToValidate="fr_text" ForeColor="Red"></asp:RequiredFieldValidator>
  <span class="help-block"></span>  
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="fp_txt">Fecha de Publicación</label>  
  <div class="col-md-4">
  <asp:TextBox id="TextBox1" name="fp_text" type="text" placeholder="" class="form-control input-md" runat="server" TextMode="Date"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Debe seleccionar fecha de publicación" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
  <span class="help-block"></span>  
  </div>
</div>


<!-- File Button --> 
<div class="form-group">
  <label class="col-md-4 control-label" for="btnUpload">Subir fotos</label>
  <div class="col-md-4">
    <asp:FileUpload ID="img01" runat="server" CssClass="form-control"/>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="img01" ErrorMessage="Debe seleccionar una imagen" ForeColor="Red"></asp:RequiredFieldValidator>
  </div>
  </div>

<div class="form-group">
    <label class="col-md-4 control-label" for="btnUpload"></label>
    <div class="col-md-4">
  </div>
   </div>


<div class="form-group">
  <label class="col-md-4 control-label" for="drop_cat">Categoría de la Noticia</label>  
  <div class="col-md-4">
  <asp:DropDownList id="drop_cat" name="drop_cat" type="text" placeholder="" class="form-control input-md" runat="server" DataSourceID="Categorias" DataTextField="nombre_cat" DataValueField="nombre_cat"></asp:DropDownList>
      <asp:SqlDataSource ID="Categorias" runat="server" ConnectionString="<%$ ConnectionStrings:conString %>" SelectCommand="SELECT [nombre_cat] FROM [categorias]"></asp:SqlDataSource>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ErrorMessage="Debe seleccionar una categoria" ControlToValidate="drop_cat" ForeColor="Red"></asp:RequiredFieldValidator>
  <span class="help-block"></span>  
  </div>
</div>

<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="cargar_not_boton"></label>
  <div class="col-md-8">
    <asp:Button runat="server" ID="cargar_not_boton" OnClick="btnUploadClick" Text="Cargar Noticia" class="btn btn-success" />
    <asp:Button runat="server" ID="volver_boton" Text="Volver Atrás" class="btn btn-danger" />
  </div>
</div>


</fieldset>
</form>
</body>
</html>

