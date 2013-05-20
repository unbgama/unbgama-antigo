		</div><!-- end container12 -->
		
<!-- Inicio do Rodape -->
		<footer id="rodape">

			<div id="inner" class="container">
				<div id="endereço" class="span5">
					
					<h3>Endere&ccedil;o</h3>
					<p><address> Universidade de Brasília - Faculdade Gama, <br /> Área Especial de Indústria Projeção A Brasília <br /><strong>CEP</strong>: 72.444-240 <br /><strong>Bairro:</strong> Gama - Setor Leste</address></p>
					<abbr title="Telefone Geral">Telefone: <strong><a href="tel:31078904">+55 (61) 3107-8901</a></strong></abbr>			
				</div>

				<div id="mapa"  class="span4 alpha">
					<h3>Mapa</h3>
						<!--Incluindo Google Maps-->
						<iframe width="290" height="180" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" style="border: 5px solid white" src="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=pt&amp;geocode=&amp;q=UnB+Campus+Gama+-+Bras%C3%ADlia+-+DF,+Brasil&amp;aq=0&amp;oq=unb+&amp;sll=37.0625,-95.677068&amp;sspn=40.409448,80.859375&amp;t=m&amp;ie=UTF8&amp;hq=UnB+Campus+Gama+-+Bras%C3%ADlia+-+DF,+Brasil&amp;cid=4935669999896339073&amp;hnear=&amp;ll=-15.995655,-48.020554&amp;spn=0.118811,0.205307&amp;z=11&amp;iwloc=A&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=pt&amp;geocode=&amp;q=UnB+Campus+Gama+-+Bras%C3%ADlia+-+DF,+Brasil&amp;aq=0&amp;oq=unb+&amp;sll=37.0625,-95.677068&amp;sspn=40.409448,80.859375&amp;t=m&amp;ie=UTF8&amp;hq=UnB+Campus+Gama+-+Bras%C3%ADlia+-+DF,+Brasil&amp;cid=4935669999896339073&amp;hnear=&amp;ll=-15.995655,-48.020554&amp;spn=0.118811,0.205307&amp;z=11&amp;iwloc=A" style="color:#0000FF;text-align:left">Ver mapa maior</a></small>
				</div><!-- end mapa -->
						
				<div class="copyright span3">
					<div class="redesSociais">
						<!--<img src="<?php bloginfo('template_directory');?>/img/iconRedesSociais.png" />-->
						<h3>Redes Sociais</h3>
							<a href="https://www.facebook.com/groups/189467721113004/" alt="Facebook FGA" title="Facebook FGA" target="_blank">
							<div id="facebook"></div>
							</a>
							<a href="https://plus.google.com/u/0/104490359477931809449" alt="Google+ UnB Gama" title="Google+ UnB Gama" target="_blank">
								<div id="googlePlus"></div>
							</a>
							<a href="http://www.twitter.com/unbgama" alt="Siga-nos no Twiiter" title="Siga-nos no Twiiter" target="_blank">
								<div id="twitter"></div>
							</a>
							<a href="https://vimeo.com/user13476764" alt="UnB Gama on Vimeo" title="UnB Gama on Vimeo" target="_blank">
								<div id="vimeo"></div>
							</a>
							<a href="http://lnkd.in/iYwfA6" alt="Linkedin UnB Gama" title="Linkedin UnB Gama" target="_blank">
								<div id="linkedin"></div>
								</a>
							<a href="http://www.fga.unb.br/feed" alt="Assinar RSS UnB Gama" title="Assinar RSS UnB Gama">
								<div id="rss"></div>
							</a>
							<a href="http://www.flickr.com/people/87145351@N02/" alt="UnB Gama no Flickr" title="UnB Gama no Flickr" target="_blank">
								<div id="flickr"></div>
							</a>
					</div>
				</div><!-- end Redes sociais -->

				<div class="row">
					<span>Copyright © 2013 Universidade de Brasília. Todos os direitos reservados.</span>
				</div>


			</div> <!-- end inner -->
		</footer><!-- end rodape -->

	 <!-- Le javascript
    ================================================== -->
		<script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/js/script.js"></script>   
		<script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/js/jquery.min.js"></script>
        <script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/js/cycle/jquery.cycle.all.latest.js"></script>
        <script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/js/cycle/js/jquery.prettyPhoto.js"></script>
        <script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/js/jquery.cookie.js"></script>
    	<script>
            if($.cookie("css")) {
                $("link").attr("href",$.cookie("css"));
            }
            $(document).ready(function() { 
                $("#botoesAcessibilidade ul li a").click(function() { 
                    $("link").attr("href",$(this).attr('rel'));
                    $.cookie("css",$(this).attr('rel'), {expires: 365, path: '/'});
                    return false;
                });
                
                //Mostrar e ocultar div com fade
                $("button:first").click(function() {
                    $("p:first").fadeToggle("slow", "linear");
                });
					
				$('#voltaTopo').click(
					function (e) {
						$('html, body').animate({scrollTop: '0px'}, 800);
					}
				);
            });
           </script>

	<!-- Le Google Analytics
    ================================================== -->
	<?php wp_footer(); ?>
	</body> 
    

    
</html>