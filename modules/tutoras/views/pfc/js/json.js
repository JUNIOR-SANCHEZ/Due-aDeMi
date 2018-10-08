$(document).ready(function(){
    $("#form-intervencion").on("submit",function(e){
        e.preventDefault();
        console.log(JSON.parse(JSON.stringify($(this).serializeArray())));
        var form = $(this).serializeArray();
        console.log(form[0]['meta']);
        
    }); 

    var json = function(){

    }
});
