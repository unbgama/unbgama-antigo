	<div id="banner" class="row">
		<div id="bannerImagem" class="row">
			<?php query_posts('post_type=banners'); ?>
			<?php if (have_posts()) while (have_posts()) : the_post(); ?>
					<div class="slide">
						<?php the_post_thumbnail('tamanhoDoBanner'); ?>
					</div>
				<?php endwhile; ?>
			<?php wp_reset_query(); ?>
		</div>
		<div id="bannerDados" class="row">
			<?php query_posts('post_type=banners'); ?>
			<?php if (have_posts()) while (have_posts()) : the_post(); ?>
					<div class="slide">
						<div id="chamadaBanner" class="row">
							<hgroup>
								<h3><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" alt="<?php the_title(); ?>"><?php the_field('titulo'); ?></a></h3>
								<h4><?php the_field('subtitulo'); ?></h4>
							</hgroup>
							<div id="dataChamadaBanner" class="span1">
								<span class="diaBanner">
									<?php
									$date = DateTime::createFromFormat('d/m/Y', get_field('data'));
									echo $date->format('d');
									?>	
								</span>
								<span class="mesBanner"><?php echo $date->format('m'); ?>.<?php echo $date->format('y'); ?></span>
							</div>
								
						</div>
					</div>
				<?php endwhile; ?>
			<?php wp_reset_query(); ?>
		</div>
	</div><!--Fim da DIV Banner--->