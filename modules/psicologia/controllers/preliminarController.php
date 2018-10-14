<?php

class preliminarController extends psicologiaController
{
    private $_sql;
    public function __construct()
    {
        parent::__construct();
        $this->_sql = $this->loadModel("preliminar");
    }
    public function index()
    {
        $this->_view->setJs(array("ajax"));
        $this->_view->assign("ninas", $this->_sql->nina());

        $this->_view->renderizar("nuevo");

    }
    
    public function nuevo_archivo()
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            if ($this->getInt("guardar") == 1) {
                // echo "<pre>"; print_r($_POST);print_r($_FILES);exit;
                $upload = new file($_FILES['documento']);
                if ($upload->uploaded) {
                    $ruta = ROOT . "public" . DS . "file" . DS . "psicologia" . DS;
                    $upload->file_new_name_body = 'upl_' . uniqid();
                    $upload->process_doc($ruta);
                    if ($upload->processed) {
                        
                        $resp = $this->_sql->nuevo_preliminar(array(
                            ":fecha" => date("Y/m/d", strtotime($this->getText('elaboracion'))),
                            ":documento" => $upload->file_name_body,
                            ":obser" => $this->getText('observacion'),
                            ":nina" => $this->getText('nina')
                        ));
                        if(!$resp){
                            echo false;
                            exit;
                        }
                        echo true;
                        exit;
                    }
                }
                echo "Falla al ingresar archivo $upload->error";
            }
        }else{
            echo "Peticion  httprequest";
        }
    }

}
