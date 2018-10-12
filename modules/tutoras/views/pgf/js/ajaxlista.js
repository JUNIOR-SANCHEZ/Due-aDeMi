$(document).ready(function(){
    function paginacion(dato) {
        $.post(_root_ + "tutoras/pgf/lista_pgf_ajax", dato,
            function (response) {
                $("#contenedor").html("");
                $("#contenedor").html(response);
            });
    }
    $(document).delegate(".pagina", "click", function () {
        var pag = "pagina=" + $(this).attr("pagina");
        paginacion(pag);
    });
});