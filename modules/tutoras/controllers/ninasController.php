<?php

class ninasController extends tutorasController
{
    # DECLARAMOS EL ATRIBUTO _NINA
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
        # INSTANCIAMOS LA LIBRERIA CLASS.PAGINADOR.PHP
        $paginador = new Paginador();
        # ENVIAMOS DATOS DE LA NIÑAS REGISTRADAS
        $this->_view->assign('ninas', $paginador->paginar($this->_nina->mostraNinas(),false, 5));
        # ENVIAMOS LA PAGINACION
        $this->_view->assign('paginador', $paginador->getView('paginacion_ajax'));
        # LLAMAMOS LA VISTA REGISTRO DE LA CARPETA NINAS
        $this->_view->renderizar("registro", "ninas");
    }
    public function viewNina()
    {
        /**
         * VERIFICAMOS SI SE A ENVIADO UNA PETICION VIA AJAX
         * EN CASO NO SE HAIGA ENVIADO MOSTRARA UN MENSAJE DE ERROR
         */
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            # OBTENEMOS EL NUMERO DE PAGINA DEL PAGINADOR
            $pagina = $this->getInt('pagina');
            # MUESTRA LOS DATOS DE LAS NIÑAS INGRESADAS
            $paginador = new Paginador();
            # ENVIAMOS DATOS DE LA NIÑAS REGISTRADAS
            $this->_view->assign('ninas', $paginador->paginar($this->_nina->mostraNinas(), $pagina, 5));
            # ENVIAMOS LA PAGINACION
            $this->_view->assign('paginador', $paginador->getView('paginacion_ajax'));
            # RENDERIZAMOS LA VISTA QUE MOSTRARA EL CONTENIDO DE LA PAGINA
            $this->_view->renderizar("viewAjax/registro", false, true);
        } else {
            throw new Exception("Error Processing Request", 1);
        }

    }

    public function nuevaNina()
    {
        /**
         * VERIFICAMOS SI SE A ENVIADO UNA PETICION VIA AJAX
         * EN CASO NO SE HAIGA ENVIADO MOSTRARA UN MENSAJE DE ERROR
         */
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            # VERIFICAMOS SI SE HA ENVIADO POR POST EL CAMPO GUARDAR CON VALOR 1
            if ($this->getInt('guardar') == 1) {
                /**
                 * VERIFICAMO SI NO EXITE EL ENVIO DE ARCHIVO Y COMPROBAMOS SI EL ENVIO CONTIENE UN ERROR
                 * EN SER EL CASO INGRESAMOS A LA CONDICION PARA MOSTRAR UN MENSAJE CON EL NUMERO DE ERRO
                 * QUE CONTIENE EL ARCHIVO
                 */
                if (!isset($_FILES) || $_FILES['archivo']['error'] > 0) {
                    echo "Error" . $_FILES['archivo']['error'];
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
                    echo "Error no se cargo el archivo";
                    exit;
                }
                # REGISTRAMOS LOS DATOS ENVIADO DESDE EL FORMULARIO EN LA TABLA NINA
                $response = $this->_nina->nuevaNina(
                    $this->getText('nombres'),
                    $this->getText('apellidos'),
                    $this->getText('cedula'),
                    $this->getText('phone'),
                    $this->getText('email'),
                    $name
                );
                /**
                 * COMPROBAMOS SI SE A INGRESADO CORRECTAMENTE LOS DATOS EN CASO DE QUE OCURRA UN ERROR
                 * INGRSARA A LA CONDICION Y MOSTRARA EL MENSAJE
                 */
                if (!$response) {
                    echo "Ha ocurrido un erroral al ingresar.";
                    exit;
                }
                echo "Se registro con exito";
            }

        } else {
            throw new Exception("Error Processing Request", 1);
        }
    }

}
