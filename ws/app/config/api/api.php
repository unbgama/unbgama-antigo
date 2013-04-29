<?php

/*--------------------------------------------------------------------------------------
*
*	the_..._ws
*       *Adaptado das fun��es do wordpress para as not�cias vers�o 1.0.1 de Elliot Condon
*
*	@author Ilton
*	@since 1.0
* 
*-------------------------------------------------------------------------------------*/
function the_category_ws( $separator = '', $parents='', $post_id = false ) {
	return get_the_category_list( $separator, $parents, $post_id );
}

function the_title_ws($before = '', $after = '', $echo = false) {
	$title = get_the_title();
	
	if ( strlen($title) == 0 )
		return 'Sem titulo!';

	$title = $before . $title . $after;

	if ( $echo )
		return $title;
	else
		return $title;
}

function the_permalink_ws() {
	return apply_filters('the_permalink', get_permalink());
}

function the_time_ws( $d = '' ) {
	return apply_filters('the_time', get_the_time( $d ), $d);
}

function the_excerpt_ws() {
	return apply_filters('the_excerpt', get_the_excerpt());
}

function the_post_thumbnail_ws( $size = 'post-thumbnail', $attr = '' ) {
	return get_the_post_thumbnail( null, $size, $attr );
}

?>