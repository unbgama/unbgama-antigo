<div id="colunaEsquerda" class="grid_3 alpha">
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

        <div class="redesSociais">
            <h3>Redes Sociais</h3>
            <a href="http://www.facebook.com">
                <div id="facebook"></div>
            </a>
            <a href="#">
                <div id="googlePlus"></div>
            </a>
            <a href="http://www.youtube.com">
                <div id="youtube"></div>
            </a>
            <a href="http://www.twitter.com/unbgama">
                <div id="twitter"></div>
            </a>
            <a href="#">
                <div id="vimeo"></div>
            </a>
            <a href="#">
                <div id="linkedin"></div>
            </a>

            <a href="#">
                <div id="rss"></div>
            </a>

            <a href="#">
                <div id="flickr"></div>
            </a>
        </div>
    <?php }; ?>

    <?php if (is_single()) { //se for post ?>
        <div class="subMenuPrincipal">
            <?php wp_nav_menu(array('theme_location' => 'sub-menu-principal')); ?>
        </div>
    <?php }; ?>
	
	<?php if (is_search()) { //se for post ?>
        <?php if (function_exists('dynamic_sidebar') && dynamic_sidebar('barra_pesquisa')) : else : ?>
        <?php endif; ?>
		<a href="" class="linkRss"><img src="" title="" alt="" />RSS</a>
    <?php }; ?>
</div>

