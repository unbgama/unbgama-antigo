<?php
/**
 * @package WordPress
 * @subpackage UnbGama
 * @since UnbGama 1.0
 */
?>

<form method="get" id="searchform" action="<?php echo esc_url(home_url('/')); ?>">
    <input type="text" class="field" name="s" id="s" placeholder="<?php esc_attr_e('Digite sua pesquisa', 'unbgama'); ?>" />
</form>
