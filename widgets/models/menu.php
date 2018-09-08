<?php

class menuModelWidget extends Model{
   
    private $_registry;
    private $_acl;
    public function __construct() {
        parent::__construct();
        $this->_registry = Registry::getInstancia();
        $this->_acl = $this->_registry->_acl;
    }
    
    public function getmenu($menu){
       $menus["sidenav"]= array(
           array(
            "id"=>"tutoras",
            "title"=>"Tutoras",
            "icon"=>"fa-dashboard",
            "sub-menu"=>array(
                array(
                "id"=>"pfc",
                "title"=>"PFC",
                "link"=>BASE_URL
                )
            )
            
           )
       );
       $menus["top"]= array();
        return $menus[$menu];
    }
}
