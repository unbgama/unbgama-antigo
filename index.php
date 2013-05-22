<?php get_header(); ?>

<!-- slider -->
<div id="banner" class=" row ">
    <?php echo get_new_royalslider(1); ?>
</div>
<!-- Inicio do Corpo -->
<div id="corpo" class="row">

    <!--Sidebar Esquerda-->
    <?php get_sidebar(); ?>

    <!-- coluna central -->
    <div id="colunaCentral" class="span6">
            <div class="noticiaPrincipal row">
                <?php query_posts('post_type=post&posts_per_page=1'); ?>
                <?php if (have_posts()) while (have_posts()) : the_post(); ?>
                        <?php the_category(); ?>
                        <h1><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" alt="<?php the_title(); ?>"><?php the_title(); ?></a></h1>
                        <div class="data">
                            <span><?php the_time('l, d/m/y'); ?></span>
                        </div>
                        <!--Resumo da noticia principal-->
                        <?php the_excerpt(); ?>
                        <?php if (has_post_thumbnail()) { ?>
                            <figure>
                                <a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" target="<?php the_title(); ?>"><?php the_post_thumbnail(); ?></a>
                                <?php the_post_thumbnail_caption(); ?>
                            </figure>
                        <?php }; ?>
                    <?php endwhile; ?>
                <?php wp_reset_query(); ?>
            </div>
            <div class="noticiasSecundarias row">
                <div id="noticiaEsquerda" class="span3 alpha">
                    <?php query_posts('post_type=post&posts_per_page=1&offset=1'); ?>
                    <?php if (have_posts()) while (have_posts()) : the_post(); ?>
                            <?php the_category(); ?>
                            <h2><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" alt="<?php the_title(); ?>"><?php the_title(); ?></a></h2>
                            <?php the_excerpt(); ?>
                        <?php endwhile; ?>
                    <?php wp_reset_query(); ?>
                </div>
                <div id="noticiaDireita" class="span3 omega">
                    <?php query_posts('post_type=post&posts_per_page=1&offset=2'); ?>
                    <?php if (have_posts()) while (have_posts()) : the_post(); ?>
                            <?php the_category(); ?>
                            <h2><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" alt="<?php the_title(); ?>"><?php the_title(); ?></a></h2>
                            <?php the_excerpt(); ?>
                        <?php endwhile; ?>
                    <?php wp_reset_query(); ?>
                </div>
            </div>
    </div>
    <div id="colunaDireita" class="span3 omega">
        <div class="eventos">
            <h3>Eventos</h3>
            <ul>
                <?php
                query_posts(
                        array(
                            'post_type' => 'eventos',
                            'posts_per_page' => -1,
                            'meta_key' => 'data_de_inicio',
                            'meta_compare' => '>=',
                            'meta_value' => date('Y-m-d'),
                            'orderby' => 'data_de_inicio',
                            'order' => 'ASC'
                        )
                );
                ?>
                <?php if (have_posts()) while (have_posts()) : the_post(); ?>
                        <?php $date = DateTime::createFromFormat('Y-m-d', get_field('data_de_inicio')); ?>
                        <li><?php echo $date->format('d'); ?>/<?php echo $date->format('m'); ?>/<?php echo $date->format('Y'); ?><?php date('d/m/Y'); ?> - <a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" alt="<?php the_title(); ?>"><?php the_title(); ?></a></li>
                    <?php endwhile; ?>
                <?php wp_reset_query(); ?>
            </ul>
        </div>
        <div class="acessosImportantes">
            <h3>Acessos Importantes</h3>
            <a href="http://www.bce.unb.br/">
                <img src="<?php bloginfo('template_directory'); ?>/img/aiBFGA.png" title="Biblioteca FGA" alt="Biblioteca FGA" />
            </a>
            <a href="http://www.unbciencia.unb.br/">
                <img src="<?php bloginfo('template_directory'); ?>/img/aiUCi.png" title="UnB Ciência" alt="UnB Ciência" />
            </a>
        </div>
    </div><!-- end colunaDireita -->
</div><!-- end CORPO -->
<?php get_footer(); ?>
