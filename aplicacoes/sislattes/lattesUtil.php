<?php

class lattesUtil {

    public static function carregaLattes($urlLattes) {
        if (filter_var($urlLattes, FILTER_VALIDATE_URL) === false)
            return false;
        else
            return file_get_contents($urlLattes);
    }

    public static function textoInformadoAutor($htmlLattes) {

        $htmlLattes = explode('<p class="resumo">', $htmlLattes);
        $htmlLattes = explode('<span style="font-weight: bold" class="texto">', $htmlLattes[1]);

        if (is_string($htmlLattes[0]))
            echo utf8_encode($htmlLattes[0]);
        else
            return false;
    }

    public static function formacaoAcademica($htmlLattes) {

        $htmlLattes = explode('<h1>Forma&ccedil;&atilde;o acad&ecirc;mica/titula&ccedil;&atilde;o</h1>', $htmlLattes);
        $htmlLattes = explode('</div><br class="clear" /></div><br class="clear" /><div class="title-wrapper">', $htmlLattes[1]);

        if (is_string($htmlLattes[0]))
            echo utf8_encode($htmlLattes[0]);
        else
            return false;
    }

    public static function projetoPesquisa($htmlLattes) {

        $htmlLattes = explode('<h1>Projetos de pesquisa</h1>', $htmlLattes);
        $htmlLattes = explode('</div><br class="clear" /></div><br class="clear" /><div class="title-wrapper">', $htmlLattes[1]);

        if (is_string($htmlLattes[0]))
            echo utf8_encode($htmlLattes[0]);
        else
            return false;
    }

    public static function areaAtuacao($htmlLattes) {

        $htmlLattes = explode('<h1>&Aacute;reas de atua&ccedil;&atilde;o</h1>', $htmlLattes);
        $htmlLattes = explode('</div><br class="clear" /></div><br class="clear" /><div class="title-wrapper">', $htmlLattes[1]);

        if (is_string($htmlLattes[0]))
            echo utf8_encode($htmlLattes[0]);
        else
            return false;
    }
}

?>