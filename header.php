<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
        <head>
            <meta charset="UTF-8">
	    <!-- Verificação do Google Webmaster Tools -->
            
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

            <meta name="google-site-verification" content="ECWcVLnxOQzBY0zkBbdPsbQb-MRRtrFm-E-iQKT20gQ" />
			<meta name="viewport" content="width=device-width, initial-scale=1.0">

            <link rel="icon" type="image/png" href="<?php bloginfo('template_directory'); ?>/favicon.ico">
            <link type="text/css" rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/bootstrap.css">
            <link type="text/css" rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/bootstrap-responsive.css">
            <link type="text/css" rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/style.css">

            <script src="<?php bloginfo('template_directory'); ?>js/modernizr.js"></script>

            <!-- Demais scripts estão no rodapé -->
            
	    <!--Chamando meta tags do facebook-->
	    <meta property="og:title" content=""/>
	    <meta property="og:image" content="http://fga.unb.br/wp-content/themes/unbgama/img/logo_simbolo.png"/>
	    <meta property="og:site_name" content="FGA - UnB Gama | O novo endereço da tecnologia"/>
	    <meta property="og:description" content="Semestre novo, alunos novos e como entender o que se passa na cabeça de um calouro?  Após uma greve que fez com que
	    nossos notáveis alunos aproveitassem um bom tempo de descanso desde a sonhada aprovação."/>
	    <?php wp_head(); ?>
        </head>
        <body>
            <div id="barra-brasil" class="row">
                <div class="barra">
                    <ul>
                        <li><a href="http://www.acessoainformacao.gov.br" class="ai" title="Acesso à informação" target="_blank"></a></li>
                        <li><a href="http://www.brasil.gov.br/" class="brasilgov" title="Portal de Estado do Brasil" target="_blank"></a></li>
                    </ul>
                </div>
            </div>
            <div id="barraAcessibilidadePrincipal" class="row">
                <div>
                    <div class="menuAcessoRapido navbar">
						<div class="navbar-inner">
							
							  <?php wp_nav_menu(array('theme_location' => 'menu-acesso-rapido', 'menu_class' => 'nav')); ?>
						    
						</div>
                    </div>
                    <div id="botoesAcessibilidade">
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
						<!--SUBSTITUIR POR ICONES!-->
                        <!--<span>contraste | texto</span>-->
                    </div>
                </div>
            </div>
            <div class="container">
                <!-- Inicio Cabecalho -->
                <div id="cabecalho" class="row">
                    <div id="logo" class="span6">
                        <a href="<?php bloginfo('url'); ?>" title="Homepage" alt="Homepage">
								<img src="<?php bloginfo('template_directory'); ?>/img/logo.png" alt="Home" />
                        </a>
                    </div>
                    <div id="acessoRapido" class="span6">
                        <div class="previsaoTempo">
                            <!--<span><b>Gama</b> | 27ºC Parcialmente nublado | Umidade: 51%</span>-->
                        </div>
                            
                        <div class="pesquisa span4 offset3">
                            <?php get_search_form(); ?>
                        </div>
                    </div>
				</div>           
                <div class="navbar">
					<div class="navbar-inner">
						<?php wp_nav_menu(array('theme_location' => 'menu-principal', 'menu_class' => 'nav')); ?>
					</div>
                </div>
                <div id="breadcrumbWP" class="row">
                    <ul class="breadcrumb">
                        <li><?php if (function_exists('bcn_display')) { bcn_display(); }?></li>
                    </ul>
                </div>
