<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
    <html class="no-js"> <!--<![endif]-->
        <head>
            <meta charset="UTF-8">
            <title><?php
            /*
             * Print the <title> tag based on what is being viewed.
             */
            global $page, $paged;
    
            wp_title( '|', true, 'right' );
    
            // Add the blog name.
            bloginfo( 'name' );
    
            // Add the blog description for the home/front page.
            $site_description = get_bloginfo( 'description', 'display' );
            if ( $site_description && ( is_home() || is_front_page() ) )
                    echo " | $site_description";
    
            // Add a page number if necessary:
            if ( $paged >= 2 || $page >= 2 )
                    echo ' | ' . sprintf( __( 'Pagina %s', 'twentyeleven' ), max( $paged, $page ) );
    
            ?></title>
             <!--[if IE]><script src="<?php bloginfo('template_directory'); ?>js/modernizr.js"></script><![endif]-->
            <link type="text/css" rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/style.css">
            <style> article, aside, figure, footer, header, hgroup, menu, nav, section { display: block; } </style>
            <?php wp_head(); ?>
            <link rel="icon" type="image/png" href="<?php bloginfo('template_directory'); ?>/favicon.ico">
            <!-- Verificação do Google Webmaster Tools -->
			<meta name="google-site-verification" content="ECWcVLnxOQzBY0zkBbdPsbQb-MRRtrFm-E-iQKT20gQ" />
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
					
					$('#voltaTopo').click(
						function (e) {
							$('html, body').animate({scrollTop: '0px'}, 800);
						}
					);
                });
            </script>
			<!--Chamando meta tags do facebook-->
			<meta property="og:title" content=""/>
			<meta property="og:image" content="<?php bloginfo('template_directory') ?>/img/logo_simbolo.png"/>
			<meta property="og:site_name" content="FGA - UnB Gama | O novo endereço da tecnologia"/>
			<meta property="og:description" content="<?php bloginfo('description') ?>"/>
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
                        <div class="previsaoTempo" style="color: #CCC">
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
                            <?php echo get_new_royalslider(1); ?>
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
