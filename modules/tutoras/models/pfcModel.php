<?php

class pfcModel extends Model 
{
    public function __construct(){
        parent::__construct();
    }
    
    public function cantones(){
        $stmt = $this->_db->query('SELECT * FROM cantones');
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    }
    public function parroquias($id){
        $stmt = $this->_db->prepare('SELECT * FROM parroquias WHERE canton = :id');
        $stmt->bindParam(':id',$id,PDO::PARAM_STR);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    }
    public function parroquiasId($id){
        $stmt = $this->_db->prepare('SELECT * FROM parroquias WHERE id_parroquias = :id');
        $stmt->bindParam(':id',$id,PDO::PARAM_STR);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        return $result;
    }
    public function addPfc(
        $fecha_elaboracion_pfc,$fecha_proxima_evaluacion_pfc,
        $diagnostico_participativo_pfc,$objetivo_general_pfc,
        $objetivo_especificos_pfc,$parroquia_pfc
        )
        {
        $stmt = $this->_db->prepare(
       "CALL PFC_PI(
            :fecha_elaboracion_pfc,
            :fecha_proxima_evaluacion_pfc,
            :diagnostico_participativo_pfc,
            :objetivo_general_pfc,
            :objetivo_especificos_pfc,
            :parroquia_pfc
        );");
        $stmt->bindParam(':fecha_elaboracion_pfc',$fecha_elaboracion_pfc,PDO::PARAM_STR);
        $stmt->bindParam(':fecha_proxima_evaluacion_pfc',$fecha_proxima_evaluacion_pfc,PDO::PARAM_STR);
        $stmt->bindParam(':diagnostico_participativo_pfc',$diagnostico_participativo_pfc,PDO::PARAM_STR);
        $stmt->bindParam(':objetivo_general_pfc',$objetivo_general_pfc,PDO::PARAM_STR);
        $stmt->bindParam(':objetivo_especificos_pfc',$objetivo_especificos_pfc,PDO::PARAM_STR);
        $stmt->bindParam(':parroquia_pfc',$parroquia_pfc,PDO::PARAM_INT);
        $result = $stmt->execute();
        return $result;
    }
}