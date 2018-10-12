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
        $this->_view->assign("ninas",$this->_sql->nina());
        if($this->getInt("guardar")==1){
            echo "<pre>";print_r($_POST);
            exit;
            $upload = new file($_FILES['foto']);
                if ($upload->uploaded) {
                    $ruta = ROOT . "public" . DS . "file" . DS . "psicologia" . DS;
                    $upload->file_new_name_body = 'upl_' . uniqid();
                    $upload->process($ruta);
                    if ($upload->processed) {
                        $this->_sql->nuevo_preliminar(array(
                            ":fecha"=>"",
                            ":documento"=>"",
                            ":nina"=>"",
                        ));
                    }
                    }
        }

        $this->_view->renderizar("nuevo");

    }

    public function nuevo_preliminar()
    {
        

    }
    
}