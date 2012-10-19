<?php
/**
 * @package WordPress
 * @subpackage UnbGama
 * @since UnbGama 1.0
 */
?>

<form method="get" id="searchform" action="<?php echo esc_url(home_url('/')); ?>">
    <input type="text" name="s" id="campoPesquisa" placeholder="<?php esc_attr_e('Digite sua pesquisa', 'unbgama'); ?>" />
    <input type="image" src="<?php bloginfo('template_directory')?>/img/pesquisaIcon.png" id="searchsubmit" alt="Pesquisar" title="Pesquisar" value="<?php esc_attr_e('Pesquisar', 'unbgama'); ?>" />
</form>   
