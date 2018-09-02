<div class="container">
    <div class="row">
        <div class="col s12 ">
            <h2 class="center-align">PLAN DE FORTALECIMIENTO COMUNITARIO</h2>
        </div>

    </div>
    <form action="{$_layoutParams.root}tutoras/plandefortalecimientocomunitario/" method="POST" class="card p-1">
        <input type="hidden" name="guardar" value="1">
        <div class="card-body">
            <h6 class="card-subtitle mb-2 text-muted">DATOS GENERALES DE LA COMUNIDAD A INTERVENIR</h6>
            <div class="row">
                <!-- Nombres y apellido -->
                <div class="col-12 col-md-6">
                    <div class="md-form">
                        <i class="fa fa-user prefix" aria-hidden="true"></i>
                        <input type="text" id="pfc_nombres" name="pfc_nombres" class="form-control" value="{$post.pfc_nombres|default:''}" required>
                        <label for="pfc_nombres">Nombres</label>
                        {if isset($error_pfc_nombres)}
                        <small id="" class="form-text text-muted text-danger">
                            {$error_pfc_nombres}
                        </small>
                        {/if}
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="md-form">
                        <i class="fa fa-user prefix" aria-hidden="true"></i>
                        <input type="text" id="pfc_apellidos" name="pfc_apellidos" class="form-control" value="{$post.pfc_apellidos|default:''}"
                            required>
                        <label for="pfc_apellidos">Apellidos</label>
                        {if isset($error_pfc_apellidos)}
                        <small id="" class="form-text text-muted text-danger">
                            {$error_pfc_apellidos}
                        </small>
                        {/if}
                    </div>
                </div>
                <!-- Fin nombres y apellido -->
                <!-- Cantones -->
                <div class="col-12 col-md-6">
                    <div class="input-field">
                        <i class="fa fa-map prefix" aria-hidden="true"></i>

                        <select name="pfc_canton" id="canton" required>
                            <option value="0" disabled {if !isset($post.pfc_canton) || $post.pfc_canton==0 } selected {/if}>Seleccione una opcion de la lista</option>
                            {foreach item=list from=$cantones}
                            <option value="{$list.id_cantones}" {if isset($post.pfc_canton) && $post.pfc_canton===1 } selected {/if }>{$list.canton|upper}</option>
                            {/foreach}
                        </select>
                        <label>Cantón</label>
                        {if isset($error_pfc_canton)}
                        <small id="" class="form-text text-muted text-danger">
                            {$error_pfc_canton}
                        </small>
                        {/if}
                    </div>
                </div>
                <!-- fin cantones -->
                <!-- Parroquias -->
                <div class="col-12 col-md-6">
                    <div class="input-field">
                        <i class="fa fa-map prefix"></i>
                        <select name="pfc_parroquia" id="parroquia">
                            {if isset($post.pfc_parroquia)}
                            <option value="{$post.pfc_parroquia}">{$parroquias.parroquia|upper}</option>
                            {else}
                            <option value="" disabled selected>Seleccione una opcion de la lista</option>
                            {/if}
                        </select>
                        <label>Parroquia</label>
                        {if isset($error_pfc_parroquia)}
                        <small id="" class="form-text text-muted text-danger">
                            {$error_pfc_parroquia}
                        </small>
                        {/if}
                    </div>
                </div>
                <!-- Fin parroquias -->
                <!-- N# de NNA -->
                <div class="col-12 col-md-6">
                    <div class="md-form">
                        <i class="fa fa-cogs prefix" aria-hidden="true"></i>
                        <input type="text" id="pfc_num_nna" name="pfc_num_nna" class="form-control" value="{$post.pfc_num_nna|default:''}" >
                        <label for="pfc_num_nna">Nº de NNA en el servicio que proviene de la comunidad a intervenir</label>
                        {if isset($error_pfc_num_nna)}
                        <small id="" class="form-text text-muted text-danger">
                            {$error_pfc_num_nna}
                        </small>
                        {/if}
                    </div>
                </div>
                <!-- Fin N# de NNA -->
                <!-- N# Familia -->
                <div class="col-12 col-md-6">
                    <div class="md-form">
                        <i class="fa fa-cogs prefix" aria-hidden="true"></i>
                        <input type="text" id="pfc_num_famila" name="pfc_num_famila" class="form-control" value="{$post.pfc_num_famila|default:''}">
                        <label for="pfc_num_famila">Nº de familia en el servicio que proviene de la comunidad a intervenir</label>
                        {if isset($error_pfc_num_famila)}
                        <small id="" class="form-text text-muted text-danger">
                            {$error_pfc_num_famila}
                        </small>
                        {/if}
                    </div>
                </div>
                <!-- Fin N# Familia -->
                <!-- Fecha elaboracion -->
                <div class="col-12 col-md-6">
                    <div class="md-form">
                        <i class="fa fa-calendar prefix" aria-hidden="true"></i>
                        <input type="text" id="pfc_fecha_plan_elaboracion" name="pfc_fecha_plan_elaboracion" class="form-control" value="{$post.pfc_fecha_plan_elaboracion|default:''}">
                        <label for="pfc_fecha_plan_elaboracion">Fecha de elaboración del plan</label>
                        {if isset($error_pfc_fecha_plan_elaboracion)}
                        <small id="" class="form-text text-muted text-danger">
                            {$error_pfc_fecha_plan_elaboracion}
                        </small>
                        {else}
                        <small id="" class="form-text text-muted">
                            dd/mm/aaaa
                        </small>
                        {/if}
                    </div>
                </div>
                <!-- Fin fecha elaboracion -->
                <!-- Fecha proximo plan -->
                <div class="col-12 col-md-6">
                    <div class="md-form">
                        <i class="fa fa-calendar prefix" aria-hidden="true"></i>
                        <input type="text" id="pfc_fecha_plan_evaluacion" name="pfc_fecha_plan_evaluacion" class="form-control" value="{$post.pfc_fecha_plan_evaluacion|default:''}">
                        <label for="pfc_fecha_plan_evaluacion">Fecha de la proxima elaboración del plan</label>
                        {if isset($error_pfc_fecha_plan_evaluacion)}
                        <small id="" class="form-text text-muted text-danger">
                            {$error_pfc_fecha_plan_evaluacion}
                        </small>
                        {else}
                        <small id="" class="form-text text-muted">
                            dd/mm/aaaa
                        </small>
                        {/if}
                    </div>
                </div>
                <!-- Fecha proximo plan -->
                <div class="col-12">
                    <hr>
                </div>
                <!-- DPC -->
                <div class="col-12">
                    <div class="md-form">
                        <i class="fa fa-cogs prefix" aria-hidden="true"></i>
                        <textarea id="pfc_diagnostico" name="pfc_diagnostico" class="form-control md-textarea">{$post.pfc_diagnostico|default:''}</textarea>
                        <label for="pfc_diagnostico">Diagnóstico participativo de la comunidad</label>
                        {if isset($error_pfc_diagnostico)}
                        <small id="" class="form-text text-muted text-danger">
                            {$error_pfc_diagnostico}
                        </small>
                        {/if}
                    </div>
                </div>
                <!-- Fin DPC -->
                <div class="col-12">
                    <hr>
                </div>
                <!-- Objetivo General -->
                <div class="col-12">
                    <div class="md-form">
                        <i class="fa fa-cogs prefix" aria-hidden="true"></i>
                        <textarea id="pfc_obj_general" name="pfc_obj_general" class="form-control md-textarea" >{$post.pfc_obj_general|default:''}</textarea>
                        <label for="pfc_obj_general">Objetivo general del plan</label>
                        {if isset($error_pfc_obj_general)}
                        <small id="" class="form-text text-muted text-danger">
                            {$error_pfc_obj_general}
                        </small>
                        {/if}
                    </div>
                </div>
                <!-- Fin Objetivo General -->
                <div class="col-12">
                    <hr>
                </div>
                <!-- Objetivo Especificos -->
                <div class="col-12">
                    <div class="md-form">
                        <i class="fa fa-cogs prefix" aria-hidden="true"></i>
                        <textarea id="pfc_obj_especificos" name="pfc_obj_especificos" class="form-control md-textarea">{$post.pfc_obj_especificos|default:''}</textarea>
                        <label for="pfc_obj_especificos">Objetivo especificos del plan</label>
                        {if isset($error_pfc_obj_especificos)}
                        <small id="" class="form-text text-muted text-danger">
                            {$error_pfc_obj_especificos}
                        </small>
                        {/if}
                    </div>
                </div>
                <!-- Fin Objetivo Especificos -->
                <div class="col-12">
                    <hr>
                </div>

            </div>
            <!-- Intervencione -->
            <h6 class="card-subtitle mb-2 text-muted">INTERVENCIÓN </h6>
            <div class="row position-relative">
                <button id="btn_agregar_fila_I" class="btn btn-outline-info btn-sm position-absolute p-1" style="right:10px; top:-45px;">
                    <i class="fa fa-plus "></i>
                    más
                </button>
                <div class="col-12">
                    <table class="table table-bordered table-responsive">
                        <thead>
                            <th>Metas</th>
                            <th>indicadores</th>
                            <th>Actividades</th>
                            <th>Tiempos</th>
                            <th>Recursos</th>
                            <th>Responsables</th>
                        </thead>
                        <tbody id="contenedor_I">
                            <tr>
                                <td>
                                    <input type="text" id="pfc_apellidos" name="metas[0]" class="form-control p-0" >

                                </td>
                                <td>
                                    <input type="text" id="pfc_apellidos" name="indicadores[0]" class="form-control" >
                                </td>
                                <td>
                                    <input type="text" id="pfc_apellidos" name="actividades[0]" class="form-control" >
                                </td>
                                <td>
                                    <input type="text" id="pfc_apellidos" name="tiempos[0]" class="form-control" >
                                </td>
                                <td>
                                    <input type="text" id="pfc_apellidos" name="recursos[0]" class="form-control" >
                                </td>
                                <td>
                                    <input type="text" id="pfc_apellidos" name="responsables[0]" class="form-control">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

            </div>
            <!-- Fin Intervencione -->
            <!-- Seguimiento y evaluación -->
            <h6 class="card-subtitle mb-2 text-muted">SEGUIMIENTO EVALUACIÓN</h6>
            <div class="row position-relative">
                <button id="btn_agregar_fila_SE" class="btn btn-outline-info btn-sm position-absolute p-1" style="right:10px; top:-45px;">
                    <i class="fa fa-plus "></i>
                    más
                </button>
                <div class="col-12">
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
                                    <input type="text" name="" class="form-control" value="">
                                </td>
                                <td>
                                    <input type="text" name="" class="form-control" value="">
                                </td>
                                <td>
                                    <input type="text" name="" class="form-control" value="">
                                </td>
                                <td>
                                    <input type="text" name="" class="form-control" value="">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- Fin Seguimiento y evaluación -->
            <div class="row">
                <div class="col-12">
                    <button type="submit" class="btn btn-success">Guardar Cambios</button>
                </div>
            </div>
        </div>
    </form>
</div>