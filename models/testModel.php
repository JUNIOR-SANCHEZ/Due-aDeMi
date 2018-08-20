<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class testModel extends Model{
    public function __construct() {
        parent::__construct();
    }
    
    public function view(){
        $stmt = $this->_db->query("SELECT * FROM pruebas;");
        
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}

