<?php

class plandefortalecimientocomunitarioController extends tutorasController{

 public function __construct(){
  parent::__construct();
 }
 public function index(){
    
    if($this->getInt('guardar') == 1){
        if(!$this->getSql('pfc_nombres')){
            $this->_view->assign('error',"Debe ingresar el nombre");
            $this->_view->renderizar('index','tutora');
            exit;        
        }
    }


    $this->_view->renderizar('index','tutora');
 }
 }
