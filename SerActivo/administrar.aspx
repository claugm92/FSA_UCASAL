<%@ Page Language="C#" AutoEventWireup="true" CodeFile="administrar.aspx.cs" Inherits="noticias_administrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            nombre de usuario logueado
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            AQUI IRIA EL FORMULARIO PARA CREAR UNA NUEVA NOTICIA <br />
            <br />
            SI EL USUARIO NO ESTA LOGUEADO ENTONCES LO REDIRIGE A LA PAGINA DE LOGUEO <br />
            <br />
            TENDRIA QUE HABER UN CARTELITO QUE DIGA DEBE LOGUARSE PARA PERMANECER EN ESTA PAGINA<br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ABANDONAR SESION" />
            <br />

            <br />

        </div>
    </form>
</body>
</html>
