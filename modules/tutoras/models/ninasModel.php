<?php

class ninasModel extends Model
{
    public function __construct()
    {
        parent::__construct();
    }
    public function nuevaNina($nombre, $apellido, $cedula, $telef, $email, $ficha)
    {
        $stmt = $this->_db->prepare(
            "CALL NINAS_PI(
                :nombre,
                :apellido,
                :cedula,
                :telefono,
                :email,
                :ficha_ingreso
            );"
        );
        $stmt->bindParam(":nombre", $nombre, PDO::PARAM_STR);
        $stmt->bindParam(":apellido", $apellido, PDO::PARAM_STR);
        $stmt->bindParam(":cedula", $cedula, PDO::PARAM_STR);
        $stmt->bindParam(":telefono", $telef, PDO::PARAM_STR);
        $stmt->bindParam(":email", $email, PDO::PARAM_STR);
        $stmt->bindParam(":ficha_ingreso", $ficha, PDO::PARAM_STR);
        $response = $stmt->execute();
        return $response;
    }

    public function mostraNinas(){
        $stmt = $this->_db->query("SELECT * FROM ninas");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
