<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-solid">
                        <div class="box-header with-border">
                            <h3 class="box-title">FICHA DE INGRESO DE NIÑA O ADOLECENTE</h3>
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
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-file"></i>
                                                                                </div>
                                                                                <input type="file" name="foto" class="form-control"
                                                                                     >
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Nombres de la niña o
                                                                                adolecenre</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-user"></i>
                                                                                </div>
                                                                                <input type="text" name="nombres"
                                                                                    placeholder="Nombres" class="form-control"
                                                                                     >
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="">Apellidos de la niña o
                                                                                adolecenre</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-user"></i>
                                                                                </div>
                                                                                <input type="text" name="apellidos"
                                                                                    placeholder="Apellidos" class="form-control"
                                                                                     >
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="">Fecha de nacimiento</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <!-- <i class="fa fa-user"></i> -->
                                                                                </div>
                                                                                <input type="text" name="fecha_nacimiento"
                                                                                    placeholder="fecha de nacimiento"
                                                                                    class="form-control"  >
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="">Lugar de nacimiento</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <!-- <i class="fa fa-user"></i> -->
                                                                                </div>
                                                                                <input type="text" name="lugar_nacimiento"
                                                                                    placeholder="lugar de nacimiento"
                                                                                    class="form-control"  >
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                                <!-- row 1 -->
                                                                <div class="row">
                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label for="">Cedula:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-address-card"></i>
                                                                                </div>
                                                                                <input type="text" name="cedula"
                                                                                    placeholder="Cedula" class="form-control"
                                                                                     >
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label for="">Telf:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-phone"></i>
                                                                                </div>
                                                                                <input type="text" name="phone" class="form-control"
                                                                                     >
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label for="">Dirección:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <!-- <i class="fa fa-at"></i> -->
                                                                                </div>
                                                                                <input type="text" name="direccion"
                                                                                    placeholder="direccion" class="form-control"
                                                                                     >
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- row 1 -->
                                                                <!-- row 2 -->
                                                                <div class="row">
                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label for="">Tipo de Medida:</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i></i>
                                                                                </div>
                                                                                <input type="text" name="tipo-medida"
                                                                                    placeholder="tipo de medida" class="form-control"  >
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label for="">N de medida</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i></i>
                                                                                </div>
                                                                                <input type="text" name="num-medida"
                                                                                    class="form-control" placeholder="numero de medida"  >
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label for="">Fecha de medida</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i></i>
                                                                                </div>
                                                                                <input type="text" name="fecha-medida"
                                                                                    class="form-control" placeholder="fecha de medida"  >
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- row 2 -->
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="form-group">
                                                                            <label for="">Nombre de la persona u
                                                                                organización que solicita la
                                                                                medida</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i></i>
                                                                                </div>
                                                                                <input type="text" name="nombre_solicitud"
                                                                                    class="form-control"  >
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
                                                Datos de quien informa la situación
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
                                                                        <label for="">Nombres:</label>
                                                                        <div class="input-group">
                                                                            <div class="input-group-addon">
                                                                                <i class="fa fa-user"></i>
                                                                            </div>
                                                                            <input type="text" name="nombres" class="form-control"
                                                                                placeholder="Nombres">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Apellidos:</label>
                                                                        <div class="input-group">
                                                                            <div class="input-group-addon">
                                                                                <i class="fa fa-user"></i>
                                                                            </div>
                                                                            <input type="text" name="apellidos" class="form-control"
                                                                                placeholder="Apellidos">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Dirección:</label>
                                                                        <div class="input-group">
                                                                            <div class="input-group-addon">
                                                                                <!-- <i class="fa fa-user"></i> -->
                                                                            </div>
                                                                            <input type="text" name="direccion" class="form-control"
                                                                                placeholder="Dirección" required>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Telf:</label>
                                                                        <div class="input-group">
                                                                            <div class="input-group-addon">
                                                                                <i class="fa fa-phone"></i>
                                                                            </div>
                                                                            <input type="text" name="phone" class="form-control"
                                                                                placeholder="Telefono" required>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label for="">Institucion:</label>
                                                                        <div class="input-group">
                                                                            <div class="input-group-addon">
                                                                                <!-- <i class="fa fa-user"></i> -->
                                                                            </div>
                                                                            <input type="text" name="institucion" class="form-control"
                                                                                placeholder="Institucion" required>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label for="">Documento al momento del ingreso:</label>
                                                                        <div class="input-group">
                                                                            <div class="input-group-addon">
                                                                                <i class="fa fa-file-archive-o"></i>
                                                                            </div>
                                                                            <input type="text" name="documento" class="form-control"
                                                                                required>
                                                                        </div>
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
                                                Descripción de la situación que se informa
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
                                                                        <label for="">Detalle con la vestimenta que
                                                                            ingresa:</label>
                                                                        <textarea name="vestimenta" id="" rows="5"
                                                                            class="form-control"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label for="">Estado de salud al momento del
                                                                            ingreso:</label>
                                                                        <textarea name="salud" id="" rows="5" class="form-control"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label for="">Existe señales evidentes de
                                                                            maltrato físico al momento de ingresar
                                                                            SI/NO detallar:</label>
                                                                        <textarea name="salud" id="" rows="5" class="form-control"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label for="">La NNA ingresa con pertenencias
                                                                            personales SI/NO detallar:</label>
                                                                        <textarea name="pertenencias" id="" rows="5"
                                                                            class="form-control"></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label for="">Observaciones generales:</label>
                                                                        <textarea name="salud" id="" rows="5" class="form-control"></textarea>
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
                </div>

            </div>
        </div>
    </div>
</div>