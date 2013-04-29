<?php

/** Classe responsável por abstrair o objeto notícia **/
class NoticiaVO {
	
    /** titulo da noticia **/
    public $titulo;
    /**  data da noticia **/
    public $data;
    /** imagem da noticia **/
    public $imagem;

    /**
     * @param type $titulo -> Titulo da noticia
     * @param type $data -> Data da noticia 
     * @param type $imagem -> imagem da noticia */
    function __construct($titulo, $data, $imagem) {
        $this->titulo = $titulo;
        $this->data = $data;
        $this->imagem = $imagem;
    }//fim do construtor

    public function getTitulo() {
        return $this->titulo;
    }

    public function getData() {
        return $this->data;
    }

    public function getImagem() {
        return $this->imagem;
    }

    public function setTitulo($titulo) {
        $this->titulo = $titulo;
    }

    public function setData($data) {
        $this->data = $data;
    }

    public function setImagem($imagem) {
        $this->imagem = $imagem;
    }
	
}//fim da classe

?>