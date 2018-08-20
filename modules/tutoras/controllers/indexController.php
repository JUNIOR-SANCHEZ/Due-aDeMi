<?php

class indexController extends tutorasController {
    public function __construct(){
        parent::__construct();
    }

    public function index(){

        $this->_view->renderizar('index','tutoras');

    }
}