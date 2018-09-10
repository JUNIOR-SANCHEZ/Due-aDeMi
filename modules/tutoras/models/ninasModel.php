<?php

class ninasModel extends Model
{
    public function __construct()
    {
        parent::__construct();
    }
    public function nuevaNina($nombre, $apellido, $cedula, $telef, $foto, $ficha)
    {
        $stmt = $this->_db->prepare(
            "call NINAS_PI(
                :nombre,
                :apellido,
                :cedula,
                :telefono,
                :foto
                :ficha_ingreso
            );"
        );
        $stmt->bindParam(":nombre", $nombre, PDO::PARAM_STR);
        $stmt->bindParam(":apellido", $apellido, PDO::PARAM_STR);
        $stmt->bindParam(":cedula", $cedula, PDO::PARAM_STR);
        $stmt->bindParam(":telefono", $telefono, PDO::PARAM_STR);
        $stmt->bindParam(":foto", $telefono, PDO::PARAM_STR);
        $stmt->bindParam(":ficha_ingreso", $ficha_ingreso, PDO::PARAM_STR);
        return $stmt->execute();
    }
}
