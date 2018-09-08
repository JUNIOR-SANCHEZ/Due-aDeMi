<?php

class pfcController extends tutorasController{

    private $_sql;
 public function __construct(){
  parent::__construct();
    $this->_sql = $this->loadModel('pfc');
 }
 public function index(){
     
    $this->_view->setJS(array('inicializador'));

    $this->_view->assign('cantones',$this->_sql->cantones());

    $this->_view->renderizar('index','tutoras');exit;
    if($this->getInt('guardar') == 1){

       echo "<pre>"; print_r($_POST['metas']);exit;

        if(!$this->getSql('pfc_nombres')){
            $this->_view->assign('post',$_POST);
            $this->_view->assign('error_pfc_nombres','El campo debe ser llenado');
            $this->_view->renderizar('index','tutoras');
            exit;        
        }
        if(!$this->getSql('pfc_apellidos')){
            $this->_view->assign('post',$_POST);
            $this->_view->assign('error_pfc_apellidos','El campo debe ser llenado');
            $this->_view->renderizar('index','tutoras');
            exit;        
        }
        if(!$this->getInt('pfc_canton')){
            $this->_view->assign('post',$_POST);
            $this->_view->assign('error_pfc_canton','Seleccione una opción');
            $this->_view->renderizar('index','tutoras');
            exit;     
        }
        if(!$this->getInt("pfc_parroquia")){
            $this->_view->assign('post',$_POST);
            $this->_view->assign('error_pfc_parroquia','Seleccione un opción');
            $this->_view->renderizar('index','tutoras');
            exit; 
        }
        if($this->getInt("pfc_parroquia")){
            $this->_view->assign('parroquias',$this->_sql->parroquiasId($this->getInt("pfc_parroquia")));
        }
        if(!$this->getSql("pfc_num_nna")){
            $this->_view->assign('post',$_POST);
            $this->_view->assign('error_pfc_num_nna','El campo debe ser llenado');
            $this->_view->renderizar('index','tutoras');
            exit; 
        }
        if(!$this->getSql("pfc_num_famila")){
            $this->_view->assign('post',$_POST);
            $this->_view->assign('error_pfc_num_famila','El campo debe ser llenado');
            $this->_view->renderizar('index','tutoras');
            exit; 
        }
        if(!$this->getSql("pfc_fecha_plan_elaboracion")){
            $this->_view->assign('post',$_POST);
            $this->_view->assign('error_pfc_fecha_plan_elaboracion','El campo debe ser llenado');
            $this->_view->renderizar('index','tutoras');
            exit;
        }
        if(!$this->getSql("pfc_fecha_plan_evaluacion")){
            $this->_view->assign('post',$_POST);
            $this->_view->assign('error_pfc_fecha_plan_evaluacion','El campo debe ser llenado');
            $this->_view->renderizar('index','tutoras');
            exit;
        }
        if(!$this->getSql("pfc_diagnostico")){
            $this->_view->assign('post',$_POST);
            $this->_view->assign('error_pfc_diagnostico','El campo debe ser llenado');
            $this->_view->renderizar('index','tutoras');
            exit;
        }
        if(!$this->getSql("pfc_obj_general")){
            $this->_view->assign('post',$_POST);
            $this->_view->assign('error_pfc_obj_general','El campo debe ser llenado');
            $this->_view->renderizar('index','tutoras');
            exit;
        }
        
        if(!$this->getSql("pfc_obj_especificos")){
            $this->_view->assign('post',$_POST);
            $this->_view->assign('error_pfc_obj_especificos','El campo debe ser llenado');
            $this->_view->renderizar('index','tutoras');
            exit;
        }

        


        // $resp = $this->_sql->addPfc(
        //     $this->getSql("pfc_fecha_plan_elaboracion"),$this->getSql("pfc_fecha_plan_evaluacion"),
        //     $this->getSql("pfc_diagnostico"),$this->getSql("pfc_obj_general"),
        //     $this->getSql("pfc_obj_especificos"),$this->getInt("pfc_parroquia")
        // );
        // if (!$resp) {
        //     $this->_view->assign('post',$_POST);
        //     $this->_view->assign('error_mensaje','Ha ocurrido un error al momento de ingresar los dato.');
        //     $this->_view->renderizar('index','tutoras');
        //     exit;
        // }



        $this->_view->renderizar('index','tutoras');
}
    $this->_view->renderizar('index','tutoras');
 }


 public function parroquias(){

    echo json_encode($this->_sql->parroquias($this->getInt("id")));
 }
 }
