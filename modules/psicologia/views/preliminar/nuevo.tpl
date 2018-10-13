

<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-heading text-center">
                    <h2>INFORME PRELIMINAR</h2>
                </div>
                <div class="panel-body">
                    <form enctype="multipart/form-data" action="{$_layoutParams.root}psicologia/preliminar/nuevo_archivo"
                        method="POST" id="form-preliminar">
                        <input type="hidden" name="guardar" value="1">
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
                                    <div class="input-group date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" name="elaboracion" class="form-control pull-right" id="datepicker">
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
                                        <input type="file" name="documento" class="form-control" id="archivo" required>
                                        <span class="help-block"></span>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="">Observacion:</label>
                                    <div>
                                        <textarea name="observacion" class="form-control"  rows="5" id="pre-observacion"></textarea>
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success btn-sm">Registrar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>