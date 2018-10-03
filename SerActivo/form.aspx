<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>

<!DOCTYPE html>

<html xml:lang="es" lang="es">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Slider</title>



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
<body class="logo-type-preset1 header-headroom-enabled-scroll showcase-bg-transition-top-to-bottom showcase-type-preset1 feature-type-preset1 mainbody-overlay-light extension-type-preset1 footer-overlay-dark copyright-overlay-dark font-family-anacron font-size-is-default menu-type-dropdownmenu layout-mode-responsive col12 option-com-content menu-home -feb14-home" id="scrollheader">
  
    <!-- slider -->
    <section id="rt-showcase-surround">
        <div id="rt-showcase" class="slider-container rt-overlay-dark">
            <div class="rt-container slider-container">
                <div class="rt-grid-12 rt-alpha rt-omega">
                    <link rel="stylesheet" href="temp/style.css">
                    <!--[if IE]><link rel="stylesheet" href="http://cssslider.com/sliders/demo-2/engine1/ie.css"><![endif]-->
                    <!--[if lte IE 9]><script type="text/javascript" src="http://cssslider.com/sliders/demo-2/engine1/ie.js"></script><![endif]-->
                    <div class="csslider1 autoplay">
                        <input name="cs_anchor1" id="cs_slide1_0" type="radio" class="cs_anchor slide">
                        <input name="cs_anchor1" id="cs_slide1_1" type="radio" class="cs_anchor slide">
                        <input name="cs_anchor1" id="cs_slide1_2" type="radio" class="cs_anchor slide">
                        <input name="cs_anchor1" id="cs_slide1_3" type="radio" class="cs_anchor slide">
                        <input name="cs_anchor1" id="cs_play1" type="radio" class="cs_anchor" checked="">
                        <input name="cs_anchor1" id="cs_pause1" type="radio" class="cs_anchor">
                        <ul>
                            <div style="width: 100%; visibility: hidden; font-size: 0px; line-height: 0;">
                                <img src="temp/buns.jpg" style="width: 100%;">
                            </div>
                            <li class="num0 img">
                                <img src="temp/buns.jpg" alt="Buns" title="Buns">
                            </li>
                            <li class="num1 img">
                                <img src="temp/croissant.jpg" alt="Croissant" title="Croissant">
                            </li>
                            <li class="num2 img">
                                <img src="temp/lemonpie.jpg" alt="Lemon pie" title="Lemon pie">
                            </li>
                            <li class="num3 img">
                                <img src="temp/teaandcake.jpg" alt="Breakfast" title="Breakfast">
                            </li>

                        </ul>
                        <div class="cs_description">
                            <label class="num0">
                                <span class="cs_title"><span class="cs_wrapper">Buns</span></span>
                                <br>
                                <span class="cs_descr"><span class="cs_wrapper">Curd buns</span></span>
                            </label>
                            <label class="num1">
                                <span class="cs_title"><span class="cs_wrapper">Croissant</span></span>
                                <br>
                                <span class="cs_descr"><span class="cs_wrapper">Chocolate croissant</span></span>
                            </label>
                            <label class="num2">
                                <span class="cs_title"><span class="cs_wrapper">Lemon pie</span></span>
                                <br>
                                <span class="cs_descr"><span class="cs_wrapper">Two pieces of lemon pie</span></span>
                            </label>
                            <label class="num3">
                                <span class="cs_title"><span class="cs_wrapper">Breakfast</span></span>
                                <br>
                                <span class="cs_descr"><span class="cs_wrapper">Chocolate croissant</span></span>
                            </label>
                        </div>

                        <div class="cs_arrowprev">
                            <label class="num0" for="cs_slide1_0"></label>
                            <label class="num1" for="cs_slide1_1"></label>
                            <label class="num2" for="cs_slide1_2"></label>
                            <label class="num3" for="cs_slide1_3"></label>
                        </div>
                        <div class="cs_arrownext">
                            <label class="num0" for="cs_slide1_0"></label>
                            <label class="num1" for="cs_slide1_1"></label>
                            <label class="num2" for="cs_slide1_2"></label>
                            <label class="num3" for="cs_slide1_3"></label>
                        </div>

                        <!-- Son las vistas en miniaturas -->
                        <div class="cs_bullets">
                            <label class="num0" for="cs_slide1_0">
                                <span class="cs_point"></span>
                                <span class="cs_thumb">
                                    <img src="temp/buns(1).jpg" alt="Buns" title="Buns"></span>
                            </label>
                            <label class="num1" for="cs_slide1_1">
                                <span class="cs_point"></span>
                                <span class="cs_thumb">
                                    <img src="temp/croissant(1).jpg" alt="Croissant" title="Croissant"></span>
                            </label>
                            <label class="num2" for="cs_slide1_2">
                                <span class="cs_point"></span>
                                <span class="cs_thumb">
                                    <img src="temp/lemonpie(1).jpg" alt="Lemon pie" title="Lemon pie"></span>
                            </label>
                            <label class="num3" for="cs_slide1_3">
                                <span class="cs_point"></span>
                                <span class="cs_thumb">
                                    <img src="temp/teaandcake(1).jpg" alt="Breakfast" title="Breakfast"></span>
                            </label>
                        </div>
                    </div>

                </div>
                <div class="clear"></div>
            </div>
        </div>
    </section>
    <!-- /slider -->
    <section id="rt-main-surround">
        <div id="rt-transition">
            <div id="rt-mainbody-surround">
                <div id="rt-top" class="rt-overlay-light">
                    <div class="rt-container hide-pointer">
                        <div class="rt-grid-12 rt-alpha rt-omega">
                            <div class="rt-block fp-top rt-center rt-big-title">
                                <div class="module-surround">
                                    <div class="module-content"></div>
                                </div>
                            </div>

                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
                </div>
            </div>
        </section>
</body>
</html>

