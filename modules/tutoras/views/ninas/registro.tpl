<div class="content">
    <!-- row 1 -->
    <div class="row">
        <!-- col 1 -->
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    <div class="mensaje">

                    </div>
                </div>
            </div>
            <!-- panel -->
            <div class="panel">
                <div class="panel-heading text-center">
                    <h2>FICHA DE INGRESO DE LA NIÑA O ADOLECENTE</h2>
                </div>
                <!-- panel-body -->
                <div class="panel-body">
                    <!-- row 1-->
                    <form action="{$_layoutParams.root}tutoras/ninas/nuevaNina" method="POST" enctype="multipart/form-data"
                        id="form-ninas">
                        <input type="hidden" name="guardar" value="1">
                        <div class="row" style="margin-bottom: 1rem;">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-user"></i>
                                        </div>
                                        <input type="text" name="nombres" placeholder="Nombres" class="form-control"
                                            required>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-md-4">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-user"></i>
                                        </div>
                                        <input type="text" name="apellidos" placeholder="Apellidos" class="form-control"
                                            required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-address-card"></i>
                                        </div>
                                        <input type="text" name="cedula" placeholder="Cedula" class="form-control" required>
                                    </div>
                                </div>
                            </div>
                        <!-- </div> -->
                        <!-- row 1-->
                        <!-- row 2 -->
                        <!-- <div class="row"> -->
                            <div class="col-md-4">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-phone"></i>
                                        </div>
                                        <input type="text" name="phone" class="form-control" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-at"></i>
                                        </div>
                                        <input type="email" name="email" placeholder="Email" class="form-control" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-file"></i>
                                        </div>
                                        <input type="file" name="archivo" class="form-control" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- row 2 -->
                        <div class="row" style="margin-bottom: 1rem;">
                            <div class="col-md-3">
                                <button type="submit" class="btn btn-primary">Guardar</button>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- panel-body -->
            </div>
            <!-- panel 1-->
            <!-- panel 2 -->
            <div class="panel panel-primary">
                <div class="panel-heading text-center">
                    <div class="row">
                        <div class="col-md-8">
                            <h4><strong>LISTA DE FICHAS DE INGRESO DE NIÑA Y ADOLECENTE</strong></h4>
                        </div>
                        <div class="col-md-4">
                            <form action="" method="post">
                                <div class="input-group">
                                    <input type="text" name="" class="form-control">
                                    <div class="input-group-btn">
                                        <button type="submit" class="btn btn-info"><i class="fa fa-search"></i></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div id="contenedor">
                    <div class="panel-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>DOCUMENTO DE ID</th>
                                    <th>NOMBRES Y APELLIDOS</th>
                                    <th>TELEFONO</th>
                                    <th>EMAIL</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach item=item from=$ninas}
                                <tr>
                                    <td>{$item['cedula']}</td>
                                    <td>{$item['apellidos']} {$item['nombres']}</td>
                                    <td>{$item['telefono']}</td>
                                    <td>{$item['email']}</td>
                                    <td>
                                        <a href="{$_layoutParams.root}" class="btn btn-warning"><i class="fa fa-edit"></i></a>
                                        <a href="{$_layoutParams.root}" class="btn btn-success"><i class="fa fa-download"></i></a>
                                        <a href="{$_layoutParams.root}" class="btn btn-danger"><i class="fa fa-trash"></i></a>
                                    </td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                        <center>{if isset($paginador)}{$paginador}{/if}</center>
                    </div>
                </div>
            </div>


        </div>
        <!-- col 1 -->
    </div>
    <!-- row 1 -->
</div>