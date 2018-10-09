<?php



class pfcController extends tutorasController{
    private $_sql;
    public function __construct(){
        parent::__construct();
        $this->_sql = $this->loadModel("pfc");
    }
    public function index()
    {
        $this->_view->setJs(array("ajax"));
        $this->_view->assign("nina",$this->_sql->nina());
        $this->_view->renderizar("registro","pfc");
    }
    /**
     * FUNCION QUE PERMITE REGITRA UN PLAN DE FORTALECIMIENTO COMUNITARIO
     */
    public function nuevoPfc()
    { 
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            if($this->getInt("guardar") == 1){
                $resp = $this->_sql->nuevoPfc(
                    array(
                        ":nombre"=>$this->getText("nombre"),
                        ":canton"=> $this->getText("canton"),
                        ":parroquia"=>$this->getText("parroquia"),
                        ":num_fami"=>$this->getText("nro_familia"),
                        ":num_nna"=>$this->getText("nro_nna"),
                        ":fecha_elab"=>$this->getText("fecha_elaboracion"),
                        ":fecha_eval"=>$this->getText("fecha_evaluacion"),
                        ":nina"=>$this->getText("diag_part_comunidad")
                    ),
                    array(
                        ":diag_part_comu"=>$this->getText("diag_part_comunidad"),
                        ":obj_gen"=>$this->getText("obj_general"),
                        ":obj_esp"=>$this->getText("obj_especificos")
                    ),
                    $_POST["intervencion"],
                    $_POST["seguimiento"],
                    $_POST["responsable"]
                );
                    
                if (!$resp) {
                    echo false;
                    exit;
                }
                echo true;
                exit;
            }
            
        } else {
            echo "Error Processing Request";
            exit;
        }
    }
}