<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
    <html class="no-js"> <!--<![endif]-->
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
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

            <!--Chamando meta tags do facebook-->
            <meta property="og:title" content=""/>
            <meta property="og:image" content="<?php bloginfo('template_directory') ?>/img/logo_simbolo.png"/>
            <meta property="og:site_name" content="FGA - UnB Gama | O novo endereço da tecnologia"/>
            <meta property="og:description" content="<?php bloginfo('description') ?>"/>
            <!-- Verificação do Google Webmaster Tools -->
            <meta name="google-site-verification" content="MV0v8zdZxW-UTG9A3a7ARHgmk6ClB9JrO4EoVVwFZrI" />

            <script src="<?php bloginfo('template_directory'); ?>js/modernizr.js"></script>
            <link type="text/css" rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/style.css">
            <style> article, aside, figure, footer, header, hgroup, menu, nav, section { display: block; } </style>
            

            <!-- Le Icones para diferentes dispositivos -->
            <!-- TODO
            <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php bloginfo('template_directory'); ?>/img/ico/apple-touch-icon-144-precomposed.png">
            <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php bloginfo('template_directory'); ?>/img/ico/apple-touch-icon-114-precomposed.png">
              <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php bloginfo('template_directory'); ?>/img/ico/apple-touch-icon-72-precomposed.png">
                            <link rel="apple-touch-icon-precomposed" href="<?php bloginfo('template_directory'); ?>/img/ico/apple-touch-icon-57-precomposed.png">
                                           <link rel="shortcut icon" href="<?php bloginfo('template_directory'); ?>/img/ico/favicon.png">
            -->
            <link rel="icon" type="image/png" href="<?php bloginfo('template_directory'); ?>/favicon.ico">

			<!-- Plugin de calendário com jQuery -->
            <link href="<?php bloginfo('template_directory'); ?>/js/calendario/_style/jquery.click-calendario-1.0.css" rel="stylesheet" type="text/css"/>
            <!-- Include Cycle plugin -->
            <link type="text/css" rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/cycle/prettyPhoto.css">

            <!-- Le Bootstrap -->
            <link href="<?php bloginfo('template_directory'); ?>/css/bootstrap.min.css" rel="stylesheet" /> 
            <link href="<?php bloginfo('template_directory'); ?>/css/bootstrap-responsive.min.css" rel="stylesheet" /> 
            <script href="<?php bloginfo('template_directory'); ?>/js/bootstrap.min.js"></script>
            <script href="<?php bloginfo('template_directory'); ?>/js/bootstrap-responsive.min.js"></script>

	    <?php wp_head(); ?>
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
                <div class="container">
                    <div class="menuAcessoRapido span9">
                        <?php wp_nav_menu(array('theme_location' => 'menu-acesso-rapido')); ?>
                    </div>
                  </div>
            </div>
            <div class="container">
                <!-- Inicio Cabecalho -->
                <div id="cabecalho" class="row">
                    <div id="logo" class="span5">
                        <a href="<?php bloginfo('url'); ?>" title="Homepage" alt="Homepage">
                            <div id="logoPortalFga"></div>
                        </a>
                    </div>
                    <div id="acessoRapido" class="span7">                            
                        <div class="pesquisa">
                            <?php get_search_form(); ?>
                        </div>
                    </div>
                </div>
                        
                <div id="menuPrincipal" class="row">
                    <?php wp_nav_menu(array('theme_location' => 'menu-principal')); ?>
                </div>
                <!--Submenu-->
                <div id="subMenu">
                    <ul class="subMenuGeral"></ul>
                </div>