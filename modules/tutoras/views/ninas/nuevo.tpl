<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-solid">
                        <div class="box-header with-border">
                            <h3 class="box-title">FICHA DE INGRESO DE NIÑA O ADOLESCENTE</h3>
                            <button type="button" class="btn btn-primary pull-right" id="enviar-nna">Guardar</button>
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
                                                <div class=" col-md-10 col-md-offset-1 ">
                                                    <form action="{$_layoutParams.root}tutoras/ninas/nuevaNina" method="POST"
                                                        enctype="multipart/form-data" id="form-ninas">
                                                        <input type="hidden" name="guardar" value="1">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <!-- parte lateral foto -->
                                                                <div class="row">
                                                                    <div class="col-md-6 ">
                                                                        <br><br>
                                                                        <div class="row">
                                                                            <div class="col-12 col-xs-6 col-xs-offset-3 col-md-6 col-md-offset-3">
                                                                                <div id="container-logo">
                                                                                    <a href="#" class="thumbnail">
                                                                                        <img class="img-responsive"
                                                                                            style="height: 210px; width: 100%;"
                                                                                            id="logo-img" src="{$_layoutParams.root}public/img/user/user.png" />
                                                                                    </a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-md-6 col-md-offset-3" style="margin-top: 0px;">
                                                                                <div class="form-group">
                                                                                    <label for="" class="btn btn-success btn-file btn-block">
                                                                                        <i class="fa fa-file"></i>
                                                                                        Imagen<input type="file" name="foto"
                                                                                            class="form-control"
                                                                                            required>
                                                                                    </label>
                                                                                    <span class="help-block"></span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                    <label for="">Fecha de Ingreso a la Unidad:</label>
                                                                                    <div class="input-group date">
                                                                                        <div class="input-group-addon">
                                                                                            <i class="fa fa-calendar"></i>
                                                                                        </div>
                                                                                        <input type="text" name="fecha_ingreso"
                                                                                            class="form-control pull-right" id="datepicker-fecha-ingreso">
                                                                                    </div>
                                                                                    <span class="help-block"></span>
        
                                                                                </div>
                                                                        <div class="form-group">
                                                                            <label for="">Nombres de la niña o
                                                                                adolecente</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-user"></i>
                                                                                </div>
                                                                                <input type="text" name="nombres"
                                                                                    placeholder="Nombres" class="form-control"
                                                                                    id="nombre-nna" required>
                                                                            </div>
                                                                            <span class="help-block"></span>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="">Apellidos de la niña o
                                                                                adolecente</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-user"></i>
                                                                                </div>
                                                                                <input type="text" name="apellidos"
                                                                                    placeholder="Apellidos" class="form-control"
                                                                                    id="apellido-nna" required>
                                                                            </div>
                                                                            <span class="help-block"></span>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <label for="">Fecha de nacimiento</label>
                                                                            <div class="input-group date">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-calendar"></i>
                                                                                </div>
                                                                                <input type="text" name="fecha_nacimiento"
                                                                                    class="form-control pull-right" id="datepicker-fecha-nacimiento">
                                                                            </div>
                                                                            <span class="help-block"></span>

                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="">Lugar de nacimiento</label>
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <!-- <i class="fa fa-user"></i> -->
                                                                                </div>
                                                                                <input type="text" name="lugar_nacimiento"
                                                                                    placeholder="lugar de nacimiento"
                                                                                    class="form-control" id="lugar-nacimiento"
                                                                                    required>
                                                                            </div>
                                                                            <span class="help-block"></span>
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
                                                                                    id="cedula" required>
                                                                            </div>
                                                                            <span class="help-block"></span>
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
                                                                                    id="phone" required>
                                                                            </div>
                                                                            <span class="help-block"></span>
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
                                                                                    id="direccion-nna" required>
                                                                            </div>
                                                                            <span class="help-block"></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- row 1 -->
                                                                <!-- row 2 -->
                                                                <div class="row">
                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label for="">Tipo de Medida:</label>
                                                                            <!-- <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i></i>
                                                                                </div>
                                                                                <input type="text" name="tipo-medida"
                                                                                    placeholder="tipo de medida" class="form-control"
                                                                                    id="tipo-medida" required>
                                                                            </div> -->
                                                                            <div class="input-group">
                                                                                <div class="input-group-addon">
                                                                                    <i></i>
                                                                                </div>
                                                                                <select class="form-control" name="tipo-medida" id="tipo-medida">
                                                                                        <option value="0">Seleccione</option>
                                                                                    <option value="Presunto Abuso Sexual">Presunto Abuso Sexual</option>
                                                                                    <option value="Presunto Acoso Sexual">Presunto Acoso Sexual</option>
                                                                                </select>
                                                                            </div>
                                                                            <span class="help-block"></span>
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
                                                                                    class="form-control" placeholder="numero de medida"
                                                                                    id="num-medida" required>
                                                                            </div>
                                                                            <span class="help-block"></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label for="">Fecha de medida</label>
                                                                            <div class="input-group date">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-calendar"></i>
                                                                                </div>
                                                                                <input type="text" name="fecha-medida"
                                                                                    class="form-control pull-right" id="datepicker-fecha-medida">
                                                                            </div>
                                                                            <span class="help-block"></span>
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
                                                                                    id="nombre-solicitud" class="form-control"
                                                                                    required>
                                                                            </div>
                                                                        </div>
                                                                        <span class="help-block"></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- parte lateral foto -->


                                                            <div class="col-md-4">

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
                                                    <form id="form-informante">
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
                                                                                id="nombres-inf" placeholder="Nombres">
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
                                                                                id="apellidos-inf" placeholder="Apellidos">
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
                                                                                id="direccion-inf" placeholder="Dirección">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Teléfono:</label>
                                                                        <div class="input-group">
                                                                            <div class="input-group-addon">
                                                                                <i class="fa fa-phone"></i>
                                                                            </div>
                                                                            <input type="text" name="phone" class="form-control"
                                                                                id="telf-inf" placeholder="Telefono">
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
                                                                                id="inst-inf" placeholder="Institucion">
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
                                                                                id="dctoin-inf">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <button type="submit" class="btn btn-info pull-right">Agregar</button>
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
                                                    <form id="form-descripcion">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <label for="">Detalle con la vestimenta que
                                                                        ingresa:</label>
                                                                    <div>
                                                                        <textarea name="vestimenta" id="vestido" rows="5"
                                                                            class="form-control"></textarea>
                                                                    </div>
                                                                    <span class="help-block"></span>
                                                                </div>

                                                                <div class="form-group">
                                                                    <label for="">Estado de salud al momento del
                                                                        ingreso:</label>
                                                                    <div>
                                                                        <textarea name="salud" id="salud" rows="5"
                                                                            class="form-control" required></textarea>
                                                                    </div> <span class="help-block"></span>
                                                                </div>

                                                                <div class="form-group">
                                                                    <label for="">Existe señales evidentes de
                                                                        maltrato físico al momento de ingresar
                                                                        SI/NO detallar:</label>
                                                                        <div>
                                                                    <textarea name="maltrato-fisico" id="maltrato" rows="5"
                                                                        class="form-control" required></textarea>
                                                                        </div>
                                                                        <span class="help-block"></span>
                                                                </div>

                                                                <div class="form-group">
                                                                    <label for="">La NNA ingresa con pertenencias
                                                                        personales SI/NO detallar:</label>
                                                                    <div>
                                                                        <textarea name="pertenencias" id="pertenencias"
                                                                            rows="5" class="form-control" required></textarea>
                                                                    </div>
                                                                    <span class="help-block"></span>
                                                                </div>

                                                                <div class="form-group">
                                                                    <label for="">Observaciones generales:</label>

                                                                    <textarea name="observaciones-generales" id="" rows="5"
                                                                        placeholder="Algún dato opcional que desee informar"
                                                                        class="form-control" required></textarea>

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
                                            <a data-toggle="collapse" data-parent="#accordion" href="#familiares">
                                                Datos de los padres o familiares a cargo de la NNA
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="familiares" class="panel-collapse collapse ">
                                        <div class="box-body">
                                            <div class="row">
                                                <div class="col-md-10 col-md-offset-1">
                                                    <form id="form-familiares">
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
                                                                                id="nombres-ref" placeholder="Nombres">
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
                                                                                id="apellidos-ref" placeholder="Apellidos">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Parentesco:</label>
                                                                        <div class="input-group">
                                                                            <div class="input-group-addon">
                                                                                <!-- <i class="fa fa-user"></i> -->
                                                                            </div>
                                                                            <input type="text" name="parentesco" class="form-control"
                                                                                id="parentesco-ref" placeholder="Parentesco familiar con NNA">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Edad:</label>
                                                                        <div class="input-group">
                                                                            <div class="input-group-addon">
                                                                                <!-- <i class="fa fa-user"></i> -->
                                                                            </div>
                                                                            <input type="text" name="edad" class="form-control"
                                                                                id="edad-ref" placeholder="Edad de la persona">
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
                                                                                id="direccion-ref" placeholder="Dirección">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Teléfono:</label>
                                                                        <div class="input-group">
                                                                            <div class="input-group-addon">
                                                                                <i class="fa fa-phone"></i>
                                                                            </div>
                                                                            <input type="text" name="phone" class="form-control"
                                                                                id="telefono-ref" placeholder="Telefono">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Cedula:</label>
                                                                        <div class="input-group">
                                                                            <div class="input-group-addon">
                                                                                <i class="fa fa-file-archive-o"></i>
                                                                            </div>
                                                                            <input type="text" name="cedula" class="form-control"
                                                                                id="cedula-ref">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="">Lugar de trabajo:</label>
                                                                        <div class="input-group">
                                                                            <div class="input-group-addon">
                                                                                <i class="fa fa-file-archive-o"></i>
                                                                            </div>
                                                                            <input type="text" name="trabajo" class="form-control"
                                                                                placeholder="Lugar o ciudad donde labora"
                                                                                id="trabajo-ref">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <button type="submit" class="btn btn-info pull-right">Agregar</button>
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