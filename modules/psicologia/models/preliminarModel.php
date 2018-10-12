<?php

class preliminarModel extends Model
{
    public function __construct()
    {
        # code...
        parent::__construct();
    }
    public function nina()
    {
        $stmt = $this->_db->query("SELECT * FROM ninas;");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function nuevo_preliminar($informe)
    {
        try{
            $this->_db->beginTransaction();
            $sql = "INSERT INTO informes VALUES (:fecha,:documento,:nina,1);";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute();
            $this->_db->commit();
        }catch(PDOException $e){
            $this->_db->rollBack();
            echo $e->getMessage();
            return false;
        }
    }
}