<div class="container">
    <div class="row">
        <div class="col s12 border">
            <h6 class="center-align">PLAN DE FORTALECIMIENTO COMUNITARIO</h6>
        </div>

    </div>
    <div class="row">
        <div class="">
            <form action="{$_layoutParams.root}tutoras/plandefortalecimientocomunitario/" method="POST" class="card p-2">
                <input type="hidden" name="guardar" value="1">

                <div class="row">
                    <div class="col-12">
                        <p>1.-DATOS GENERALES DE LA COMUNIDAD A INTERVENIR</p>
                    </div>
                    <!-- Nombres y apellido -->
                    <div class="col-12 col-md-6">
                        <div class="md-form">
                            <i class="fa fa-user prefix" aria-hidden="true"></i>
                            <input type="text" id="pfc_nombres" name="pfc_nombres" class="form-control validate">
                            <label for="pfc_nombres" data-error="wrong" data-success="right">Nombres</label>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="md-form">
                            <i class="fa fa-user prefix" aria-hidden="true"></i>
                            <input type="text" id="pfc_apellidos" name="pfc_apellidos" class="form-control">
                            <label for="pfc_apellidos" data-error="wrong" data-success="right">Apellidos</label>
                        </div>
                    </div>
                    <!-- Fin nombres y apellido -->
                    <!-- Cantones -->
                    <div class="col-12 col-md-6">
                        <div class="input-field">
                            <i class="fa fa-map prefix" aria-hidden="true"></i>
                            <select name="pfc_canton" class="">
                                <option value="" disabled selected>Seleccione una opcion de la lista</option>
                                <option value="1">Option 1</option>
                                <option value="2">Option 2</option>
                                <option value="3">Option 3</option>
                            </select>
                            <label>Cantón</label>
                        </div>
                    </div>
                    <!-- fin cantones -->
                    <!-- Parroquias -->
                    <div class="col-12 col-md-6">
                        <div class="input-field">
                            <i class="fa fa-map prefix" aria-hidden="true"></i>
                            <select name="pfc_parroquia">
                                <option value="" disabled selected>Seleccione una opcion de la lista</option>
                                <option value="1">Option 1</option>
                                <option value="2">Option 2</option>
                                <option value="3">Option 3</option>
                            </select>
                            <label>Parroquia</label>
                        </div>
                    </div>
                    <!-- Fin parroquias -->
                    <!-- N# de NNA -->
                    <div class="col-12">
                        <div class="md-form">
                            <i class="fa fa-cogs prefix" aria-hidden="true"></i>
                            <input type="text" id="pfc_num_nna" name="pfc_num_nna" class="form-control">
                            <label for="pfc_num_nna">Nº de NNA en el servicio que proviene de la comunidad a intervenir</label>
                        </div>
                    </div>
                    <!-- Fin N# de NNA -->
                    <!-- N# Familia -->
                    <div class="col-12">
                        <div class="md-form">
                            <i class="fa fa-cogs prefix" aria-hidden="true"></i>
                            <input type="text" id="pfc_num_famila" name="pfc_num_famila" class="form-control">
                            <label for="pfc_num_famila">Nº de familia en el servicio que proviene de la comunidad a intervenir</label>
                        </div>
                    </div>
                    <!-- Fin N# Familia -->
                    <!-- Fecha elaboracion -->
                    <div class="col-12 col-md-6">
                        <div class="md-form">
                            <i class="fa fa-calendar prefix" aria-hidden="true"></i>
                            <input type="text" id="pfc_fecha_plan_elaboracion" name="pfc_fecha_plan_elaboracion" class="form-control">
                            <label for="pfc_fecha_plan_elaboracion">Fecha de elaboración del plan</label>
                        </div>
                    </div>
                    <!-- Fin fecha elaboracion -->
                    <!-- Fecha proximo plan -->
                    <div class="col-12 col-md-6">
                        <div class="md-form">
                            <i class="fa fa-calendar prefix" aria-hidden="true"></i>
                            <input type="text" id="pfc_fecha_plan_evaluacion" name="pfc_fecha_plan_evaluacion" class="form-control">
                            <label for="pfc_fecha_plan_evaluacion">Fecha de la proxima elaboración del plan</label>
                        </div>
                    </div>
                    <!-- Fecha proximo plan -->
                </div>
                <!-- <div class="row card-panel">
                    <div class="col sm12">
                        <p>2.-DIAGNÓSTICO PARTICIPATIVO DE LA COMUNIDAD</p>
                    </div>
                    <div class="col s12">
                        <div class="input-field col s12">
                            <textarea id="pfc_diagnostico" class="materialize-textarea"></textarea>
                            <label for="pfc_diagnostico"></label>
                        </div>
                    </div>
               
                    <div class="col sm12">
                        <p>3.-OBJETIVO GENERAL DEL PLAN</p>
                    </div>
                    <div class="col s12">
                        <div class="input-field col s12">
                            <textarea id="pfc_objetivo_general" class="materialize-textarea"></textarea>
                            <label for="pfc_objetivo_general"></label>
                        </div>
                    </div>
                    <div class="col sm12">
                        <p>3.-OBJETIVO ESPECIFICOS</p>
                    </div>
                    <div class="col s12">
                        <div class="input-field col s12">
                            <textarea id="pfc_objetivo_general" class="materialize-textarea"></textarea>
                            <label for="pfc_objetivo_general"></label>
                        </div>
                    </div>
                </div> -->
                <!-- <div class="row card-panel">
                    <div class="col s12">
                        <p>4.-INTERVENCIÓN</p>
                    </div>
                    <div class="col s12">
                        <table class="striped responsive-table">
                            <thead>
                                <tr>
                                    <th>Metas</th>
                                    <th>Indicadores</th>
                                    <th>Atividades</th>
                                    <th>Tiempos</th>
                                    <th>Recurso</th>
                                    <th>Responsable</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>items</td>
                                    <td>items</td>
                                    <td>items</td>
                                    <td>items</td>
                                    <td>items</td>
                                    <td>items</td>
                                </tr>
                                <tr>
                                    <td>items</td>
                                    <td>items</td>
                                    <td>items</td>
                                    <td>items</td>
                                    <td>items</td>
                                    <td>items</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div> -->
                <!-- <div class="row card-panel">
                    <div class="col s12">
                        <p>5.- SEGUIMIENTO Y EVALUACIÓN</p>
                    </div>
                    <div class="col s12">
                        <table class="striped responsive-table">
                            <caption>
                                <h6>EVALUACIÓN</h6>
                            </caption>
                            <thead>
                                <tr>
                                    <th>Acttvidad</th>
                                    <th>Dificultad</th>
                                    <th>Resultado</th>
                                    <th>Observaciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>items</td>
                                    <td>items</td>
                                    <td>items</td>
                                    <td>items</td>
                                </tr>
                                <tr>
                                    <td>items</td>
                                    <td>items</td>
                                    <td>items</td>
                                    <td>items</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div> -->
                <div class="row">
                    <div class="col s12">
                        <input type="submit" class="btn" value="Guardar Cambios">
                    </div>
            </form>
            </div>
        </div>
    </div>
</div>