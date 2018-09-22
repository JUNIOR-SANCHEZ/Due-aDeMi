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
    }

    protected function tipoDocumento()
    {
        $stmt = $this->_db->query('SELECT id_tipo_documento as id, documento FROM tipo_documento;');
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    protected function table($table)
    {
        $this->_table = $table;
    }
    private function campos()
    {
        $stmt = $this->_db->prepare("DESCRIBE {$this->_table};");
        $stmt->execute();
        $table_fields = $stmt->fetchAll(PDO::FETCH_COLUMN);
        return $table_fields;
    }

    /**
     * GENERAMOS LA SENTECIA SQL PARA INSERTAR
     * ESTA TOMARA LA PROPIEDAD PRIVADA $table PARA SABER QUE TABLA SERA AFECTADA
     */
    private function sqlInsert()
    {
        # DECLARAMOS DOS VARIABLES
        $campo = "";
        $param = "";
        # TRAEMOS LOS CAMPOS DE LA TABLA
        $campoTable = $this->campos();
        for ($i = 0; $i < count($campoTable); $i++) {
            $campo .= $campoTable[$i] . ",";
            if ($i < count($campoTable) - 1) {$param .= ":" . $campoTable[$i + 1] . ",";}
        }
        $campo = trim($campo, ",");
        $param = trim($param, ",");
        #CREA LA SENTENCIA INSERT DE LA TABLA
        $sql = "INSERT INTO {$this->_table} ( {$campo} ) VALUES ( NULL, {$param} );";
        return $sql;
    }

    private function prepareSql()
    {
        return $stmt = $this->_db->prepare($this->sqlInsert());
    }
    protected function executeSql(array $datos)
    {
        if (!is_array($datos)) {echo "no es array";exit;}
            $datos = $this->paramQuery($datos);
            $stmt = $this->prepareSql(); 
            print_r($datos);
            return $stmt->execute($datos);
    }
    private function paramQuery(array $param)
    {
        $campoTable = $this->campos();
        $dato = array();

        if ((count($campoTable) - 1) == count($param)) {
            for ($i = 0; $i < count($param); $i++) {
                $dato[":" . $campoTable[$i + 1]] = $param[$i];
            }
            return $dato;
        }
        return $dato;
    }

}
