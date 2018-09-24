$(document).ready(function () {
    var id = 0;
    /**
     * FORMULARIO NINA O ADOLECENTE
     */
    $('#form-ninas').on('submit', function (e) {
        e.preventDefault();

        var _data = new FormData(document.getElementById('form-ninas'))
        var _url = $(this).attr("action");
        var _method = $(this).attr("method")

        $.ajax({
            url: _url,
            type: _method,
            data: _data,
            dataType: "json",
            contentType: false,
            processData: false,
            beforeSend: function () {},
            success: function (response) {
                if (response["error"] == false) {
                    console.log(response["mensaje"] + response["id"]);
                    id = response["id"];
                } else {
                    console.log(response["mensaje"]);
                }
            }
        })
    });

    $('#form-informante').on('submit', function (e) {
        e.preventDefault();
        var dato = $(this).serialize() + "&nina=" + parseInt(id);
        var url = $(this).attr('action');
        $.post(url, dato, function (response) {
            console.log(response);
            if (response["error"] == false) {
                console.log(response["mensaje"]);

            } else {
                console.log(response["mensaje"]);
            }
        }, "json");
    });

    $("#form-descripcion").on("submit", function (e) {
        e.preventDefault();
        var datos = $(this).serialize();
        var url = $(this).attr("action");
        console.log(datos);
        $.post(url, datos, function (response) {
            if (response["error"] == false) {
                console.log(response["mensaje"]);
            } else {
                console.log(response["mensaje"]);
            }
        });

    });


})