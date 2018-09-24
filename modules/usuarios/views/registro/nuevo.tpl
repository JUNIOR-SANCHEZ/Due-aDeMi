<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-solid">
                <div class="box-header with-border">
                    <h3 class="box-title">REGISTRO DE USUARIOS</h3>
                </div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <form action="{$_layoutParams.root}" method="post">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="from-group">
                                            <label for="">Nombres</label>
                                            <div class="input-group">
                                                <div class="input-group-addon"><i class="fa fa-user"></i></div>
                                                <input type="text" name="nombres" class="form-control" placeholder="Nombres">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="from-group">
                                            <label for="">Apellidos</label>
                                            <div class="input-group">
                                                <div class="input-group-addon"><i class="fa fa-user"></i></div>
                                                <input type="text" name="apellidos" class="form-control" placeholder="Apellidos">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="from-group">
                                            <label for="">Cedula</label>
                                            <div class="input-group">
                                                <div class="input-group-addon"><i class="fa fa-id-card    "></i></div>
                                                <input type="text" name="cedula" class="form-control" placeholder="Cedula"
                                                    required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="from-group">
                                            <label for="">Cargo</label>
                                            <div class="input-group">
                                                <div class="input-group-addon"><i class="fa fa-caret-down    "></i></div>
                                                <select name="rol" id="input" class="form-control" required="required">
                                                    {foreach item=value from=$rol}
                                                    <option value="">{$value['role']}</option>
                                                    {/foreach}
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="from-group">
                                            <label for="">Usuario</label>
                                            <div class="input-group">
                                                <div class="input-group-addon"><i class="fa fa-id-card    "></i></div>
                                                <input type="text" name="nombre_usuario" class="form-control"
                                                    placeholder="Usuario" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="from-group">
                                            <label for="">Contraseña</label>
                                            <div class="input-group">
                                                <div class="input-group-addon"></div>
                                                <input type="password" name="password" class="form-control" placeholder="Contraseña"
                                                    required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="from-group">
                                            <label for="">Email:</label>
                                            <div class="input-group">
                                                <div class="input-group-addon"><i class="fa fa-id-card    "></i></div>
                                                <input type="email" name="correo" class="form-control"
                                                    placeholder="Email" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="margin-top: 10px">
                                        <button type="submit" class="btn btn-success pull-right">Registrar</button>
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