<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-solid">
                        <div class="box-header with-border">
                            <h3 class="box-title">PLAN DE FORTALECIMIENTO COMUNITARIO</h3>
                            <button type="button" class="btn btn-primary pull-right" id="btn-guardar-pfc">Guardar</button>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="box-group" id="accordion">
                                <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                                <form action="{$_layoutParams.root}tutoras/PFC/nuevoPfc" method="post" id="form-pfc">
                                    <input type="hidden" name="guardar" value="1">
                                    <div class="panel box box-primary">
                                        <div class="box-header with-border">
                                            <h4 class="box-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#datos-identificacion">
                                                    Datos generales de la comunidad a intervenir
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="datos-identificacion" class="panel-collapse collapse in">
                                            <div class="box-body">
                                                <div class="row">
                                                    <div class=" col-md-10 col-md-offset-1 ">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Nombre: </label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-user"></i>
                                                                                </div>
                                                                                <input type="text" name="nombre" id="nombres"
                                                                                    placeholder="Nombres" class="form-control"
                                                                                    required>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Seleccione a la NNA:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-user"></i>
                                                                                </div>
                                                                                <select name="nina" class="form-control"  id="Nnina"
                                                                                    required="required">
                                                                                    <option value="">Seleccione:</option>
                                                                                    {foreach item=list from=$nina}
                                                                                    <option value="{$list['id_nina']}">{$list['apellidos']}
                                                                                        {$list['nombres']}</option>
                                                                                    {/foreach}
                                                                                </select>

                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Cantón:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <!-- <i class="fa fa-user"></i> -->
                                                                                </div>
                                                                                
                                                                                <input type="text" name="canton" id="Canton"
                                                                                    placeholder="Cantón" class="form-control"
                                                                                    required>
                                                                            </div>
                                                                            <span class="help-block"></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Parroquia:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <!-- <i class="fa fa-user"></i> -->
                                                                                </div>
                                                                                <input type="text" name="parroquia" id="Parroquia"
                                                                                    placeholder="Parroquia" class="form-control"
                                                                                    required>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Nro. de NNA en el
                                                                                servicio
                                                                                que proviene de la comunidad a
                                                                                intervenir:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    #
                                                                                </div>
                                                                                <select name="select" class="form-control" id="NninaC"
                                                                                    required="required">
                                                                                    <option value="">Seleccione</option>
                                                                                    <option value="">1</option>
                                                                                    <option value="">2</option>
                                                                                    <option value="">3</option>
                                                                                    <option value="">4</option>
                                                                                    <option value="">5</option>
                                                                                    
                                                                                    </option>
                                                                                    
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Nro de familia en el
                                                                                servicio
                                                                                que provienen de la comunidad a
                                                                                intervenir:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    #
                                                                                </div>
                                                                                <select name="select" class="form-control" id="NninaF"
                                                                                    required="required">
                                                                                    <option value="">Seleccione:</option>
                                                                                    <option value="">1</option>
                                                                                    <option value="">2</option>
                                                                                    <option value="">3</option>
                                                                                    <option value="">4</option>
                                                                                    <option value="">5</option> 
                                                                                    </option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-6">

                                                                        <div class="form-group">
                                                                            <label for="">Fecha eleboración del
                                                                                plan:</label>
                                                                            <div class="input-group date">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-calendar"></i>
                                                                                </div>
                                                                                <input type="text" name="fecha_elaboracion" id="FechaElab"
                                                                                    class="form-control pull-right" id="datepicker-elaboracion">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Fecha de próxima
                                                                                evaluación
                                                                                del plan</label>
                                                                            
                                                                            <div class="input-group date">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-calendar"></i>
                                                                                </div>
                                                                                <input type="text" name="fecha_evaluacion" id="FechaProx"
                                                                                    class="form-control pull-right" id="datepicker-evaluacion">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel box box-warning">
                                        <div class="box-header with-border">
                                            <h4 class="box-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#infomante">
                                                    Objetivos
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="infomante" class="panel-collapse collapse ">
                                            <div class="box-body">
                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label for="">Diagnostoco participativo de
                                                                            la
                                                                            comunidad::</label>
                                                                            <div>
                                                                                <textarea name="diag_part_comunidad" class="form-control" id="DianostPart"
                                                                                rows="3" required="required"></textarea>
                                                                            </div>
                                                                       
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label for="">Objetivo general del plan</label>
                                                                        <div>
                                                                            <textarea name="obj_general" class="form-control" id="ObjGeneral"
                                                                            rows="3" required="required"></textarea>
                                                                        </div>
                                                                        
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label for="">Objetivo Especificos</label>
                                                                        <div>
                                                                            <textarea name="obj_especificos" class="form-control" id="ObjEspe"
                                                                            rows="3" required="required"></textarea>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <form id="form-intervencion">
                                    <div class="panel box box-warning">
                                        <div class="box-header with-border">
                                            <h4 class="box-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#intervencion">
                                                    Intervenciones
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="intervencion" class="panel-collapse collapse ">
                                            <div class="box-body">
                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div class=" col-md-12">
                                                                    <div class="form-group">
                                                                        <label for="">Metas:</label>
                                                                        <div>
                                                                        <textarea name="meta"  class="form-control" id="Metas"
                                                                            rows="3" required="required"></textarea>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="">Indicadores:</label>
                                                                        <div>
                                                                        <textarea name="indicador"  class="form-control" id="Indicadores"
                                                                        rows="3" required="required"></textarea>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="">Actividades:</label>
                                                                        <div>
                                                                        <textarea name="actividad" class="form-control" id="Actividades"
                                                                            rows="3" required="required"></textarea>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="">Tiempos:</label>
                                                                        <div>
                                                                        <textarea name="tiempo"  class="form-control" id="Tiempo"
                                                                            rows="3" required="required"></textarea>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="">Recursos:</label>
                                                                        <div>
                                                                        <textarea name="recurso" class="form-control" id="Recursos"
                                                                            rows="3" required="required"></textarea>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="">Responsables:</label>
                                                                        <div>
                                                                        <textarea name="responsable" class="form-control" id="Responsables"
                                                                            rows="3" required="required"></textarea>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-12">
                                                                    <button type="submit" class="btn btn-info pull-right">Agregar</button>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <form id="form-seguimiento">
                                    <div class="panel box box-warning">
                                        <div class="box-header with-border">
                                            <h4 class="box-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#seguimiento">
                                                    Seguimmiento y evaluacion
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="seguimiento" class="panel-collapse collapse ">
                                            <div class="box-body">
                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div class=" col-md-12">
                                                                    <div class="form-group">
                                                                        <label for="">Actividad:</label>
                                                                        <textarea name="actividad" id="input" class="form-control"
                                                                            rows="3" required="required"></textarea>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="">Dificultades:</label>
                                                                        <textarea name="dificultad" id="input" class="form-control"
                                                                            rows="3" required="required"></textarea>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="">Resultado:</label>
                                                                        <textarea name="resultado" id="input" class="form-control"
                                                                            rows="3" required="required"></textarea>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="">Observaciones:</label>
                                                                        <textarea name="observacion" id="input" class="form-control"
                                                                            rows="3" required="required"></textarea>
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-12">
                                                                    <button type="submit" class="btn btn-info pull-right">Agregar</button>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <div class="panel box box-primary">
                                    <div class="box-header with-border">
                                        <h4 class="box-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#datos-responsable">
                                                Responsable del plan (equipo y comunidad)
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="datos-responsable" class="panel-collapse collapse">
                                        <div class="box-body">
                                            <div class="row">
                                                <div class=" col-md-10 col-md-offset-1 ">
                                                    <div class="row">
                                                        <form id="form-responsable">
                                                            <div class="col-md-12">
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Nombres:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-user" aria-hidden="true"></i>
                                                                                </div>
                                                                                <input type="text" name="nombre" class="form-control">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Apellidos:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-user" aria-hidden="true"></i>
                                                                                </div>
                                                                                <input type="text" name="apellido"
                                                                                    class="form-control">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="form-group">
                                                                            <label for="">Rol:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-user" aria-hidden="true"></i>
                                                                                </div>
                                                                                <input type="text" name="rol" class="form-control">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <button type="submit" class="btn btn-info pull-right">Agregar</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
            </div>
        </div>
    </div>
</div>