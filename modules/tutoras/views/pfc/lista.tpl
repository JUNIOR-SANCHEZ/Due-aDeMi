<br>
<div class="col-md-12">
    <div id="contenedor">
        <div class="box box-primary">
            <div class="box-header ">
                <h3 class="box-title"><strong>Lista Plan Familiar Comunitario</strong></h3>
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
                        <th>Apellidos de la niña</th>
                        <th>Fecha de ingreso</th>
                        <th style="width: 30px">Areas</th>
                        
                    </tr>
                    {foreach item=y from=$x}
                    <tr>
                        <th>{$y['nombres']}</th>
                        <th></th>
                        <th></th>
                        <th><a class="btn btn-info">modificar</a></th>
                        
                    </tr>
                    {/foreach}
                </table>
            </div>
        </div>
    </div>
</div>