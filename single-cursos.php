<?php get_header(); ?>			
<!-- Inicio do Corpo -->
<div id="corpo" class="grid_12">
    <!--Sidebar Esquerda-->
	<div id="banner" class="alpha grid_12 omega">
		<div id="bannerImagemInfoSingle" class="alpha grid_12 omega">
			<?php the_post_thumbnail('tamanhoDoBanner'); ?>
		</div>
	</div>
    <?php get_sidebar(); ?>
    <div id="colunaCentral" class="alpha grid_9">
        <div class="post">
            <div class="noticiaPrincipal">
            <div class="infoSingle grid_9">
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
                            <li>Habilitação: <span class="informacoesCurso"><?php the_field('habilitacao'); ?></span></li>
							<!--Campo ainda não dinâmico-->
							<!-- Linha comentada pelo Lindomar em 05/10/12 -->
							<!-- <li>Tipo: <span class="informacoesCurso"><i>Lato Sensu</i></span></li>-->
                            <li>Carga-horária total: <span class="informacoesCurso"><?php the_field('carga_horaria_total'); ?></span></li>
                            <li>Duração: <span class="informacoesCurso"><?php the_field('duracao'); ?></span></li>
                            <li>Unidade Acadêmica: <span class="informacoesCurso"><?php the_field('unidade_academica'); ?></span></li>
                            <li>Turno: <span class="informacoesCurso"><?php the_field('turno'); ?></span></li>
                            <li>Numero de semestre: <span class="informacoesCurso"><?php the_field('numero_de_semestres'); ?></span></li>
                            
                            <!--<li>Grade curricular: <?php //the_field('grade_curricular'); ?></li>-->
                            <li>Email do Coordenador: <span class="informacoesCurso"><?php the_field('contatos'); ?></span></li>
							<li>Coordenador(a): 
							<?php $coordenadores_dos_cursos = get_field('coordenador_do_curso');?>
							<?php if( $coordenadores_dos_cursos ): ?>
								<?php foreach( $coordenadores_dos_cursos as $coordenador_do_curso ): ?>
									<span class="informacoesCurso">
										<a href="<?php echo get_permalink( $coordenador_do_curso->ID ); ?>">
											<?php echo get_the_title( $coordenador_do_curso->ID ); ?>
										</a>
									</span>
								<?php endforeach; ?>
							<?php endif; ?>
							</li>
                        </ul>
                        <h2 class="listaSinalizada">O que é o curso?</h2>
                        <?php the_field('o_que_e_o_curso'); ?>						
                        <h2 class="listaSinalizada">Perfil profissional</h2>
                        <?php the_field('perfil_profissional'); ?>
						<h2 class="listaSinalizada">Esclarecimentos sobre a Matriz Curricular</h2>
						<span class="listaMatrizCurricular"><?php the_field('comentarios_sobre_a_grade'); ?></span>
						<br />
                    <?php endwhile; ?>
            </div>
            </div>
        </div>
    </div>
    </div>
</div>
<!-- Inicio do Rodape -->
<?php get_footer(); ?>