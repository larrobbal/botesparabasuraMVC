<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Botes para Basura - Catalogo</title>
        <link rel="icon" type="image/x-icon" href="<?=BASE_URL?>assets/img/Logo-transparente.png" />
        <!-- Font Awesome JS -->
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link rel="stylesheet" href="<?=BASE_URL?>css/styles.css"/>
        <link rel="stylesheet" href="<?=BASE_URL?>css/catalog.css"/>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/components/icon.min.css'/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
        <link rel="stylesheet" href="<?=BASE_URL?>assets/vendor/socialfloating/css/socialfloating.css">
        <link rel="stylesheet" href="<?=BASE_URL?>assets/vendor/wppfloating/css/floating-wpp.css">
    </head>
    <body id="page-top" onload="navbarLoad();">
        <!--Contenido-->
        <div id="content">
            <!--MainNav-->
            <nav class="navbar navbar-expand-lg navbar-dark fixed-top zindex-dropdown" id="catalogNav">
                <div class="container-fluid">
                    <button type="button" class="btn btn-link" id="sidebarCollapse" style="text-decoration: none;">
                        <i class="fa fa-bars"></i><span class="mx-1">MENÚ</span>
                    </button>
                    <button class="btn btn-link d-inline-block d-lg-none ml-auto" type="button" aria-expanded="false" aria-label="Inicio" onclick="homeCatalog();">
                        <i class="fa fa-home"></i>
                    </button>
                    <div class="brand-wraper ml-auto justify-content-center"><a class="navbar-brand" href="/botesparabasuraMVC/index.html"><img src="<?=BASE_URL?>assets/img/Logo-transparente.png" class="logo" alt="Botes para Basura"></a></div>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto text-uppercase">
                            <li class="nav-item active">
                                <a class="nav-link" href="<?=BASE_CATALOG?>">Inicio</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!--SideNavBar-->
            <div class="wrapper">
                