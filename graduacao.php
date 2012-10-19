<?php
/*
  Template Name: Pagina de graduacao
 */
?>
<?php get_header(); ?>			
<!-- Inicio do Corpo -->
<div id="corpo" class="grid_12">
    <div id="colunaEsquerda" class="grid_3 alpha">
        <ul>
            <?php get_sidebar(); ?>
        </ul>

    </div>
    <div id="colunaCentral" class="grid_9 omega">
        <div class="post">
            <div class="paginaGraduacao">
               
                <?php query_posts('post_type=cursos&nivel=graduacao'); ?>
                <h1><?php the_title(); ?></h1>
                <?php echo term_description( '', get_query_var( 'taxonomy' ) ); ?>
                <?php if (have_posts()) while (have_posts()) : the_post(); ?>
                        <ul>
                            <li><a href="<?php the_permalink();?>" class="tipoGraduacao"><?php the_title(); ?></a></li>
                        </ul>   
                        <!--Resumo da noticia principal-->
                        <a href="<?php the_permalink();?>" class="linkExcerpt"><?php the_excerpt();?></a>
                    <?php endwhile; ?>
            </div>
        </div>
    </div>
</div>
<!-- Inicio do Rodape -->
<?php get_footer(); ?>