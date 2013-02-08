<?php get_header(); ?>			
<!-- Inicio do Corpo -->
<div id="corpo" class="row">
    <!--Sidebar Esquerda-->
	<div id="banner" class="alpha row omega">
		<div id="bannerImagemInfoSingle" class="alpha row omega">
			<?php the_post_thumbnail('tamanhoDoBanner'); ?>
		</div>
	</div>
    <?php get_sidebar(); ?>
    <div id="colunaCentral" class="alpha span9">
        <div class="post">
            <div class="noticiaPrincipal">
            <div class="infoSingle span9">
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
                            <li>Campus: <span class="informacoesCurso"><?php the_field('campus'); ?></span></li>
                            <li>Turno: <span class="informacoesCurso"><?php the_field('turno'); ?></span></li>
                            <li>Numero de semestre: <span class="informacoesCurso"><?php the_field('numero_de_semestres'); ?></span></li>
                            
                            <!--<li>Grade curricular: <?php //the_field('grade_curricular'); ?></li>-->
                            <li>Email: <span class="informacoesCurso"><?php the_field('contatos'); ?></span></li>
							<li>Coordenador(a): <span class="informacoesCurso"><?php the_content(); ?></span></li>
							<li>Website: <span class="informacoesCurso"><a href="<?php the_field('website'); ?>" target="_blank"><?php the_field('website'); ?></a></span></li>
                        </ul>
                        <h2>O que é o curso?</h2>
                        <p><?php the_field('o_que_e_o_curso'); ?></p>							
                        <h2>Perfil profissional</h2>
                        <p><?php the_field('perfil_profissional'); ?></p>							
                        <h2>Matriz Curricular</h2>
						<span class="listaMatrizCurricular"><?php the_field('comentario_do_curso'); ?></span>
						<!--INFORMAÇÃO ESTÁTICA-->
						<h3>Download da Matriz do curso completa</h3>
						<a href="<?php the_field('download_matriz_curricular');?>" title="<?php the_title();?>" alt="<?php the_title();?>"><img src="<?php bloginfo('template_directory');?>/img/iconZip.png" />Baixar arquivo <i>.zip</i> da Matriz Curricular do Curso</a>
						
						<?php /*<ul class="listaModulos">
							<h3>Módulo I - Introdução</h3>
							<li><a href=""><img src="<?php bloginfo('template_directory'); ?>/img/iconPdf.png" /> Fundamentos de eletrônica</a></li>
							<li><a href=""><img src="<?php bloginfo('template_directory'); ?>/img/iconPdf.png" /> Noções de Anatomia e Fisiologia Humana</a></li>
							
							<h3>Módulo II - Infra-Estrutura Hospitalar</h3>
							<li><a href=""><img src="<?php bloginfo('template_directory'); ?>/img/iconPdf.png" /> Ambiente Hospitalar: Instalações e Tecnologias de Apoio Segurança Hospitalar</a></li>
							<li><a href=""><img src="<?php bloginfo('template_directory'); ?>/img/iconPdf.png" /> Física Médica</a></li>
							
							<h3>Módulo III - Equipamentos Médico-Hospitalares (EMHO)</h3>
							<li><a href=""><img src="<?php bloginfo('template_directory'); ?>/img/iconPdf.png" /> Instrumentação/Processamento de sinais Biomédicos</a></li>
							<li><a href=""><img src="<?php bloginfo('template_directory'); ?>/img/iconPdf.png" /> Equipamentos para fins Terapêuticos</a></li>
							<li><a href=""><img src="<?php bloginfo('template_directory'); ?>/img/iconPdf.png" /> Equipamentos para fins de Diagnósticos</a></li>
							<li><a href=""><img src="<?php bloginfo('template_directory'); ?>/img/iconPdf.png" /> Equipamentos de Radioterapia e de Diagnóstico por Imagem</a></li>
							<li><a href="">Visita Técnica</a></li>
							
							<h3>Módulo IV - Metrologia e Calibração</h3>
							<li><a href=""><img src="<?php bloginfo('template_directory'); ?>/img/iconPdf.png" /> Metrologia Aplicada a EMH</a></li>
							<li><a href=""><img src="<?php bloginfo('template_directory'); ?>/img/iconPdf.png" /> Bioestatística</a></li>
							<li><a href="">Visita Técnica</a></li>
							
							<h3>Módulo V - Gestão de tecnologia Médico-Hospitalar</h3>
						</ul> */?>
                    <?php endwhile; ?>
            </div>
            </div>
        </div>
    </div>
    </div>
</div>
<!-- Inicio do Rodape -->
<?php get_footer(); ?>