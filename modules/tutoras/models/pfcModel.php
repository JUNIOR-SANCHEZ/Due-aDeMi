<?php
class pfcModel extends Model
{
    public function __construct()
    {
        parent::__construct();

    }
    public function listaPfcPdf()
    {
        $stmt = $this->_db->query("SELECT p.*, n.`apellidos`, n.`nombres` FROM pfc p, pfc_intervenciones i, pfc_responsables r, pfc_seguimientos s, ninas n WHERE p.`id_pfc` = i.`pfc` AND p.`id_pfc` = r.`pfc` AND p.`id_pfc` = s.`pfc` AND p.`nina` = n.`id_nina` GROUP BY p.`id_pfc`;");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    public function nina()
    {
        $stmt = $this->_db->query("SELECT * FROM ninas;");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    public function responsable()
    {
        $stmt = $this->_db->query("SELECT u.`id`, CONCAT(u.`apellidos`,' ',u.`nombres`) AS nombres, r.`role` FROM usuarios u, roles r WHERE u.`role` = r.`id_role`;");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    public function nuevoPfc(
        $pfc,
        $obj,
        $inter,
        $segui,
        $respo
    ) {
        try {
            $this->_db->beginTransaction();
            /**
             * INSERTAR EN TABLA DATOS_PFC
             */ 
            $sql = "INSERT INTO pfc
            VALUES
            (NULL, :nombre, :canton, :parroquia, :num_fami, :num_nna, :fecha_elab, :fecha_eval, :diag_part_comu, :obj_gen, :obj_esp,:nina );";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute($pfc);
            $lastPfc = $this->_db->lastInsertId();
            /**
             * 
             */
            $sql = "INSERT INTO pfc_intervenciones VALUES (NULL,:meta,:indicador,:actividad,:tiempo,:recurso,:responsable,$lastPfc);";
            $stmt = $this->_db->prepare($sql);
            foreach ($inter as $item) {
                $stmt->execute(array(
                    ":meta" => $item["meta"],
                    ":indicador" => $item["indicador"],
                    ":actividad" => $item["actividad"],
                    ":tiempo" => $item["tiempo"],
                    ":recurso" => $item["recurso"],
                    ":responsable" => $item["responsable"],
                ));
            }
            /**
             * 
             */
            $sql = "INSERT INTO pfc_seguimientos VALUES (NULL,:actividad,:dificultad,:resultado,:observacion,$lastPfc);";
            $stmt = $this->_db->prepare($sql);
            foreach ($segui as $item) {
                $stmt->execute(array(
                    ":actividad" => $item["actividad"],
                    ":dificultad" => $item["dificultad"],
                    ":resultado" => $item["resultado"],
                    ":observacion" => $item["observacion"],
                ));
            }
            /**
             * 
             */
            $sql = "INSERT INTO pfc_responsables VALUES (NULL, :nombres,:apellidos, :rol, $lastPfc);";
            $stmt = $this->_db->prepare($sql);
            foreach ($respo as $item) {
                $stmt->execute(array(
                    ":nombres" => $item["nombre"] ,
                    ":apellidos" =>$item["apellido"],
                    ":rol" => $item["rol"]
                ));

            }
            $this->_db->commit();
            return true;
        } catch (PDOException $e) {
            $this->_db->rollBack();
            echo $e->getMessage();
            return false;
        }
    }
}
