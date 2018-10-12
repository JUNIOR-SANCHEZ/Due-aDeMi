$(document).ready(function (){
    function validacion(){

        var cedula = $("#cedula").validarCedula()
        var phone = $("#phone").validarCampoTelefono()
        var nombre = $("#nombre-nna").validarCampoLetra()
        if (cedula == false || phone == false ||  nombre == false) {
            return false;
        }       
        return true; 
    }

    $('#datepicker-elaboracion').datepicker({
        autoclose: true
      });
      $('#datepicker-evaluacion').datepicker({
        autoclose: true
      });
    var area = [];
    $('#btn-guardar-paina').on('click', function (e)
    {
        e.preventDefault();
        var form = $("#form-paina").serializeFormJSON();
        var ruta = $("#form-paina").attr("action");
        form.area = area;
        console.log(form);
        if(area.length > 0 ){
            $.post(ruta,form,function(response){
                console.log (response)
                if(response == true){
                    alert("Se ingreeso correctamente");
                    $("#form-paina")[0].reset();
                    $("#form-area")[0].reset();
                    area = [];
                }else{
                    alert("Ha ocurrido un error")
                }
            });
        }else{
            alert("Debe llenar todo los campos");
        }
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
    
    $('#form-area').on("submit", function (e) {
        e.preventDefault();
        var data = $(this).serializeFormJSON();
        area.push(data)
        $(this)[0].reset();
    });
    
})