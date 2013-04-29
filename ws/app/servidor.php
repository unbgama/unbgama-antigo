<?php

include_once 'controllers/NoticiasController.php';
include_once 'config/api/api.php';

//Cria��o de um include dinamico dos arquivos do wordpressa da pasta wp-includes
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


/** Classe respons�vel por criar a fachada de intera��o com o usu�rio **/
class ClienteFacade {
	
	/** M�todo respons�vel por testar retorno **/
	public function testeRetorno(){
/*		//Fun��o do WP que puxa uma query de busca dos posts.
		query_posts('post_type=post&posts_per_page=1');
		if(have_posts()) while(have_posts()) the_post();
		//Pegando os "componentes" do post, caso haja post.
		$post_category = the_category_ws();
		//Encerramento da query no cache da mem�ria.
		wp_reset_query();
		return $post_category;*/
	}//fim da fun��o
	
}//fim da classe

//URL do servi�o no servidor do portal
$url_portalServer = 'http://fga.unb.br/unbgama/wp-content/themes/unbgama/ws/app/servidor.php';

//Instancia do SOAP
$server = new SoapServer(NULL, array('encoding' => 'ISO-8859-1', 'uri' => 'fga'));

//definindo a classe que ir� responder as chamadas remotas
$server->setClass('ClienteFacade');

//Prepara��o para receber as chamadas remotas
$server->handle();

?>

