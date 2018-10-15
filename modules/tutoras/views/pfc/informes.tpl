<br>
<div class="col-md-12">
    <div id="contenedor">
        <div class="box box-primary">
            <div class="box-header ">
                <h3 class="box-title"><strong>PLAN DE FORTAKECIMIENTO COMUNITARIO (PFC) </strong></h3>
                <div class="box-tools">
                    <ul class="pagination pagination-sm no-margin pull-right">
                        {if isset($paginador)}{$paginador}{/if}
                    </ul>
                </div>
            </div>
            <div class="box-body no-padding">
                <table class="table">
                    <tr>
                        <th>Nombre de la niña</th>
                        <th>Fecha Elaboracion</th>
                        <th>Proxima Evaluacion</th>
                        <th>Profesionales</th>
                    </tr>
                    {foreach item=lista from=$x}
                    <tr>
                        <td>{$lista["nombres"]} {$lista["apellidos"]}</td>
                        <td>{$lista["fecha_elab"]}</td>
                        <td>{$lista["fecha_eval"]}</td>
                        <td>{$lista["nombre"]}</td>
                        <td><a target="_blank" href="{$_layoutParams.root}tutoras/pfc/pdf/{$lista['id_pfc']}" class="btn btn-info">PDF</a></td>
                    </tr>
                    {/foreach}
                </table>
            </div>
        </div>
    </div>
</div>