<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <form action="{$_layoutParams.root}tutoras/pgf/nuevopgf" method="post" id="form-pgf">
                    <input type="hidden" name="guardar" value="1">
                    <div class="col-md-12">
                        <div class="box box-solid">
                            <div class="box-header with-border">
                                <h3 class="box-title">PROYECTO GLOBAL DE FAMILIA</h3>
                                <button type="button" class="btn btn-primary pull-right " id="btn-guardar-pgf">Guardar</button>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <div class="box-group" id="accordion">
                                    <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                                    <!-- <form action="{$_layoutParams.root}tutoras/pgf/nuevopgf" method="post" id="form-pgf">
                                    <input type="hidden" name="guardar" value="1"> -->
                                    <div class="panel box box-primary">
                                        <div class="box-header with-border">
                                            <h4 class="box-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#datos-identificacion">
                                                    Datos de indentificación
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="datos-identificacion" class="panel-collapse collapse in">
                                            <div class="box-body">
                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <!-- parte lateral foto -->
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Familia:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-user"></i>
                                                                                </div>
                                                                                <input type="text" name="famila"
                                                                                    placeholder="Familia" class="form-control">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Niños/as Adolescentes:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-user"></i>
                                                                                </div>
                                                                                <select name="nina" class="form-control">
                                                                                    <option value="0">Seleccione</option>
                                                                                    {foreach item=list from=$nina}
                                                                                    <option value="{$list['id_nina']}">{$list['nombres']}
                                                                                        {$list['apellidos']}</option>
                                                                                    {/foreach}
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Etnia de la Familia:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <!-- <i class="fa fa-user"></i> -->
                                                                                </div>
                                                                                <input type="text" name="etnia"
                                                                                    placeholder="Etnia" class="form-control">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Causa del acogimiento:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <!-- <i class="fa fa-user"></i> -->
                                                                                </div>
                                                                                <input type="text" name="causa_acogimiento"
                                                                                    placeholder="Causa" class="form-control">
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
                                                                                    <i class="fa fa-address-card"></i>
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
                                                                                    <!-- <i class="fa fa-at"></i> -->
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
                                                                            <label for="">Profesional</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i></i>
                                                                                </div>
                                                                                <input type="text" name="profesional"
                                                                                    placeholder="Profesional" class="form-control">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Cedula:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i></i>
                                                                                </div>
                                                                                <input type="text" name="cedula"
                                                                                    placeholder="Cedula" class="form-control">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4">

                                                                </div>


                                                            </div>
                                                            <!-- row 1 -->

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
                                                                        <textarea name="diag_familia" id="" rows="5" class="form-control"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Del Equipo:</label>
                                                                        <textarea name="diag_equipo" id="" rows="5" class="form-control"></textarea>
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
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Consensuado con la familia :</label>
                                                                        <textarea name="Consensuado_familia" id="" rows="5"
                                                                            class="form-control"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Del equipo Consensuado con la
                                                                            familia:</label>
                                                                        <textarea name="del_equipo" rows="5" class="form-control"></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- </form> -->
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->



                        </div>
                    </div>
                    <div class="col-md-12">
                        <!-- <form action="{$_layoutParams.root}tutoras/ninas/nuevaNina" method="POST" id="form-ninas"> -->
                        <!-- <input type="hidden" name="guardar" value="1"> -->
                        <div class="box box-solid">
                            <div class="box-header with-border">
                                <h3 class="box-title">Area</h3>
                                <div class="form-group col-md-4 pull-right">
                                    <select id="disabledSelect" class="form-control ">
                                        <option value="">Dinamicas Intrafamiliares</option>
                                    </select>
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

                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <!-- parte lateral foto -->
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">

                                                                            <label for="">Descripcion</label>
                                                                            <textarea name="diagnostico_area" id=""
                                                                                rows="5" class="form-control"></textarea>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4">

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
                                                <a data-toggle="collapse" data-parent="#accordion" href="#objetivo">
                                                    Objetivo del area
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="objetivo" class="panel-collapse collapse">
                                            <div class="box-body">
                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">

                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <!-- parte lateral foto -->
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">

                                                                            <label for="">Descripcion</label>
                                                                            <textarea name="objetivo_area" id="" rows="5"
                                                                                class="form-control"></textarea>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4">

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
                                                                        <textarea name="act_tiempo" id="" rows="5"
                                                                            class="form-control"></textarea>
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

                                                                        <textarea name="evaluacion_global" id="" rows="5"
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
                            <!-- </form> -->
                        </div>

                </form>

            </div>
        </div>
    </div>