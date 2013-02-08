<?php
/*
  Template Name: Pagina de pos-graduacao
 */
?>
<?php get_header(); ?>			
<!-- Inicio do Corpo -->
<div id="corpo" class="row">
    <div id="colunaEsquerda" class="span3 alpha">
        <ul>
            <?php get_sidebar(); ?>
        </ul>
    </div>
        <div id="colunaCentral" class="span9 omega">
            <div class="post">
                <div class="noticiaPrincipal">
                    <?php query_posts('post_type=cursos&nivel=pos-graduacao'); ?>
                    <h1><?php the_title(); ?></h1>
                    <?php if (have_posts()) while (have_posts()) : the_post(); ?>
                            <ul class="listaCursosPosGraduacao">
                                <li>
									<a class="tituloPostPosGraduacao" href="<?php the_permalink(); ?>" title="Clique para ver a descrição do curso" alt="Clique para ver a descrição do curso" ><?php the_title(); ?>
									<!--Resumo da noticia principal-->
									<a href="<?php the_permalink();?>" title="Clique para ver a descrição do curso" alt="Clique para ver a descrição do curso" class="linkExcerpt"><?php the_field('o_que_e_o_curso');?></a></a>
								</li>
                            </ul>
                            
                        <?php endwhile; ?>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Inicio do Rodape -->
<?php get_footer(); ?>
			
