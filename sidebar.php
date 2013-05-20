<div id="colunaEsquerda" class="span3 alpha">
    <?php if (is_page()) { //se for pagina 
        ?>
        <div class="subMenuPrincipal">
            <?php if (function_exists('dynamic_sidebar') && dynamic_sidebar('barra_paginas')) : else : ?>
            <?php endif; ?>
        </div>
    <?php }; ?>

    <?php if (is_home()) { //se for pagina inicial ou pesquisa
        ?>
        <div class="subMenuPrincipal">
            <ul>
                <?php wp_nav_menu(array('theme_location' => 'sub-menu-principal')); ?>
            </ul>
        </div>
        <!--
        
        -->
    <?php }; ?>

    <?php if (is_single()) { //se for post ?>
        <div class="subMenuPrincipal">
            <?php wp_nav_menu(array('theme_location' => 'sub-menu-principal')); ?>
        </div>
    <?php }; ?>
    
    <?php if (is_page_template('lei.php')) { //configuracoes para pagina do LEI ?>
        <div class="subMenuPrincipal">
            <?php if (function_exists('dynamic_sidebar') && dynamic_sidebar('barra_lei')) : else : ?>
            <?php endif; ?>
        </div>
    <?php }; ?>
	
	<?php if (is_search()) { //se for post ?>
        <?php if (function_exists('dynamic_sidebar') && dynamic_sidebar('barra_pesquisa')) : else : ?>
        <?php endif; ?>
		<a href="" class="linkRss"><img src="" title="" alt="" />RSS</a>
    <?php }; ?>
</div>

