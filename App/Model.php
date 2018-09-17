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
}
