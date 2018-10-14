<?php

class indexController extends Controller
{
    public function __construct()
    {
        parent::__construct();
        if(!Session::get("autenticado")){
            $this->redireccionar("usuarios/login/cerrar");
        }
    }
    public function index()
    {
        $this->_view->assign("titulo", "Duena de mi");
        $this->_view->renderizar("index");
    }
}
