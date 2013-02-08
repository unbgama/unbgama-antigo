<?php get_header(); ?>			
<!-- Inicio do Corpo -->

<?php
$postipo = get_post_type();

// ------------
// SE FOR VIDEO
// ------------
if ($postipo == 'videos') {
    ?>

    <div id="colunaCentral" class="row">
        <div class="post">
            <div class="noticiaPrincipal">
                <div class="infoSingle">
                    <?php if (have_posts()) while (have_posts()) : the_post(); ?>

                            <!--Resumo da noticia principal-->
                            <div class="corpoVideo">   
                                <span class=""><?php the_category(' > '); ?></span>

                                <h1><?php the_title(); ?></h1>

                                <span class="nav-previous"><?php previous_post_link('%link', __('<span class="meta-nav">&larr;</span> Anterior')); ?></span>
                                <span class="nav-next"><?php next_post_link(' | %link', __('Pr&oacute;ximo <span class="meta-nav">&rarr;</span>')); ?></span>

                                <?php
                                $tagvideo = get_post_meta($post->ID, 'id-video', true);
                                if ($tagvideo != "") {
                                    ?>
                                    <iframe width="854" height="510" src="http://www.youtube.com/embed/<?php echo $tagvideo; ?>" frameborder="0" allowfullscreen></iframe>
                            <?php } ?>
                            </div>
                            <?php
                            setPostViews($post->ID);
                        endwhile;
                    ?>
                </div>
            </div>
        </div>
    </div>

<?php } else { ?>

    <!--Sidebar Esquerda-->
    <?php get_sidebar(); ?>
    <div id="colunaCentral" class="span6">
        <div class="post">
            <div class="noticiaPrincipal">
                <?php if (have_posts()) while (have_posts()) : the_post(); ?>
            <?php the_category(); ?>
                        <h1><?php the_title(); ?></h1>
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
                            <?php the_content(); ?>
                            </div>
                        <?php }; ?>
                        <?php
                        setPostViews($post->ID);
                    endwhile;
                ?>
            </div>
        </div>
    </div>
    <div id="colunaDireita" class="span3 omega">
        <div class="eventos">
            <h3>Eventos</h3>
            <ul>
                <?php query_posts('post_type=eventos&posts_per_page=6'); ?>
                <?php if (have_posts()) while (have_posts()) : the_post(); ?>
                        <li><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" alt="<?php the_title(); ?>"><?php the_title(); ?></a></li>
                    <?php endwhile; ?>
    <?php wp_reset_query(); ?>
            </ul>
        </div>
        <div class="comentariosTwitter">
            <!-- Inicio do plugin do twitter -->
            <script charset="utf-8" src="http://widgets.twimg.com/j/2/widget.js"></script>
            <script>
                new TWTR.Widget({
                    version: 2,
                    type: 'profile',
                    rpp: 5,
                    interval: 30000,
                    width: 'auto',
                    height: 210,
                    theme: {
                        shell: {
                            background: '#207f4e',
                            color: '#ffffff'
                        },
                        tweets: {
                            background: '#ffffff',
                            color: '#959497',
                            links: '#207f4e'
                        }
                    },
                    features: {
                        scrollbar: false,
                        loop: false,
                        live: true,
                        behavior: 'default'
                    }
                }).render().setUser('unbgama').start();
            </script>
            <!-- Fim do plugin do twitter -->
        </div>
        <div class="acessosImportantes">
            <h3>Acessos Importantes</h3>
            <a href="http://www.bce.unb.br/">
                <img src="<?php bloginfo('template_directory'); ?>/img/aiBFGA.png" title="Biblioteca FGA" alt="Biblioteca FGA" />
            </a>
            <a href="http://www.unbciencia.unb.br/">
                <img src="<?php bloginfo('template_directory'); ?>/img/aiUci.png" title="UnB Ciência" alt="UnB Ciência" />
            </a>
        </div>
    </div>
    <!-- Inicio do Rodape -->
<?php } get_footer(); ?>