<%@ Page Language="C#" AutoEventWireup="true" CodeFile="noticias.aspx.cs" Inherits="noticias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <title>Upload Images </title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" style="padding-top:10px">
        <div class="form-horizontal">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Upload Image 1 " CssClass="col-md-2 control-label"></asp:Label>
               <div class="col-md-3">
                   <asp:Label ID="Label6" runat="server" Text="TITULO"></asp:Label>
                   <asp:TextBox ID="tb_titulo" runat="server" Width="387px"></asp:TextBox>
                   <br />
                   <br />

                   <asp:Label ID="Label7" runat="server" Text="CUERPO"></asp:Label><asp:TextBox ID="tb_cuerpo" runat="server" Height="72px" Width="539px"></asp:TextBox>
                   <asp:FileUpload ID="img01" runat="server" CssClass="form-control"/>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                       runat="server" ErrorMessage="This field is required" ControlToValidate="img01" CssClass="text-danger"></asp:RequiredFieldValidator>
               </div>
            </div>
            <div class="form-group">
                <div class="col-md-3 col-md-offset-2">
                    <asp:Button ID="btnUpload" runat="server" Text="Crear noticia" CssClass="btn btn-primary btn-group-lg" OnClick="btnUpload_Click"/>
                    <asp:Label ID="lblMessage" runat="server" CssClass="text-success"></asp:Label>
                </div>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>