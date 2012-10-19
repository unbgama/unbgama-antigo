<?php

?>

<!-- Inicio do plugin do twitter -->
<script charset="utf-8" src="http://widgets.twimg.com/j/2/widget.js"></script>
<script type="text/javascript">
    new TWTR.Widget({
        version: 2,
        type: 'profile',
        rpp: 5,
        interval: 30000,
        width: 'auto',
        height: 210,
        theme: {
            shell: {
                background: '#ffa300',
                color: '#ffffff'
            },
            tweets: {
                background: '#ffffff',
                color: '#000000',
                links: '#ffa300'
            }
        },
        features: {
            scrollbar: false,
            loop: false,
            live: true,
            behavior: 'default'
        }
    }).render().setUser('unbgama').start();
</script>
<!-- Fim do plugin do twitter -->