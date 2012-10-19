/* 
 * UnB Gama : Template Wordpress
 * Versão 1.0
 */

/*Funções jQuery*/
/*Configurações do Slideshow*/
$(document).ready(function() {    
    $('#bannerImagem').cycle({
        fx: 'scrollHorz', // choose your transition type, ex: fade, scrollUp, shuffle, etc...
        timeout: 8000,
        next: '#navBannerDir',
        prev: '#navBannerEsq'
    });
    $('#bannerDados').cycle({
        fx: 'fade', // choose your transition type, ex: fade, scrollUp, shuffle, etc...
        timeout: 8000,
        next: '#navBannerDir',
        prev: '#navBannerEsq'					
    });

    $("a[rel^='prettyPhoto']").prettyPhoto();

    /*Efeito hover de icones das redes sociais*/
    $('.redesSociais a div').hover(function(){
        $('.redesSociais a div').not(this).css('opacity','0.5');
        $(this).css('opacity','1');
    },function(){
        $('.redesSociais a div').css('opacity','1')
        });
        
    //Aumentaar Fonte
  $(".aumentarFonte").click(function(){
	var currentFontSize = $('.noticiaPrincipal p').css('font-size');
	var currentFontSizeNum = parseFloat(currentFontSize, 10);
	var newFontSize = currentFontSizeNum*1.2;
	$('.noticiaPrincipal p').css('font-size', newFontSize);
	return false;
  });
  //Diminuir Fonte
  $(".diminuirFonte").click(function(){
	var currentFontSize = $('.noticiaPrincipal p').css('font-size');
	var currentFontSizeNum = parseFloat(currentFontSize, 10);
	var newFontSize = currentFontSizeNum*0.8;
	$('.noticiaPrincipal p').css('font-size', newFontSize);
	return false;
  });
  
    //Remover tags 'hr' do código
    $('hr').remove('.separator');
    
    //Remover tags 'img' da UL cujo id="infoLattes"
    $('a').remove('.icone-lattes');

    //Adicionar classe nos elementos que necessitam de display none
    $('#infoLattes li div').addClass('ocultar');
    $('#infoLattes li p').addClass('ocultar');
    $('#formacaoAcademica div').removeClass('ocultar');
    $('#formacaoAcademica div').addClass('mostrar');
    
    //
   

  });
/*jQyery de paginação*/
jQuery.fn.extend({
    highlight: function(search, insensitive, hls_class){
        var regex = new RegExp("(<[^>]*>)|(\\b"+ 
            search.replace(/([-.*+?^${}()|[\]\/\\])/g,"\\$1") +")", insensitive ? 
            "ig" : "g");
        return this.html(this.html().replace(regex, function(a, b, c){
            return (a.charAt(0) == "<") ? a : "<strong class=\""+ hls_class +"\">" + c + "</strong>";
        }));
    }
});

jQuery(document).ready(function($){
    if(typeof(hls_query) != 'undefined'){
        $("#resultadoBusca").highlight(hls_query, 1, "hls");
    }
});
/* Javascript para data*/
$('#data_1').focus(function(){
    $(this).calendario({
        target:'#data_1'
    });
});
/*Fim das funções jQuery*/

