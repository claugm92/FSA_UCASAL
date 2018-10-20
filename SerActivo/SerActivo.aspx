<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SerActivo.aspx.cs" Inherits="SerActivo" %>

<!DOCTYPE html>
<!--  -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Fundación Ser Activo</title>

    <!--Style de fonts que contiene los iconos-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <!-- hoja de estilo para las cuadricula actividades -->
    <link href="estilos/StyleSheetCuadActiv.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <!-- Optional Bootstrap theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
    <!-- StyleSheet carrusel -->
    <link href="estilos/StyleW3.css" rel="stylesheet" />

    <style>
        html, body, h1, h2, h3, h4 {
            font-family: "Lato", sans-serif
        }

        .mySlides {
            display: none
        }

        .w3-tag, .fa {
            cursor: pointer
        }

        .w3-tag {
            height: 15px;
            width: 15px;
            padding: 0;
            margin-top: 6px
        }
    </style>

    <!-- Style slider-->
    <style type="text/css">
        #rt-showcase.slider-container {
            background: #F5F6F8;
        }

        .slider-container {
            padding-top: 20px;
        }

            .slider-container .csslider1 {
                position: relative;
                display: block;
                margin: 0 auto !important;
            }
    </style>


    <style type="text/css">
        #rt-showcase.slider-container {
            background: #F5F6F8;
        }

        .slider-container {
            padding-top: 20px;
        }

            .slider-container .csslider1 {
                position: relative;
                display: block;
                margin: 0 auto !important;
            }
    </style>

</head>
<!-- Color de fondo de la pagina -->
<body class="w3-light-grey">
    <!-- Navbar o barra de navegacion (En la parte superior) -->
    <div class="w3-top">
        <div class="w3-bar w3-white w3-card" id="myNavbar">
            <a href="http://www.fundacionseractivo.org.ar/" class="w3-bar-item w3-button w3-wide">Ser Activo</a>
            <!-- Right-sided navbar links -->
            <div class="w3-right w3-hide-small">
                <a href="#" class="w3-bar-item w3-button w3-wide">Inicio</a>
                <a href="#noticias" class="w3-bar-item w3-button w3-wide">Noticias</a>
                <a href="#actividades" class="w3-bar-item w3-button w3-wide">Actividades</a>
                <a href="#contact" class="w3-bar-item w3-button w3-wide">Contactanos</a>
            </div>
            <!-- Hide right-floated links on small screens and replace them with a menu icon -->

            <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
                <i class="fa fa-bars"></i>
            </a>
        </div>
    </div>

    <!-- Sidebar on small screens when clicking the menu icon -->
    <nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display: none" id="mySidebar">
        <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
        <a href="#" class="w3-bar-item w3-button w3-wide" onclick="w3_close()">Inicio</a>
        <a href="#noticias" class="w3-bar-item w3-button w3-wide" onclick="w3_close()">Noticias</a>
        <a href="#actividades" class="w3-bar-item w3-button w3-wide" onclick="w3_close()">Actividades</a>
        <a href="#contact" class="w3-bar-item w3-button w3-wide" onclick="w3_close()">Contactanos</a>
    </nav>
    <!-- Formulario principal -->
    <form id="form1" runat="server">
        <!-- Carrusel de noticias principal -->
        <!-- Slideshow -->


        <br />
        <br />

        <div class="w3-container">

            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
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
                                <!-- Post-->
                                <div class="post-module">
                                    <!-- Thumbnail-->
                                    <img src="Images/<%#Eval("nombre") %><%#Eval("Extension") %>" alt="<%#Eval("nombre") %>" alt="Girl Hat" style="width: 100%" class="w3-padding-16" />

                                    <!-- Post Content-->
                                    <div class="post-content">
                                        <div class="category">
                                            <asp:Label runat="server" ID="Label6" Text='<%# Eval("categoria") %>' />
                                        </div>

                                        <h1 class="title">
                                            <asp:Label runat="server" ID="Label1" Text='<%# Eval("titulo_nov") %>' Font-Bold="True" Font-Size="X-Large" /></h1>
                                        <h2 class="sub_title">
                                            <asp:Label runat="server" ID="Label2" Text='<%# Eval("copete_nov") %>' /></h2>
                                    </div>
                                </div>
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



        <!-- w3-content defines a container for fixed size centered content, 
    and is wrapped around the whole page content, except for the footer in this example -->
        <div class="w3-content" style="max-width: 1400px">
            <!-- Grid -->
            <div class="w3-row">
                <div class="w3-center w3-padding-64" id="noticias">
                    <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">Noticias</span>
                </div>
                <!-- NOTICIAS -->
                <div class="w3-col l8 s12">
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <!-- Blog entry -->
                            <div class="w3-container w3-white w3-margin w3-padding-large">
                                <div class="w3-justify">
                                    <h3>
                                        <asp:Label runat="server" ID="Label1" Text='<%# Eval("titulo_not") %>' /></h3>
                                    <div class="w3-right">
                                        <button class="w3-button w3-black" onclick="myFunction('demo1')" id="myBtn">
                                            <b>
                                                <asp:Label runat="server" ID="Label7" Text='<%# Eval("categoria") %>' /></b></button></p>
                                    </div>
                                    <span class="w3-opacity">
                                        <asp:Label runat="server" ID="Label5" Text='<%# Eval("fecha_not") %>' /></span></h5>
                                </div>

                                <div class="w3-justify">
                                    <img src="Images/<%#Eval("nombre") %><%#Eval("Extension") %>" alt="<%#Eval("nombre") %>" alt="Girl Hat" style="width: 100%" class="w3-padding-16" />
                                    <h5>
                                        <asp:Label class="sub_title" runat="server" ID="Label3" Text='<%# Eval("copete_not") %>' /></h2>

                                    <p>
                                        <asp:Label runat="server" ID="Label4" Text='<%# Eval("cuerpo_not") %>' />


                                        <p class="w3-right">

                                            <p class="w3-clear">
                                            </p>
                                            <div class="w3-row w3-margin-bottom" id="demo1" style="display: none">
                                                <hr>
                                                <div class="w3-col l2 m3">
                                                    <img src="/w3images/avatar_smoke.jpg" style="width: 90px;">
                                                </div>
                                                <div class="w3-col l10 m9">
                                                    <h4>George <span class="w3-opacity w3-medium">May 3, 2015, 6:32 PM</span></h4>
                                                    <p>Great blog post! Following</p>
                                                </div>
                                            </div>
                                </div>
                            </div>
                            <hr>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>


                <!-- INTRODUCCION menu -->
                <div class="w3-col l4">


                    <!-- Aplicaciones -->
                    <div class="w3-card w3-margin">
                        <div class="w3-container w3-padding">
                            <h4>Mira nuestras aplicaciones</h4>
                        </div>
                        <ul class="w3-ul w3-hoverable w3-white">
                            <li class="w3-padding-16">
                                <img src="./images/medicamed.png" alt="Image" class="w3-left w3-margin-right" style="width: 50px" />
                                <span class="w3-large"><a href="">Medicamed</a></span><br />
                                <span>Una excelente aplicacion que le recuerda cuando debe que tomar su medicamento.</span>
                            </li>
                            <li class="w3-padding-16">
                                <img src="./images/entrena_mente.png" alt="Image" class="w3-left w3-margin-right" style="width: 50px" />
                                <span class="w3-large"><a href="">EntrenaMente</a></span><br />
                                <span>Un excelente juego que te ayudara a agilizar tu mente!</span>
                            </li>
                            <li class="w3-padding-16">
                                <img src="./images/ser_activo.png" alt="Image" class="w3-left w3-margin-right" style="width: 50px" />
                                <span class="w3-large"><a href="">Ser Activo</a></span><br />
                                <span>Nuestra aplicación oficial, desde ella podrás acceder a todo el contenido desde tu telefono móvil</span>
                            </li>
                            <li class="w3-padding-16 w3-hide-medium w3-hide-small">
                                <img src="./images/desafiame.jpg" alt="Image" class="w3-left w3-margin-right" style="width: 50px" />
                                <span class="w3-large"><a href="">Desafiame (?</a></span><br />
                                <span>La aplicacion que te desafia?</span>
                            </li>
                            <li class="w3-padding-16 w3-hide-medium w3-hide-small">
                                <img src="./images/tateti.png" alt="Image" class="w3-left w3-margin-right" style="width: 50px" />
                                <span class="w3-large"><a href="tateti.html">Ta Te Tí</a></span><br />
                                <span>El popular ta te ti pero ahora en tu celular (?</span>
                            </li>
                        </ul>
                    </div>
                    <hr />

                    <!-- Labels / tags -->
                    <div class="w3-card w3-margin">
                        <div class="w3-container w3-padding">
                            <h4>Aprende a navegar por internet</h4>
                        </div>
                        <div class="w3-container w3-white">
                            <p>
                                <video controls="true">
                                    <source src="file.mp4" type="video/mp4" />
                                </video>
                            </p>
                        </div>
                    </div>
                    <!-- END Introduction Menu -->
                </div>
                <!-- END GRID -->
            </div>
            <br />
            <!-- END w3-content -->
        </div>



        <!-- Grid de actividades -->
        <div class="w3-row-padding" id="actividades">
            <div class="w3-center w3-padding-64">
                <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">Actividades</span>
            </div>
        </div>
        <!-- Grid -->
        <!-- Target Elements -->
        <div class="arlo arlo-loaded" style="position: relative;">
            <div class="arlo-filters-container">
                <div id="filters">
                    <div>
                        <div class="arlo-filters arlo-font-primary" min-width="551px" style="position: relative;">
                            <div class="arlo-other-filters arlo-clearfix arlo-font-primary">
                            </div>
                            <div class="resize-sensor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; z-index: -1; visibility: hidden;">
                                <div class="resize-sensor-expand" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;">
                                    <div style="position: absolute; left: 0px; top: 0px; transition: all 0s ease 0s; width: 1150px; height: 70px;"></div>
                                </div>
                                <div class="resize-sensor-shrink" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;">
                                    <div style="position: absolute; left: 0; top: 0; transition: 0s; width: 200%; height: 200%"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="arlo-filter-toggle">
                    <div class="arlo-filter-toggle-show">
                        Show filters <i class="fa fa-chevron-down"></i>
                    </div>
                    <div class="arlo-filter-toggle-hide">
                        Hide filters <i class="fa fa-chevron-up"></i>
                    </div>
                </div>
            </div>
            <div id="upcoming-events">
                <ul class="arlo-event-list" min-width="976px 1083px" style="position: relative;">
                    <div class="resize-sensor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; z-index: -1; visibility: hidden;">
                        <div class="resize-sensor-expand" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;">
                            <div style="position: absolute; left: 0px; top: 0px; transition: all 0s ease 0s; width: 1150px; height: 1727px;"></div>
                        </div>
                        <div class="resize-sensor-shrink" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;">
                            <div style="position: absolute; left: 0; top: 0; transition: 0s; width: 200%; height: 200%"></div>
                        </div>
                    </div>


                    <asp:Repeater ID="Repeater3" runat="server">
                        <ItemTemplate>
                            <script type="application/ld+json">{"@type":"ItemList","itemListElement":[{"@type":"ListItem","position":1,"url":"https://s.codepen.io/course-template/?eventtemplate=1-plan-your-next-trip-to-the-moon&event=532"},{"@type":"ListItem","position":2,"url":"https://s.codepen.io/course-template/?eventtemplate=2-your-elusive-creative-genius&event=244"},{"@type":"ListItem","position":3,"url":"https://s.codepen.io/course-template/?eventtemplate=3-empowering-your-people&event=52"},{"@type":"ListItem","position":4,"url":"https://s.codepen.io/course-template/?eventtemplate=4-business-skills-for-new-managers&event=55"},{"@type":"ListItem","position":5,"url":"https://s.codepen.io/course-template/?eventtemplate=5-%E5%86%99%E5%A5%BD%E5%95%86%E4%B8%9A%E8%AE%A1%E5%88%92%E4%B9%A6&event=245"},{"@type":"ListItem","position":6,"url":"https://s.codepen.io/course-template/?eventtemplate=6-building-your-brand&event=246"},{"@type":"ListItem","position":7,"url":"https://s.codepen.io/course-template/?eventtemplate=8-teaching-and-learning-for-unit-4-promoting-childrens-positive-behaviour-level-4-education-qualification&event=60"},{"@type":"ListItem","position":8,"url":"https://s.codepen.io/course-template/?eventtemplate=7-m%C4%81ori-artefacts-annual-forum&event=595"},{"@type":"ListItem","position":9,"url":"https://s.codepen.io/course-template/?eventtemplate=11-how-great-people-inspire-action&event=580"},{"@type":"ListItem","position":10,"url":"https://s.codepen.io/course-template/?eventtemplate=9-basic-conference&event=253"},{"@type":"ListItem","position":11,"url":"https://s.codepen.io/course-template/?eventtemplate=176-partner-conference&event=257"},{"@type":"ListItem","position":12,"url":"https://s.codepen.io/course-template/?eventtemplate=395-external-business-relations&event=601"}]}</script>
                            <li class="arlo-event-listitem">
                                <div class="arlo-event-card">
                                    <div class="arlo-event-card-front">
                                        <div class="arlo-date">
                                            <div class="arlo-date-container arlo-text-color-contrast">
                                                <div class="arlo-start-date">
                                                    <asp:Label runat="server" ID="Label5" Text='<%# Eval("dia_act") %>' />
                                                </div>
                                                <div class="arlo-start-month">
                                                    <asp:Label runat="server" ID="Label8" Text='<%# Eval("mes_act") %>' />
                                                </div>
                                            </div>
                                        </div>
                                        <img class="arlo-event-image" src="Images/<%#Eval("nombre") %><%#Eval("Extension") %>" alt="<%#Eval("nombre") %>" />
                                        <div class="arlo-detail">
                                            <div class="arlo-provider-name">
                                                <asp:Label class="sub_title" runat="server" ID="Label3" Text='<%# Eval("subtitulo_act") %>' /></h2>
                                            </div>
                                            <div class="arlo-name arlo-text-color-contrast">
                                                <asp:Label runat="server" ID="Label1" Text='<%# Eval("titulo_act") %>' /></h1>
                                            </div>
                                            <!--          
                                    <div class="arlo-location arlo-text-color-contrast">
                                    Online
                                    </div>
                                   -->
                                        </div>
                                    </div>
                                    <div class="arlo-event-card-back">
                                        <div class="arlo-summary arlo-text-color-contrast">
                                            <asp:Label runat="server" ID="Label4" Text='<%# Eval("cuerpo_act") %>' />
                                        </div>
                                        <a class="arlo-event-register" href="https://websitetestdata.arlo.co/register?sgid=2ddcd4cf35ac46d99423167e8e04fc90">Register</a>
                                        <span class="arlo-loadEventTemplateHiddenButtonContainer">
                                            <div data-id="2q13ihvd" style="display: none;" class="arlo-subcontrol EventTemplate" id="subcontrol-2q13ihvd">View Template Details</div>
                                        </span>
                                    </div>
                                </div>
                        </ItemTemplate>
                    </asp:Repeater>
            </div>



            <!-- Content -->
            <div class="w3-content" style="max-width: 1100px; margin-top: 80px; margin-bottom: 80px">
                <!-- Contact -->
                <div class="w3-center w3-padding-64" id="contact">
                    <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">Contactanos</span>
                </div>

                <form class="w3-container" action="/action_page.php" target="_blank">
                    <div class="w3-section">
                        <label>Nombre</label>
                        <asp:TextBox ID="tb_nombre" runat="server" class="w3-input w3-border w3-hover-border-black" Style="width: 100%;" required MaxLength="100"></asp:TextBox>

                    </div>
                    <div class="w3-section">
                        <label>Correo electrónico</label>
                        <asp:TextBox ID="tb_correo" runat="server" class="w3-input w3-border w3-hover-border-black" Style="width: 100%;" required MaxLength="100"></asp:TextBox>

                    </div>
                    <div class="w3-section">
                        <label>Asunto</label>
                        <asp:TextBox ID="tb_asunto" runat="server" class="w3-input w3-border w3-hover-border-black" Style="width: 100%;" required MaxLength="100"></asp:TextBox>

                    </div>
                    <div class="w3-section">
                        <label>Cuerpo del mensaje</label>
                        <asp:TextBox ID="tb_cuerpo" runat="server" class="w3-input w3-border w3-hover-border-black" Style="width: 100%;" required MaxLength="1500"></asp:TextBox>

                    </div>
                    <asp:Button ID="Button1" runat="server" class="w3-button w3-block w3-black" OnClick="Button1_Click" Text="Enviar consulta" />
                </form>
            </div>
        </div>




        <!-- Footer -->

        <footer class="w3-container w3-padding-32 w3-black w3-center">
            <a href="#" class="w3-button w3-light-gray w3-margin"><i class="fa fa-arrow-up w3-margin-right"></i>Volver arriba</a>
            <div class="w3-xlarge w3-section">
                <i class="fa fa-facebook-official w3-hover-opacity"></i>
                <i class="fa fa-instagram w3-hover-opacity"></i>
                <i class="fa fa-snapchat w3-hover-opacity"></i>
                <i class="fa fa-pinterest-p w3-hover-opacity"></i>
                <i class="fa fa-twitter w3-hover-opacity"></i>
                <i class="fa fa-linkedin w3-hover-opacity"></i>
            </div>
            <p>Powered by <a href="#" title="CLAU (?" target="_blank" class="w3-hover-text-green">Clauditouu (?</a></p>
            <p><a href="Login.aspx" title="CLAU (?" target="_blank" class="w3-hover-text-green">Administrar</a></p>

        </footer>




        <!-- Dependencies -->
        <script>(function ($, ElementQueries) {
                document.addEventListener("arlojscontrolsloaded", function () {
                    var platformID = "websitetestdata.arlo.co"; // Change platformID to point at your own account

                    var filter = {
                        moduleType: "Filters",
                        targetElement: "#filters",
                        template: "#filter-template",
                        filterControlId: 1
                    };


                    var eventList = {
                        moduleType: "UpcomingEvents",
                        targetElement: "#upcoming-events",
                        template: "#upcoming-events-template",
                        maxCount: 12,
                        filterControlId: 1,
                        includeLoadMoreButton: true,
                        loadMoreButtonText: "Show More",
                        includeArloLink: false,
                        smartDateFormats: {
                            startDay: "DD"
                        },

                        customUrls: {
                            eventtemplate: "/course-template/",
                            venue: "/venue/",
                            presenter: "/presenter/"
                        },

                        callbacks: {
                            onShow: eventListOnShowCallback
                        }
                    };



                    var app = new window.ArloWebControls();

                    app.start({
                        platformID: platformID,
                        showDevErrors: false,
                        modules: [eventList, filter]
                    });


                    /* ----- Callback function ----- */

                    // "OnShow" callback
                    function eventListOnShowCallback(getEventListItemsFunction) {
                        var cardImages = $('.arlo-event-image');
                        var cardSummary = $('.arlo-summary');
                        var strMaxLength = 350;

                        $.each(cardImages, function (index, ele) {
                            $(ele).css('background-image', 'url(' + imageArr[index % imageArr.length] + ')');
                        });

                        $.each(cardSummary, function (index, ele) {
                            var str = $(ele).text();
                            $(ele).text(strChopper(str));
                        });

                        function strChopper(str) {
                            if (str.length > strMaxLength) {
                                str = str.substring(0, strMaxLength) + '...';
                            }
                            return str;
                        }

                        ElementQueries.init();

                        // Hide timezone selector if there are no online events
                        if ($(".arlo-online").length < 1) {
                            $(".arlo-timezone-select").hide();
                        } else {
                            $(".arlo-timezone-select").show();
                            $(".arlo-timezone-select").parent().css("float", "right");
                        }

                        // Set up tooltips
                        $.each(listItems, function (index, listItem) {
                            var tooltipElement = $(listItem).find('[data-toggle="tooltip"]')[0];
                            if (tooltipElement) {
                                var toolTipContent = $(listItem).find(".tooltipcontent")[0];
                                if (toolTipContent) {
                                    $(tooltipElement).attr(
                                        "data-original-title",
                                        $(toolTipContent).html());

                                    $(tooltipElement).tooltip();
                                }
                            }
                        });
                    }
                });

                window.locationfiltertoggle = function (filter, $) {
                    //jshint unused:false
                    window.ElementQueries.init();
                };

                window.updateTemplateTagNames = function (filterModel, $) {
                    var deleteFilterIndexes = [];
                    $.each(filterModel.attributes.Values, function (index, filterValue) {
                        switch (filterValue.Label) {
                            case "Web_Public":
                                filterValue.Label = "Public";
                                break;
                            case "Web_LiveOnline":
                                filterValue.Label = "Live Online";
                                break;
                            case "Web_PrivateOnsite":
                                filterValue.Label = "Private Onsite";
                                break;
                            case "Web_SelfpacedOnline":
                                filterValue.Label = "Self Paced Online";
                                break;
                            default:
                                deleteFilterIndexes.push(index);
                        }

                    });

                    $.each(deleteFilterIndexes, function (index, value) {
                        filterModel.attributes.Values.splice(value - index, 1);
                    });

                    $("#arlo-filter-toggle").click(function () {
                        $(this).parent().toggleClass("arlo-show-filter");
                    });
                };
            })(jQuery, window.ElementQueries);
//# sourceURL=pen.js
        </script>



        <script>
            // Toggle between showing and hiding the sidebar when clicking the menu icon
            var mySidebar = document.getElementById("mySidebar");

            function w3_open() {
                if (mySidebar.style.display === 'block') {
                    mySidebar.style.display = 'none';
                } else {
                    mySidebar.style.display = 'block';
                }
            }

            // Close the sidebar with the close button
            function w3_close() {
                mySidebar.style.display = "none";
            }
        </script>
        <!-- Script Slideshow -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </form>
</body>

</html>




