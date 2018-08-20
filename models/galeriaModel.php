<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
class galeriaModel extends Model{
    public function __construct() {
        parent::__construct();
    }
    public function getGaleria(){
        return $this->_db->query("SELECT * FROM galeria;")->fetchAll(PDO::FETCH_ASSOC);
    }
    
    public function getGaleriaById($id){
        return $this->_db->query("SELECT * FROM galeria WHERE id = $id;")->fetch(PDO::FETCH_ASSOC);
    }

    public function addGaleria($tema,$desc,$img){
        $stmt = $this->_db->prepare("INSERT INTO galeria (tema,descripcion,imagen,usuario) VALUES (:tema,:desc,:img,:user);");
        $id = Session::get("id");
        $stmt->bindParam(":tema",$tema, PDO::PARAM_STR);
        $stmt->bindParam(":desc",$desc, PDO::PARAM_STR);
        $stmt->bindParam(":img",$img, PDO::PARAM_STR);
        $stmt->bindParam(":user",$id, PDO::PARAM_STR);
        $stmt->execute();
    }
    public function eliminarGaleria($id){
        $this->_db->query("DELETE FROM galeria WHERE id = $id;");
    }
    public function editarGaleria($tema,$desc,$img,$id){
        $stmt = $this->_db->prepare("UPDATE galeria SET tema=:tema, descripcion=:desc,imagen=:img WHERE id = :id;");
        $stmt->bindParam(":tema",$tema, PDO::PARAM_STR);
        $stmt->bindParam(":desc",$desc, PDO::PARAM_STR);
        $stmt->bindParam(":img",$img, PDO::PARAM_STR);
        $stmt->bindParam(":id",$id, PDO::PARAM_STR);
        
        $stmt->execute(); 
    }
}
