<?php

class painaModel extends Model
{
    public function __construct()
    {
        parent::__construct();
    }
    public function Datos_AREA($A)
    {
        
        $stmt = $this->_db->query("SELECT a.*, acti_descripcion  FROM paina p, paina_area pa,`area` a,area_acomp ac
        WHERE pa.area = a.id_area 
        AND p.id_paina = pa.paina
        AND ac.id_area_acomp = a.area_acomp
        AND pa.paina=$A
        GROUP BY a.id_area;
        ");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    public function Datos_Paina()
    {
        $stmt = $this->_db->query("Select p.*,n.nombres,apellidos From paina p, ninas n where p.nina=n.id_nina And id_paina = 2;");
        return $stmt->fetch(PDO::FETCH_OBJ);
    }
    public function nina()
    {
        $stmt = $this->_db->query("SELECT * FROM ninas;");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    public function area_acomp_des_personal()
    {
        $stmt = $this->_db->query("SELECT * FROM area_acomp WHERE tipo_area_acomp = 3;");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    public function area_acomp_des_social()
    {
        $stmt = $this->_db->query("SELECT * FROM area_acomp WHERE tipo_area_acomp = 4;");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    public function nuevo_paina(
        $pfc,
        $area
    ) {
        try {

            $this->_db->beginTransaction();
            /**
             *
             */
            $sql = "INSERT INTO paina VALUES (NULL,:familia, :etnia, :acogimiento, :fecha_elaboracion,:proxima_evaluacion, :profesional, :cedula,:obj_general,:nina);";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute($pfc);
            $lastpgf = $this->_db->lastInsertId();
            /**
             * INSERTAR EN TABLA AREAS
             */
            $sql = "INSERT INTO area VALUES
            (NULL,:diagnostico_area,:objetivo_area,:evaluacion_global,:descripcion,:responsable,:tiempo,:evaluacion,:observaciones,:area_acomp);";
            $stmt = $this->_db->prepare($sql);
            /**
             *  
             */
            foreach ($area as $item) {
                $stmt->execute(array(
                    ":diagnostico_area"=>$item['diagnostico_area'],
                    ":objetivo_area"=>$item['objetivo_area'],
                    ":evaluacion_global"=>$item['evaluacion_global'],
                    ":descripcion"=>$item['act_descripcion'],
                    ":responsable"=>$item['act_responsable'],
                    ":tiempo"=>$item['act_tiempo'],
                    ":evaluacion"=>$item['act_evaluacion'],
                    ":observaciones"=>$item['act_observaciones'],
                    ":area_acomp"=>$item['area_acomp']
                ));
                $lastarea = $this->_db->lastInsertId();
               $this->_db->query("INSERT INTO paina_area VALUES ($lastpgf, $lastarea);");
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
