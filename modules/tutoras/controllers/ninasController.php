<?php

class ninasController extends tutorasController
{
    /**
     * DECLARAMOS EL ATRIBUTO QUE CONTENDRA EL OBJETO DE LA CLASE ninasModel PARA
     * REALIZAR LA GESTIONES DE LA BASE DE DATO
     */

    private $_nina;
    public function __construct()
    {
        # LLAMADA AL METODO CONSTRUCTOR DE LA CLASE PADRE
        parent::__construct();
        # INSTANCIAMOS LA CLASE NINASMODEL EN EL ATRIBUTO _NINA
        $this->_nina = $this->loadModel('ninas');
    }
    public function index()
    {
        # HACEMOS USO DEL ARCHIVO AJAX.JS
        $this->_view->setJs(array('ajax'));
        $this->_view->renderizar("registro", "ninas");
    }

    public function nuevaNina()
    {
        /**
         * VERIFICAMOS SI SE A ENVIADO UNA PETICION VIA AJAX
         * EN CASO NO SE HAYA ENVIADO MOSTRARA UN MENSAJE DE ERROR
         */
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            # VERIFICAMOS SI SE HA ENVIADO POR POST EL CAMPO GUARDAR CON VALOR 1
             
            if ($this->getInt('guardar') == 1) {
                 $imagen = '';
                if (isset($_FILES['foto']['name']) ) {
                    $upload = new upload($_FILES['foto']);
                    $ruta = ROOT . "public" . DS . "img" . DS . "nina" . DS;
                    $upload->allowed = array('image/*',);
                    $upload->file_new_name_body = 'upl_' . uniqid();
                    $upload->process($ruta);

                    if($upload->processed){
                        $imagen = $upload->file_dst_name;
                        $thumb = new upload($upload->file_dst_pathname);
                        $thumb->image_resize = true;
                         $thumb->image_x = 100;
                        $thumb->image_y = 100;
                        $thumb->file_name_body_pre = "thumb_";
                        $upload->process($ruta . "thumb" . DS);

                    }else{
                        echo json_encode(array("error"=>true,"mensaje"=>$upload->error));
                    }
                }
                 $result =  $this->_nina->nuevaNina(
                    $this->date,
                    $this->getText("nombres"),
                    $this->getText("apellidos"),
                    $this->getText("lugar_nacimiento"),
                    $this->getText("fecha_nacimiento"),
                    $imagen,
                    $this->getText("cedula"),
                    $this->getText("phone"),
                    $this->getText("direccion"),
                    $this->getText("tipo-medida"),
                    $this->getText('num-medida'),
                    $this->getText('fecha-medida'),
                    $this->getText('nombre_solicitud'))."<pre>";

                if($result == 0){
                    echo json_encode(array("error"=>true,"mensaje"=>"Ha ocurrido un error al ingresar dato"));
                    exit;
                }
                echo json_encode(array("error"=>true,"mensaje"=>"Datos registrados"));
                exit;
            }

        } else {
            echo json_encode(array("error"=>true,"mensaje"=>"Error Processing Request"));
        }
    }

}
