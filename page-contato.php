<?php get_header(); ?>			
<!-- Inicio do Corpo -->

<div id="colunaCentral" class="grid_9">
    <div class="post">
        <div class="noticiaPrincipal">
            <?php if (have_posts()) while (have_posts()) : the_post(); ?>
                    <?php the_category(); ?>
                    <h1><?php the_title(); ?></h1>
			<p><?php the_content(); ?></p>
                    <div class="data">
                        <span><?php the_time('l, d/m/y'); ?></span>
                    </div>
                    <!--Resumo da noticia principal-->
                    <?php if (has_post_thumbnail()) { ?>
                        <figure>
                            <a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" target="<?php the_title(); ?>"><?php the_post_thumbnail(); ?></a>
                            <?php the_post_thumbnail_caption(); ?>
                        </figure>
                        <div class="textoNoticiaPrincipal">
                            
                        </div>
                    <?php }; ?>
                    <?php setPostViews($post->ID);
                endwhile;
            ?>
        </div>
    </div>
</div>
<!--Sidebar Esquerda-->
<?php get_sidebar(); ?>
<!-- Inicio do Rodape -->
<?php get_footer(); ?>
