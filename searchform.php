<?php
/**
 * @package WordPress
 * @subpackage UnbGama
 * @since UnbGama 1.0
 */
?>

<form method="get" id="searchform" action="<?php echo esc_url(home_url('/')); ?>" class="form-search navbar-search pull-right visible-desktop" >
    <input type="text" class="input-medium search-query campoPesquisa" name="s" id="s" placeholder="<?php esc_attr_e('pesquisa', 'unbgama'); ?>" />
</form>
