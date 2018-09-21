<?php

class ninasModel extends Model
{
    public function __construct()
    {
        parent::__construct();
    }
    public function nuevaNina($fecha_ingreso,$nombre, $apellido,$lugar_nacimiento,$foto,$cedula,$telef,$direcion,$tipo_medida,$num_medida,$fecha_medida,$org_oper)
    {
        $this->table('ninas');
        $this->executeSql(array($fecha_ingreso,$nombre,$apellido,$lugar_nacimiento,$foto,$cedula,$telef,$direcion,$tipo_medida,$num_medida,$fecha_medida,$org_oper));
        return $this->_db->lastInsertId();
    }

    public function mostraNinas(){
        $stmt = $this->_db->query("SELECT * FROM ninas");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
