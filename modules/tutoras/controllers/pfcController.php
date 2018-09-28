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
    public function nuevoPfc()
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            if($this->getInt("guardar") == 1){
                $resp = $this->_sql->nuevoPfc(
                    $this->getText("fecha_elaboracion"),
                    $this->getText("fecha_evaluacion"),
                    $this->getText("nina"),
                    $this->getText("nombre"),
                    $this->getText("canton"),
                    $this->getText("parroquia"),
                    $this->getText("nro_familia"),
                    $this->getText("nro_nna"));
                if ($resp == 0) {
                    echo json_encode(array("error" => true, "mensaje" => $resp));
                    exit;
                }
                echo json_encode(array("error" => false, "mensaje" => "Se a rregistrado con exito","id"=>$resp));
                exit;
            }
        } else {
            echo json_encode(array("error" => true, "mensaje" => "Error Processing Request"));
            exit;
        }
    }
}