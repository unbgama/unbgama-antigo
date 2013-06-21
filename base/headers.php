			<title>
				<?php
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
					echo ' | ' . sprintf( __( 'Page %s', 'twentyeleven' ), max( $paged, $page ) );

				?>
			</title>
			
			<meta name="google-site-verification" content="ECWcVLnxOQzBY0zkBbdPsbQb-MRRtrFm-E-iQKT20gQ" />
			<meta name="viewport" content="width=device-width, user-scalable=no">
            <link rel="icon" type="image/png" href="<?php bloginfo('template_directory'); ?>/favicon.ico">
            <link type="text/css" rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/bootstrap.css">
            <link type="text/css" rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/bootstrap-responsive.css">
            <link type="text/css" rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/style.css">
			<script src="<?php bloginfo('template_directory'); ?>/js/jquery.min.js"></script>
			<script src="<?php bloginfo('template_directory'); ?>/js/bootstrap.js"></script>

            <script src="<?php bloginfo('template_directory'); ?>js/modernizr.js"></script>

            <!-- Demais scripts estão no rodapé -->
            
			<!--Chamando meta tags do facebook-->
			<meta property="og:title" content=""/>
			<meta property="og:image" content="<?php bloginfo('template_directory'); ?>img/logo_simbolo.png"/>
			<meta property="og:site_name" content="FGA - UnB Gama | O novo endereço da tecnologia"/>
			<meta property="og:description" content="Semestre novo, alunos novos e como entender o que se passa na cabeça de um calouro?  Após uma greve que fez com que
			nossos notáveis alunos aproveitassem um bom tempo de descanso desde a sonhada aprovação."/>