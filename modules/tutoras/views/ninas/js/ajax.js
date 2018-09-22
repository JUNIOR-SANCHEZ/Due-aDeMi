$(document).ready(function () {
    /**
     * FORMULARIO NINA O ADOLECENTE
     */
    $('#form-ninas').on('submit', function (e) {
        e.preventDefault();
 
        var _data = new FormData(document.getElementById('form-ninas'))
        var _url = $(this).attr("action");
        var _method = $(this).attr("method")
       
            $.ajax({
                url: _url,
                type: _method,
                data: _data,
                
                contentType: false,
                processData: false,
                success: function (response) {
                    console.log(response);
                }
            })
        //     $(this)[0].reset();
    })


})