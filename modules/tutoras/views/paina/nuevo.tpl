<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <form action="{$_layoutParams.root}tutoras/paina/nuevo_paina" method="post" id="form-paina">
                    <input type="hidden" name="guardar" value="1">
                    <div class="col-md-12">
                        <div class="box box-solid">
                            <div class="box-header with-border">
                                <h3 class="box-title">PROYECTO INTEGRAL DE ATENCION A LA NIÑA, NIÑO Y ADOLECENTE -
                                    PAINA</h3>
                                <button type="submit" class="btn btn-primary pull-right " id="btn-guardar-paina">Guardar</button>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <div class="box-group" id="accordion">
                                    <div class="panel box box-primary">
                                        <div class="box-header with-border">
                                            <h4 class="box-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#datos-identificacion">
                                                    Datos Generales
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
                                                                                <input type="text" name="famila" id="Familia"
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
                                                                                <select name="nina" id="NinaAdolecente" class="form-control" >
                                                                                    <option value="0" selected>Seleccione</option>
                                                                                    {foreach item=list from=$nina}
                                                                                    <option  value="{$list['id_nina']}">{$list['nombres']}
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
                                                                                <input type="text" name="etnia" id="etnia"
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
                                                                                id="cAcogimiento" placeholder="Causa" class="form-control">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- row 1 -->
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Fecha de elaboracion:</label>

                                                                            <div class="input-group date">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-calendar"></i>
                                                                                </div>
                                                                                <input type="text" name="fecha_elaboracion"
                                                                                    class="form-control pull-right" id="FechaElaboracion" id="datepicker-elaboracion">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="">Fecha proxima evaluacion:</label>
                                                                            
                                                                            <div class="input-group date">
                                                                                <div class="input-group-addon">
                                                                                    <i class="fa fa-calendar"></i>
                                                                                </div>
                                                                                <input type="text" name="fecha_evaluacion"  id="FechapEvaluacion"
                                                                                    class="form-control pull-right" id="datepicker-evaluacion">
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
                                                                                <select name="responsable" id="Responsable" class="form-control" >
                                                                                    <option value="0" selected>Seleccione</option>
                                                                                    {foreach item=list from=$tutoras}
                                                                                    <option  value="{$list['id']}" data-cedula="{$list['cedula']}">{$list['nombres']}
                                                                                        {$list['apellidos']}</option>
                                                                                    {/foreach}
                                                                                </select>
                                                                                
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
                                                                                <input disabled type="text" name="cedula"
                                                                                    placeholder="Cedula" class="form-control disabled " id="cedula"
                                                                                    required>
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
                                                <a data-toggle="collapse" data-parent="#accordion" href="#objetivo_general">
                                                    Objetivo General
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="objetivo_general" class="panel-collapse collapse">
                                            <div class="box-body" >
                                                <div class="row">
                                                    <div class="col-md-10 col-md-offset-1">
                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <textarea placeholder="De acuerdo a la norma tecnica tiene 15 a 30 dias para presentar el PAINA, guarde el registro y luego continue completando..00000"    name="obj_general"  rows="5" class="form-control"></textarea>
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
                </form>
                <form id="form-area">
                    <div class="col-md-12">
                        <form id="form-area">
                            <input type="hidden" name="guardar" value="1">
                            <div class="box box-solid">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Area</h3>
                                    <button type="submit" class="btn btn-info pull-right">Agregar</button>
                                    <div class="form-group col-md-4 pull-right">
                                        <select id="disabledSelect" name="area_acomp" class="form-control ">
                                            <option value="">Seleccionar:</option>
                                            {foreach item=list from=$desarrollo_pers}
                                            <option value="{$list['id_area_acomp']}">{$list['descripcion_area_acomp']}</option>
                                            {/foreach}
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
                                                                    <div class="form-group">
                                                                        <label for="">Descripcion</label>
                                                                        <textarea name="diagnostico_area" id="" rows="5"
                                                                            class="form-control"></textarea>
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
                                                                    <div class="form-group">

                                                                        <label for="">Descripcion</label>
                                                                        <textarea name="objetivo_area" id="" rows="5"
                                                                            class="form-control"></textarea>
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
                                                                                <select name="responsable" id="Responsable" class="form-control" >
                                                                                    <option value="0" selected>Seleccione</option>
                                                                                    {foreach item=list from=$tutoras}
                                                                                    <option  value="{$list['id']}">{$list['nombres']}
                                                                                        {$list['apellidos']}</option>
                                                                                    {/foreach}
                                                                                </select>
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
                                                                            <textarea name="act_observaciones" id=""
                                                                                rows="5" class="form-control"></textarea>
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

                                                                            <textarea name="evaluacion_global" id=""
                                                                                rows="5" class="form-control"></textarea>
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
                </form>
            </div>
        </div>