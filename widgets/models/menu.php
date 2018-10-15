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
                "id" => "nna",
                "title" => "Ficha de ingreso NNA",
                "icon" => "fa-child",
                "sub-menu" => array(
                    array(
                        "id" => "nna_nuevo",
                        "title" => "Nuevo",
                        "icon" => "fa-bookmark",
                        "link" => BASE_URL . "tutoras/ninas",
                    ),
                    array(
                        "id" => "nna_informe",
                        "title" => "Informe",
                        "icon" => "fa-bookmark",
                        "link" => BASE_URL . "tutoras/ninas/informe",
                    ),
                    array(
                        "id" => "nna_lista",
                        "title" => "Lista",
                        "icon" => "fa-bookmark",
                        "link" => BASE_URL . "tutoras/ninas/lista",
                    ),
                ),
            );
        }
        if ($this->_acl->permiso("add_pfc")) {
            $menus["sidenav"][] = array(
                "id" => "pfc",
                "title" => "P F C",
                "icon" => "fa-file",
                "sub-menu" => array(
                    array(
                        "id" => "pfc_nuevo",
                        "title" => "Nuevo",
                        "icon" => "fa-bookmark",
                        "link" => BASE_URL . "tutoras/pfc",
                    ),
                    array(
                        "id" => "pfc_informe",
                        "title" => "Informes",
                        "icon" => "fa-bookmark",
                        "link" => BASE_URL . "tutoras/PFC/informe",
                    ), 
                    array(
                        "id" => "pfc_lista",
                        "title" => "Lista",
                        "icon" => "fa-bookmark",
                        "link" => BASE_URL . "tutoras/PFC/lista",
                    ),
                ),
            );
        }
        if ($this->_acl->permiso("add_pgf")) {
            $menus["sidenav"][] = array(
                "id" => "dir_pgf",
                "title" => "P G F",
                "icon" => "fa-file",
                "sub-menu" => array(
                    array(
                        "id" => "pgf",
                        "title" => "Nueva PGF",
                        "icon" => "fa-bookmark",
                        "link" => BASE_URL . "tutoras/PGF",
                    ),
                    array(
                        "id" => "pgf_pdf",
                        "title" => "Informes",
                        "icon" => "fa-bookmark",
                        "link" => BASE_URL . "tutoras/PGF/lista_pgf",
                    ),
                ),
            );
        }
        if ($this->_acl->permiso("add_paina")) {
            $menus["sidenav"][] = array(
                "id" => "paina",
                "title" => "PAINA",
                "icon" => "fa-file",
                "sub-menu" => array(
                    array(
                        "id" => "paina_nuevo",
                        "title" => "Nuevo",
                        "icon" => "fa-bookmark",
                        "link" => BASE_URL . "tutoras/paina",
                    ),
                    array(
                        "id" => "paina_informe",
                        "title" => "Informes",
                        "icon" => "fa-bookmark",
                        "link" => BASE_URL . "tutoras/paina/informe",
                    )
                ),
            );
        }
        if ($this->_acl->permiso("add_preliminar")) {
            $menus["sidenav"][] = array(
                "id" => "dir_preliminar",
                "title" => "PRELIMINAR",
                "icon" => "fa-file",
                "sub-menu" => array(
                    array(
                        "id" => "paina",
                        "title" => "Nueva Informe",
                        "icon" => "fa-bookmark",
                        "link" => BASE_URL . "psicologia/preliminar",
                    ),
                ),
            );
        }

        if ($this->_acl->permiso("admin_access")) {
            $menus["sidenav"][] =
            array(
                "id" => "usuarios",
                "title" => "Permisos por usuario",
                "icon" => "fa-user",
                "link" => BASE_URL . "usuarios",
                "sub-menu" => array(),

            );
            $menus["sidenav"][] =
            array(
                "id" => "acl",
                "title" => "Control de acceso por rol",
                "icon" => "fa-group",
                "link" => BASE_URL . "acl",
                "sub-menu" => array(),

            );
            $menus["sidenav"][] =
            array(
                "id" => "registro_user",
                "title" => "Registrar nuevo usuario",
                "icon" => " fa-user-plus",
                "link" => BASE_URL . "usuarios/registro",
                "sub-menu" => array(),
            );
        }
        $menus["top"] = array();
        return $menus[$menu];
    }
}