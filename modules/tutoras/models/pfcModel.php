<?php

class pfcModel extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function cantones()
    {
        $stmt = $this->_db->query('SELECT * FROM cantones');
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    }
    public function parroquias($id)
    {
        $stmt = $this->_db->prepare('SELECT * FROM parroquias WHERE canton = :id');
        $stmt->bindParam(':id', $id, PDO::PARAM_STR);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    }
    public function parroquiasId($id)
    {
        $stmt = $this->_db->prepare('SELECT * FROM parroquias WHERE id_parroquias = :id');
        $stmt->bindParam(':id', $id, PDO::PARAM_STR);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        return $result;
    }
    public function addPfc(
        $fecha_elaboracion_pfc,
        $fecha_proxima_evaluacion_pfc,
        $diagnostico_participativo_pfc,
        $objetivo_general_pfc,
        $objetivo_especificos_pfc,
        $parroquia_pfc
    ) {
        $stmt = $this->_db->prepare(
            "CALL PFC_PI(
            :fecha_elaboracion_pfc,
            :fecha_proxima_evaluacion_pfc,
            :diagnostico_participativo_pfc,
            :objetivo_general_pfc,
            :objetivo_especificos_pfc,
            :parroquia_pfc
        );");
        $stmt->bindParam(':fecha_elaboracion_pfc', $fecha_elaboracion_pfc, PDO::PARAM_STR);
        $stmt->bindParam(':fecha_proxima_evaluacion_pfc', $fecha_proxima_evaluacion_pfc, PDO::PARAM_STR);
        $stmt->bindParam(':diagnostico_participativo_pfc', $diagnostico_participativo_pfc, PDO::PARAM_STR);
        $stmt->bindParam(':objetivo_general_pfc', $objetivo_general_pfc, PDO::PARAM_STR);
        $stmt->bindParam(':objetivo_especificos_pfc', $objetivo_especificos_pfc, PDO::PARAM_STR);
        $stmt->bindParam(':parroquia_pfc', $parroquia_pfc, PDO::PARAM_INT);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        return $result;
    }
    public function addIntervenciones(
        $metas_i,
        $indicadores_i,
        $actividades_i,
        $tiempos_i,
        $recursos_i,
        $responsable_i,
        $pfc_i
    ) {
        $stmt = $this->_db->prepare(
            "CALL INTERVENCIONES_PI(
                :metas_i,
                :indicadores_i,
                :actividades_i,
                :tiempos_i,
                :recursos_i,
                :responsable_i,
                :pfc_i
            );"
        );
        $stmt->bindParam(":metas_i", $metas_i, PDO::PARAM_STR);
        $stmt->bindParam(":indicadores_i", $indicadores_i, PDO::PARAM_STR);
        $stmt->bindParam(":actividades_i", $actividades_i, PDO::PARAM_STR);
        $stmt->bindParam(":tiempos_i", $tiempos_i, PDO::PARAM_STR);
        $stmt->bindParam(":recursos_i", $recursos_i, PDO::PARAM_STR);
        $stmt->bindParam(":responsable_i", $responsable_i, PDO::PARAM_STR);
        $stmt->bindParam(":pfc_i", $pfc_i, PDO::PARAM_INT);
        $stmt->execute();
    }
    public function addSeguimientosEvaluaciones(
        $actividad_se,
        $dificultad_se,
        $resultado_se,
        $observaciones_se,
        $pfc_se
    )
    {
        $stmt = $this->_db->prepare(
            "CALL SEGUIMIENTOS_EVALUACIONES_PI(
                :actividad_se,
                :dificultad_se,
                :resultado_se,
                :observaciones_se,
                :pfc_se
                ) "
        );
        $stmt->bindParam(":actividad_se",$actividad_se,PDO::PARAM_STR);
        $stmt->bindParam(":dificultad_se",$dificultad_se,PDO::PARAM_STR);
        $stmt->bindParam(":resultado_se",$resultado_se,PDO::PARAM_STR);
        $stmt->bindParam(":observaciones_se",$observaciones_se,PDO::PARAM_STR);
        $stmt->bindParam(":pfc_se",$pfc_se,PDO::PARAM_INT);
        $stmt->execute();
    }

}
