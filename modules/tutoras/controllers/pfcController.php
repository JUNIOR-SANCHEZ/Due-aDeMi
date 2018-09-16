<?php
class pfcController extends tutorasController
{
    private $_pfc;
    public function __construct()
    {
        parent::__construct();
        $this->_pfc = $this->loadModel('pgf');
    }
    /**
     * MUESTRO EN LA APLICACION LA VISTA NUEVO, DEL PFC
     */
    public function index()
    {
        # INCLUIMOS LOS ARCHOS JS DE LA VISTA
        $this->_view->setJs(array('ajax'));
        # INSTANCIAMOS LA CLASE PAGINADOR DE LA LIBRERIA CLASS.PAGINADOR.PHP
        $paginador = new Paginador();
        # ENVIAMOS LOS REGISTROS DE LA TABLA NINAS A LA VISTA
        $this->_view->assign('ninas', $this->_pfc->mostrarNinas());
        # ENVIAMOS LLOS REGISTROS DE LA TABLA PFC A LA VISTA UTILIANDO LA PAGINACION
        $this->_view->assign('pfc', $paginador->paginar($this->_pfc->mostrarDoc(), false, 5));
        # ENVIAMOS LA PAGINACION
        $this->_view->assign('paginador', $paginador->getView('paginacion_ajax'));
        # LLAMAMOS LA VISTA A PRESENTAR EN LA APLICACION
        $this->_view->renderizar('nuevo', 'pcf');
    }
    /**
     * ESTA VISTA SE MUESTRA DENTRO DE UN DIV CONTENEDOR QUE SE ENCUENTRA LA VISTA NUEVO
     * SE UTILIZA PARA MOSTRAR LOS DATOS REGISTRADOS DEL PFC DE ACUERDO AL NUMERO DE PAGINA
     * ENVIADA POR POST (AJAX)
     */
    public function viewDocAjax()
    {
        /**
         * VERIFICAMOS SI SE A ENVIADO UNA PETICION VIA AJAX
         * EN CASO NO SE HAIGA ENVIADO MOSTRARA UN MENSAJE DE ERROR
         */
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            # OBTENEMOS EL NUMERO DE PAGINA DEL PAGINADOR
            $pagina = $this->getInt('pagina');
            #
            $buscar = "";
            if(!empty($this->getText('buscar'))){
                $buscar = $this->getText('buscar');
            }
            # MUESTRA LOS DATOS DE LAS NIÑAS INGRESADAS
            $paginador = new Paginador();
            # ENVIAMOS LLOS REGISTROS DE LA TABLA PFC A LA VISTA UTILIZANDO LA PAGINACION
            $this->_view->assign('pfc', $paginador->paginar($this->_pfc->mostrarDoc($buscar), $pagina, 5));
            # ENVIAMOS LA PAGINACION
            $this->_view->assign('paginador', $paginador->getView('paginacion_ajax'));
            # RENDERIZAMOS LA VISTA QUE MOSTRARA EL CONTENIDO DE LA PAGINA
            $this->_view->renderizar("viewAjax/nuevo", false, true);
        } else {
            throw new Exception("Error Processing Request", 1);
        }
    }
    /**
     * PERMITE REGISTRAR UN NUEVO PFC (AJAX)
     */
    public function nuevo()
    {
        /**
         * VERIFICAMOS SI SE A ENVIADO UNA PETICION VIA AJAX
         * EN CASO NO SE HAIGA ENVIADO MOSTRARA UN MENSAJE DE ERROR
         */
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            # VERIFICAMOS SI SE HA ENVIADO POR POST EL CAMPO GUARDAR CON VALOR 1
            if ($this->getInt('guardar') == 1) {
                /**
                 * VERIFICAMOS SI NO EXITE EL ENVIO DE ARCHIVO Y COMPROBAMOS SI EL ENVIO CONTIENE UN ERROR
                 * EN SER EL CASO INGRESAMOS A LA CONDICION PARA MOSTRAR UN MENSAJE CON EL NUMERO DE ERRO
                 * QUE CONTIENE EL ARCHIVO
                 */
                if (!isset($_FILES) || $_FILES['archivo']['error'] > 0) {
                    echo json_encode(array('error' => true, 'mensaje' => 'ERROR.'));
                    exit;
                }
                # GUARDAMOS EL NOMBRE TEMPORAL DEL ARCHIVO
                $tmp = $_FILES['archivo']['tmp_name'];
                # GUARDAMOS EL NOMBRE DEL ARCHIVO
                $name = $_FILES['archivo']['name'];
                # CREAMOS LA RUTA EN DONDE MOVEREMOS EL ARCHIVO
                $url = ROOT . "public" . DS . "file" . DS . "pdf" . DS . $name;
                # MOVEMOS EL ARCHIVO AL SERVIDOR
                move_uploaded_file($tmp, $url);
                /**
                 * VERIFICAMOS SI LA RUTA NO EXITE ENCASO DE SER CIERTO INGRESAMOS EN LA CONDICION PARA
                 * MOSTRA UN MENSAJE
                 */
                if (!is_readable($url)) {
                    echo json_encode(array('error' => true, 'mensaje' => 'NO SE CARGO EL ARCHIVO.'));
                    exit;
                }
                # REGISTRAMO LOS DATOS ENVIADOS DESDE EL FORMULARIO EN LA TABLA PFC
                $response = $this->_pfc->nuevoDoc(
                    $this->getText('elaboracion'),
                    $this->getText('evaluacion'),
                    $this->getInt('nina'),
                    $name
                );
                /**
                 * COMPROBAMOS SI SE A INGRESADO CORRECTAMENTE LOS DATOS EN CASO DE QUE OCURRA UN ERROR
                 * INGRSARA A LA CONDICION Y MOSTRARA EL MENSAJE
                 */
                if (!$response) {
                    echo json_encode(array('error' => true, 'mensaje' => 'HA OCURRIDO UN ERROR AL MOMENTO DE INGRESAR LOS DATOS.'));
                    exit;
                }
                echo json_encode(array('error' => false, 'mensaje' => 'SE HA REGISTRADO CON EXITO.'));
                exit;
            }
        } else {
            echo json_encode(array('error' => true, 'mensaje' => 'LOS DATOS DEBEN SER ENVIADOS POR HTTPREQUEST.'));
            exit;
        }
    }
    /**
     * PERMITE ELIMINAR UN REGISTRO DEL PFC LA CUAL SE LE PASA UN PARAMETRO
     * POR GET (ID) (AJAX)
     */
    public function eliminar(int $id)
    {
        /**
         * VERIFICAMOS SI SE A ENVIADO UNA PETICION VIA AJAX
         * EN CASO NO SE HAIGA ENVIADO MOSTRARA UN MENSAJE DE ERROR
         */
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            if ($this->_pfc->eliminarDoc($id)) {
                sleep(1);
                echo json_encode(array('error' => false, 'mensaje' => 'SE A ELIMINADO EL REGISTRO.'));
                exit;
            } else {
                echo json_encode(array('error' => true, 'mensaje' => 'HA OCURRIDO UN ERROR AL ELIMINAR EL REGISTRO.'));
                exit;
            }
        }
    }
    /**
     * PERMITE LA DESCARGA DE ARCHIVOS SUBIDOS AL SERVIDOR
     */
    public function descarga()
    {
        $img = $this->getText('img');
        $file = file(BASE_URL . 'public/file/pdf/' . $img);
        $file2 = implode('', $file);
        $ext = explode('.', $img);
        $type = $ext[1];
        header('Content-Type: application/octet-stream');
        header('Content-Disposition: attachment; filename=plan-de-frortalecimiento-comunitario.' . $type);
        echo $file2;
    }
    /**
     * OBTIENE UN REGISTRO DEL PFC ENVIANDO UN ID
     * POR GET (AJAX)
     */
    public function viewId(int $id)
    {
        /**
         * VERIFICAMOS SI SE A ENVIADO UNA PETICION VIA AJAX
         * EN CASO NO SE HAIGA ENVIADO MOSTRARA UN MENSAJE DE ERROR
         */
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            echo json_encode($this->_pfc->mostrarDocId($id));
        } else {
            echo json_encode(array('error' => true, 'LOS DATOS NO SE AN ENVIADO POR METODO XMLHTTPREQUEST'));
        }
    }
    /**
     * PERMITE EDITAR UN REGISTRO DEL PFC 
     * 
     */
    public function editar()
    {
        /**
         * VERIFICAMOS SI SE A ENVIADO UNA PETICION VIA AJAX
         * EN CASO NO SE HAIGA ENVIADO MOSTRARA UN MENSAJE DE ERROR
         */
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            if ($this->getInt('update') == 1) {
                if ($_FILES['archivo']['error'] == 4) {
                    $response = $this->_pfc->editarDoc(
                        $this->getText('elaboracion'),
                        $this->getText('evaluacion'),
                        $this->getInt('nina'),
                        $this->getInt('id')
                    );
                    /**
                     * COMPROBAMOS SI SE A INGRESADO CORRECTAMENTE LOS DATOS EN CASO DE QUE OCURRA UN ERROR
                     * INGRSARA A LA CONDICION Y MOSTRARA EL MENSAJE
                     */
                    if (!$response) {
                        echo json_encode(array('error' => true, 'mensaje' => 'HA OCURRIDO UN ERROR AL MOMENTO DE EDITAR EL REGISTRO.'));
                        exit;
                    }
                    sleep(2);
                    echo json_encode(array('error' => false, 'mensaje' => 'SE HA ACTUALIZADO CON EXITO.'));
                    exit;

                } else {
                    /**
                     * VERIFICAMOS SI NO EXITE EL ENVIO DE ARCHIVO Y COMPROBAMOS SI EL ENVIO CONTIENE UN ERROR
                     * EN SER EL CASO INGRESAMOS A LA CONDICION PARA MOSTRAR UN MENSAJE CON EL NUMERO DE ERRO
                     * QUE CONTIENE EL ARCHIVO
                     */
                    if (!isset($_FILES) || $_FILES['archivo']['error'] > 0) {
                        echo json_encode(array('error' => true, 'mensaje' => 'ERROR.'));
                        exit;
                    }
                    # GUARDAMOS EL NOMBRE TEMPORAL DEL ARCHIVO
                    $tmp = $_FILES['archivo']['tmp_name'];
                    # GUARDAMOS EL NOMBRE DEL ARCHIVO
                    $name = $_FILES['archivo']['name'];
                    # CREAMOS LA RUTA EN DONDE MOVEREMOS EL ARCHIVO
                    $url = ROOT . "public" . DS . "file" . DS . "pdf" . DS . $name;
                    # MOVEMOS EL ARCHIVO AL SERVIDOR
                    move_uploaded_file($tmp, $url);
                    /**
                     * VERIFICAMOS SI LA RUTA NO EXITE ENCASO DE SER CIERTO INGRESAMOS EN LA CONDICION PARA
                     * MOSTRA UN MENSAJE
                     */
                    if (!is_readable($url)) {
                        echo json_encode(array('error' => true, 'mensaje' => 'NO SE CARGO EL ARCHIVO.'));
                        exit;
                    }
                    $response = $this->_pfc->editarDocAll(
                        $this->getText('elaboracion'),
                        $this->getText('evaluacion'),
                        $this->getInt('nina'),
                        $this->getInt('id'),
                        $name
                    );
                    /**
                     * COMPROBAMOS SI SE A INGRESADO CORRECTAMENTE LOS DATOS EN CASO DE QUE OCURRA UN ERROR
                     * INGRSARA A LA CONDICION Y MOSTRARA EL MENSAJE
                     */
                    if (!$response) {
                        echo json_encode(array('error' => true, 'mensaje' => 'HA OCURRIDO UN ERROR AL MOMENTO DE INGRESAR LOS DATOS.'));
                        exit;
                    }
                    sleep(2);
                    echo json_encode(array('error' => false, 'mensaje' => 'SE HA ACTUALIZADO CON EXITO.'));
                    exit;
                }
            }
        }

    }
}
