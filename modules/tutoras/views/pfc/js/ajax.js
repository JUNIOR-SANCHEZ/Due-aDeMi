$(document).ready(function () {
    
    $("#btn-guardar-pfc").on("click", function (e) {
        e.preventDefault();
        var data = $("#form-pfc").serialize();
        var url = $("#form-pfc").attr("action");

        console.log(url);
        
        console.log(JSON.parse(JSON.stringify($("#form-pfc").serializeArray())));
        $.post(url, data, function (response) {
            console.log(response);
            
            if (response["error"] == false) {
                console.log(response["mensaje"]+" "+response["id"]);
                
            } else {
                alert(response["mensaje"])
            }
        },"json");
        
    });
})