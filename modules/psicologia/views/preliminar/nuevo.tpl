<div class="content">
    <!-- row principal -->
    <div class="row">
        <!-- col 1 -->
        <div class="col-md-12">
            <!-- panel formulario -->
            <div class="panel">
                <div class="panel-heading text-center">
                    <h2>INFORME PRELIMINAR</h2>
                </div>
                <div class="panel-body">
                    <div id="mensaje"></div>
                    <form action="{$_layoutParams.root}psicologia/preliminar" method="post" enctype="multipart/form-data">
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
                                    <label for="">Documento:</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-file"></i>
                                        </div>
                                        <input type="file" name="archivo" class="form-control" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- row  primer fila -->
                        <!-- row segunda fila -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="">Observacion:</label>
                                    <textarea name="observacion" class="form-control" cols="30" rows="5"></textarea>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success btn-sm">Registrar</button>
                        <!-- row segunda fila -->
                    </form>
                </div>
            </div>