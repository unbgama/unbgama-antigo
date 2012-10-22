<?php

?>
<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
    <html class="no-js"> <!--<![endif]-->
        <head>
            <meta charset="UTF-8">
            <title><?php bloginfo('name'); ?> | <?php bloginfo('description'); ?></title>
             <!--[if IE]><script src="<?php bloginfo('template_directory'); ?>js/modernizr.js"></script><![endif]-->
            <link type="text/css" rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/style.css">
            <style> article, aside, figure, footer, header, hgroup, menu, nav, section { display: block; } </style>
            <?php wp_head(); ?>
            <link rel="icon" type="image/png" href="<?php bloginfo('template_directory'); ?>/favicon.ico">
            <!-- Plugin de calendário com jQuery -->
            <link href="<?php bloginfo('template_directory'); ?>/js/calendario/_style/jquery.click-calendario-1.0.css" rel="stylesheet" type="text/css"/>
            <!-- Include Cycle plugin -->
            <script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/js/jquery.min.js"></script>
            <link type="text/css" rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/cycle/prettyPhoto.css">
            <script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/js/cycle/jquery.cycle.all.latest.js"></script>
            <script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/js/cycle/js/jquery.prettyPhoto.js"></script>
            <script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/js/jquery.cookie.js"></script>
            <script>
                if($.cookie("css")) {
                    $("link").attr("href",$.cookie("css"));
                }
                $(document).ready(function() { 
                    $("#botoesAcessibilidade ul li a").click(function() { 
                        $("link").attr("href",$(this).attr('rel'));
                        $.cookie("css",$(this).attr('rel'), {expires: 365, path: '/'});
                        return false;
                    });
                    
                    //Mostrar e ocultar div com fade
                    $("button:first").click(function() {
                        $("p:first").fadeToggle("slow", "linear");
                    });
                });
            </script>
            <!--Inclusão do Google Analytics-->
            <?php include_once 'aplicacoes/includes/analyticstracking.php';?>
        </head>
        <body>
            <div id="barra-brasil">
                <div class="barra">
                    <ul>
                        <li><a href="http://www.acessoainformacao.gov.br" class="ai" title="Acesso à informação" target="_blank"></a></li>
                        <li><a href="http://www.brasil.gov.br/" class="brasilgov" title="Portal de Estado do Brasil" target="_blank"></a></li>
                    </ul>
                </div>
            </div>
            <div id="barraAcessibilidadePrincipal">
                <div class="container_12">
                    <div class="menuAcessoRapido grid_9">
                        <?php wp_nav_menu(array('theme_location' => 'menu-acesso-rapido')); ?>
                    </div>
                    <div id="botoesAcessibilidade" class="grid_3">
                        <ul>
                            <li>
                                <a href="#" title="Alto-Contraste" alt="Auto-Contraste" rel="<?php bloginfo('template_directory'); ?>/styleAC.css">		
                                    <div id="altoContraste"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#" title="Cor Padrão" alt="Cor Padrão" rel="<?php bloginfo('template_directory'); ?>/style.css">		
                                    <div id="estiloPadrao"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="diminuirFonte" title="Diminuir Fonte" alt="Diminuir Fonte">
                                    <div id="diminuirFonte"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="aumentarFonte" title="Aumentar Fonte" alt="Aumentar Fonte">
                                    <div id="aumentarFonte"></div>
                                </a>
                            </li>
                        </ul>
                        <span>contraste | texto</span>
                    </div>
                </div>
            </div>
            <div class="container_12">
                <!-- Inicio Cabecalho -->
                <div id="cabecalho" class="grid_12">
                    <div id="logo" class="grid_5">
                        <a href="<?php bloginfo('url'); ?>" title="Homepage" alt="Homepage">
                            <div id="logoPortalFga"></div>
                        </a>
                    </div>
                    <div id="acessoRapido" class="grid_7">
                        <div class="previsaoTempo">
                            <span><b>Gama</b> | 28ºC Pancada de chuva | Umidade: 42%</span>
                        </div>
                            
                        <div class="pesquisa">
                            <?php get_search_form(); ?>
                        </div>
                    </div>
                        
                    <div id="menuPrincipal" class="alpha grid_12 omega">
                        <?php wp_nav_menu(array('theme_location' => 'menu-principal')); ?>
                    </div>
                    <!--Submenu-->
                    <div id="subMenu">
                        <ul class="subMenuGeral"></ul>
                    </div>
                    <?php if (is_home()) { //se for pagina inicial ?>
                        <div id="banner" class="alpha grid_12 omega">
                            <a href="#"  id="navBannerEsq" title="Banner Anterior" alt="Banner Anterior"><div id="navegacaoEsquerda"></div></a>
                            <a href="#" id="navBannerDir" title="Proximo Banner" alt="Proximo Banner"><div id="navegacaoDireita"></div></a>
                                
                            <div id="bannerImagem" class="alpha grid_12 omega">
                                <?php query_posts('post_type=banners'); ?>
                                <?php if (have_posts()) while (have_posts()) : the_post(); ?>
                                        <div class="slide">
                                            <?php the_post_thumbnail('tamanhoDoBanner'); ?>
                                        </div>
                                    <?php endwhile; ?>
                                <?php wp_reset_query(); ?>
                            </div>
                            <div id="bannerDados" class="alpha grid_12 omega">
                                <?php query_posts('post_type=banners'); ?>
                                <?php if (have_posts()) while (have_posts()) : the_post(); ?>
                                        <div class="slide alpha grid_12 omega">
                                            <div id="chamadaBanner" class="alpha grid_12 omega">
                                                <hgroup>
                                                    <h3><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" alt="<?php the_title(); ?>"><?php the_field('titulo'); ?></a></h3>
                                                    <h4><?php the_field('subtitulo'); ?></h4>
                                                </hgroup>
                                                <div id="dataChamadaBanner" class="grid_1">
                                                    <span class="diaBanner">
                                                        <?php
                                                        $date = DateTime::createFromFormat('d/m/Y', get_field('data'));
                                                        echo $date->format('d');
                                                        ?>	
                                                    </span>
                                                    <span class="mesBanner"><?php echo $date->format('m'); ?>.<?php echo $date->format('y'); ?></span>
                                                </div>
                                                    
                                            </div>
                                        </div>
                                    <?php endwhile; ?>
                                <?php wp_reset_query(); ?>
                            </div>
                        </div><!--Fim da DIV Banner--->
                    <?php }; ?>
                    <!--Inicio de Breadcrumbs--->
                    
                    <?php if (is_page()) { //se for pagina page_   ?>
                        <div id="" class="alpha grid_12 omega"></div>
                    <?php }; ?>
                            
                    <?php if (is_search()) { //se for pagina page_   ?>
                        <div id="" class="alpha grid_12 omega"></div>
                    <?php }; ?>
                            
                    <?php if (is_single()) { //se for post   ?>
                        <div id="" class="alpha grid_12 omega">
                            
                        </div>
                    <?php }; ?>
                </div>
                <div id="breadcrumbWP" class="alpha grid_12">
                    <ul class="breadcrumb">
                        <li><?php if (function_exists('bcn_display')) { bcn_display(); }?></li>
                    </ul>
                </div>