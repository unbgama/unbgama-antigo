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
<div id="colunaCentral" class="row">
    <section id="primary">
        <div id="content" role="main">
            <?php if (have_posts()) : ?>
	    
		<header class="page-header">
			<h1 class="page-title">
				<?php if ( is_day() ) : ?>
					<?php printf( __( 'Dia %s', 'unbgama' ), '<span>' . get_the_date() . '</span>' ); ?>
				<?php elseif ( is_month() ) : ?>
					<?php printf( __( 'M&ecirc;s %s', 'unbgama' ), '<span>' . get_the_date( _x( 'F Y', 'monthly archives date format', 'unbgama' ) ) . '</span>' ); ?>
				<?php elseif ( is_year() ) : ?>
					<?php printf( __( 'Ano de %s', 'unbgama' ), '<span>' . get_the_date( _x( 'Y', 'yearly archives date format', 'unbgama' ) ) . '</span>' ); ?>
				<?php else : ?>
					<?php _e( 'Blog Archives', 'unbgama' ); ?>
				<?php endif; ?>
			</h1>
		</header>
	    
                <div id="resultadoBusca">
                    <?php while (have_posts()) : the_post(); ?>
                        <h2><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" alt="<?php the_title(); ?>"><?php the_title(); ?></a></h2>
                        <span><?php the_time('l, j \d\e F \d\e Y'); ?></span>
                        <a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" alt="<?php the_title(); ?>">
							<?php the_excerpt(); ?>
						</a>

                    <?php endwhile; ?>   
                </div>
                <?php paginacao(); //unbgama_content_nav('nav-below'); ?>
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
<div id="colunaDireita" class="span3 omega">
		<?php get_sidebar(); ?>
</div>
<!-- Inicio do Rodape -->
<?php get_footer(); ?>