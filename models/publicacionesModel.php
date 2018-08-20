<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class publicacionesModel  extends Model{
    
    public function __construct() {
        parent::__construct();
    }
    
    public function View(){
        
    }
    public function addComment($comment,$usuario){
        $statement = $this->_db->prepare("INSERT INTO comentarios (comentario,id_usuario,fecha) VALUES (:comentario,:usuario,NOW());");
        $statement->bindParam(":comentario",$comment, PDO::PARAM_STR);
        $statement->bindParam(":usuario",$usuario, PDO::PARAM_INT);
        $statement->execute();
    }
    public function addCommentReply($comment,$usuario,$reply){
        $statement = $this->_db->prepare("INSERT INTO comentarios (comentario,id_usuario,respuesta,fecha) VALUES (:comentario,:usuario,:reply,NOW());");
        $statement->bindParam(":comentario",$comment, PDO::PARAM_STR);
        $statement->bindParam(":reply",$reply, PDO::PARAM_STR);
        $statement->bindParam(":usuario",$usuario, PDO::PARAM_INT);
        $statement->execute();
    }
    public function getComment(){
        $datos = $this->_db->query("SELECT t1.*,t2.* FROM comentarios t1 INNER JOIN usuarios t2 ON t1.`id_usuario` = t2.`id_usu` ORDER BY id DESC;");
        return $datos->fetchAll();
    }
     public function getCommentReply(){
        $datos = $this->_db->prepare("SELECT * FROM comentarios");
        return $datos->fetchAll();
    }
}