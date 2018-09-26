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
        if(!$this->_acl->permiso("add_nina")){$this->redireccionar();}
        # HACEMOS USO DEL ARCHIVO AJAX.JS
        $this->_view->setJs(array('ajax', 'img'));
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
                $upload = new file($_FILES['foto']);
                if ($upload->uploaded) {
                    $ruta = ROOT . "public" . DS . "img" . DS . "nina" . DS;
                    $upload->file_new_name_body = 'upl_' . uniqid();
                    $upload->process($ruta);
                    if ($upload->processed) {
                        $result = $this->_nina->nuevaNina(
                            $this->date,
                            $this->getText("nombres"),
                            $this->getText("apellidos"),
                            $this->getText("lugar_nacimiento"),
                            $this->getText("fecha_nacimiento"),
                            $upload->file_name_body,
                            $this->getText("cedula"),
                            $this->getText("phone"),
                            $this->getText("direccion"),
                            $this->getText("tipo-medida"),
                            $this->getText('num-medida'),
                            $this->getText('fecha-medida'),
                            $this->getText('nombre_solicitud')) . "<pre>";

                        if ($result == 0) {
                            echo json_encode(array("error" => true, "mensaje" => "Ha ocurrido un error al ingresar dato"));
                            exit;
                        }
                        echo json_encode(array("error" => false, "mensaje" => "Datos registrados", "id" => $result));
                        exit;

                    } else {
                        echo json_encode(array("error" => true, "mensaje" => $upload->error));
                    }
                }

            }

        } else {
            echo json_encode(array("error" => true, "mensaje" => "Error Processing Request"));
        }
    }
    public function nuevoInformante()
    {

        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            if ($this->getInt('guardar') == 1) {
                $resp = $this->_nina->nuevoInformante(
                    $this->getText("nombres"),
                    $this->getText("apellidos"),
                    $this->getText("direccion"),
                    $this->getText("phone"),
                    $this->getText("institucion"),
                    $this->getText("documento"),
                    $this->getInt("nina")
                );
                if ($resp == 0) {
                    echo json_encode(array("error" => true, "mensaje" => "Ha ocurrido un error al ingresar los datos"));
                    exit;
                }
                echo json_encode(array("error" => false, "mensaje" => "Se a rregistrado con exito"));
                exit;
            }
        } else {
            echo json_encode(array("error" => true, "mensaje" => "Error Processing Request"));
            exit;
        }
    }
    public function nuevaDescripcion()
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            if ($this->getInt('guardar') == 1) {
                $resp = $this->_nina->nuevoDescripcion(
                    $this->getText("vestimenta"),
                    $this->getText("salud"),
                    $this->getText("maltrato-fisico"),
                    $this->getText("pertenencias"),
                    $this->getText("observaciones-generales"),
                    $this->getInt("nina")
                );
                if ($resp == 0) {
                    echo json_encode(array("error" => true, "mensaje" => "Ha ocurrido un error al ingresar los datos"));
                    exit;
                }
                echo json_encode(array("error" => false, "mensaje" => "Se a rregistrado con exito"));
                exit;
            }
            echo json_encode(array("error" => false, "mensaje" => "No se a enviado guradar"));
            exit;
        } else {
            echo json_encode(array("error" => true, "mensaje" => "Error Processing Request"));
            exit;
        }
    }

}
