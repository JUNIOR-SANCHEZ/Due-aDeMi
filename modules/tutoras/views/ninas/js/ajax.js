$(document).ready(function () {
    
    $('#datepicker-fecha-nacimiento').datepicker({
        autoclose: true
    });
    $('#datepicker-fecha-medida').datepicker({
        autoclose: true
    });
    $('#datepicker-fecha-ingreso').datepicker({
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
        var formData = new FormData(document.getElementById("form-ninas"));    
        var ruta = $('#form-ninas').attr("action");
        var form2 = $('#form-descripcion').serializeFormJSON();
        var bool = true;
        for(var key in form2){
            formData.append(key,form2[key]);
        }
        if (info_nna.length == 0) {
            alert("Debe agregar los datos de la persona que informa de la situacion");
            bool = false;
        }
        if (fami_nna.length == 0) {

            alert("Debe agregar los datos de los familiares que estan a cargo");
            bool = false;
        }
        formData.append("informante",JSON.stringify(info_nna));
        formData.append("familia",JSON.stringify(fami_nna));
        console.log(validacion_situacion());
        
        if ( validacion() == true && validacion_situacion() == true && bool == true ) {
        $.ajax({
            url: ruta,
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            type: 'POST',
            success: function (response) {
                // alert(response);
                if (response == true) {
                    alert("Se registro con exito");
                    $('#form-ninas')[0].reset();
                    $('#form-descripcion')[0].reset();
                    info_nna = [];
                    fami_nna = [];
                } else {
                    console.log("ERROR AL REGISTRAR");
                }
            }
        })
        }else{
            alert("Parametros no válidos");
        }
    });

    $('#form-informante').on('submit', function (e) {
        e.preventDefault();
        var data = $(this).serializeFormJSON();
        if(validacion_info() == true){
            info_nna.push(data);
            $(this)[0].reset();
        }
        
    });

    $("#form-familiares").on("submit", function (e) {
        e.preventDefault();
        var data = $(this).serializeFormJSON();
        if(validacion_referente() == true){
        fami_nna.push(data)
        $(this)[0].reset();
        }

    });


})