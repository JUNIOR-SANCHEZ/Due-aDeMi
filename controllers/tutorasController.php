<?php

class tutorasController extends Controller {
    public function __construct()
    {
        parent::__construct();
        if (!Session::get("autenticado") && !Session::get("level")) {
            $this->redireccionar("usuarios/login");
        }
    }

    public function index(){}
}