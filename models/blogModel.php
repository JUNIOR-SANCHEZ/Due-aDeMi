<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class blogModel extends Model{
    public function __construct() {
        parent::__construct();
    }
    
    public function getBlog($titulo){
        $strmt =  $this->_db->prepare("SELECT * FROM noticias WHERE nombre LIKE :title ORDER BY id DESC");
        $strmt->execute(array(
            ":title" => "%$titulo%"
        ));
        $resp = $strmt->fetchAll(PDO::FETCH_ASSOC);
        return $resp;
    }
    
    public function addBlog($name,$body,$imagen){
        $id_user = Session::get("id");
        $stmt = $this->_db->prepare("INSERT INTO noticias VALUES (NULL,:name,:body,:imagen,NOW(),:id_user)");
        $stmt->bindParam(":name",$name, PDO::PARAM_STR);
        $stmt->bindParam(":body",$body, PDO::PARAM_STR);
        $stmt->bindParam(":imagen", $imagen, PDO::PARAM_STR);
        $stmt->bindParam(":id_user",$id_user,PDO::PARAM_INT);
        $stmt->execute();
    }
     public function getNoticiasBlogById($id){
        $stmt =  $this->_db->prepare("SELECT * FROM noticias WHERE id = :id;");
        $stmt->bindParam(":id",$id,PDO::PARAM_INT);
        $stmt->execute();
        $datos = $stmt->fetch();
        return $datos;
        
    }
    public function eliminarNoticia($id){
        $this->_db->query("DELETE FROM noticias WHERE id = $id;");
    }
    
    public function editarBlog($titulo,$desc,$img,$id){
//        echo $titulo,$desc,$img,$id;
        $stmt = $this->_db->prepare("UPDATE noticias SET nombre=:titulo,cuerpo=:desc,imagen=:img WHERE id=:id;");
        $stmt->bindParam(":titulo",$titulo, PDO::PARAM_STR);
        $stmt->bindParam(":desc",$desc, PDO::PARAM_STR);
        $stmt->bindParam(":img",$img, PDO::PARAM_STR);
        $stmt->bindParam(":id",$id, PDO::PARAM_STR);
        $stmt->execute();
//        exit;
    }

    public function addComentario($comentario,$noticia){
        $stmt = $this->_db->prepare("INSERT INTO comentarios (comentario,usuario,noticia,reply,fecha) VALUES (:coment,:user,:noticia,0,NOW())");
        $id = Session::get("id");
        $stmt->bindParam(":coment",$comentario, PDO::PARAM_STR);
        $stmt->bindParam(":noticia",$noticia, PDO::PARAM_STR);
        $stmt->bindParam(":user",$id, PDO::PARAM_INT);
        $stmt->execute();
    }
    
    public function getComentarios($idNoticia){
        $stmt = $this->_db->prepare("SELECT t1.*,t2.nombre,t2.imagen,t2.usuario AS nick FROM comentarios t1 INNER JOIN usuarios t2 ON t1.usuario = t2.id WHERE reply = 0 AND noticia = :id ORDER BY id DESC;");
        $stmt->bindParam(":id",$idNoticia, PDO::PARAM_INT);
        $stmt->execute();
        $resp = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $resp;
    }
    
    public function eliminarComentario($id){
        $this->_db->query("DELETE FROM comentarios WHERE id = $id");
    }
    public function editarComentario($coment,$id){
        $stmt = $this->_db->prepare("UPDATE comentarios SET comentario=:coment WHERE id=:id");
        $stmt->bindParam(":coment",$coment, PDO::PARAM_STR);
        $stmt->bindParam(":id",$id, PDO::PARAM_STR);
        $stmt->execute();
    }
}