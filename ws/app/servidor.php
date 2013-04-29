<?php

include_once 'controllers/NoticiasController.php';
include_once 'config/api/api.php';

//Criação de um include dinamico dos arquivos do wordpressa da pasta wp-includes
//Ordem de saida: app - ws - unbgama - themes - wp-content
$diretorio1 = '../../../../../wp-includes';

$it = new DirectoryIterator($diretorio1);

//Loop externo que percorre o WP-INCLUDES
foreach($it as $file){
	//Se for um arquivo e terminar com php ele inclui
	if (!$it->isDot() && substr($file, strlen($str)-4)=='.php')
		include_once $file;
	else if(!$it->isDot() && substr($file, strlen($str)-4)!='.php')
		echo $file . '<br>';
}//fim do loop


/** Classe responsável por criar a fachada de interação com o usuário **/
class ClienteFacade {
	
	/** Método responsável por testar retorno **/
	public function testeRetorno(){
/*		//Função do WP que puxa uma query de busca dos posts.
		query_posts('post_type=post&posts_per_page=1');
		if(have_posts()) while(have_posts()) the_post();
		//Pegando os "componentes" do post, caso haja post.
		$post_category = the_category_ws();
		//Encerramento da query no cache da memória.
		wp_reset_query();
		return $post_category;*/
	}//fim da função
	
}//fim da classe

//URL do serviço no servidor do portal
$url_portalServer = 'http://fga.unb.br/unbgama/wp-content/themes/unbgama/ws/app/servidor.php';

//Instancia do SOAP
$server = new SoapServer(NULL, array('encoding' => 'ISO-8859-1', 'uri' => 'fga'));

//definindo a classe que irá responder as chamadas remotas
$server->setClass('ClienteFacade');

//Preparação para receber as chamadas remotas
$server->handle();

?>

