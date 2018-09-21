<?php

class indexController extends Controller
{

    private $sql;
    public function __construct()
    {
        parent::__construct();
        $this->sql = $this->loadModel('index');

    }

    public function index()
    {
        $this->_view->setCss(array("index"));
        $this->_view->assign("titulo", "Dueña de mi");
        echo $this->sql->tabla('x', 'y',$this->date);
    }

}
