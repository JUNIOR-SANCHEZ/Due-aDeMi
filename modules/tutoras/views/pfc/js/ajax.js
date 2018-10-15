$(document).ready(function () {
    $('#datepicker-elaboracion').datepicker({
        autoclose: true
      });
      $('#datepicker-evaluacion').datepicker({
        autoclose: true
      });
    var interv = [];
    var segui = [];
    var respon = [];
    function campos(){
        var bool = true;
        if(interv.length == 0) bool = false;
        if(interv.length == 0) bool = false;
        if(interv.length == 0) bool = false;
        return bool;
    }
    /**
     * ENVIAMOS LOS DATOS PARA CREAR UN PLAN DE FORTALECIMIENTO COMUNITARIO
     */
    $("#btn-guardar-pfc").on("click", function (e) {
        e.preventDefault();
        var url = $("#form-pfc").attr("action");
        var form = $("#form-pfc").serializeFormJSON();
        form.intervencion = interv;
        form.seguimiento = segui;
        form.responsable = respon;
        if (validacion()==true && campos()==true){
            $.post(url, form, function (response) {
                if (response == true) {
                    alert("Registro exitos");
                    $("#form-pfc")[0].reset();
                    $("#form-intervencion")[0].reset();
                    $("#form-seguimiento")[0].reset();
                    $("#form-responsable")[0].reset();
                    interv = [];
                    segui = [];
                    respon = [];
                } else {
                    alert("Hubo un error")
                }
            });
        }else{
            alert("Ingrese todo los dato correspondientes")
        }
    });
    /**
     * 
     */
    $('#form-intervencion').on("submit", function (e) {
        e.preventDefault();
        var data = $(this).serializeFormJSON();
        interv.push(data)
        $(this)[0].reset();
    });
    /**
     * 
     */
    $('#form-seguimiento').on("submit", function (e) {
        e.preventDefault();
        var data = $(this).serializeFormJSON();
        segui.push(data)
        $(this)[0].reset();
    });
    /**
     * 
     */
    $('#form-responsable').on("submit", function (e) {
        e.preventDefault();
        var data = $(this).serializeFormJSON();
        console.log(data);
        respon.push(data)
        $(this)[0].reset();
    });
    /**
     * 
     */
    $('#form-area').on("submit", function (e) 
    {
        e.preventDefault();
        var data = $(this).serializeFormJSON();
        
        area.push(data)
        $(this)[0].reset();
        
    });

})