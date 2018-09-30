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
        $this->_view->assign('nina',$this->_pgf->nina());

        $this->_view->renderizar("nuevo");
    }
    public function nuevopgf()
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH'])&& strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'){
            if($this->getInt('guardar')==1){
                $resp = $this->_pgf->nuevapgf(
                    array(
                        ":descripcion"=>$this->getText('act_descripcion'),
                        ":tiempo"=>$this->getText("act_tiempo"),
                        ":responsable"=>$this->getText("act_responsable"),
                        ":evaluacion"=>$this->getText("act_evaluacion"),
                        ":observaciones"=>$this->getText("act_observaciones"),
                    ),
                    array(
                        ":diagnostico_area"=>$this->getText('diagnostico_area'),
                        ":objetivo_area"=>$this->getText('objetivo_area'),
                        ":evaluacion_global"=>$this->getText('evaluacion_global'),
                    ),
                    array(
                        ":consensuado_familia"=>$this->getText('Consensuado_familia'),
                        ":consensuado_equipo"=>$this->getText('del_equipo')
                    ),
                    array(
                        ":diag_familia"=>$this->getText('diag_familia'),
                        ":diag_equipo"=>$this->getText('diag_equipo')
                    ),
                    array(
                    ":familia"=>$this->getText('familia'),
                    ":etnia"=>$this->getText('etnia'),
                    ":acogimiento"=>$this->getText('causa_acogimiento'),
                    ":fecha_elaboracion"=>$this->getText('fecha_elaboracion'),
                    ":proxima_evaluacion"=>$this->getText('fecha_evaluacion'),
                    ":profesional"=>$this->getText('profesional'),
                    ":cedula"=>$this->getText('cedula'),
                    ":nina"=>$this->getInt('nina')
                    )


                );
                if($resp == 0){
                    echo json_encode(array("error"=>true,"mensaje"=>$resp));
                exit; 
                }
                echo json_encode(array("error"=>false,"mensaje"=>"Exito","id"=>$resp));
                exit; 
            }
        }
        else{
            echo json_encode(array("error"=>true,"mensaje"=>"Ha ocurrido un error no es una peticion xmlhttprequest"));
            exit;
        }
    } 
}