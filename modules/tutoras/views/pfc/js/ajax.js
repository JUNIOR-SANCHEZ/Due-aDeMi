$(document).ready(function () {
    
    $("#form-datos-generales").on("submit", function (e) {
        e.preventDefault();
        var data = $(this).serialize();
        var url = $(this).attr("action");
        $.post(url, data, function (response) {
            if (response["error"] == false) {
                console.log(response["mensaje"]+" "+response["id"]);
                
            } else {
                alert(response["mensaje"])
            }
        },"json");
        
    });
})