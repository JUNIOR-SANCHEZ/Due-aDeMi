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

        

        $menus["sidenav"] = array();

        if ($this->_acl->permiso("add_nina")) {
            $menus["sidenav"][] = array(
                "id" => "ficha_ingreso",
                "title" => "Ficha de ingreso NNA",
                "icon" => "fa-child",
                "link" => BASE_URL . "tutoras/ninas",
            );
        }
        if ($this->_acl->permiso("add_pgf")) {
            $menus["sidenav"][] =  array(
                "id" => "pgf",
                "title" => "P G F ",
                "icon" => "",
                "link" => BASE_URL . "tutoras/PGF",
            );
        }
        if ($this->_acl->permiso("add_pgf")) {
            $menus["sidenav"][] = array(
                "id" => "pfc",
                "title" => "P F C",
                "icon" => "",
                "link" => BASE_URL . "tutoras/docs/tipoDoc/pfc",
            );
        }
        if ($this->_acl->permiso("admin_access")) {
            $menus["sidenav"][] = 
                array(
                    "id" => "usuarios",
                    "title" => "Permisos por usuario",
                    "icon" => "fa-user",
                    "link" => BASE_URL . "usuarios"
                
            );
            $menus["sidenav"][] = 
                array(
                    "id" => "acl",
                    "title" => "Control de acceso por rol",
                    "icon" => "fa-group",
                    "link" => BASE_URL . "acl"
                
            );
            $menus["sidenav"][] = 
                array(
                    "id" => "registro_user",
                    "title" => "Registrar nuevo usuario",
                    "icon" => " fa-user-plus",
                    "link" => BASE_URL . "usuarios/registro"
                
            );
        }


        if (false) {
            $menus["sidenav"][] = array(
                "id" => "pgf",
                "title" => "P A I N A ",
                "icon" => "",
                "link" => BASE_URL . "tutoras/docs/tipoDoc/pia",
            );
        }
        $menus["top"] = array();
        return $menus[$menu];
    }
}
