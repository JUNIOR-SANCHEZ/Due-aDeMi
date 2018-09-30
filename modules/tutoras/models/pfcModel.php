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
       $pfc,
       $obj
    )
    {
        try{
            $this->_db->beginTransaction();
            /**
             * INSERTAR EN TABLA OBJ_PFC
             */
            $sql = "INSERT INTO obj_pfc 
            VALUES 
            (NULL, 
            :diag_part_comu,
            :obj_gen,
            :obj_esp
            )";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute($obj);
            $lastObj = $this->_db->lastInsertId();
            /**
             * INSERTAR EN TABLA DATOS_PFC
             */
            $sql = "INSERT INTO datos_pfc 
            VALUES 
            (NULL, 
            :nombre, 
            :canton, 
            :parroquia, 
            :num_fami, 
            :num_nna, 
            :fecha_elab,
            :fecha_eval,
            :nina,
            $lastObj
            )";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute($pfc);
            $endId = $this->_db->lastInsertId();

            $this->_db->commit(); 
            return $endId;
        }catch(PDOException $e){
            $this->_db->rollBack();
            return $e->getMessage();
        }
        
        
    }
}