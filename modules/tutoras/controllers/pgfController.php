<?php
class pgfController extends tutorasController
{
    private $_pgf;
    
    public function __construct(){

        parent::__construct();
        $this->_pgf = $this->loadModel('pgf');
    }

    
    public function index(){
        $this->_view->setJs(array('ajax'));
        $area_acomp=$this->push_array($this->_pgf->area_acomp_des_personal(),$this->_pgf->area_acomp_des_social()) ;
        $this->_view->assign('nina',$this->_pgf->nina());
        $this->_view->assign('desarrollo_pers',$area_acomp);
        
        $this->_view->renderizar("nuevo");
    }
    public function nuevopgf()
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH'])&& strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'){
            if($this->getInt('guardar')==1){
                // echo "<pre>";print_r($_POST);
                // exit;
                $resp = $this->_pgf->nuevapgf(
                    array(
                    ":familia"=>$this->getText('familia'),
                    ":etnia"=>$this->getText('etnia'),
                    ":acogimiento"=>$this->getText('causa_acogimiento'),
                    ":fecha_elaboracion"=>$this->getText('fecha_elaboracion'),
                    ":proxima_evaluacion"=>$this->getText('fecha_evaluacion'),
                    ":profesional"=>$this->getText('profesional'),
                    ":cedula"=>$this->getText('cedula'),
                    ":diag_familia"=>$this->getText('diag_familia'),
                    ":diag_equipo"=>$this->getText('diag_equipo'),
                    ":consensuado_familia"=>$this->getText('Consensuado_familia'),
                    ":consensuado_equipo"=>$this->getText('del_equipo'),
                    ":nina"=>$this->getInt('nina')
                    ),
                    $_POST['area']
                );
                if(!$resp){
                    echo false;
                exit; 
                }
                echo true;
                exit; 
            }
        }
        else{
            echo "Ha ocurrido un error no es una peticion xmlhttprequest";
            exit;
        }
    } 
}