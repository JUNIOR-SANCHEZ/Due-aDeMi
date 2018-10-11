<?php
class certificadoController extends tutorasController
{
    public function __construct(){
        parent::__construct();
    }
    public function index(){
        $this->_view->renderizar("otro");
    }
}