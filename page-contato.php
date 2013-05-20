<?php get_header(); ?>			
<!-- Inicio do Corpo -->

<div id="colunaCentral" class="row">
    <div class="post">
        <div class="noticiaPrincipal">
            <?php if (have_posts()) while (have_posts()) : the_post(); ?>
				<?php the_category(); ?>
                <h2><?php the_title(); ?></h2>
			<?php endwhile; ?>
			<div id="informacoesContato">
				<?php if(get_field('direcao')): ?>
					<sup>setor</sup>
					<h3>Dire&#231;&#227;o</h3>
					<?php while(has_sub_field('direcao')): ?> 
						<div class="boxContato">
							<sup><?php the_sub_field('cargo'); ?></sup>
							<br />
							<strong><?php the_sub_field('nome'); ?></strong>
							<br />
							<span><a href="<?php the_sub_field('email'); ?>"><?php the_sub_field('email'); ?></a> | <abbr><?php the_sub_field('telefone'); ?></abbr></span>
							<em><?php the_sub_field('localizacao'); ?> - <?php the_sub_field('sala'); ?></em>
							<br />
						</div>
					<?php endwhile; ?>
				<?php endif; ?>
				
				<br />
				<hr />
				
				<?php if(get_field('administracao')): ?>
					<sup>setor</sup>
					<h3>Administra&#231;&#227;o</h3>
					<?php while(has_sub_field('administracao')): ?> 
						<div class="boxContato">
							<sup><?php the_sub_field('cargo'); ?></sup>
							<br />
							<strong><?php the_sub_field('nome'); ?></strong>
							<br />
							<span><a href="<?php the_sub_field('email'); ?>"><?php the_sub_field('email'); ?></a> | <abbr><?php the_sub_field('telefone'); ?></abbr></span>
							<em><?php the_sub_field('localizacao'); ?> - <?php the_sub_field('sala'); ?></em>
							<br />
						</div>
					<?php endwhile; ?>
				<?php endif; ?>
				
				<br />
				<hr />
				
				<?php if(get_field('secretaria')): ?>
					<sup>setor</sup>
					<h3>Secretaria</h3>
					<?php while(has_sub_field('secretaria')): ?> 
						<div class="boxContato">
							<sup><?php the_sub_field('cargo'); ?></sup>
							<br />
							<strong><?php the_sub_field('nome'); ?></strong>
							<br />
							<span><a href="<?php the_sub_field('email'); ?>"><?php the_sub_field('email'); ?></a> | <abbr><?php the_sub_field('telefone'); ?></abbr></span>
							<em><?php the_sub_field('localizacao'); ?> - <?php the_sub_field('sala'); ?></em>
							<br />
						</div>
					<?php endwhile; ?>
				<?php endif; ?>
				
				<br />
				<hr />
				
				<?php if(get_field('saa')): ?>
					<sup>setor</sup>
					<h3>SAA</h3>
					<?php while(has_sub_field('saa')): ?> 
						<div class="boxContato">
							<sup><?php the_sub_field('cargo'); ?></sup>
							<br />
							<strong><?php the_sub_field('nome'); ?></strong>
							<br />
							<span><a href="<?php the_sub_field('email'); ?>"><?php the_sub_field('email'); ?></a> | <abbr><?php the_sub_field('telefone'); ?></abbr></span>
							<em><?php the_sub_field('localizacao'); ?> - <?php the_sub_field('sala'); ?></em>
							<br />
						</div>
					<?php endwhile; ?>
				<?php endif; ?>
				
				<br />
				<hr />
				
				<?php if(get_field('sou')): ?>
					<sup>setor</sup>
					<h3>SOU</h3>
					<?php while(has_sub_field('sou')): ?> 
						<div class="boxContato">
							<sup><?php the_sub_field('cargo'); ?></sup>
							<br />
							<strong><?php the_sub_field('nome'); ?></strong>
							<br />
							<span><a href="<?php the_sub_field('email'); ?>"><?php the_sub_field('email'); ?></a> | <abbr><?php the_sub_field('telefone'); ?></abbr></span>
							<em><?php the_sub_field('localizacao'); ?> - <?php the_sub_field('sala'); ?></em>
							<br />
						</div>
					<?php endwhile; ?>
				<?php endif; ?>
				
				<br />
				<hr />
				
				<?php if(get_field('cpd')): ?>
					<sup>setor</sup>
					<h3>CPD</h3>
					<?php while(has_sub_field('cpd')): ?> 
						<div class="boxContato">
							<sup><?php the_sub_field('cargo'); ?></sup>
							<br />
							<strong><?php the_sub_field('nome'); ?></strong>
							<br />
							<span><a href="<?php the_sub_field('email'); ?>"><?php the_sub_field('email'); ?></a> | <abbr><?php the_sub_field('telefone'); ?></abbr></span>
							<em><?php the_sub_field('localizacao'); ?> - <?php the_sub_field('sala'); ?></em>
							<br />
						</div>
					<?php endwhile; ?>
				<?php endif; ?>
				
				<br />
				<hr />
				
				<?php if(get_field('servidores')): ?>
					<sup>setor</sup>
					<h3>Servidores</h3>
					<?php while(has_sub_field('servidores')): ?> 
						<div class="boxContato">
							<sup><?php the_sub_field('cargo'); ?></sup>
							<br />
							<strong><?php the_sub_field('nome'); ?></strong>
							<br />
							<span><a href="<?php the_sub_field('email'); ?>"><?php the_sub_field('email'); ?></a> | <abbr><?php the_sub_field('telefone'); ?></abbr></span>
							<em><?php the_sub_field('localizacao'); ?> - <?php the_sub_field('sala'); ?></em>
							<br />
						</div>
					<?php endwhile; ?>
				<?php endif; ?>
				
				<br />
				
				<?php if(get_field('desenvolvimento')): ?>
					<sup>setor</sup>
					<h3>Desenvolvimento</h3>
					<?php while(has_sub_field('desenvolvimento')): ?> 
						<div class="boxContato">
							<sup><?php the_sub_field('cargo'); ?></sup>
							<br />
							<strong><?php the_sub_field('nome'); ?></strong>
							<br />
							<span><a href="<?php the_sub_field('email'); ?>"><?php the_sub_field('email'); ?></a> | <abbr><?php the_sub_field('telefone'); ?></abbr></span>
							<em><?php the_sub_field('localizacao'); ?> - <?php the_sub_field('sala'); ?></em>
							<br />
						</div>
					<?php endwhile; ?>
				<?php endif; ?>
				
				<br />
				
				<?php if(get_field('coordenadores')): ?>
					<sup>setor</sup>
					<h3>Coordenadores</h3>
					<?php while(has_sub_field('coordenadores')): ?> 
						<div class="boxContato">
							<sup><?php the_sub_field('cargo'); ?></sup>
							<br />
							<strong><?php the_sub_field('nome'); ?></strong>
							<br />
							<span><a href="<?php the_sub_field('email'); ?>"><?php the_sub_field('email'); ?></a> | <abbr><?php the_sub_field('telefone'); ?></abbr></span>
							<em><?php the_sub_field('localizacao'); ?> - <?php the_sub_field('sala'); ?></em>
							<br />
						</div>
					<?php endwhile; ?>
				<?php endif; ?>
			</div>
        </div>
    </div>
</div>
<!-- Inicio do Rodape -->
<?php get_footer(); ?>
