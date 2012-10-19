<?php
/**
 * @package WordPress
 * @subpackage UnbGama
 * @since UnbGama 1.0
 */
?>

<?php get_header(); ?>			
<!-- Inicio do Corpo -->
<!--Sidebar Esquerda-->
<?php get_sidebar(); ?>
<div id="colunaCentral" class="grid_6">
    <section id="primary">
        <div id="content" role="main">
            <!--Filtro dos professores-->
            <div id="filtroProfessores">
                <img src="<?php bloginfo('template_directory')?>/img/barraFiltragemFalsa.jpg" />
            </div>
            
            <?php global $query_string;?>
            <?php query_posts( $query_string . '&order=ASC&posts_per_page=200' );?>
            <?php if (have_posts()) : ?>
                <div id="resultadoBusca" class="alpha grid_12">
                    <?php while (have_posts()) : the_post(); ?>
                        <div class="professoresPerfil alpha grid_3 omega">
                            <a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" alt="<?php the_title(); ?>">
                                <img src="<?php the_field('foto');?>" />
                            </a>
                            <h2><?php the_title(); ?></h2>
                            <span>Contato:</span><span><a href="mailto:<?php the_field('contato');?>"><?php the_field('contato');?></a></span>
                            <p>Ministra as matérias</p>
                            <span>Coordenação:</span><b><?php the_field('horario_de_coordenacao');?> - <?php the_field('local_da_coordenacao')?></b>
                            <br />
                            <button class="btn">Engenharia</button>
                            <button class="btn dropdown-toggle" data-toggle="dropdown">
                                <span class="caret"><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" alt="<?php the_title(); ?>">Ver Perfil</a></span>
                            </button>
                        </div>
                    <?php endwhile; ?>   
                </div>
                <button id="voltaTopo">topo</button>
            <?php else : ?>
                <article id="post-0" class="post no-results not-found">
                    <header class="entry-header">
                        <h1 class="entry-title"><?php printf(__('0 resultado(s) para "%s" encontrado(s)!', 'unbgama'), '<span>' . get_search_query() . '</span>'); ?></h1>
                    </header><!-- .entry-header -->
                    <div class="entry-content">
                        <p><?php _e('Desculpe, mas a pesquisa não retornou nenhum resultado. Tente uma palavra-chave diferente.', 'unbgama'); ?></p>
                    </div><!-- .entry-content -->
                </article><!-- #post-0 -->
            <?php endif; ?>
        </div><!-- #content -->
    </section><!-- #primary -->
</div>
<div id="colunaDireita" class="grid_3 omega">
    <?php get_sidebar(); ?>
</div>
<!-- Inicio do Rodape -->
<?php get_footer(); ?>