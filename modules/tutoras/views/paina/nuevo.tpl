<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <form action="{$_layoutParams.root}tutoras/paina/nuevopaina" method="post" id="form-paina">
                    <input type="hidden" name="guardar" value="1">
                    <div class="col-md-12">
                        <div class="box box-solid">
                            <div class="box-header with-border">
                                <h3 class="box-title">PROYECTO GLOBAL DE FAMILIA</h3>
                                <button type="button" class="btn btn-primary pull-right" id="btn-guardar-paina">Guardar</button>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <div class="box-group" id="accordion">
                                    <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                                    <div class="panel box box-primary">
                                        <div class="box-header with-border">
                                            <h4 class="box-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#datos-identificacion">
                                                    Datos de indentificación
                                                </a>
                                            </h4>
                                        </div>
                                    </div>
                                    <div id="datos-identificacion" class="panel-collapse collapse in">
                                        <div class="box-body">
                                            <div class="row">
                                                <div class="col-md-10 col-md-offset-1">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <!-- parte lateral foto -->
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="row">
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label for="">Padre:</label>
                                                                                <div class="input-group">
                                                                                    <div class="input-group-addon">
                                                                                        <i class="fa fa-user"></i>
                                                                                    </div>
                                                                                    <input type="text" name="padre"
                                                                                        placeholder="Padres" class="form-control">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label for="">Niña o adolecente:</label>
                                                                                <div class="input-group">
                                                                                    <div class="input-group-addon">
                                                                                        <i class="fa fa-user"></i>
                                                                                    </div>
                                                                                    <select name="nina" id="" class="form-control"></select>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label for="">Etnia:</label>
                                                                                <div class="input-group">
                                                                                    <div class="input-group-addon">
                                                                                        <i class="fa fa-user"></i>
                                                                                    </div>
                                                                                    <input type="text" name="etnia"
                                                                                        placeholder="etnia" class="form-control">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label for="">Acogimiento:</label>
                                                                                <div class="input-group">
                                                                                    <div class="input-group-addon">
                                                                                        <i class="fa fa-file"></i>
                                                                                    </div>
                                                                                    <input type="text" name="acogimiento"
                                                                                        placeholder="acogimiento" class="form-control">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- row 1 -->
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Fecha de elaboracion:</label>
                                                                        <div class="input-group">
                                                                            <div class="input-group-addon">
                                                                                <i class="fas fa-calendar-check"></i>
                                                                            </div>
                                                                            <input type="text" name="fecha_elaboracion"
                                                                                placeholder="Fecha" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Fecha proxima evaluacion:</label>
                                                                        <div class="input-group">
                                                                            <div class="input-group-addon">
                                                                                <i class="fa fa-calendar-check"></i>
                                                                            </div>
                                                                            <input type="text" name="fecha_evaluacion"
                                                                                placeholder="Fecha" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- row 1 -->
                                                            <!-- row 2 -->
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Profesional :</label>
                                                                        <div class="input-group">
                                                                            <div class="input-group-addon">
                                                                                <i class="fa fa-user"></i>
                                                                            </div>
                                                                            <input type="text" name="profesional"
                                                                                placeholder="Profesional" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">No. Cédula :</label>
                                                                        <div class="input-group">
                                                                            <div class="input-group-addon">
                                                                                <i></i>
                                                                            </div>
                                                                            <input type="text" name="profesional"
                                                                                placeholder="Cédula" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- parte lateral foto -->


                                                    <div class="col-md-4">

                                                    </div>


                                                </div>
                                                <!-- row 1 -->
                                                <div class="row" style="margin-bottom: 1rem;">

                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="panel box box-warning">
                                    <div class="box-header with-border">
                                        <h4 class="box-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#infomante">
                                                Diagnostico de la situación
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="infomante" class="panel-collapse collapse ">
                                        <div class="box-body">
                                            <div class="row">
                                                <div class="col-md-10 col-md-offset-1">
                                                    <div class="col-md-12">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="">De la famila:</label>
                                                                    <textarea name="ds_familia" id="" rows="5" class="form-control"></textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="">Del Equipo:</label>
                                                                    <textarea name="ds_equipo" id="" rows="5" class="form-control"></textarea>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel box box-warning">

                                        <h4 class="box-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#objetivo_general">
                                                Objetivo General
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="objetivo_general" class="panel-collapse collapse">
                                        <div class="box-body">
                                            <div class="row">
                                                <div class="col-md-10 col-md-offset-1">

                                                    <div class="col-md-12">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <label for=""></label>
                                                                    <textarea name="obj_Consensuado" id="" rows="5"
                                                                        placeholder="Descripción" class="form-control"></textarea>
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
                    </div>
                    <!-- /.box-body -->
            </div>
            <!-- /.box -->
            <div class="box box-solid">
                <div class="row">
                    <div class="col-md-8">
                        <div class="box-header with-border">
                            <h3 class="box-title">Area</h3>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group form-group-sm">
                            <label for="disabledSelect">Dinamicas Intrafamiliares</label>
                            <select id="disabledSelect" class="form-control "></select>

                        </div>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="box-group" id="accordion">
                        <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                        <div class="panel box box-primary">
                            <div class="box-header with-border">
                                <h4 class="box-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#diag-area">
                                        Diagnostico del area
                                    </a>
                                </h4>
                            </div>
                            <div id="diag-area" class="panel-collapse collapse">
                                <div class="box-body">
                                    <div class="row">
                                        <div class="col-md-10 col-md-offset-1">

                                            <input type="hidden" name="guardar" value="1">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <!-- parte lateral foto -->
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="form-group">

                                                                <label for="">Descripcion</label>
                                                                <textarea name="da_equipo" id="" rows="5" class="form-control"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- row 1 -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel box box-warning">
                                <div class="box-header with-border">
                                    <h4 class="box-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#Obj-area">
                                            Objetivo del area
                                        </a>
                                    </h4>
                                </div>
                                <div id="Obj-area" class="panel-collapse collapse">
                                    <div class="box-body">
                                        <div class="row">
                                            <div class="col-md-10 col-md-offset-1">

                                                <input type="hidden" name="guardar" value="1">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <!-- parte lateral foto -->
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="form-group">

                                                                    <label for="">Descripcion</label>
                                                                    <textarea name="oba_equipo" id="" rows="5" class="form-control"></textarea>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- row 1 -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="panel box box-warning">
                                    <div class="box-header with-border">
                                        <h4 class="box-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#Activi">
                                                Actividades del area
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="Activi" class="panel-collapse collapse">
                                        <div class="box-body">
                                            <div class="row">
                                                <div class="col-md-10 col-md-offset-1">
                                                    <div class="col-md-12">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <label for="">Descripcion</label>
                                                                    <textarea name="act_descripcion" id="" rows="5"
                                                                        class="form-control"></textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="">Responsable:</label>
                                                                    <textarea name="act_responsable" id="" rows="5"
                                                                        class="form-control"></textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="">Tiempo</label>
                                                                    <textarea name="act_tiempo" id="" rows="5" class="form-control"></textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="">Evaluacion</label>
                                                                    <textarea name="act_evaluacion" id="" rows="5"
                                                                        class="form-control"></textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="">Observaciones</label>
                                                                    <textarea name="act_observaciones" id="" rows="5"
                                                                        class="form-control"></textarea>
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
                                            <a data-toggle="collapse" data-parent="#accordion" href="#situacion">
                                                Evaluacion global de todas las areas
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="situacion" class="panel-collapse collapse">
                                        <div class="box-body">
                                            <div class="row">
                                                <div class="col-md-10 col-md-offset-1">
                                                    <div class="col-md-12">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <textarea name="eglobal_descripcion" id="" rows="5"
                                                                        class="form-control"></textarea>
                                                                </div>
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
            </form>
        </div>
    </div>
</div>
</div>