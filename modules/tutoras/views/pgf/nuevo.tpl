<div class="content">
    <!-- row principal -->
    <div class="row">
        <!-- col 1 -->
        <div class="col-md-12">
            <!-- panel formulario -->
            <div class="panel">
                <div class="panel-heading text-center">
                    <h2>PROYECTO GLOBAL DE FAMILIA</h2>
                </div>
                <div class="panel-body">
                    <div id="mensaje"></div>
                    <form action="{$_layoutParams.root}tutoras/pgf/nuevo" method="post" enctype="multipart/form-data"
                        id="form-pfc">
                        <input type="hidden" name="guardar" value="1">
                        <!-- row  primer fila -->
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="">Apellidos y nombres niña:</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-user"></i>
                                        </div>
                                        <select name="nina" class="form-control" id="form-pfc-select" required>
                                            <option value="" disabled selected>SELECCIONE:</option>
                                            {foreach item=index from=$ninas}
                                            <option value="{$index['id_nina']}">{$index['apellidos']}
                                                {$index['nombres']}</option>
                                            {/foreach}
                                        </select>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="">Fecha de elaboracion:</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" name="elaboracion" class="form-control" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">

                                <div class="form-group">
                                    <label for="">Proxima evaluacion:</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" name="evaluacion" class="form-control" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- row  primer fila -->
                        <!-- row segunda fila -->
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-file"></i>
                                        </div>
                                        <input type="file" name="archivo" class="form-control" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success btn-sm">Registrar</button>
                        <!-- row segunda fila -->
                    </form>
                </div>
            </div>
            <!-- panel formulario -->
            <!-- panel tabla -->
            <div class="panel panel-primary" style="position: relative;">
                <div class="fondo hide">
                    <div class="spiner-icon">
                        <!-- loading -->
                        <div class="lds-css ng-scope">
                            <div class="lds-spinner" style="width: 100%; height:100%">
                                <div></div>
                                <div></div>
                                <div></div>
                                <div></div>
                                <div></div>
                                <div></div>
                                <div></div>
                                <div></div>
                                <div></div>
                                <div></div>
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                        <!-- loading -->
                    </div>
                    <P>Eliminando...</P>
                </div>
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-sm-8 col-md-8">
                            <h4 class="text-center"><strong>LISTA DE PROYECTOS GLOBALES DE FAMILIA</strong></h4>
                        </div>
                        <div class="col-sm-4 col-md-4">
                            <form action="{$_layoutParams.root}tutoras/pgf/viewDoc" method="post" id="form-buscar">
                                <div class="input-group">
                                    <input type="text" name="buscar" class="form-control">
                                    <div class="input-group-btn ">
                                        <button class="btn btn-info "><i class="fa fa-search"></i></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="panel-body">

                    <!-- contenedor -->
                    <div id="contenedor">

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
                                                <button type="button" class="btn btn-warning btn-edit" data-toggle="modal"
                                                    data-target="#modal-default" data-url="{$_layoutParams.root}tutoras/pgf/viewId/{$index['id']}">
                                                    <i class="fa fa-edit"></i>
                                                </button>
                                                <form action="{$_layoutParams.root}tutoras/pgf/descarga/" method="post"
                                                    style="display: inline;" enctype="multipart/form-data">
                                                    <input type="hidden" name="img" value="{$index['archivo']}">
                                                    <button type="submit" class="btn btn-success btn-download"><i class="fa fa-download"></i></button>
                                                </form>
                                                <a href="{$_layoutParams.root}tutoras/pgf/eliminar/{$index['id']}"
                                                    class="btn btn-danger btn-delete"><i class="fa fa-trash"></i></a>
                                            </div>
                                        </td>

                                    </tr>
                                    {/foreach}
                                </tbody>
                            </table>
                            <center>{if isset($paginador)}{$paginador}{/if}</center>
                        </div>
                    </div>
                    <!-- contenedor -->
                </div>
            </div>
            <!-- panel tabla -->
        </div>
        <!-- col 1 -->
    </div>
    <!-- row principal -->
</div>
<!-- modal epdate -->
<div class="modal fade" id="modal-default">
    <div class="modal-dialog" style="position: relative">

        <div class="fondo hide">
            <div class="spiner-icon">
                <!-- loading -->
                <div class="lds-css ng-scope">
                    <div class="lds-spinner" style="width: 100%;height:100%">
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                    </div>
                </div>
                <!-- loading -->
            </div>
            <P>Editando...</P>
        </div>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">EDIATAR REGISTRO</h4>
            </div>
            <form action="{$_layoutParams.root}tutoras/pgf/editar" method="POST" enctype="multipart/form-data" id="form-pfc-update">
                <input type="hidden" name="update" value="1">
                <input type="hidden" name="id" id="form-update-hidden">
                <div class="modal-body">
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-btn">
                                <button class="btn btn-info" id="btn-llenar-select"><i class="fa fa-user"></i></button>
                            </div>
                            <select name="nina" class="form-control" id="form-update-select" required>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="">Fecha Elaboración</label>
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <input type="text" name="elaboracion" class="form-control" id="form-update-input-elaboracion"
                                required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="">Proxima Evaluación</label>
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <input type="text" name="evaluacion" class="form-control" id="form-update-input-evaluacion"
                                required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="">Archivo</label>
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="fa fa-file"></i>
                            </div>
                            <input type="file" name="archivo" class="form-control">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Cancelar</button>
                    <button type="submit" class="btn btn-primary">Actualizar</button>
                </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- modal epdate -->