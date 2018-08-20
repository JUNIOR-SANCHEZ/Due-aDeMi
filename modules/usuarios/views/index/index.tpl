<h2>Usuarios</h2>
<form class="form-inline justify-content-center" action="{$_layoutParams.root}usuarios" method="POST" role="search">
    <div class="form-group mr-3">
        <input type="text" class="form-control" placeholder="Buscar por usuario" name="share" id="search">
    </div>

    <input type="submit" class="btn btn-danger" value="Buscar">
</form>
{if isset($usuarios) && count($usuarios)}
<div class="table-responsive">
    <table class="table table-bordered table-striped table-condensed">
        <tr>
            <th>ID</th>
            <th>Usuario</th>
            <th>Role</th>
            <th></th>
            <th></th>
        </tr>
        {foreach from=$usuarios item=us}
        <tr>
            <td>{$us.id}</td>
            <td>{$us.usuario}</td>
            <td>{$us.role}</td>
            <td>
                <a href="{$_layoutParams.root}usuarios/index/permisos/{$us.id}">
                    Permisos
                </a>
            </td>
            <td>
                {if $us.role != "Administrador"}
                <a href="{$_layoutParams.root}usuarios/index/eliminarUsuario/{Cifrado::encryption($us.id)}">Eliminar</a>{/if}
            </td>
        </tr>
        {/foreach}
    </table>
</div>
{/if}