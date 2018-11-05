<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2" runat="server" %>

<head>
    <title>Iniciar sesión - FSA</title>
    <link href="estilos/StyleSheet_login.css" rel="stylesheet" />
    <!-- Estilos -->
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }
        .auto-style2 {
            height: 3px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<form id="form1" runat="server">
    <h1>Iniciar sesión</h1>
    <div class="inset">
        <p>
            <label for="user">
            NOMBRE DE USUARIO</label>
            <input id="tb_usuario" runat="server" name="tb_usuario" type="text" />
        </p>
        <p>
            <label for="password">
            PASSWORD</label>
            <input id="tb_password" runat="server" name="tb_password" type="password" /> </p>
          <input id="chk_remember" runat="server" name="remember" type="checkbox" /><label for="remember">Recordarme</label></p>
        <p>

        <p class="auto-style3">
            <label for="remember">
            <asp:Button ID="Button1" for="error" runat="server" OnClick="Button1_Click1" Text="Iniciar Sesión" Width="225px" />
            </label>
        </p>
        <br />
        <p>
            <asp:Label ID="lbl_error" runat="server" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
        </p>
    </div>
    <p class="p-container">
&nbsp;
        <label for="remember">

        </label>
    </p>
</form>



