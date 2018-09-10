<?php

class pfcController extends tutorasController
{

    private $_sql;
    public function __construct()
    {
        parent::__construct();
        $this->_sql = $this->loadModel('pfc');
    }
    public function index()
    {
        $this->_view->setJS(array('inicializador'));
        if ($this->getInt('guardar') == 1) {
            // $resp = $this->_sql->addPfc(
            //     $this->getSql("pfc_fecha_plan_elaboracion"), $this->getSql("pfc_fecha_plan_evaluacion"),
            //     $this->getSql("pfc_diagnostico"), $this->getSql("pfc_obj_general"),
            //     $this->getSql("pfc_obj_especificos"), $this->getInt("pfc_parroquia")
            // );
            // if (!isset($resp["id"]) || $resp["id"] == 0) {
            //     $this->_view->assign('post', $_POST);
            //     $this->_view->assign('error_mensaje', 'Ha ocurrido un error al momento de ingresar los dato.');
            //     $this->_view->renderizar('index', 'tutoras');
            //     exit;
            // }

            for ($i = 1; $i <= $this->getInt("num-intervenciones"); $i++):
                $this->_sql->addIntervenciones(
                    $this->getText("metas-" . $i),
                    $this->getText("indicadores-" . $i),
                    $this->getText("actividades-" . $i),
                    $this->getText("tiempos-" . $i),
                    $this->getText("recursos-" . $i),
                    $this->getText("responsables-" . $i),
                    23
                );

            endfor;
            for ($i = 1; $i <= $this->getInt("num-intervenciones"); $i++):
                $this->_sql->addSeguimientosEvaluaciones(
                    $this->getText("actividad-"),
                    $this->getText("dificultad-"),
                    $this->getText("resultado-"),
                    $this->getText("observaciones-"),
                    23
                );
            endfor;

            $this->redireccionar('tutoras/PFC');
        }
        $this->_view->renderizar('index', 'tutoras');
    }

    public function parroquias()
    {

        echo json_encode($this->_sql->parroquias($this->getInt("id")));
    }
    private function condicionesPFC()
    {
        if (!$this->getSql('pfc_nombres')) {
            $this->_view->assign('post', $_POST);
            $this->_view->assign('error_pfc_nombres', 'El campo debe ser llenado');
            $this->_view->renderizar('index', 'tutoras');
            exit;
        }
        if (!$this->getSql('pfc_apellidos')) {
            $this->_view->assign('post', $_POST);
            $this->_view->assign('error_pfc_apellidos', 'El campo debe ser llenado');
            $this->_view->renderizar('index', 'tutoras');
            exit;
        }
        if (!$this->getInt('pfc_canton')) {
            $this->_view->assign('post', $_POST);
            $this->_view->assign('error_pfc_canton', 'Seleccione una opción');
            $this->_view->renderizar('index', 'tutoras');
            exit;
        }
        if (!$this->getInt("pfc_parroquia")) {
            $this->_view->assign('post', $_POST);
            $this->_view->assign('error_pfc_parroquia', 'Seleccione un opción');
            $this->_view->renderizar('index', 'tutoras');
            exit;
        }
        if ($this->getInt("pfc_parroquia")) {
            $this->_view->assign('parroquias', $this->_sql->parroquiasId($this->getInt("pfc_parroquia")));
        }
        if (!$this->getSql("pfc_num_nna")) {
            $this->_view->assign('post', $_POST);
            $this->_view->assign('error_pfc_num_nna', 'El campo debe ser llenado');
            $this->_view->renderizar('index', 'tutoras');
            exit;
        }
        if (!$this->getSql("pfc_num_famila")) {
            $this->_view->assign('post', $_POST);
            $this->_view->assign('error_pfc_num_famila', 'El campo debe ser llenado');
            $this->_view->renderizar('index', 'tutoras');
            exit;
        }
        if (!$this->getSql("pfc_fecha_plan_elaboracion")) {
            $this->_view->assign('post', $_POST);
            $this->_view->assign('error_pfc_fecha_plan_elaboracion', 'El campo debe ser llenado');
            $this->_view->renderizar('index', 'tutoras');
            exit;
        }
        if (!$this->getSql("pfc_fecha_plan_evaluacion")) {
            $this->_view->assign('post', $_POST);
            $this->_view->assign('error_pfc_fecha_plan_evaluacion', 'El campo debe ser llenado');
            $this->_view->renderizar('index', 'tutoras');
            exit;
        }
        if (!$this->getSql("pfc_diagnostico")) {
            $this->_view->assign('post', $_POST);
            $this->_view->assign('error_pfc_diagnostico', 'El campo debe ser llenado');
            $this->_view->renderizar('index', 'tutoras');
            exit;
        }
        if (!$this->getSql("pfc_obj_general")) {
            $this->_view->assign('post', $_POST);
            $this->_view->assign('error_pfc_obj_general', 'El campo debe ser llenado');
            $this->_view->renderizar('index', 'tutoras');
            exit;
        }

        if (!$this->getSql("pfc_obj_especificos")) {
            $this->_view->assign('post', $_POST);
            $this->_view->assign('error_pfc_obj_especificos', 'El campo debe ser llenado');
            $this->_view->renderizar('index', 'tutoras');
            exit;
        }
    }
}
