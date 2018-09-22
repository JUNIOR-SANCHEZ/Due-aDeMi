<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-solid">
                        <div class="box-header with-border">
                            <h3 class="box-title">PROYECTO GLOBAL DE FAMILIA</h3>
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
                                    <div id="datos-identificacion" class="panel-collapse collapse in">
                                        <div class="box-body">
                                            <div class="row">
                                                <div class="col-md-10 col-md-offset-1">
                                                    <form action="{$_layoutParams.root}tutoras/ninas/nuevaNina" method="POST"
                                                        enctype="multipart/form-data" id="form-ninas">
                                                        <input type="hidden" name="guardar" value="1">
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
                                                                                    placeholder="Familia" class="form-control"
                                                                                    required>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="">Niños/as Adolescentes:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-user"></i>
                                                                                </div>
                                                                                <input type="text" name="niños"
                                                                                    placeholder="Niños" class="form-control"
                                                                                    required>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="">Etnia de la Familia:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <!-- <i class="fa fa-user"></i> -->
                                                                                </div>
                                                                                <input type="text" name="etnia"
                                                                                    placeholder="Etnia" class="form-control"
                                                                                    required>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="">Causa del acogimiento:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <!-- <i class="fa fa-user"></i> -->
                                                                                </div>
                                                                                <input type="text" name="causa"
                                                                                    placeholder="Causa" class="form-control"
                                                                                    required>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-file"></i>
                                                                                </div>
                                                                                <input type="file" name="foto" class="form-control"
                                                                                    required>
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
                                                                                <input type="text" name="fecha"
                                                                                    placeholder="Fecha" class="form-control"
                                                                                    required>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Causa del Acogimiento:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-phone"></i>
                                                                                </div>
                                                                                <input type="text" name="phone" class="form-control"
                                                                                    required>
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
                                                                                <input type="text" name="fecha"
                                                                                    placeholder="Fecha" class="form-control"
                                                                                    required>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- row 1 -->
                                                                <!-- row 2 -->
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Profesional y N° cedula:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i></i>
                                                                                </div>
                                                                                <input type="text" name="profesional"
                                                                                    placeholder="Profesional" class="form-control">
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
                                                                <div class="col-md-12 ">
                                                                    <button type="submit" class="btn btn-primary pull-right">Guardar</button>
                                                                </div>
                                                            </div>
                                                    </form>
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
                                                    <form action="{$_layoutParams.root}" method="post">
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">De la famila:</label>
                                                                        <textarea name="de_familia" id="" rows="5"
                                                                            class="form-control"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Del Equipo:</label>
                                                                        <textarea name="del_equi" id="" rows="5" class="form-control"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <button type="submit" class="btn btn-success pull-right">Agregar</button>
                                                                    </div>
                                                                </div>
                                                            </div>


                                                    </form>
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
                                                    <form action="{$_layoutParams.root}" method="post">
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Consensuado con la familia :</label>
                                                                        <textarea name="Consensuado" id="" rows="5"
                                                                            class="form-control"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Del equipo Consensuado con la
                                                                            familia:</label>
                                                                        <textarea name="del_equipo" id="" rows="5"
                                                                            class="form-control"></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <button type="submit" class="btn btn-success pull-right">Agregar</button>
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
                    <div class="box box-solid">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Area</h3>
                                </div>
                            </div>
                            <div class="col-md-4">
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
                                                    <form action="{$_layoutParams.root}tutoras/ninas/nuevaNina" method="POST"
                                                        enctype="multipart/form-data" id="form-ninas">
                                                        <input type="hidden" name="guardar" value="1">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <!-- parte lateral foto -->
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">

                                                                            <label for="">Descripcion</label>
                                                                            <textarea name="del_equipo" id="" rows="5"
                                                                                class="form-control"></textarea>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4">

                                                                </div>
                                                            </div>
                                                            <!-- row 1 -->
                                                            <div class="row" style="margin-bottom: 1rem;">
                                                                <div class="col-md-12 ">
                                                                    <button type="submit" class="btn btn-primary pull-right">Guardar</button>
                                                                </div>
                                                            </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel box box-warning">
                                    <div class="box-header with-border">
                                        <h4 class="box-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#infomante">
                                                Objetivo del area
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="infomante" class="panel-collapse collapse">
                                        <div class="box-body">
                                            <div class="row">
                                                <div class="col-md-10 col-md-offset-1">
                                                    <form action="{$_layoutParams.root}tutoras/ninas/nuevaNina" method="POST"
                                                        enctype="multipart/form-data" id="form-ninas">
                                                        <input type="hidden" name="guardar" value="1">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <!-- parte lateral foto -->
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">

                                                                            <label for="">Descripcion</label>
                                                                            <textarea name="del_equipo" id="" rows="5"
                                                                                class="form-control"></textarea>
                                                                        </div>
                                                                    </div>


                                                                </div>





                                                                <div class="col-md-4">

                                                                </div>


                                                            </div>
                                                            <!-- row 1 -->
                                                            <div class="row" style="margin-bottom: 1rem;">
                                                                <div class="col-md-12 ">
                                                                    <button type="submit" class="btn btn-primary pull-right">Guardar</button>
                                                                </div>
                                                            </div>
                                                    </form>
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
                                                    <form action="{$_layoutParams.root}" method="post">
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label for="">Descripcion</label>
                                                                        <textarea name="descripcion" id="" rows="5"
                                                                            class="form-control"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Responsable:</label>
                                                                        <textarea name="responsable" id="" rows="5"
                                                                            class="form-control"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Tiempo</label>
                                                                        <textarea name="tiempo" id="" rows="5" class="form-control"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Evaluacion</label>
                                                                        <textarea name="evaluacion" id="" rows="5"
                                                                            class="form-control"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Observaciones</label>
                                                                        <textarea name="observaciones" id="" rows="5"
                                                                            class="form-control"></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <button type="submit" class="btn btn-success pull-right">Agregar</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>
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
                                                    <form action="{$_layoutParams.root}" method="post">
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="form-group">

                                                                        <textarea name="vestimenta" id="" rows="5"
                                                                            class="form-control"></textarea>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <button type="submit" class="btn btn-success pull-right">Agregar</button>
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
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>