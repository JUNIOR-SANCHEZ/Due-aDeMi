<?php
class pfcModel extends Model
{
    public function __construct()
    {
        parent::__construct();

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
             * INSERTAR EN TABLA OBJ_PFC
             */
            $sql = "INSERT INTO obj_pfc
            VALUES
            (NULL, :diag_part_comu, :obj_gen, :obj_esp );";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute($obj);
            $lastObj = $this->_db->lastInsertId();
            /**
             * INSERTAR EN TABLA DATOS_PFC
             */
            $sql = "INSERT INTO datos_pfc
            VALUES
            (NULL, :nombre, :canton, :parroquia, :num_fami, :num_nna, :fecha_elab, :fecha_eval,:nina, $lastObj );";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute($pfc);
            $lastPfc = $this->_db->lastInsertId();

            $sql = "INSERT INTO intervenciones VALUES (NULL,:meta,:indicador,:actividad,:tiempo,:recurso,:responsable,$lastPfc);";
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

            $sql = "INSERT INTO seguimientos VALUES (NULL,:actividad,:dificultad,:resultado,:observacion,$lastPfc);";
            $stmt = $this->_db->prepare($sql);
            foreach ($segui as $item) {
                $stmt->execute(array(
                    ":actividad" => $item["actividad"],
                    ":dificultad" => $item["dificultad"],
                    ":resultado" => $item["resultado"],
                    ":observacion" => $item["observacion"],
                ));

            }
            $sql = "INSERT INTO responsables VALUES (NULL, :responsable, :rol, $lastPfc);";
            $stmt = $this->_db->prepare($sql);
            foreach ($respo as $item) {
                $stmt->execute(array(
                    ":responsable" => $item["apellido"] . " " . $item["nombre"],
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
