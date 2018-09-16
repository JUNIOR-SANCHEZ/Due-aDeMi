<?php

class pgfModel extends Model
{
    private $_table;
    private $_tipoDoc;
    public function __construct()
    {
        parent::__construct();
        $this->_table = "documentos";
        $this->_tipoDoc = 2;
    }
    /**
     * REALIZO UNA CONSULTA SIMPLE DE LA TABLA NINAS
     */
    public function mostrarNinas()
    {
        # REALIZAMOS LA CONSULTA A LA TABLA NINAS
        $stmt = $this->_db->query('SELECT * FROM ninas;');
        # RETORNAMOS LA CONSULTA
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    /**
     * REALIZO UNA CONSULTA DE DOS TABLAS(PFC,NINAS)
     * Y OBTENGO UNA ARRAY ASOCIATIVO
     */
    public function mostrarDoc(string $buscar = '')
    {
        $stmt = $this->_db->prepare("CALL DOC_PS(:buscar,{$this->_tipoDoc});");
        $stmt->bindParam(':buscar',$buscar,PDO::PARAM_STR);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);

    }
    /**
     * PERMITE INGRESAR DATOS EN LA TABLA PFC
     * Y RETORNAMOS UN VALOR BOOLEANO(TRUE/FALSE) PARA VRIFICAR
     * SI LOS DATOS SE REGISTRARO CORRECTAMENTE
     */
    public function nuevoDoc(string $elaboracion, string $evaluacion, int $nina, string $file)
    {
        # PREPARAMOS LA CONSULTA PARA EVITAR SQL INJECTION
        $stmt = $this->_db->prepare("INSERT INTO {$this->_table} VALUES (NULL,:elaboracion_f,:evaluacion_f,:nina,:archivo,$this->_tipoDoc);");
        $stmt->bindParam(':elaboracion_f', $elaboracion, PDO::PARAM_STR);
        $stmt->bindParam(':evaluacion_f', $evaluacion, PDO::PARAM_STR);
        $stmt->bindParam(':nina', $nina, PDO::PARAM_INT);
        $stmt->bindParam(':archivo', $file, PDO::PARAM_STR);
        return $stmt->execute();
    }
    /**
     * PERMITE ELIMINAR UN REGISTRO DE LA TABLA PFC POR ID
     */
    public function eliminarDoc(int $id)
    {
        # PREPARAMOS LA CONSULTA PARA EVITAR SQL INJECTION
        $stmt = $this->_db->prepare("DELETE FROM {$this->_table} WHERE id_{$this->_table} = :id");
        $stmt->bindParam(":id", $id, PDO::PARAM_INT);
        return $stmt->execute();
    }
    /**
     * PERMITE ACTUALIZAR TODOS LOS DATOS DE LA TABLA PFC
     */
    public function editarDocAll(string $elaboracion,string $evaluacion, int $nina, int $id, string $archivo)
    {
        # PREPARAMOS LA CONSULTA PARA EVITAR SQL INJECTION
        $stmt = $this->_db->prepare("
        UPDATE {$this->_table} SET 
        fecha_elaboracion=:elaboracion,
        proxima_evaluacion=:evaluacion,
        nina=:nina,
        archivo=:archivo
        ");
        $stmt->bindParam(':elaboracion',$elaboracion,PDO::PARAM_STR);
        $stmt->bindParam(':evaluacion',$evaluacion,PDO::PARAM_STR);
        $stmt->bindParam(':nina',$nina,PDO::PARAM_INT);
        $stmt->bindParam(':archivo',$archivo,PDO::PARAM_STR);
        $stmt->bindParam(':id',$id,PDO::PARAM_INT);
        return $stmt->execute();
    }
    /**
     * PERMITE ACTUALIZAR LOS DATOS DE LA TABLA PFC EXCLUYENDO EL CAMPO ARCHIVO
     */
    public function editarDoc(string $elaboracion,string $evaluacion, int $nina, int $id)
    {
        # PREPARAMOS LA CONSULTA PARA EVITAR SQL INJECTION
        $stmt = $this->_db->prepare("
        UPDATE {$this->_table} SET 
        fecha_elaboracion=:elaboracion,
        proxima_evaluacion=:evaluacion,
        nina=:nina
        WHERE id_{$this->_table} = :id
        ");
        $stmt->bindParam(':elaboracion',$elaboracion,PDO::PARAM_STR);
        $stmt->bindParam(':evaluacion',$evaluacion,PDO::PARAM_STR);
        $stmt->bindParam(':nina',$nina,PDO::PARAM_INT);
        $stmt->bindParam(':id',$id,PDO::PARAM_INT);
        return $stmt->execute();
    }
    /**
     * PERMITE OBTENER UN REGISTRO DE LA TABLA PFC ENVIANDO UN ID
     */
    public function mostrarDocId(int $id)
    {
        # PREPARAMOS LA CONSULTA PARA EVITAR SQL INJECTION
        $stmt = $this->_db->prepare("
            SELECT
                p.id_{$this->_table} AS id,
                p.fecha_elaboracion AS elaboracion,
                p.proxima_evaluacion AS evaluacion,
                p.archivo,
                CONCAT(n.apellidos,' ',n.nombres) AS nombres,
                n.id_nina as nina
            FROM {$this->_table} p,ninas n
            WHERE n.id_nina=p.nina
            AND id_{$this->_table}=:id;
        ");
        $stmt->bindParam(':id',$id,PDO::PARAM_INT);
        $stmt->execute();
        $response = $stmt->fetch(PDO::FETCH_ASSOC);
        return $response;
    }
}
