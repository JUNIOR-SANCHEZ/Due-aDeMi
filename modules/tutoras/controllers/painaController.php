<?php
class painaController extends tutorasController
{
    private $_paina;
    public function __construct(){
        parent::__construct();
        //instancia para llamar el objeto
        $this->_paina = $this->loadModel('paina');
    }
    public function index(){
        $this->_view->setJs(array('ajax'));
        $this->_view->renderizar("nuevo");
    }
    public function nuevapaina()
    {
        if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH'])== 'xmlhttprequest'){
            if($this->getInt('guardar') == 1 ){
               $this->_paina-> nuevapaina(
                   $this->getText('padres'),
                   $this->getText('etnia'),
                   $this->getText('acogimiento'),
                   $this->getText('elaboracion'),
                   $this->getText('evaluacion'),
                   $this->getText('profesion'),
                   $this->getText('cedula'),
                   $this->getText('nina')
               );
            }
        
        }
        else{
            echo json_encode (array("error"=>true,"mensaje"=>"ha ocurrido un error no es una peticion xmlhttprequest"));
            exit;
        }
    }
}