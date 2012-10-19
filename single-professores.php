<?php
include_once 'aplicacoes/sislattes/lattesUtil.php';
include_once 'aplicacoes/sislattes/api/api.php';
$htmlLattes = lattesUtil::carregaLattes(the_field_lattes('curriculo_lattes'));
?>

<?php get_header(); ?>			
<!-- Inicio do Corpo -->
    <div id="colunaCentral">
		<div id="colunaEsquerda" class="grid_3 alpha">
			<ul>
				<?php get_sidebar(); ?>
			</ul>
		</div>
        <div class="post">
            <div class="noticiaPrincipal grid_9">
                    <?php if (have_posts()) while (have_posts()) : the_post(); ?>
                            <?php if (get_field('videos')): ?>
                                <ul>
                                    <?php while (the_repeater_field('videos')): ?>
                                        <li><a href="http://youtube.com/watch?v=<?php the_sub_field('id_do_video'); ?>" title="<?php the_sub_field('nome_video'); ?>" rel="prettyPhoto" target="_blank"><?php the_sub_field('nome_video'); ?></a></li>
                                    <?php endwhile; ?>
                                </ul>
                            <?php endif; ?>
                            <!--Dados do professor pré-carregamento do Lattes-->
                            <div id="informacoesProfessor">
                                <div id="fotoProfessor">
                                    <img src="<?php the_field('foto_do_perfil');?>" alt="<?php the_title();?>" title="<?php the_title();?>" />
                                </div>
                                <h1><?php the_title(); ?></h1>
                                <strong>Bolsista de Produtividade em Pesquisa do CNPq - Nível 1D</strong>
                                <br />
                                <span>Endereço para acessar este CV: <a href="http://lattes.cnpq.br/1141716826787805" target="_blank">http://lattes.cnpq.br/1141716826787805</a></span>
                                <br />
                                <span>Última atualização do currículo em <strong>09/09/2012</strong></span>
                                <br />
                                <br />
                                <strong>Matérias ministradas na faculdade (2º/2012):</strong>
                                <br />
                                <span><abbr title="Introdução a Álgebra Linear" alt="Introdução a Álgebra Linear">IAL - </abbr><a href="#">Introdução a Álgebra Linear </a><a href="#" class="downloadEmenta"><img src="<?php bloginfo('template_directory');?>/img/iconPdf.png" />Download Ementa</a></span>
                                <br />
                                <span><abbr title="Microprocesadores e Microcontroladores" alt="Microprocesadores e Microcontroladores">MPC - </abbr><a href="#">Microprocesadores e Microcontroladores </a><a href="#" class="downloadEmenta"><img src="<?php bloginfo('template_directory');?>/img/iconPdf.png" />Download Ementa</a></span>
                                <br />
                                <br />
                                <span>Contato: <a href="mailto:adson@unb.br">adson@unb.br</a></span>
                                <br />
                                <span>Horarios: <strong class="horariosProfessor"><a href="#" alt="Horários/Sala" title="Horários/Sala">horário/sala</a></strong></span>
                                <div class="tabelaHorarios">
                                    <table>
                                        
                                    </table>
                                </div>
                            </div>
                            <!--Carregando informações do Lattes do professor-->
                            <ul id="infoLattes">
                                <li id="formacaoAcademica">
                                    <h3>Formação Acadêmica</h3>
                                    <div><?php lattesUtil::formacaoAcademica($htmlLattes); ?></div>
                                </li>
                                
                                <li>
                                    <a href="#" alt="Clique aqui para ver mais informações do professor" title="Clique aqui para ver mais informações do professor"><h3>Informação do professor</h3></a>
                                    <p><?php lattesUtil::textoInformadoAutor($htmlLattes); ?></p>
                                </li>
                                                       
                                <li>
                                    <a href="#" alt="Clique aqui para mais sobre a área de atuação" title="Clique aqui para mais sobre a área de atuação"><h3>Área de Atuação</h3></a>
                                    <p><?php lattesUtil::areaAtuacao($htmlLattes); ?></p>
                                </li>
                                <li>
                                    <a href="#" alt="Clique aqui para ver mais projetos de pesquisa" title="Clique aqui para ver mais projetos de pesquisa"><h3>Projetos de Pesquisa</h3></a>
                                    <p><?php lattesUtil::projetoPesquisa($htmlLattes); ?></p>
                                </li>
                            </ul>
                        <?php endwhile; ?>
                </div>
            </div>
        </div>
    </div>
<!-- Inicio do Rodape -->
<?php get_footer(); ?>