$(document).ready(function(){

    $('#form-paina').on('submit',function (e) {
        e.preventDefault();
        $(this).serialize()
        
        var datos=$(this).serialize()
        var _url = $(this).attr("action");

        console.log(datos);
        
        //var _method = $(this).attr("method")

       // $.post(_url,_datos,function(retorno){
          //  console.log(retorno)
        //})
        });
       
})