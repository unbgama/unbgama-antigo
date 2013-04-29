<?php

/*--------------------------------------------------------------------------------------
*
*	the_field_lattes
*       *Adaptado da função the_field versão 1.0.3 de Elliot Condon
*
*	@author Carlos André de Souza
*	@since 1.0
* 
*-------------------------------------------------------------------------------------*/
function the_field_lattes($field_name, $post_id = false)
{
	$value = get_field($field_name, $post_id);
	
	if(is_array($value))
	{
		$value = @implode(', ',$value);
	}
	
	return $value;
}
?>
