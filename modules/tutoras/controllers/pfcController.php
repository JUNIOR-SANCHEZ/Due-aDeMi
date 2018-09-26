<?php

class pfcController extends tutorasController{
    public function __construct(){
        parent::__construct();
    }
    public function index()
    {
        $this->_view->renderizar("registro","pfc");
    }
}