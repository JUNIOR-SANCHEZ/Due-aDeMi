  <?php

class ninasModel extends Model
{
    public function __construct()
    {
        parent::__construct();
    }
    public function nuevaNina(
        $fecha_ingreso,
        $nombre,
        $apellido,
        $lugar_nacimiento,
        $fecha_naciminto,
        $foto,
        $cedula,
        $telef,
        $direcion,
        $tipo_medida,
        $num_medida,
        $fecha_medida,
        $org_oper) {
        $this->table('ninas');
        $this->executeSql(array(
            $fecha_ingreso,
            $nombre,
            $apellido,
            $lugar_nacimiento,
            $fecha_naciminto,
            $foto,
            $cedula,
            $telef,
            $direcion,
            $tipo_medida,
            $num_medida,
            $fecha_medida,
            $org_oper));
        return $this->_db->lastInsertId();
    }
    public function nuevoInformante(
        $nombres,
        $apellido,
        $direccion,
        $telefono,
        $institucion,
        $documento,
        $nina
    ) {
        $this->table("informantes");
        $this->executeSql(array(
            $nombres,
            $apellido,
            $direccion,
            $telefono,
            $institucion,
            $documento,
            $nina,
        ));
        return $this->_db->lastInsertId();
    }
    public function nuevoDescripcion(
        $vestimenta,
        $salud,
        $maltrato_fisico,
        $pertenencia,
        $observacion_general,
        $nina
    ) {
        $this->table("descripciones");
        $this->executeSql(array(
            $vestimenta,
            $salud,
            $maltrato_fisico,
            $pertenencia,
            $observacion_general,
            $nina));
        return $this->_db->lastInsertId();
    }

}
