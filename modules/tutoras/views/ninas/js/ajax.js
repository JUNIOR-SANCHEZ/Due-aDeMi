$(document).ready(function () {
    function validacion(){

        var cedula = $("#cedula").validarCedula()
        var phone = $("#phone").validarCampoTelefono()
        var nombre = $("#nombre-nna").validarCampoLetra()
        if (cedula == false || phone == false ||  nombre == false) {
            return false;
        }       
        return true; 
    }
    $('#datepicker').datepicker({
        autoclose: true
    });
    var info_nna = [];
    var fami_nna = [];
    /**
     * FORMULARIO NINA O ADOLECENTE
     */
    $('#enviar-nna').on('click', function (e) {
        e.preventDefault();
        var form1 = $('#form-ninas').serializeFormJSON();
        var ruta = $('#form-ninas').attr("action");
        var form2 = $('#form-descripcion').serializeFormJSON();
        var form = $.extend(true, form1, form2);
        form.informante = info_nna;
        form.familia = fami_nna;
        if (validacion()) {
            $.ajax({
                url: ruta,
                type: "POST",
                data: form,
                // contentType: false,
                // processData: false,
                beforeSend: function () {},
                success: function (response) {

                    console.log(response);

                    if (response == true) {
                        alert("Se registro con exito");
                    } else {
                        alert("Ha ocurrido un error");
                    }
                }
            })
        }
    });

    $('#form-informante').on('submit', function (e) {
        e.preventDefault();
        var data = $(this).serializeFormJSON();
        info_nna.push(data)
        $(this)[0].reset();
    });

    $("#form-familiares").on("submit", function (e) {
        e.preventDefault();
        var data = $(this).serializeFormJSON();
        fami_nna.push(data)
        $(this)[0].reset();

    });


})