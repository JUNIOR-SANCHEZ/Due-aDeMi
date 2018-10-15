<?php

class pgfModel extends Model
{
    public function __construct()
    {
        parent::__construct();
    }
    public function Datos_AREA($A)
    {
        $stmt = $this->_db->query("SELECT a.*, ac.descripcion_area_acomp  FROM pgf p, pgf_area pg,`area` a,area_acomp ac
        WHERE pg.area = a.id_area
        AND p.id_pgf = pg.pgf
        AND ac.id_area_acomp = a.area_acomp
        AND pg.pgf=$A
        GROUP BY a.id_area;
        ");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    public function Datos_PGF($id)
    {
        $stmt = $this->_db->query("Select p.*,n.nombres,apellidos From pgf p, ninas n where p.nina=n.id_nina And id_pgf = $id;");
        return $stmt->fetch(PDO::FETCH_OBJ);
    }
    public function nina()
    {
        $stmt = $this->_db->query("SELECT * FROM ninas;");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    public function area_acomp_des_personal()
    {
        $stmt = $this->_db->query("SELECT * FROM area_acomp WHERE tipo_area_acomp = 1;");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    public function area_acomp_des_social()
    {
        $stmt = $this->_db->query("SELECT * FROM area_acomp WHERE tipo_area_acomp = 2;");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    public function nuevapgf($pfc, $area)
    {
        try {
            $this->_db->beginTransaction();
            $sql = "INSERT INTO pgf VALUES (
                    NULL,:familia, :etnia, :acogimiento, :fecha_elaboracion,:proxima_evaluacion, :profesional, :cedula,:diag_familia,:diag_equipo,
                    :consensuado_familia,:consensuado_equipo,:nina);";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute($pfc);
            $lastpgf = $this->_db->lastInsertId();
            $sql = "INSERT INTO area VALUES
            (NULL,:diagnostico_area,:objetivo_area,:evaluacion_global,:descripcion,:responsable,:tiempo,:evaluacion,:observaciones,:area_acomp);";
            $stmt = $this->_db->prepare($sql);
            foreach ($area as $item) {
                $stmt->execute(array(
                    ":diagnostico_area" => $item['diagnostico_area'],
                    ":objetivo_area" => $item['objetivo_area'],
                    ":evaluacion_global" => $item['evaluacion_global'],
                    ":descripcion" => $item['act_descripcion'],
                    ":responsable" => $item['act_responsable'],
                    ":tiempo" => $item['act_tiempo'],
                    ":evaluacion" => $item['act_evaluacion'],
                    ":observaciones" => $item['act_observaciones'],
                    ":area_acomp" => $item['area_acomp'],
                ));
                $lastarea = $this->_db->lastInsertId();
                $this->_db->query("INSERT INTO pgf_area VALUES ($lastpgf, $lastarea);");
            }
            $this->_db->commit();
            return true;
        } catch (PDOException $e) {
            $this->_db->rollBack();
            echo $e->getMessage();
            return false;
        }
    }
    public function listapgf()
    {
        $stmt = $this->_db->query("SELECT p.id_pgf, p.fecha_elaboracion,p.proxima_evaluacion,p.profesional, n.nombres,n.apellidos FROM ninas n, pgf p WHERE n.id_nina=p.nina ;");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}