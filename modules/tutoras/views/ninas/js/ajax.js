$(document).ready(function () {

    function paginacion(dato) {
        $.post(_root_ + "tutoras/ninas/viewNina", dato,
            function (response) {
                $("#contenedor").html("");
                $("#contenedor").html(response);
            });
    }
    $(document).delegate(".pagina", "click", function () {
        var pag = "pagina=" + $(this).attr("pagina");
        paginacion(pag);
    });
    // formulario niña registrar
    $('#form-ninas').on('submit', function (e) {
        e.preventDefault();
        var _data = new FormData(document.getElementById('form-ninas'))
        var _url = $(this).attr("action");
        var _method = $(this).attr("method")
        $.ajax({
            url: _url,
            type: _method,
            data: _data,
            contentType: false,
            processData: false,
            success: function (response) {
                console.log(response);
                var pag = "pagina=" + 1;
                paginacion(pag)
            }
        })
        $(this)[0].reset();
        mostrarNina();
    })
    // formulario niña registrar

})