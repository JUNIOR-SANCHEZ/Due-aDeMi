  <?php

class ninasModel extends Model
{
    public function __construct()
    {
        parent::__construct();
    }
    public function nuevaNina($nna,$info,$fami)
    {
        try{
            $this->_db->beginTransaction();
            $sql = "INSERT INTO ninas VALUES (NULL,:fecha_ingreso,:nombres,:apellidos,:lugar_nacimiento,:fecha_nacimiento,:foto,:cedula,:telefono,:direccion,
            :tipo_medida,:numero_medida,:fecha_medida,:orga_persona,:desc_vestimenta,:desc_maltrato_fisico,:desc_pertenencia,:desc_obs_generales,
            :desc_estado_salud);";
            $stmt = $this->_db->prepare($sql);
            $stmt->execute($nna);
            $lastnna = $this->_db->lastInsertId();
            $sql = "INSERT INTO ninas_informantes VALUES (NULL,:nombres,:apellidos,:direccion,:telefono,:institucion,:documento_ingreso,$lastnna);";
            $stmt = $this->_db->prepare($sql);
            foreach($info as $item){
                $stmt->execute(array(
                    ":nombres"=>$item['nombres'],
                    ":apellidos"=>$item['apellidos'],
                    ":direccion"=>$item['direccion'],
                    ":telefono"=>$item['phone'],
                    ":institucion"=>$item['institucion'],
                    ":documento_ingreso"=>$item['documento']
                ));
            }
            $sql = "INSERT INTO ninas_familia VALUES (NULL,:nombres,:apellidos,:parentesco,:edad,:cedula,:direccion,:telefono,:lugar_trabajo,$lastnna);";
            $stmt = $this->_db->prepare($sql);
            foreach($fami as $item){
                $stmt->execute(array(
                    ":nombres"=>$item['nombres'],
                    ":apellidos"=>$item['apellidos'],
                    ":parentesco"=>$item['parentesco'],
                    ":edad"=>$item['edad'],
                    ":cedula"=>$item['cedula'],
                    ":direccion"=>$item['direccion'],
                    ":telefono"=>$item['phone'],
                    ":lugar_trabajo"=>$item['trabajo']
                ));
            }
            $this->_db->commit();
            return true;
        }catch(PDOException $e){
            $this->_db->rollBack();
            echo $e->getMessage();
            return false;
        }
    }
}
