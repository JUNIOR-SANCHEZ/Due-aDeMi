<?php
class pgfController extends tutorasController
{
    # DECLARAMOS EL ATRIBUTO _NINA
    private $_nina;
    public function __construct()
    {
        # LLAMADA AL METODO CONSTRUCTOR DE LA CLASE PADRE
        parent::__construct();
        # INSTANCIAMOS LA CLASE NINASMODEL EN EL ATRIBUTO _NINA
    }
    public function index()
    {
        # code...
        $this->_view->renderizar('index');
    }
}