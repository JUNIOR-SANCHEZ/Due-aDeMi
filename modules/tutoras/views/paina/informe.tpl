<br>
<!-- /.col -->
<div class="col-md-12">
    <div id="contenedor">
        <div class="box box-primary">
            <div class="box-header ">
                <h3 class="box-title"><strong>Lista PFC (PLAN DE FORTALECIMIENTO COMUNITARIO) </strong></h3>
                
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
        <!-- /.box-body -->
    </div>
</div>
<!-- /.col -->