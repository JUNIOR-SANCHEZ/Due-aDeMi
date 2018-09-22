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
    /**
     * FORMULARIO NINA O ADOLECENTE
     */
    $('#form-ninas').on('submit', function (e) {
        e.preventDefault();
        var _data = new FormData(document.getElementById('form-ninas'))
        var _url = $(this).attr("action");
        var _method = $(this).attr("method")
        for (var value of _data.keys()) {
            console.log(value); 
         }
        // $.ajax({
        //     url: _url,
        //     type: _method,
        //     data: _data,
        //     contentType: false,
        //     processData: false,
        //     success: function (response) {
        //         console.log(response);
        //     }
        // })
        // $(this)[0].reset();
    })
    // formulario niña registrar

})