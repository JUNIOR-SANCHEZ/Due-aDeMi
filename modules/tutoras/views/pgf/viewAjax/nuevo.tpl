<div class="table-responsive">
    <table class="table ">
        <thead>
            <tr>
                <th>DOCUMENTO ID</th>
                <th>APELLIDOS Y NOMBRES</th>
                <th>FECHA ELABORACION</th>
                <th>PROXIMA EVALUACION</th>
                <th></th>

            </tr>
        </thead>
        <tbody>
            {foreach item=index from=$pfc}
            <tr>
                <td>{$index['cedula']}</td>
                <td>{$index['nombres']}</td>
                <td>{$index['elaboracion']}</td>
                <td>{$index['evaluacion']}</td>
                <td>
                    <div class="pull-right">
                        <button type="button" class="btn btn-warning btn-edit" data-toggle="modal" data-target="#modal-default"
                            data-url="{$_layoutParams.root}tutoras/pgf/viewId/{$index['id']}">
                            <i class="fa fa-edit"></i>
                        </button>
                        <form action="{$_layoutParams.root}tutoras/pgf/descarga/" method="post" style="display: inline;"
                            enctype="multipart/form-data">
                            <input type="hidden" name="img" value="{$index['archivo']}">
                            <button type="submit" class="btn btn-success btn-download"><i class="fa fa-download"></i></button>
                        </form>
                        <a href="{$_layoutParams.root}tutoras/pgf/eliminar/{$index['id']}" class="btn btn-danger btn-delete"><i
                                class="fa fa-trash"></i></a>
                    </div>
                </td>

            </tr>
            {/foreach}
        </tbody>
    </table>
    <center>{if isset($paginador)}{$paginador}{/if}</center>
</div>