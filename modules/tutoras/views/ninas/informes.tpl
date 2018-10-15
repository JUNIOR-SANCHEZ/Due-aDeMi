<br>
<div class="col-md-12">
    <div id="contenedor">
        <div class="box box-primary">
            <div class="box-header ">
                <h3 class="box-title"><strong>REGISTRO DE FICHA DE INGRESO NNA</strong></h3>
                <div class="box-tools">
                    <ul class="pagination pagination-sm no-margin pull-right">
                        <!-- {if isset($paginador)}{$paginador}{/if} -->
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
                    {foreach item=y from=$x}
                    <tr>
                        <td>{$y["nombres"]} {$y["apellidos"]}</td>
                        <!-- <td>{$y["fecha_elab"]}</td> -->
                        <!-- <td>{$y["fecha_eval"]}</td> -->
                        <!-- <td>{$y["nombre"]}</td> -->
                        <td><a target="_blank" href="{$_layoutParams.root}tutoras/pfc/pdf/{$lista['id_pfc']}" class="btn btn-info">PDF</a></td>
                    </tr>
                    <!-- {/foreach} -->
                </table>
            </div>
        </div>
    </div>
</div>