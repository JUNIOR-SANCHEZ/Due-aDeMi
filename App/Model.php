<?php

class Model
{

    private $_registry;
    protected $_db;
    public function __construct()
    {
        $this->_registry = Registry::getInstancia();
        $this->_db = $this->_registry->_db;
    }

    protected function tipoDocumento()
    {
        $stmt = $this->_db->query('SELECT id_tipo_documento as id, documento FROM tipo_documento;');
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    private function campos($table)
    {
        $stmt = $this->_db->prepare("DESCRIBE {$table};");
        $stmt->execute();
        $table_fields = $stmt->fetchAll(PDO::FETCH_COLUMN);
        return $table_fields;
    }
    private function sqlInsert($table)
    {
        $campo = "";
        $param = "";
        $campoTable = $this->campos($table);
        for ($i = 0; $i < count($campoTable); $i++) {
            $campo .= " " . $campoTable[$i] . ",";
            if ($i < count($campoTable) - 1) {$param .= " :" . $campoTable[$i + 1] . ",";}

        }

        $campo = trim($campo, ",");
        $param = trim($param, " ,");

        $sql = "INSERT INTO {$table} ( {$campo} ) VALUES ( NULL, {$param} );";

        return $sql;

    }

    public function executeSql($table)
    {
        $array = array(':nombre'=>"x",":apellido"=>"y");
        echo $this->sqlInsert($table);
        $stmt = $this->_db->prepare($this->sqlInsert($table));
        foreach($array as $key => $value){
            echo " llave {$key} valor {$value}"  ;
            $stmt->bindParam("{$key}",$value,PDO::PARAM_STR);
        }
        // exit;
        $stmt->execute();        
    }

}
