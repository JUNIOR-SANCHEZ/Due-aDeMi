<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-solid">
                        <div class="box-header with-border">
                            <h3 class="box-title">Certificados Medicos:</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="box-group" id="accordion">
                                <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                                <div class="panel box box-primary">
                                    <div class="box-header with-border">
                                        <h4 class="box-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#datos-identificacion">
                                                Certificado
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
                                                                        <div class="form-group form-group-sm">
                                                                            <label for="disabledSelect">NNA</label>
                                                                            <select id="disabledSelect" class="form-control "></select>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="">Fecha Consulta:</label>
                                                                    <div class="input-group">
                                                                        <div class="input-group-addon">
                                                                            <i class="fa fa-user"></i>
                                                                        </div>
                                                                        <input type="text" name="fecha_consulta"
                                                                            placeholder="Fecha" class="form-control"
                                                                            required>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="">Nombre del Medico:</label>
                                                                    <div class="input-group">
                                                                        <div class="input-group-addon">
                                                                            <!-- <i class="fa fa-user"></i> -->
                                                                        </div>
                                                                        <input type="text" name="nombre_medico"
                                                                            placeholder="Causa" class="form-control"
                                                                            required>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-8">
                                                                        <div class="form-group">

                                                                            <label for="">Diagnostico</label>
                                                                            <textarea name="diagnostico" id="" rows="5"
                                                                                class="form-control"></textarea>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-12">
                                                                        <div class="form-group form-group-sm">
                                                                            <label for="disabledSelect">Entidad Emisora</label>
                                                                            <select id="disabledSelect" class="form-control "></select>

                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                            <div class="col-md-12">
                                                                                <button type="submit" class="btn btn-success pull-right">Agregar</button>
                                                                            </div>
                                                                        </div>
                                                                </div>

                                                            </div>
                                                            <!-- row 1 -->

                                                            <!-- row 1 -->
                                                            <!-- row 2 -->

                                                            <!-- parte lateral foto -->





                                                        </div>
                                                        <!-- row 1 -->

                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel box box-warning">
                                    <div class="box-header with-border">
                                        <h4 class="box-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#otra-consulta">
                                                Proxima Consulta
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="otra-consulta" class="panel-collapse collapse">
                                        <div class="box-body">
                                            <div class="row">
                                                <div class="col-md-10 col-md-offset-1">
                                                    <form action="{$_layoutParams.root}tutoras/ninas/nuevaNina" method="POST"
                                                        enctype="multipart/form-data" id="form-ninas">
                                                    

                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="">Fecha:</label>
                                                                <div class="input-group">
                                                                    <div class="input-group-addon">
                                                                        <!-- <i class="fa fa-user"></i> -->
                                                                    </div>
                                                                    <input type="text" name="Fecha" placeholder="Fecha"
                                                                        class="form-control">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <button type="submit" class="btn btn-success pull-right">Agregar</button>
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
                        <!-- /.box -->

                    </div>

                </div>
            </div>
        </div>
    </div>