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
                                        <div id="datos-identificacion" class="panel-collapse collapse ">
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
                                                                                <input type="text" name="nombre"
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
                                                                                <select name="nina" class="form-control"
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
                                                                                <input type="text" name="canton"
                                                                                    placeholder="Cantón" class="form-control"
                                                                                    required>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Parroquia:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <!-- <i class="fa fa-user"></i> -->
                                                                                </div>
                                                                                <input type="text" name="parroquia"
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
                                                                                <input type="text" name="nro_nna"
                                                                                    placeholder="" class="form-control"
                                                                                    required>
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
                                                                                <input type="text" name="nro_familia"
                                                                                    class="form-control" required>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Fecha eleboración del
                                                                                plan:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-calendar"
                                                                                        aria-hidden="true"></i>
                                                                                </div>
                                                                                <input type="text" name="fecha_elaboracion"
                                                                                    placeholder="" class="form-control"
                                                                                    required>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Fecha de próxima
                                                                                evaluación
                                                                                del plan</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-calendar"
                                                                                        aria-hidden="true"></i>
                                                                                </div>
                                                                                <input type="text" name="fecha_evaluacion"
                                                                                    class="form-control" placeholder=""
                                                                                    required>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row" style="margin-bottom: 1rem;">
                                                                    <div class="col-md-12 ">
                                                                        <button type="submit" class="btn btn-primary pull-right">Guardar</button>
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
                                                                        <textarea name="diag_part_comunidad" class="form-control"
                                                                            rows="3" required="required"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label for="">Objetivo general del plan</label>
                                                                        <textarea name="obj_general" class="form-control"
                                                                            rows="3" required="required"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label for="">Objetivo Especificos</label>
                                                                        <textarea name="obj_especificos" class="form-control"
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
                                </form>
                                <div class="panel box box-warning">
                                    <div class="box-header with-border">
                                        <h4 class="box-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#situacion">
                                                Intervenciones
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="situacion" class="panel-collapse collapse in">
                                        <div class="box-body">
                                            <div class="row">
                                                <div class="col-md-10 col-md-offset-1">
                                                    <form action="{$_layoutParams.root}tutoras/ninas/nuevaDescripcion"
                                                        method="post" id="form-descripcion">
                                                        <input type="hidden" name="guardar" value="1">
                                                        <div class="col-md-12">

                                                            <div class="row">
                                                                <div class=" col-md-12">
                                                                    <div class="form-group">
                                                                        <label for=""></label>
                                                                        <textarea name="" id="input" class="form-control"
                                                                            rows="3" required="required"></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </form>
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