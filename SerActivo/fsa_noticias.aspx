<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fsa_noticias.aspx.cs" Inherits="fsa_noticias" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Home</title>    
    
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <!-- Optional Bootstrap theme -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div  id="carousel-example-generic" class="carousel slide" data-ride="carousel">
           <%-- Indicators--%>
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                <li data-target="#carousel-example-generic" data-slide-to="5"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <asp:Repeater ID="rptrImages" runat="server">
                    <ItemTemplate>
                        <div class="item <%#GetActiveClass(Container.ItemIndex) %>">
                            <img src="Images/<%#Eval("Name") %><%#Eval("Extension") %>" alt="<%#Eval("Name") %>" />
                            <asp:Label runat="server" ID="Label1" Text='<%# Eval("titulo") %>' Font-Bold="True" Font-Size="X-Large" />
                            <asp:Label runat="server" ID="Label2" Text='<%# Eval("cuerpo") %>' />
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>

        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </form>
</body>
</html>

