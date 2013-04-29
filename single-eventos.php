<?php get_header(); ?>			
<!-- Inicio do Corpo -->
<div id="corpo" class="grid_12">
    <!--Sidebar Esquerda-->
    <?php get_sidebar(); ?>
    <div id="colunaCentral" class="grid_9 omega">
        <div class="post">
            <div class="noticiaPrincipal">
                <div class="infoSingle">
                <?php if (have_posts()) while (have_posts()) : the_post(); ?>
                        <?php the_category(); ?>
                        <h1><?php the_title(); ?></h1>
                        <?php if (get_field('videos')): ?>
                            <ul>
                                <?php while (the_repeater_field('videos')): ?>
                                    <li><a href="http://youtube.com/watch?v=<?php the_sub_field('id_do_video'); ?>" title="<?php the_sub_field('nome_video'); ?>" rel="prettyPhoto" target="_blank"><?php the_sub_field('nome_video'); ?></a></li>
                                <?php endwhile; ?>
                            </ul>
                        <?php endif; ?>
                        <!--Resumo da noticia principal-->
                        <ul>
                            <li><span>Local:</span> <?php the_field('local'); ?></li>
                            <li>Data de Inicio: <?php the_field('data_de_inicio'); ?></li>
                            <li>Data de Término: <?php the_field('data_de_termino'); ?></li>
                            <li>Horário: <?php the_field('horario'); ?></li>
                            <li>Tipo de Evento: <?php the_field('tipo'); ?></li>
                            <li>Contato: <?php the_field('contato'); ?></li>
                            <li>Mais informações: <a href="<?php the_field('mais_informacoes'); ?>" title="<?php the_title(); ?>" alt="<?php the_title(); ?>"><?php the_field('mais_informacoes'); ?></a></li>
                        </ul>
                    <?php endwhile; ?>
            </div>
            </div>
        </div>
    </div>
</div>
<!-- Inicio do Rodape -->
<?php get_footer(); ?>