$(document).ready(function () {
    $('#datepicker').datepicker({
        autoclose: true
    })


    $("#form-preliminar").on("submit", function (e) {
        e.preventDefault();
        var ruta = $(this).attr("action");
        var form = $(this);
        var formData = new FormData(document.getElementById('form-preliminar'));
        if ($("#pre-observacion").validarCampoVacio()) {
            jQuery.ajax({
                url: ruta,
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                type: 'POST',
                success: function (data) {
                    if (data == true) {
                        alert("Se registro con exito");
                        form[0].reset();
                    } else {
                        alert(data);
                        console.log(data);

                    }
                }
            });
        }

    });
});