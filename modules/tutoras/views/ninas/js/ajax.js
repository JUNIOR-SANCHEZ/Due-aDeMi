$(document).ready(function () {
    function validacion() {
        var bool =true;
        if(!$("#nombre-nna").validarCampoVacio()) bool=false;
        if(!$("#apellido-nna").validarCampoVacio()) bool=false;
        if(!$("#cedula").validarCampoVacio()) bool=false;
        if(!$("#phone").validarCampoVacio()) bool=false;
        if(!$("#lugar-nacimiento").validarCampoVacio()) bool=false;
        if(!$("#direccion-nna").validarCampoVacio()) bool=false;
        if(!$("#datepicker-fecha-nacimiento").validarCampoVacio()) bool=false;
        if(!$("#tipo-medida").validarCampoVacio()) bool=false;
        if(!$("#num-medida").validarCampoVacio()) bool=false;
        if(!$("#datepicker-fecha-medida").validarCampoVacio()) bool=false;
        if(!$("#nombre-solicitud").validarCampoVacio()) bool=false;
        
        
        return bool;
    }
    $('#datepicker-fecha-nacimiento').datepicker({
        autoclose: true
    });
    $('#datepicker-fecha-medida').datepicker({
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
            alert("Debe agregar los datos de los familiares que estaran acargo");
            bool = false;
        }
        formData.append("informante",JSON.stringify(info_nna));
        formData.append("familia",JSON.stringify(fami_nna));
       

        console.log(validacion());
        
        if (validacion() == true && bool == true) {
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
                    info_nna = [];
                    fami_nna = [];
                } else {
                    console.log(response);
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