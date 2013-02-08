<?php get_header(); ?>			
<!-- Inicio do Corpo -->
<div id="corpo" class="row">
    <!--Sidebar Esquerda-->
    <?php get_sidebar(); ?>
    <div id="colunaCentral" class="span9 omega">
        <div class="post">
            <div class="noticiaPrincipal">
                <?php if (have_posts()) while (have_posts()) : the_post(); ?>
                        <?php the_category(); ?>
                        <h1><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" alt="<?php the_title(); ?>"><?php the_title(); ?></a></h1>
                        <div class="data">
                            <p>Acontecerá em: <span><?php $date = DateTime::createFromFormat('d/m/Y', get_field('data'));
                echo $date->format('d/m/Y');
                        ?></span></p>
                        </div>
                        <!--Resumo da noticia principal-->
                        <div class="textoNoticiaPrincipal">
                        <?php the_content(); ?>
                        </div>
                    <?php endwhile; ?>
                <?php wp_reset_query(); ?>
            </div>
        </div>
    </div>
</div>
<!-- Inicio do Rodape -->
<?php get_footer(); ?>