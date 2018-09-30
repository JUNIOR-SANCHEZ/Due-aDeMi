<?php
class painaModel extends Model
{
    public function _construct()
    {
            parent::_construct();
    }
    public function nuevapaina($padres,$etnia,$acogimiento,$elaboracion,$evaluacion,$profesion,$cedula,$nina)
    {
        $this->table('paina');
        $this->executeSql(array($padres,$etnia,$acogimiento,$elaboracion,$evaluacion,$profesion,$cedula,$nina));
        return $this->_db->lastInsertId();
    }
}