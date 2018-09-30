<?php

class Model
{

    private $_registry;
    protected $_db;
    private $_table;
    public function __construct()
    {
        $this->_registry = Registry::getInstancia();
        $this->_db = $this->_registry->_db;
        $this->_db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    }

    protected function tipoDocumento()
    {
        $stmt = $this->_db->query('SELECT id_tipo_documento as id, documento FROM tipo_documento;');
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    protected function setTable($table){
        $this->_table = $table;
    }
    private function campos()
    {
        $stmt = $this->_db->prepare("DESCRIBE {$this->_table};");
        $stmt->execute();
        $table_fields = $stmt->fetchAll(PDO::FETCH_COLUMN);
        return $table_fields;
    }
    private function sqlInsert($table)
    {
        $campo = "";
        $param = "";
        $campoTable = $this->campos();
        for ($i = 0; $i < count($campoTable); $i++) {
            $campo .= $campoTable[$i] . ",";
            if ($i < count($campoTable) - 1) {$param .= ":" . $campoTable[$i + 1] . ",";}

        }
        $campo = trim($campo, ",");
        $param = trim($param, ",");

        $sql = "INSERT INTO {$table} ( {$campo} ) VALUES ( NULL, {$param} );";

        return $sql;

    }

    public function prepareSql($table)
    {
        return $stmt = $this->_db->prepare($this->sqlInsert($table));
    }
    public function executeSql()
    {
        $array = array(':nombre' => "x", ":apellido" => "y");
        $stmt->execute($array);
    }


}
