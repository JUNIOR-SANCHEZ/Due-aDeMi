<?php
class indexModel extends Model{
    public function __construct() {
        parent::__construct();
    }

    public function tabla($nombre,$apellido,$date)
    {
        
        $this->table('prueba');
        $this->executeSql(array($nombre,$apellido,$date));
        return $this->_db->lastInsertId();
    }
}