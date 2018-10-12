$(document).ready(function (){

   

    var area = [];
    $('#btn-guardar-pgf').on('click', function (e)
    {
        e.preventDefault();
        var form = $("#form-pgf").serializeFormJSON();
        var ruta = $("#form-pgf").attr("action");
        form.area = area;
        console.log(form);
        
        if(area.length > 0 ){
            $.post(ruta,form,function(response){
                console.log (response)
                if(response == true){
                    alert("Se ingreeso correctamente");
                    $("#form-pgf")[0].reset();
                    $("#form-area")[0].reset();
                    area = [];
                }else{
                    alert("Ha ocurrido un error")
                }
            });
        }else{
            alert("Debe llenar todo los campos");
        }
        
    }); 
    
    $('#form-area').on("submit", function (e) {
        e.preventDefault();
        var data = $(this).serializeFormJSON();
        area.push(data)
        $(this)[0].reset();
    });
    
})      