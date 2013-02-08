<?php get_header(); ?>			
<!-- Inicio do Corpo -->

<div id="colunaCentral" class="span9">
    <div id="colunaEsquerda" class="span3 alpha">
        <ul>
            <?php get_sidebar(); ?>
        </ul>
    </div>
	<div class="post">
        <div class="noticiaPrincipal">
			<div id="coordenadoresCursos">
				<?php if (have_posts()) while (have_posts()) : the_post(); ?>
                    <h1><?php the_title(); ?></h1>
					<div class="textoNoticiaPrincipal">
						<?php the_content(); ?>
					</div>
                    <!--Resumo da noticia principal-->
                    <?php if (has_post_thumbnail()) { ?>
                        <figure>
                            <a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" target="<?php the_title(); ?>"><?php the_post_thumbnail(); ?></a>
                            <?php the_post_thumbnail_caption(); ?>
                        </figure>
                        
					<?php }; ?>
					<?php setPostViews($post->ID);
						endwhile;
					?>
			</div>
            
        </div>
    </div>
</div>
<!--Sidebar Esquerda-->
<!-- Inicio do Rodape -->
<?php get_footer(); ?>