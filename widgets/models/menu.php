<?php

class menuModelWidget extends Model
{

    private $_registry;
    private $_acl;
    public function __construct()
    {
        parent::__construct();
        $this->_registry = Registry::getInstancia();
        $this->_acl = $this->_registry->_acl;
    }

    public function getmenu($menu)
    {
        $menus["sidenav"] = array(
            array(
                "id" => "ficha_ingreso",
                "title" => "FICHA DE INGRESO NIÑA",
                "icon" => "fa-dashboard",
                "link" => BASE_URL . "tutoras/ninas"
            ),
            array(
                "id" => "pfc",
                "title" => "PAINA",
                "icon" => "",
                "link" => BASE_URL . "tutoras/PAINA"
            ),
            array(
                "id" => "pgf",
                "title" => "P G F ",
                "icon" => "",
                "link" => BASE_URL . "tutoras/PGF"
            ),
            
        );

        if(false){
        $menus["sidenav"][]=array(
            "id" => "pgf",
            "title" => "P A I N A ",
            "icon" => "",
            "link" => BASE_URL . "tutoras/docs/tipoDoc/pia"
        );
    }
        $menus["top"] = array();
        return $menus[$menu];
    }
}
