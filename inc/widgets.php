<?php

class cursosDeGraduacao extends WP_Widget {

	function __construct() {
		parent::WP_Widget( /* Base ID */'cursosDeGraduacao', /* Name */'Cursos de Graduação', array( 'description' => 'Traz uma lista com os cursos de graduação' ) );
	}

	/** @see WP_Widget::widget */
	function widget( $args, $instance ) {
		extract( $args );
		$title = apply_filters( 'widget_title', $instance['title'] );
		if ( !empty( $title ) ) { echo '<h2 class="title">'. $title . '</h2>'; } 
			while (have_posts() ) : the_post()?>
			
				<ul>
				<?php query_posts('post_type=cursos&nivel=graduacao');?>
				<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

						<li><a href="<?php the_permalink();?>"><?php the_title();?></a></li>

				<?php endwhile; endif;?>
				<?php wp_reset_query();?>
				</ul>	
						
			<?php
		endwhile;
	}

	/** @see WP_Widget::update */
	function update( $new_instance, $old_instance ) {
		$instance = $old_instance;
		$instance['title'] = strip_tags($new_instance['title']);
		return $instance;
	}

	/** @see WP_Widget::form */
	function form( $instance ) {
		if ( $instance ) {
			$title = esc_attr( $instance[ 'title' ] );
		}
		else {
			$title = __( 'Cursos de Graduação', 'text_domain' );
		}
		?>
		<p>
		<label for="<?php echo $this->get_field_id('title'); ?>"><?php _e('Titulo:'); ?></label> 
		<input class="widefat" id="<?php echo $this->get_field_id('title'); ?>" name="<?php echo $this->get_field_name('title'); ?>" type="text" value="<?php echo $title; ?>" />
		</p>
		<?php 
	}
}
?>

<?php
class cursosDePosGraduacao extends WP_Widget {

	function __construct() {
		parent::WP_Widget( /* Base ID */'cursosDePosGraduacao', /* Name */'Cursos de Pós-Graduação', array( 'description' => 'Traz uma lista com os cursos de pós-graduação' ) );
	}

	/** @see WP_Widget::widget */
	function widget( $args, $instance ) {
		extract( $args );
		$title = apply_filters( 'widget_title', $instance['title'] );
		if ( !empty( $title ) ) { echo '<h2 class="title">'. $title . '</h2>'; } 
			while (have_posts() ) : the_post()?>
			
				<ul>
				<?php query_posts('post_type=cursos&nivel=pos-graduacao');?>
				<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

						<li><a href="<?php the_permalink();?>"><?php the_title();?></a></li>

				<?php endwhile; endif;?>
				<?php wp_reset_query();?>
				</ul>	
						
			<?php
		endwhile;
	}

	/** @see WP_Widget::update */
	function update( $new_instance, $old_instance ) {
		$instance = $old_instance;
		$instance['title'] = strip_tags($new_instance['title']);
		return $instance;
	}

	/** @see WP_Widget::form */
	function form( $instance ) {
		if ( $instance ) {
			$title = esc_attr( $instance[ 'title' ] );
		}
		else {
			$title = __( 'Cursos de Pós-Graduação', 'text_domain' );
		}
		?>
		<p>
		<label for="<?php echo $this->get_field_id('title'); ?>"><?php _e('Titulo:'); ?></label> 
		<input class="widefat" id="<?php echo $this->get_field_id('title'); ?>" name="<?php echo $this->get_field_name('title'); ?>" type="text" value="<?php echo $title; ?>" />
		</p>
		<?php 
	}
}
?>