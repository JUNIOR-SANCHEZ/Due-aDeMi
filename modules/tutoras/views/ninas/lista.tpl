<br>
<div class="col-md-12">
    <div id="contenedor">
        <div class="box box-primary">
            <div class="box-header ">
                <h3 class="box-title"><strong>REGISTRO DE FICHA DE INGRESO NNA</strong></h3>
                <div class="box-tools">
                    <ul class="pagination pagination-sm no-margin pull-right">
                        {if isset($paginador)}{$paginador}{/if}
                    </ul>
                </div>
            </div>
            <div class="box-body no-padding">
                <table class="table">
                    <tr>
                        <th>Nombres de la niña</th>
                        <th>Apellidos de la niña</th>
                        <th>Fecha de ingreso</th>
                        <th style="width: 30px">Datos de identificación</th>
                        <th style="width: 30px">Datos Informantes</th>
                        <th style="width: 30px">Descripción de como ingresa</th>
                        <th style="width: 30px">Datos familiares</th>
                    </tr>
                    {foreach item=y from=$x}
                    <tr>
                        <td>{$y["nombres"]}</td>
                        <td>{$y["apellidos"]}</td>
                        <td>{$y["fecha_ingreso"]}</td>
                        <td><a class="btn btn-info">Modificar</a></td>
                        <td ><a class="btn btn-info">Modificar</a></td>
                        <td ><a class="btn btn-info">Modificar</a></td>
                        <td ><a class="btn btn-info">Modificar</a></td>
                    </tr>
                    {/foreach}
                </table>
            </div>
        </div>
    </div>
</div>