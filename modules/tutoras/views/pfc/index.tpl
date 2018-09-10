<section class="content">
    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">DATOS GENERALES DE LA COMUNIDAD A INTERVENIR</h3>
        </div>
        <div class="box box-body">
            <form action="{$_layoutParams.root}tutoras/PFC/" method="POST">
                <input type="hidden" name="guardar" value="1">
                <div class="row">
                    <!-- Nombres y apellido -->
                    <!-- <div class="col-md-6">
                        <div class="input-group">
                            <span class="input-group-addon"> <i class="fa fa-user prefix" aria-hidden="true"></i></span>
                            <input type="text" id="pfc_nombres" name="pfc_nombres" class="form-control" value="{$post.pfc_nombres|default:''}"
                                required>
                            {if isset($error_pfc_nombres)}
                            <small id="" class="form-text text-muted text-danger">
                                {$error_pfc_nombres}
                            </small>
                            {/if}
                        </div>
                    </div> -->
                    <!-- <div class="col-12 col-md-6">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user prefix" aria-hidden="true"></i></span>
                            <input type="text" id="pfc_apellidos" name="pfc_apellidos" class="form-control" value="{$post.pfc_apellidos|default:''}"
                                required>
                            {if isset($error_pfc_apellidos)}
                            <small id="" class="form-text text-muted text-danger">
                                {$error_pfc_apellidos}
                            </small>
                            {/if}
                        </div>
                    </div> -->
                    <!-- Fin nombres y apellido -->
                    <!-- Cantones -->
                    <!-- <div class="col-md-6">
                        <div class="form-group">
                            <label for="">Cantones</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-map"></i></span>
                                <select name="pfc_canton" id="canton" class="form-control" required >
                                    <option value="0" disabled {if !isset($post.pfc_canton) || $post.pfc_canton==0 }
                                        selected {/if}>Seleccione una opcion de la lista</option> {foreach item=list
                                        from=$cantones} <option value="{$list.id_cantones}" {if isset($post.pfc_canton)
                                        && $post.pfc_canton===1 } selected {/if }>{$list.canton|upper}</option>
                                    {/foreach}
                                </select>

                                {if isset($error_pfc_canton)}
                                <small id="" class="form-text text-muted text-danger">
                                    {$error_pfc_canton}
                                </small>
                                {/if}
                            </div>
                        </div>
                    </div> -->
                    <!-- fin cantones -->
                    <!-- Parroquias -->
                    <!-- <div class="col-md-6">
                        <div class="form-group">
                            <label for="">Parroquias</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-map prefix"></i></span>
                                <select name="pfc_parroquia" id="parroquia" class="form-control" required>
                                    {if isset($post.pfc_parroquia)}
                                    <option value="{$post.pfc_parroquia}">{$parroquias.parroquia|upper}</option>
                                    {else}
                                    <option value="" disabled selected>Seleccione una opcion de la lista</option>
                                    {/if}
                                </select>
                                {if isset($error_pfc_parroquia)}
                                <small id="" class="form-text text-muted text-danger">
                                    {$error_pfc_parroquia}
                                </small>
                                {/if}
                            </div>
                        </div>
                    </div> -->
                    <!-- Fin parroquias -->
                    <!-- N# de NNA -->
                    <!-- <div class="col-md-6">
                        <div class="form-group">
                            <label>Nº de NNA en el servicio que proviene de la comunidad a intervenir: </label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-cogs prefix" aria-hidden="true"></i>
                                </span>
                                <input type="text" id="pfc_num_nna" name="pfc_num_nna" class="form-control" value="{$post.pfc_num_nna|default:''}" required>
                                {if isset($error_pfc_num_nna)}
                                <small id="" class="form-text text-muted text-danger">
                                    {$error_pfc_num_nna}
                                </small>
                                {/if}
                            </div>
                        </div>
                    </div> -->
                    <!-- Fin N# de NNA -->
                    <!-- N# Familia -->
                    <!-- <div class="col-md-6">
                        <div class="form-group">
                            <label>Nº de familia en el servicio que proviene de la comunidad aintervenir</label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-cogs prefix" aria-hidden="true"></i>
                                </span>
                                <input type="text" id="pfc_num_famila" name="pfc_num_famila" class="form-control" value="{$post.pfc_num_famila|default:''}" required>
                                {if isset($error_pfc_num_famila)}
                                <small id="" class="form-text text-muted text-danger">
                                    {$error_pfc_num_famila}
                                </small>
                                {/if}
                            </div>
                        </div>
                    </div> -->
                    <!-- Fin N# Familia -->
                    <!-- Fecha elaboracion -->
                    <!-- <div class="col-md-6">
                        <div class="form-group">
                            <label for="">Fecha de elaboración del plan</label>
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" id="pfc_fecha_plan_elaboracion" name="pfc_fecha_plan_elaboracion"
                                    class="form-control pull-right" value="{$post.pfc_fecha_plan_elaboracion|default:''}" required>
                                {if isset($error_pfc_fecha_plan_elaboracion)}
                                <small id="" class="form-text text-muted text-danger">
                                    {$error_pfc_fecha_plan_elaboracion}
                                </small>
                                {/if}
                            </div>
                        </div>
                    </div> -->
                    <!-- Fin fecha elaboracion -->
                    <!-- Fecha proximo plan -->
                    <!-- <div class="col-md-6">
                        <div class="form-group">
                            <label for="">Fecha de la proxima elaboración del plan</label>
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" id="pfc_fecha_plan_evaluacion" name="pfc_fecha_plan_evaluacion"
                                    class="form-control" value="{$post.pfc_fecha_plan_evaluacion|default:''}" required>
                                {if isset($error_pfc_fecha_plan_evaluacion)}
                                <small id="" class="form-text text-muted text-danger">
                                    {$error_pfc_fecha_plan_evaluacion}
                                </small>
                                {/if}
                            </div>
                        </div>
                    </div> -->
                    <!-- Fecha proximo plan -->
                </div>
                <!-- DPC -->
                <!-- <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <i class="fa fa-cogs prefix" aria-hidden="true"></i>
                            <label for="">Diagnóstico participativo de la comunidad</label>
                            <textarea id="pfc_diagnostico" name="pfc_diagnostico" class="form-control " rows="5" required>{$post.pfc_diagnostico|default:''}</textarea>
                            {if isset($error_pfc_diagnostico)}
                            <small id="" class="form-text text-muted text-danger">
                                {$error_pfc_diagnostico}
                            </small>
                            {/if}
                        </div>
                    </div>
                </div> -->
                <!-- Fin DPC -->
                <!-- Objetivo General -->
                <!-- <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <i class="fa fa-cogs"></i>
                            <label for="pfc_obj_general">Objetivo general del plan</label>
                            <textarea id="pfc_obj_general" name="pfc_obj_general" class="form-control" rows="5" required>{$post.pfc_obj_general|default:''}</textarea>

                            {if isset($error_pfc_obj_general)}
                            <small id="" class="form-text text-muted text-danger">
                                {$error_pfc_obj_general}
                            </small>
                            {/if}
                        </div>
                    </div>
                </div> -->
                <!-- Fin Objetivo General -->
                <!-- Objetivo Especificos -->
                <!-- <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <i class="fa fa-cogs"></i>
                            <label for="pfc_obj_especificos">Objetivo especificos del plan</label>
                            <textarea id="pfc_obj_especificos" name="pfc_obj_especificos" class="form-control" rows="5" required>{$post.pfc_obj_especificos|default:''}</textarea>
                            {if isset($error_pfc_obj_especificos)}
                            <small id="" class="form-text text-muted text-danger">
                                {$error_pfc_obj_especificos}
                            </small>
                            {/if}
                        </div>
                    </div>
                </div> -->
                <!-- Fin Objetivo Especificos -->
                <!-- Intervencione -->
                <div class="row">
                    <div class="col-md-12 ">
                        <h3 class="position-relative">Intervencion</h3>
                        <button id="btn_agregar_fila_I" class="btn btn-outline-info btn-sm position-absolute" style="right:15px; top:20px;">
                            <i class="fa fa-plus "></i>
                            más
                        </button>
                        <table class="table table-bordered table-responsive">
                            <thead>
                                <th>Metas</th>
                                <th>indicadores</th>
                                <th>Actividades</th>
                                <th>Tiempos</th>
                                <th>Recursos</th>
                                <th>Responsables</th>
                            </thead>
                            <input type="hidden" id="num-intervencion" name="num-intervenciones" value="1">
                            <tbody id="contenedor_I">
                                <tr>
                                    <td>
                                        <textarea name="metas-1" id="" class="form-control"  rows="3" required></textarea>
                                    </td>
                                    <td>
                                        <textarea name="indicadores-1" id="" class="form-control" rows="3" required></textarea>
                                    </td>
                                    <td>
                                        <textarea name="actividades-1" id="" class="form-control" rows="3" required></textarea>
                                    </td>
                                    <td>
                                        <textarea name="tiempos-1" id="" class="form-control" rows="3" required></textarea>
                                    </td>
                                    <td>
                                        <textarea name="recursos-1" id="" class="form-control" rows="3" required></textarea>
                                    </td>
                                    <td>
                                        <textarea name="responsables-1" id="" class="form-control" rows="3" required></textarea>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
                <!-- Fin Intervencione -->
                <!-- Seguimiento y evaluación -->
                <!-- <div class="row ">
                    <div class="col-md-12">
                        <h3 class="position-relative">Seguimiento y evaluacion</h3>
                        <button id="btn_agregar_fila_SE" class="btn btn-outline-info btn-sm position-absolute p-1"
                        style="right:15px; top:20px;">
                            <i class="fa fa-plus "></i>
                            más
                        </button>
                        <table class="table table-bordered">
                            <thead>
                                <th>Actividades</th>
                                <th>Dificultades</th>
                                <th>Resultados</th>
                                <th>Observaciones</th>
                            </thead>
                            <tbody id="contenedor_SE">
                                <tr>
                                    <td>
                                        <textarea  class="form-control" rows="3" required></textarea>
                                    </td>
                                    <td>
                                        <textarea  class="form-control" rows="3" required></textarea>
                                    </td>
                                    <td>
                                        <textarea  class="form-control" rows="3" required></textarea>
                                    </td>
                                    <td>
                                        <textarea  class="form-control" rows="3" required></textarea>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div> -->
                <!-- Fin Seguimiento y evaluación -->
                <div class="row">
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-success">Guardar Cambios</button>
                    </div>
                </div>

            </form>
        </div>
    </div>
</section>