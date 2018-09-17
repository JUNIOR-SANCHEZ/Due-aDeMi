$(document).ready(function () {

    /**
     * PAGINACION AJAX
     */
    function paginacion(dato) {
        $.post(_root_ + "tutoras/docs/viewDocAjax/"+_doc_, dato,
            function (response) {
                $("#contenedor").html("");
                $("#contenedor").html(response);
            });
    }
    /**
     * MUESTRO LOS REGISTRO DEL PLAN DE FORTAECIMIENTO COMUNITARIO DE
     * ACUERDO AL NUMERO DE PAGINA SELECCIONADO
     */
    $(document).delegate(".pagina", "click", function () {
        var pag = "pagina=" + $(this).attr("pagina");
        paginacion(pag);
    });
    /**
     * BUSCAMOS UN REGISTRO CON LA CEDULA
     */
    $('#form-buscar').on('click',function(e){
        e.preventDefault();
        var buscar = $(this).serialize()
        paginacion(buscar);
    })
    /**
     * ELIMINO UN REGISTRO DEL PLAN DE FORTALECIMIENTO COMUNITARIO
     */
    $(document).delegate('.btn-delete', 'click', function (e) {
        e.preventDefault();
        var _url = $(this).attr('href')
        $.ajax({
            url: _url,
            type: "GET",
            beforeSend: function () {
                $('.panel .fondo').removeClass('hide');
            },
            success: function (response) {
                $('.panel .fondo').addClass('hide');
                console.log(response);
                if ($.isEmptyObject(response) == false) {
                    var json = $.parseJSON(response);
                    if (json['error'] == false) {
                        console.log(json['mensaje']);
                        console.log(false);
                        paginacion();

                    } else {
                        console.log(json['mensaje']);
                    }
                }
            }
        });
    });
    /**
     * MUESTRO LOS DATOS EN EL FORMULARIO PARA EDITAR EL REGITRO DEL PFC
     */
    $(document).delegate('.btn-edit', 'click', function (e) {
        e.preventDefault();
        
        var url = $(this).attr('data-url');
        $.get(url, function (response) {
            $('#form-update-input-elaboracion').val(response['elaboracion']);
            $('#form-update-input-evaluacion').val(response['evaluacion']);
            $('#form-update-hidden').val(response['id'])
            $('#form-update-select').html(`
            <option value="">Seleccionar:</option>
            <option value="${response['nina']}" selected >${response['nombres']}</option>
            `);
        },'json')

    })
    /**
     * LISTA DE NINA O ADOLECENTE 
     */
    function select_option() {
        var option = '';
        $('#form-pfc-select option').each(function () {
            option += `<option value="${$(this).val()}">${$(this).text()}</option>`
        })
        return option;
    }
    /**
     * ACTIVA EL SELECT PARA  DEL MODEL PARA CAMBIAR DE NINA O ADOLECENTE
     */
    $('#btn-llenar-select').on('click', function (e) {
        e.preventDefault();
        var select = $('#form-update-select');
        var option = '';
        select.prop('disabled', false);
        select.html('');
        option = select_option();
        select.html(option);
    })
    /**
     * REGISTRA PLAN DE FORTALECIMIENTO COMUNITARIO
     * POR METODO POST
     */
    $('#form-pfc').on('submit', function (e) {
        e.preventDefault();
        var _data = new FormData(document.getElementById('form-pfc'));
        var _url = $(this).attr('action');
        var _method = $(this).attr('method');
        var form = $(this);
        $.ajax({
            url: _url,
            type: _method,
            data: _data,
            contentType: false,
            processData: false,
            success: function (response) {
                if ($.isEmptyObject(response) == false) {
                    var json = $.parseJSON(response);
                    if (json['error'] == false) {
                        $('#mensaje').html();
                        $('#mensaje').html(`
                            <div class="alert alert-success alert-dismissible" role="alert" id="alert-x">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                                <strong>OK!</strong> ${json['mensaje']}
                            </div>
                        `)
                        paginacion(1);
                        form[0].reset();
                        setInterval(function () {
                            $('#alert-x').alert('close')
                        }, 2000)
                    } else {
                        $('#mensaje').html();
                        $('#mensaje').html(`
                        <div class="alert alert-danger alert-dismissible" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                            <strong>UPS!</strong> ${json['mensaje']}
                        </div>
                        `)
                    }

                }
            }
        })
    })
    $('#form-pfc-update').on('submit', function (e) {
        e.preventDefault();
        var _data = new FormData(document.getElementById('form-pfc-update'));
        var _url = $(this).attr('action');
        var _method = $(this).attr('method');
        var form = $(this);
        $.ajax({
            url: _url,
            type: _method,
            data: _data,
            contentType: false,
            processData: false,
            beforeSend:function(){
                $('.modal-dialog .fondo').removeClass('hide')
            },
            success: function (response) {
                $('.modal-dialog .fondo').addClass('hide')
                if ($.isEmptyObject(response) == false) {
                    var json = $.parseJSON(response);
                    if (json['error'] == false) {
                        console.log(json);
                        form[0].reset();
                        paginacion(1);
                        $('#modal-default').modal('hide');
                    } else {
                        console.log(json);
                    }

                }
            }
        });
        
    })
})