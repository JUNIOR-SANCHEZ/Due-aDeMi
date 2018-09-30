$(document).ready(function (){

    var id = 0;
    $('#btn-guardar-pgf').on('click', function (e)
    {
        e.preventDefault();
        var _dato = $("#form-pgf").serialize()
        var _url = $("#form-pgf").attr("action");
        console.log (JSON.parse(JSON.stringify($("#form-pgf").serializeArray())));
        $.post(_url,_dato,function(renviar){
            console.log (renviar)
            if(renviar["error"] == false){
                id = renviar["id"]
                alert(renviar["mensaje"])
                console.log();
                
            }else{
                alert(renviar["mensaje"])
            }
        },"json")
        
    })
    
    
})