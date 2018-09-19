<?php
class indexModel extends Model{
    public function __construct() {
        parent::__construct();
    }

    public function tabla($tabla)
    {
        # code...
       echo $this->executeSql($tabla);
    }
}