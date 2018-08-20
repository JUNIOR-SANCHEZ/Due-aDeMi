<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class usuariosController extends Controller{
    
    
    public function __construct() {
        parent::__construct();
        $this->_view->setTemplate("administracion");
        
    }
    public function index() {}
}