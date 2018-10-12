<div class="box box-primary">
        <div class="box-header ">
            <h3 class="box-title"><strong>Lista Paina (PROYECTO INTEGRAL DE ATENCION A LA NIÑA, NIÑO Y ADOLECENTE -
                    PAINA) </strong></h3>
            <div class="box-tools">
                <ul class="pagination pagination-sm no-margin pull-right">
                    {if isset($paginador)}{$paginador}{/if}
                </ul>
            </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body no-padding">
            <table class="table">
                <tr>
                    <th>Nombre de la niña</th>
                    <th>Fecha Elaboracion</th>
                    <th>Proxima Evaluacion</th>
                    <th>Profesionales</th>
                </tr>
                {foreach item=lista from=$l}
                <tr>
                    <td>{$lista["nombres"]} {$lista["apellidos"]}</td>
                    <td>{$lista["fecha_elaboracion"]}</td>
                    <td>{$lista["proxima_evaluacion"]}</td>
                    <td>{$lista["profesional"]}</td>
                    <td><a target="_blank" href="{$_layoutParams.root}tutoras/paina/pdf/{$lista['id_paina']}" class="btn btn-info">PDF</a></td>

                </tr>
                {/foreach}
            </table>
        </div>
    </div>