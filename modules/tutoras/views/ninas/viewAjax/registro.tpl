<div class="panel-body">
    <table class="table">
        <thead>
            <tr>
                <th>DOCUMENTO DE ID</th>
                <th>NOMBRES Y APELLIDOS</th>
                <th>TELEFONO</th>
                <th>EMAIL</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            {foreach item=item from=$ninas}
            <tr>
                <td>{$item['cedula']}</td>
                <td>{$item['apellidos']} {$item['nombres']}</td>
                <td>{$item['telefono']}</td>
                <td>{$item['email']}</td>
                <td>
                    <a href="{$_layoutParams.root}" class="btn btn-warning"><i class="fa fa-edit"></i></a>
                    <a href="{$_layoutParams.root}" class="btn btn-success"><i class="fa fa-download"></i></a>
                    <a href="{$_layoutParams.root}" class="btn btn-danger"><i class="fa fa-trash"></i></a>
                </td>
            </tr>
            {/foreach}
        </tbody>

    </table>
    <center> {if isset($paginador)}{$paginador}{/if}</center>
</div>