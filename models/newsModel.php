<?php

class newsModel extends Model
{
    public function __construct() {
        parent::__construct();
    }

    public function addNews($theme,$body,$image){
        $id_user = Session::get("id");
        $stmt = $this->_db->prepare("INSERT INTO news VALUES (NULL,:theme,:body,:image_n,NOW(),:id_user)");
        $stmt->bindParam(":theme",$theme, PDO::PARAM_STR);
        $stmt->bindParam(":body",$body, PDO::PARAM_STR);
        $stmt->bindParam(":image_n", $image, PDO::PARAM_STR);
        $stmt->bindParam(":id_user",$id_user,PDO::PARAM_INT);
        $stmt->execute();
    }    
}
