<?php

class painaController extends tutorasController
{
    private $_paina;
    public function __construct()
    {
        parent::__construct();

        $this->_paina = $this->loadModel('paina');
    }

    public function index()
    {
        $this->_view->setJs(array("ajax"));
        $this->_view->assign('nina',$this->_paina->nina());
        $area_acomp=$this->push_array($this->_paina->area_acomp_des_personal(),$this->_paina->area_acomp_des_social()) ;
        $this->_view->assign('nina',$this->_paina->nina());
        $this->_view->assign('desarrollo_pers',$area_acomp);
        $this->_view->renderizar("registro");

    }

    public function nuevo_paina()
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            if ($this->getInt('guardar') == 1) {
                // echo "<pre>";print_r($_POST);
                // exit;
                $resp = $this->_paina->nuevo_paina(
                    array(
                        ":familia" => $this->getText('familia'),
                        ":etnia" => $this->getText('etnia'),
                        ":acogimiento" => $this->getText('causa_acogimiento'),
                        ":fecha_elaboracion" => $this->getText('fecha_elaboracion'),
                        ":proxima_evaluacion" => $this->getText('fecha_evaluacion'),
                        ":profesional" => $this->getText('profesional'),
                        ":cedula" => $this->getText('cedula'),
                        ":obj_general" => $this->getText('obj_general'),
                        ":nina" => $this->getInt('nina')
                    ),
                    $_POST['area']
                );
                if (!$resp) {
                    echo false;
                    exit;
                }
                echo true;
                exit;
            }
        } else {
            echo "Ha ocurrido un error no es una peticion xmlhttprequest";
            exit;
        }
    }

}
