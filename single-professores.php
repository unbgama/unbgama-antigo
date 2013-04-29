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
                            <img src="<?php the_field('foto_do_perfil'); ?>" alt="<?php the_title(); ?>" title="<?php the_title(); ?>" />
                        </div>
                        <h1><?php the_title(); ?></h1>
                        <!--Cargo de bolsista (caso exista no CNPQ-->
                        <?php
                        if (the_field('contatos') == "") {
                            echo "";
                        } else {
                            echo "<strong>" . the_field('contatos') . "</strong>";
                        }
                        ?>

                        <br />
                        <span>Endereço para acessar este CV: <a href="<?php the_field('curriculo_lattes') ?>" target="_blank"><?php the_field('curriculo_lattes') ?></a></span>

                        <br />
                        <br />
                        <strong>Matérias ministradas na faculdade (2º/2012):</strong>
                        <br />
                        <!--Informações de materias ministradas pelo professor-->
        <?php
        
        $posts = get_field('materias_ministradas');
 
if( $posts ): ?>
	<ul>
	<?php foreach( $posts as $post_object): ?>
	    <li>
	    	<a href="<?php echo get_permalink($post_object->ID); ?>"><?php echo get_the_title($post_object->ID); ?></a>
	    	<span>Post Object Custom Field: <?php the_field('materias_ministradas', $post_object->ID); ?></span>
	    </li>
	<?php endforeach; ?>
	</ul>
<?php endif;
        
//        $rows = get_field("materias_ministradas");
//        if ($rows) {
//            echo '<ul>';
//
//            foreach ($rows as $row) {
//                echo "<span>" . $row[sigla] . "</span> - <abbr title=" . $row['nome_da_materia'] . " alt=" . $row['nome_da_materia'] . ">" . $row['nome_da_materia'] . "</abbr>";
//            }
//
//            echo '</ul>';
//        }
        ?>


                        <br />

                        <span>Coordenação: </span>
                        <div id="tabelaHorarios">
                            <strong class="tituloHorariosProfessor"><a href="#tabelaHorarios" alt="Horários/Sala" title="Horários/Sala" class="mostrar">HORÁRIO/SALA</a></strong>
                            <table class="tabelaHorarios ocultar" summary="Quadro de horários que o professor esta em coordenação na faculdade">

                                <!-- Topo da tabela  -->
                                <thead>
                                    <tr>
                                        <th colspan="6" class="tituloTabela" ><strong class="horariosProfessor"><a href="#" alt="Horários/Sala" title="Horários/Sala">HORÁRIO/SALA</a></strong></th>
                                        <th><img alt="" title="" src="<?php bloginfo('template_directory'); ?>/img/"></th>
                                    </tr>
                                </thead>

                                <!-- Corpo da tabela -->    
        <?php
        $rows = get_field('horario_sala');
        if ($rows) {
            echo '<tbody>';
            echo '<tr>';

            foreach ($rows as $row) {
                echo "<td>" . $row[horario] . "</td>";
                echo "<td>" . $row[seg] . "</td>";
                echo "<td>" . $row[ter] . "</td>";
                echo "<td>" . $row[qua] . "</td>";
                echo "<td>" . $row[qui] . "</td>";
                echo "<td>" . $row[sex] . "</td>";
                echo "<td>" . $row[sab] . "</td>";
            }
            echo '</tr>';
            echo '</tbody>';
        }
        ?>

                                <tbody>
                                    <tr>
                                        <td></td> 
                                        <td>SEG</td>
                                        <td>TER</td>
                                        <td>QUA</td> 
                                        <td>QUI</td>
                                        <td>SEX</td>
                                        <td>SÁB</td>
                                    </tr>
                                    <tr>
                                        <td><small>08:00-10:00</small></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>

                                    <tr>
                                        <td><small>10:00-12:00</small></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>

                                    <tr>
                                        <td><small>14:00-16:00</small></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>

                                    <tr>
                                        <td><small>16:00-18:00</small></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>

                                    <tr>
                                        <td><small>18:00-20:00</small></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!--Carregando informações do Lattes do professor-->
                    <ul id="infoLattes">
                        <li id="formacaoAcademica">
                            <h3>Formação Acadêmica</h3>
                            <div id=""><?php lattesUtil::formacaoAcademica($htmlLattes); ?></div>
                        </li>

                        <li>
                            <a href="#informacaoProfessor" alt="Clique aqui para ver mais informações do professor" title="Clique aqui para ver mais informações do professor" class="mostrar"><h3>Informação do professor</h3></a>
                            <p id="informacaoProfessor"><?php lattesUtil::textoInformadoAutor($htmlLattes); ?></p>
                        </li>

                        <li>
                            <a href="#areaAtuacao" alt="Clique aqui para mais sobre a área de atuação" title="Clique aqui para mais sobre a área de atuação" class="mostrar"><h3>Área de Atuação</h3></a>
                            <p id="areaAtuacao"><?php lattesUtil::areaAtuacao($htmlLattes); ?></p>
                        </li>
                        <li>
                            <a href="#projetosPesquisa" alt="Clique aqui para ver mais projetos de pesquisa" title="Clique aqui para ver mais projetos de pesquisa" class="mostrar"><h3>Projetos de Pesquisa</h3></a>
                            <p id="projetosPesquisa"><?php lattesUtil::projetoPesquisa($htmlLattes); ?></p>
                        </li>
                    </ul>
    <?php endwhile; ?>
        </div>
    </div>
</div>
</div>
<!-- Inicio do Rodape -->
<?php get_footer(); ?>
