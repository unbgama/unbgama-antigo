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

    //Adicionar classe nos elementos que necessitam de display none
    $('#infoLattes li div').addClass('ocultar');
    $('#infoLattes li p').addClass('ocultar');
    $('#formacaoAcademica div').removeClass('ocultar');
    $('#formacaoAcademica div').addClass('mostrar');
    
    //Voltar ao topo (pagina dos professores) archive-professores.php
    $(document).ready(function(){
        $("#voltaTopo").click(function() {
            $('html, body').animate({
                scrollTop: $("#colunaCentral").offset().top
            }, 500);
        });
    });
	
	//Mostrando e Ocultando paragrafos de informações carregadas do Curriculo Lattes
	$(document).ready(function(){
		$('.tabelaHorarios').hide();

		$('.mostrar').click(function(event){
			event.preventDefault();
			$(".tabelaHorarios").show("slow");
			$('.tituloHorariosProfessor').hide();
		});

		$('.ocultar').click(function(event){
			event.preventDefault();
			$(".tabelaHorarios").hide("slow");
			$('.tituloHorariosProfessor').show("slow");
		});
	});
	
	$(document).ready(function(){
		$('#informacaoProfessor').hide();

		$('.mostrar').click(function(event){
			event.preventDefault();
			$("#informacaoProfessor").show("slow");
		});

		$('.ocultar').click(function(event){
			event.preventDefault();
			$("#informacaoProfessor").hide("slow");
		});
	});
	
	$(document).ready(function(){
		$('#areaAtuacao').hide();

		$('.mostrar').click(function(event){
			event.preventDefault();
			$("#areaAtuacao").show("slow");
		});

		$('.ocultar').click(function(event){
			event.preventDefault();
			$("areaAtuacao").hide("slow");
		});
	});
	
	$(document).ready(function(){
		$('#projetosPesquisa').hide();

		$('.mostrar').click(function(event){
			event.preventDefault();
			$("#projetosPesquisa").show("slow");
		});

		$('.ocultar').click(function(event){
			event.preventDefault();
			$("#projetosPesquisa").hide("slow");
		});
	});
	
	//Função para incluir classe no menu principal
	$('#menu-menu-principal > li > a').addClass('span4');

  });
  
/*Fim das funções jQuery*/

