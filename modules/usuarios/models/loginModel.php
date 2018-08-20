<?php

class loginModel extends Model{
    public function __construct() {
        parent::__construct();
    }
    //FUNCION DE ACCESO A LA APLICACION (LOGIN)
    public function getUser($user,$pass){
        $pass = Cifrado::getHash("sha1", $pass, HASH_KEY);
        $rows = $this->_db->prepare("CALL userlogin(:user,:pass);");
        $rows->bindParam(':user',$user, PDO::PARAM_STR);
        $rows->bindParam(':pass',$pass , PDO::PARAM_STR);
        $rows->execute();
        return $rows->fetch();
    }
}