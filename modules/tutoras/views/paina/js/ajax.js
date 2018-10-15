$(document).ready(function () {
    $('#Responsable').on("change",function(){
        var cedula=$("#Responsable option[value="+$(this).val() +"]").attr("data-cedula")
        $('#cedula').val(cedula)
    })
    $('#datepicker-elaboracion').datepicker({
        autoclose: true
    });
    $('#datepicker-evaluacion').datepicker({
        autoclose: true
    });
    var area = [];
    $('#btn-guardar-paina').on('click', function (e) {
        e.preventDefault();
        var form = $("#form-paina").serializeFormJSON();
        var ruta = $("#form-paina").attr("action");
        var bool = true;
        form.area = area;

        if (area.length == 0) {
            alert("Debe rellenar los campos del area");
            bool = false;
        }
        if (validacion() == true && bool == true) {
            $.post(ruta, form, function (response) {
                if (response == true) {
                    alert("Se registro con exito");
                    area = [];
                    $("#form-paina")[0].reset();
                } else {
                    alert("Ha ocurrido un error");
                }
            });
        }
<<<<<<< HEAD
        
=======
>>>>>>> 6667ad1d8c2b58419a08f0bc8cca189a3d356b5a
    });

    $('#form-area').on("submit", function (e) {
        e.preventDefault();
        var data = $(this).serializeFormJSON();
        if (validacion() == true){
        area.push(data)
        $(this)[0].reset();
        }
    });

})