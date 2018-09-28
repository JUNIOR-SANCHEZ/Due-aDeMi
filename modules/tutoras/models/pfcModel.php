<?php
class pfcModel extends Model{
    public function __construct()
    {
        parent::__construct();
        
    }

    public function nina()
    {
       $stmt = $this->_db->query("SELECT * FROM ninas;");
       return  $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function nuevoPfc(
        $fecha_elab,
        $fecha_eval,
        $nina,
        $nombre,
        $canton,
        $parroquia,
        $num_fami,
        $num_nna
    )
    {
        try{
            $this->_db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->_db->beginTransaction();
            $sql = "INSERT INTO documentos 
            VALUES 
            (NULL, :fecha_elab, :fecha_eval, :nina, 1)";
            $stmt = $this->_db->prepare($sql);
            $stmt->bindValue(":fecha_elab",$fecha_elab,PDO::PARAM_STR);
            $stmt->bindValue(":fecha_eval",$fecha_eval,PDO::PARAM_STR);
            $stmt->bindValue(":nina",$nina,PDO::PARAM_INT);
            $stmt->execute();
            $endId = $this->_db->lastInsertId();
            $sql = "INSERT INTO pfc 
            (nombre,canton,parroquia,num_familia_servicio,num_nna_servicio,documento) 
            VALUES 
            (:nombre, :canton, :parroquia, :num_fami, :num_nna, $endId)";
            $stmt = $this->_db->prepare($sql);
            $stmt->bindValue(":nombre",$nombre,PDO::PARAM_STR);
            $stmt->bindValue(":canton",$canton,PDO::PARAM_STR);
            $stmt->bindValue(":parroquia",$parroquia,PDO::PARAM_STR);
            $stmt->bindValue(":num_fami",$num_fami,PDO::PARAM_STR);
            $stmt->bindValue(":num_nna",$num_nna,PDO::PARAM_STR);
            $stmt->execute();
            $endId = $this->_db->lastInsertId();
            $this->_db->commit(); 
            return $endId;
        }catch(PDOException $e){
            $this->_db->rollBack();
            return $e->getMessage();
        }
        
        
    }
}