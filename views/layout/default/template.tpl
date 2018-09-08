<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <link rel="icon" type="image/png" href="{$_layoutParams.root}public/img/images/escudo.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>{$titulo|default:""}</title>

    <link rel="stylesheet" href="{$_layoutParams.bootstrap_css}">
    <link rel="stylesheet" href="{$_layoutParams.fontAwesome_css}">
    <link rel="stylesheet" href="{$_layoutParams.ionicons_css}">
    <link rel="stylesheet" href="{$_layoutParams.jquery_jvectormap_css}">
    <link rel="stylesheet" href="{$_layoutParams.AdminLTE_css}">
    <link rel="stylesheet" href="{$_layoutParams.skins_css}">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <!-- RUTAS AUTOMATICAS CSS -->
    {if isset($_layoutParams.css) && count($_layoutParams.css)} {foreach item=css from=$_layoutParams.css}
    <link href="{$css}" rel="stylesheet"> {/foreach} {/if}
</head>

<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
        <!-- MENU DE NAVEGACION -->
        {if isset($widgets.top)} {foreach item=tp from=$widgets.top} {$tp} {/foreach} {/if}

        {if isset($widgets.sidenav)} {foreach item=tp from=$widgets.sidenav} {$tp} {/foreach} {/if}
        <div class="content-wrapper">
            <!-- CUERPO DE LA APLICACION -->
            {include file=$_contenido}
        </div>
    </div>
    <!-- FOOTER -->
    <!-- {if isset($widgets.footer)} {foreach item=tp from=$widgets.footer } {$tp} {/foreach} {/if} -->


    <!-- VARIABLES GLOBALES -->
    <script type="text/javascript">
        var _root_ = '{$_layoutParams.root}';
    </script>


    <script src="{$_layoutParams.jquery_js}"></script>
    <script src="{$_layoutParams.jquery_ui_js}"></script>
    <script>
        $.widget.bridge('uibutton', $.ui.button);
    </script>
    <script src="{$_layoutParams.bootstrap_js}"></script>
    <script src="{$_layoutParams.raphaelp_js}"></script>
    <!-- <script src="{$_layoutParams.morris_js}"></script> -->
    <script src="{$_layoutParams.jquery_sparkline_js}"></script>
    <script src="{$_layoutParams.jvectormap_js}"></script>
    <script src="{$_layoutParams.jvectormap_world_js}"></script>
    <script src="{$_layoutParams.jquery_knob_js}"></script>
    <script src="{$_layoutParams.moment_js}"></script>
    <script src="{$_layoutParams.bootstrap_daterangepicker_js}"></script>
    <script src="{$_layoutParams.bootstrap_datepicker_js}"></script>
    <script src="{$_layoutParams.bootstrap_wysihtml5_js}"></script>
    <script src="{$_layoutParams.jquery_slimscroll_js}"></script>
    <script src="{$_layoutParams.fastclick_js}"></script>

    <script src="{$_layoutParams.AdminLTE_js}"></script>
    <!-- <script src="{$_layoutParams.dashboard_js}"></script> -->
    <script src="{$_layoutParams.demo_js}"></script>




    <!-- RUTAS AUTOMATICAS DE LIBRERIAS JS QUE NECESITEMOS EN LA APLICACION -->
    {if isset($_layoutParams.jsPlugin) && count($_layoutParams.jsPlugin)} {foreach item=js
    from=$_layoutParams.jsPlugin}
    <script src="{$js}" type="text/javascript"></script> {/foreach} {/if}
    <!-- RUTAS AUTOMATICAS DE ARCHIVO JS CREADOS -->
    {if isset($_layoutParams.js) && count($_layoutParams.js)} {foreach item=js from=$_layoutParams.js}
    <script src="{$js}" type="text/javascript"></script> {/foreach} {/if}
    <!-- SECCION DEL FOOTER-->

</body>

</html>