<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <link rel="icon" type="image/png" href="{$_layoutParams.root}public/img/images/escudo.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>{$titulo|default:""}</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link href="{$_layoutParams.ruta_css}materialize.min.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="{$_layoutParams.ruta_css}bootstrap.min.css" rel="stylesheet">

    
    <!-- Material Design Bootstrap -->
    <link href="{$_layoutParams.ruta_css}mdb.min.css" rel="stylesheet">

    
    <!-- Your custom styles (optional) -->
    <link href="{$_layoutParams.ruta_css}style.css" rel="stylesheet">
    <!-- RUTAS AUTOMATICAS CSS -->
    {if isset($_layoutParams.css) && count($_layoutParams.css)} {foreach item=css from=$_layoutParams.css}
    <link href="{$css}" rel="stylesheet"> {/foreach} {/if}
</head>

<body>
    <!-- MENU DE NAVEGACION -->
    <!-- {if isset($widgets.top)} {foreach item=tp from=$widgets.top} {$tp} {/foreach} {/if} -->
    <!-- MENSAJES DE ERROR -->
    {if isset($error)}
    {/if}
    {if isset($mensaje)}
    {/if}
    <!-- CUERPO DE LA APLICACION -->
    {include file=$_contenido}
    <!-- FOOTER -->
    <!-- {if isset($widgets.footer)} {foreach item=tp from=$widgets.footer } {$tp} {/foreach} {/if} -->
    <!-- VARIABLES GLOBALES -->
    <script type="text/javascript">
        var _root_ = '{$_layoutParams.root}';
    </script>
    <!-- JQuery -->
    <script type="text/javascript" src="{$_layoutParams.ruta_js}jquery-3.3.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="{$_layoutParams.ruta_js}popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="{$_layoutParams.ruta_js}bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="{$_layoutParams.ruta_js}mdb.min.js"></script>

    <script type="text/javascript" src="{$_layoutParams.ruta_js}materialize.min.js"></script>
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script> -->
    <!-- JS propios -->
    <script type="text/javascript" src="{$_layoutParams.ruta_js}inicializar.js"></script>
    <!-- RUTAS AUTOMATICAS DE LIBRERIAS JS QUE NECESITEMOS EN LA APLICACION -->
    {if isset($_layoutParams.jsPlugin) && count($_layoutParams.jsPlugin)} {foreach item=js from=$_layoutParams.jsPlugin}
    <script src="{$js}" type="text/javascript"></script> {/foreach} {/if}
    <!-- RUTAS AUTOMATICAS DE ARCHIVO JS CREADOS -->
    {if isset($_layoutParams.js) && count($_layoutParams.js)} {foreach item=js from=$_layoutParams.js}
    <script src="{$js}" type="text/javascript"></script> {/foreach} {/if}
    <!-- SECCION DEL FOOTER-->

</body>

</html>