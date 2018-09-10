$(document).ready(function () {
    /**
     * Agregar fila a seguiniento y evaluacion
     */
    $('#btn_agregar_fila_SE').on('click', function (e) {
        e.preventDefault();
        $('#contenedor_SE').append(
            ` 
            <tr>
            <td>
                <textarea class="form-control" rows="3"></textarea>
            </td>
            <td>
                <textarea class="form-control" rows="3"></textarea>
            </td>
            <td>
                <textarea class="form-control" rows="3"></textarea>
            </td>
            <td>
                <textarea class="form-control" rows="3"></textarea>
            </td>
            </tr>
            `
        );
    });
    /**
     * Agregar fila a Intervencion
     */
    var cont = 2;
    $('#btn_agregar_fila_I').on('click', function (e) {
        e.preventDefault();
        
        $('#contenedor_I').append(
            ` 
            <tr>
            <td>
                <textarea name="metas-${cont}" class="form-control" rows="3"></textarea>
            </td>
            <td>
                <textarea name="indicadores-${cont}" class="form-control" rows="3"></textarea>
            </td>
            <td>
                <textarea name="actividades-${cont}" class="form-control" rows="3"></textarea>
            </td>
            <td>
                <textarea name="tiempos-${cont}" class="form-control" rows="3"></textarea>
            </td>
            <td>
                <textarea name="recursos-${cont}" class="form-control" rows="3"></textarea>
            </td>
            <td>
                <textarea  name="responsables-${cont}" class="form-control" rows="3"></textarea>
            </td>
            </tr>
            `
        );
        $('#num-intervencion').attr('value',cont);
        var num = $('#num-intervencion').attr('value');
        console.log(num);
        cont++;
    });

    function get_selected() {

        var data = $('#canton').val();
        $.ajax({
            url: _root_ + 'tutoras/PFC/parroquias',
            dataType: 'json',
            type: "POST",
            data: {
                'id': data
            },
            beforeSend: function () {

            },
            success: function (data) {
                var option = `<option value="" disabled selected>Seleccione una opcion de la lista</option>`;
                $.each(data, function (i, val) {
                    option += `<option value="${val.id_parroquias}">${val.parroquia.toUpperCase()}</option>`;
                })
                $('#parroquia').empty();
                $('#parroquia').append(option);
            },
            error: function (xhr, status, err) {
                // console.log(xhr);
                // console.log(status);
                // console.log(err);
            },
        });
    }

    // $('#canton').on('change', function () {
    //     var id = $('#canton').val();
    //     $.ajax({
    //         url: _root_ + 'tutoras/plandefortalecimientocomunitario/parroquias',
    //         data: {
    //             id: id
    //         },
    //         type: "POST",
    //         dataType: "json",
    //         success: function (response) {
    //             var $selectDropdown = $("#parroquia").empty().html(' ');
    //             $.each(response, function (i, val) {
    //                 $selectDropdown.append($("<option></option>").attr("value", val.id_parroquias).text(val.parroquia));
    //             });
    //             $selectDropdown.trigger('contentChanged');
    //             $('select').on('contentChanged', function () {
    //                 $(this).material_select();
    //             });
    //         }
    //     });
    // });

    $(document).on('change', '#canton', function () {
        get_selected();
    })
});