<?php
//Aqui são adicionados os menus personalizados (para cada pagina um conjunto de menus diferentes)
if (function_exists('register_sidebar')) {
    register_sidebar(array(
        'name' => 'Barra Home',
        'id' => 'barra_home',
        'deskription' => 'Barra da pagina inicial.'
    ));
    register_sidebar(array(
        'name' => 'Barra Paginas',
        'id' => 'barra_paginas',
        'deskription' => 'Barra das paginas.'
    ));
	register_sidebar(array(
        'name' => 'Barra Pesquisa',
        'id' => 'barra_pesquisa',
        'deskription' => 'Barra Pesquisa.'
    ));
};

add_action('init', 'criar_eventos');

function criar_eventos() {
    $labels = array(
        'name' => _x('Eventos', 'post type general name'),
        'singular_name' => _x('Evento', 'post type singular name'),
        'add_new' => _x('Adicionar', 'evento'),
        'add_new_item' => __('Adicionar novo evento'),
        'edit_item' => __('Editar evento'),
        'new_item' => __('Novo evento'),
        'view_item' => __('Ver evento'),
        'search_items' => __('Pesquisar evento'),
        'not_found' => __('Nenhum evento encontrado'),
        'not_found_in_trash' => __('Nenhum evento encontrado na lixeira'),
        'parent_item_colon' => ''
    );

    $supports = array('title', 'editor', 'revisions', 'thumbnail');

    register_post_type('eventos', array(
        'labels' => $labels,
        'public' => true,
        'supports' => $supports,
        'has_archive' => true
            )
    );
}

add_action('init', 'criar_cursos');

function criar_cursos() {
    $labels = array(
        'name' => _x('Cursos', 'post type general name'),
        'singular_name' => _x('Curso', 'post type singular name'),
        'add_new' => _x('Adicionar', 'curso'),
        'add_new_item' => __('Adicionar novo curso'),
        'edit_item' => __('Editar curso'),
        'new_item' => __('Novo curso'),
        'view_item' => __('Ver curso'),
        'search_items' => __('Pesquisar curso'),
        'not_found' => __('Nenhum curso encontrado'),
        'not_found_in_trash' => __('Nenhum curso encontrado na lixeira'),
        'parent_item_colon' => ''
    );

    $supports = array('title', 'editor', 'revisions', 'thumbnail');

    register_post_type('cursos', array(
        'labels' => $labels,
        'public' => true,
        'supports' => $supports,
        'has_archive' => true
            )
    );
}

// Pagina de DISCIPLINAS
add_action('init', 'criar_disciplinas');

function criar_disciplinas() {
    $labels = array(
        'name' => _x('Disciplinas', 'post type general name'),
        'singular_name' => _x('Disciplina', 'post type singular name'),
        'add_new' => _x('Adicionar', 'disciplina'),
        'add_new_item' => __('Adicionar nova disciplina'),
        'edit_item' => __('Editar disciplina'),
        'new_item' => __('Nova disciplina'),
        'view_item' => __('Ver disciplina'),
        'search_items' => __('Pesquisar disciplina'),
        'not_found' => __('Nenhuma disciplina encontrada'),
        'not_found_in_trash' => __('Nenhuma disciplina encontrada na lixeira'),
        'parent_item_colon' => ''
    );

    $supports = array('title', 'revisions', 'thumbnail');
    

		register_post_type('disciplinas', array(
			'labels' => $labels,
			'public' => true,
			'supports' => $supports,
			'has_archive' => true,
		)
    );
}

add_action('init', 'criar_professores');

function criar_professores() {
    $labels = array(
        'name' => _x('Professores', 'post type general name'),
        'singular_name' => _x('Professor', 'post type singular name'),
        'add_new' => _x('Adicionar', 'professor'),
        'add_new_item' => __('Adicionar novo professor'),
        'edit_item' => __('Editar professor'),
        'new_item' => __('Novo professor'),
        'view_item' => __('Ver professor'),
        'search_items' => __('Pesquisar professor'),
        'not_found' => __('Nenhum professor encontrado'),
        'not_found_in_trash' => __('Nenhum professor encontrado na lixeira'),
        'parent_item_colon' => ''
    );

    $supports = array('title', 'revisions', 'thumbnail');

    register_post_type('professores', array(
        'labels' => $labels,
        'public' => true,
        'supports' => $supports,
        'has_archive' => true,
        'taxonomy' => 'nivel'
            )
    );
}

add_action('init', 'criar_banners');

function criar_banners() {
    $labels = array(
        'name' => _x('Banners', 'post type general name'),
        'singular_name' => _x('Banner', 'post type singular name'),
        'add_new' => _x('Adicionar', 'banner'),
        'add_new_item' => __('Adicionar novo banner'),
        'edit_item' => __('Editar banner'),
        'new_item' => __('Novo banner'),
        'view_item' => __('Ver banners'),
        'search_items' => __('Pesquisar banners'),
        'not_found' => __('Nenhum banner encontrado'),
        'not_found_in_trash' => __('Nenhum banner encontrado na lixeira'),
        'parent_item_colon' => ''
    );


    $supports = array('title', 'revisions', 'thumbnail', 'custom-fields', 'editor');

    $supports = array('title', 'editor', 'revisions', 'thumbnail', 'custom-fields');


    register_post_type('banners', array(
        'labels' => $labels,
        'public' => true,
        'supports' => $supports,
        'has_archive' => true
            )
    );
}

add_action('init', 'criar_projetos');

function criar_projetos() {
    $labels = array(
        'name' => _x('Projetos', 'post type general name'),
        'singular_name' => _x('Projetos', 'post type singular name'),
        'add_new' => _x('Adicionar', 'projeto'),
        'add_new_item' => __('Adicionar novo projeto'),
        'edit_item' => __('Editar projeto'),
        'new_item' => __('Novo projeto'),
        'view_item' => __('Ver projeto'),
        'search_items' => __('Pesquisar projeto'),
        'not_found' => __('Nenhum projeto encontrado'),
        'not_found_in_trash' => __('Nenhum projeto encontrado na lixeira'),
        'parent_item_colon' => ''
    );

    $supports = array('title', 'editor', 'revisions', 'thumbnail');

    register_post_type('projetos', array(
        'labels' => $labels,
        'public' => true,
        'supports' => $supports,
        'has_archive' => true
            )
    );
}

// Pagina VIDEOS
add_action('init', 'criar_videos');

function criar_videos() {
    $labels = array(
        'name' => _x('Videos', 'post type general name'),
        'singular_name' => _x('Video', 'post type singular name'),
        'add_new' => _x('Adicionar', 'video'),
        'add_new_item' => __('Adicionar novo video'),
        'edit_item' => __('Editar video'),
        'new_item' => __('Novo video'),
        'view_item' => __('Ver video'),
        'search_items' => __('Pesquisar video'),
        'not_found' => __('Nenhum video encontrado'),
        'not_found_in_trash' => __('Nenhum video encontrado na lixeira'),
        'parent_item_colon' => ''
    );

    $supports = array('title', 'editor', 'revisions', 'thumbnail');
    
    $taxonomies = array('category', 'post_tag');

    register_post_type('videos', array(
        'labels' => $labels,
        'public' => true,
        'supports' => $supports,
        'has_archive' => true,
		'taxonomies' => $taxonomies
            )
    );
}






//Função para registrar menus
register_nav_menu('menu-acesso-rapido', 'Menu acessos rápidos');
register_nav_menu('menu-principal', 'Menu principal de navegação');
register_nav_menu('sub-menu-principal', 'Menu sub-principal de navegação');
register_nav_menu('sub-menu-paginas', 'Menu sub-principal das paginas');

add_theme_support('post-thumbnails');

//função para puxar caption de thumbnail
function the_post_thumbnail_caption() {
    global $post;

    $thumbnail_id = get_post_thumbnail_id($post->ID);
    $thumbnail_image = get_posts(array('p' => $thumbnail_id, 'post_type' => 'attachment'));

    if ($thumbnail_image && isset($thumbnail_image[0])) {
        echo '<legend>' . $thumbnail_image[0]->post_excerpt . '</legend>';
    }
}

//hook into the init action and call create_book_taxonomies when it fires
add_action('init', 'criar_nivel', 0);

//create two taxonomies, genres and writers for the post type "book"
function criar_nivel() {
    // Add new taxonomy, make it hierarchical (like categories)
    $labels = array(
        'name' => _x('Níveis', 'taxonomy general name'),
        'singular_name' => _x('Nível', 'taxonomy singular name'),
        'search_items' => __('Pesquisar níveis'),
        'all_items' => __('Todos os níveis'),
        'parent_item' => __('Nível pai'),
        'parent_item_colon' => __('Nível pai:'),
        'edit_item' => __('Editar nível'),
        'update_item' => __('Atualizar nível'),
        'add_new_item' => __('Adicionar nível'),
        'new_item_name' => __('Novo nível'),
        'menu_name' => __('Nível'),
    );

    register_taxonomy('nivel', array('cursos', 'professores'), array(
        'hierarchical' => true,
        'labels' => $labels,
        'show_ui' => true,
        'query_var' => true,
        'rewrite' => array('slug' => 'nivel'),
    ));
}

//Incluindo novo Widget
function widgets_init() {
    require( dirname(__FILE__) . '/inc/widgets.php' );
}

add_action('widgets_init', 'widgets_init');

//Registrando novo Widget
function registrar_widgets() {
    register_widget('cursosDePosGraduacao');
    register_widget('cursosDeGraduacao');
}

add_action('widgets_init', 'registrar_widgets');

function new_excerpt_more($more) {
    global $post;
    return '...<a class="leiaMais" href="' . get_permalink($post->ID) . '">' . 'Leia mais' . '</a>';
}

add_filter('excerpt_more', 'new_excerpt_more');

if (function_exists('add_image_size'))
    add_theme_support('post-thumbnails');
if (function_exists('add_image_size')) {
    add_image_size('tamanhoDoBanner', 940, 217, true);
}

function unbgama_content_nav($nav_id) {
    global $wp_query;

    if ($wp_query->max_num_pages > 0) :
        ?>
        <nav id="<?php echo $nav_id; ?>">
            <h3 class="assistive-text"><?php _e('Navegação:', 'unbgama'); ?></h3>
            <div class="nav-previous"><?php next_posts_link(__('<span class="meta-nav">&larr;</span> Postagens antigas', 'unbgama')); ?></div>
            <div class="nav-next"><?php previous_posts_link(__('Novas postagens <span class="meta-nav">&rarr;</span>', 'unbgama')); ?></div>
        </nav><!-- #nav-above -->
        <?php
    endif;
}

function hls_set_query() {
    $query = attribute_escape(get_search_query());

    if (strlen($query) > 0) {
        echo '
      <script type="text/javascript">
        var hls_query  = "' . $query . '";
      </script>
    ';
    }
}

function hls_init_jquery() {
    wp_enqueue_script('jquery');
}

add_action('init', 'hls_init_jquery');
add_action('wp_print_scripts', 'hls_set_query');

function setPostViews($postID) {
    $count_key = 'post_views_count';
    $count = get_post_meta($postID, $count_key, true);
    if ($count == '') {
        $count = 0;
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '1');
    } else {
        $count++;
        update_post_meta($postID, $count_key, $count);
    }
}

function paginacao($paginas = '', $numlinks = 2) {
    $qtde = ($numlinks * 2) + 1;

    global $paged;
    if (empty($paged))
        $atual = 1; else
        $atual = $paged;

    if ($paginas == '') {
        global $wp_query;
        $paginas = $wp_query->max_num_pages;
        if (!$paginas) {
            $paginas = 1;
        }
    }

    if ($paginas != 1) {
        echo "<div class='paginacao'>";
		if ($atual > 2 && $atual > $numlinks + 1 && $qtde < $paginas)
            echo "<a href='" . get_pagenum_link(1) . "'>&laquo; Primeira</a>";
        if ($atual > 1 && $qtde < $paginas)
            echo "<a href='" . get_pagenum_link($atual - 1) . "'>&laquo;</a>";

        for ($i = 1; $i <= $paginas; $i++) {
            if (1 != $paginas && (!($i >= $atual + $numlinks + 1 || $i <= $atual - $numlinks - 1) || $paginas <= $qtde )) {
                echo ($atual == $i) ? "<span class='atual'>" . $i . "</span>" : "<a href='" . get_pagenum_link($i) . "' class='inactive' >" . $i . "</a>";
            }
        }

        if ($atual < $paginas && $qtde < $paginas)
            echo "<a href='" . get_pagenum_link($atual + 1) . "'>&raquo;</a>";
        if ($atual < $paginas - 1 && $atual + $numlinks - 1 < $paginas && $qtde < $paginas)
            echo "<a href='" . get_pagenum_link($paginas) . "'>&raquo; Última</a>";
			echo "<div class='paginas'>Página " . $atual . " de " . $paginas . "</div>";
			echo "</div>\n";
    }
}


//-- META VIDEO



add_action( 'add_meta_boxes', 'cd_meta_box_add' );
function cd_meta_box_add()
{
	add_meta_box( 'my-meta-box-id', 'Video', 'cd_meta_box_cb', 'videos', 'normal', 'high' );
}

// texto do box
function cd_meta_box_cb( $post )
{
	$values = get_post_custom( $post->ID );
	$text = isset( $values['id-video'] ) ? esc_attr( $values['id-video'][0] ) : '';
	wp_nonce_field( 'my_meta_box_nonce', 'meta_box_nonce' );
	?>
	<p>
		<label for="id-video">ID do video</label>
		<input type="text" name="id-video" id="id-video" value="<?php echo $text; ?>" />
	</p>
	<?php	
}


add_action( 'save_post', 'cd_meta_box_save' );
function cd_meta_box_save( $post_id )
{
	// Bail if we're doing an auto save
	if( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) return;
	
	// if our nonce isn't there, or we can't verify it, bail
	if( !isset( $_POST['meta_box_nonce'] ) || !wp_verify_nonce( $_POST['meta_box_nonce'], 'my_meta_box_nonce' ) ) return;
	
	// if our current user can't edit this post, bail
	if( !current_user_can( 'edit_post' ) ) return;
	
	// now we can actually save the data
	$allowed = array( 
		'a' => array( // on allow a tags
			'href' => array() // and those anchords can only have href attribute
		)
	);
	
	// Probably a good idea to make sure your data is set
	if( isset( $_POST['id-video'] ) )
		update_post_meta( $post_id, 'id-video', wp_kses( $_POST['id-video'], $allowed ) );
		
		
}
// end META VIDEO

//Nao retornar erro no login
add_filter('login_errors',create_function('$a', "return 'Dados Inválidos';"));

//Esconder Versão
remove_action('wp_head', 'wp_generator');

//Personalizar Login e ADM
function meu_logo_admin() {
echo '
<style type="text/css">
#header-logo {background-image: url('.get_bloginfo('template_directory').'/img/logo_st.png) !important;}
</style>
';
}
add_action('admin_head', 'meu_logo_admin');
function meu_login_logo() {
	echo '
	<style type="text/css">
	h1 a {background:url('.get_bloginfo('template_directory').'/img/logo.png) 50% 50% no-repeat !important;}
	input.button-primary, button.button-primary, a.button-primary{background:#028e47 !important; border-color:#028e47;}
	.login #nav a, .login #backtoblog a{color:#028e47 !important;}
	</style>
	';
}
add_action('login_head', 'meu_login_logo');
function meu_wp_login_url() {
	return get_bloginfo('url');
}
add_filter('login_headerurl', 'meu_wp_login_url');
function meu_wp_login_title() {
	return get_bloginfo('name');
}
add_filter('login_headertitle', 'meu_wp_login_title');

?>