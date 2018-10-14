<?php

class ninasController extends tutorasController
{
    /**
     * DECLARAMOS EL ATRIBUTO QUE CONTENDRA EL OBJETO DE LA CLASE ninasModel PARA
     * REALIZAR LA GESTIONES DE LA BASE DE DATO
     */

    private $_nina;
    public function __construct()
    {
        # LLAMADA AL METODO CONSTRUCTOR DE LA CLASE PADRE
        parent::__construct();
        # INSTANCIAMOS LA CLASE NINASMODEL EN EL ATRIBUTO _NINA
        $this->_nina = $this->loadModel('ninas');
    }
    public function index()
    {
        if (!$this->_acl->permiso("add_nina")) {$this->redireccionar();}
        # HACEMOS USO DEL ARCHIVO AJAX.JS
        $this->_view->setJs(array('validacion','ajax', 'img'));
        $this->_view->renderizar("registro", "ninas");
    }

    public function nuevaNina()
    {
        /**
         * VERIFICAMOS SI SE A ENVIADO UNA PETICION VIA AJAX
         * EN CASO NO SE HAYA ENVIADO MOSTRARA UN MENSAJE DE ERROR
         */
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            # VERIFICAMOS SI SE HA ENVIADO POR POST EL CAMPO GUARDAR CON VALOR 1
            // echo "<pre>";print_r(json_decode($_POST["familia"]));
            // print_r($_POST);
            // print_r($_FILES);exit;
            if ($this->getInt('guardar') == 1) {
                $upload = new file($_FILES['foto']);
                if ($upload->uploaded) {
                    $ruta = ROOT . "public" . DS . "img" . DS . "nina" . DS;
                    $upload->file_new_name_body = 'upl_' . uniqid();
                    $upload->process_img($ruta);
                    if ($upload->processed) {
                        $result = $this->_nina->nuevaNina(
                            array(
                                ":fecha_ingreso" => "201-05-25",
                                ":nombres" => $this->getText("nombres"),
                                ":apellidos" => $this->getText("apellidos"),
                                ":lugar_nacimiento" => $this->getText("lugar_nacimiento"),
                                ":fecha_nacimiento" => date("Y/m/d", strtotime($this->getText("fecha_nacimiento"))),
                                ":foto" => $upload->file_name_body,
                                ":cedula" => $this->getText("cedula"),
                                ":telefono" => $this->getText("phone"),
                                ":direccion" => $this->getText("direccion"),
                                ":tipo_medida" => $this->getText("tipo-medida"),
                                ":numero_medida" => $this->getText('num-medida'),
                                ":fecha_medida" => $this->getText('fecha-medida'),
                                ":orga_persona" => $this->getText('nombre_solicitud'),
                                ":desc_vestimenta" => $this->getText("vestimenta"),
                                ":desc_maltrato_fisico" => $this->getText("maltrato-fisico"),
                                ":desc_pertenencia" => $this->getText("pertenencias"),
                                ":desc_obs_generales" => $this->getText("observaciones-generales"),
                                ":desc_estado_salud" => $this->getText("salud"),
                            ),
                            json_decode($_POST["informante"],true),
                            json_decode($_POST["familia"],true)
                        );

                        if (!$result) {
                            echo false;
                            exit;
                        }
                        echo true;
                        exit;

                    } else {
                        echo  $upload->error;
                    }
                }

            }

        } else {
            echo "Error Processing Request";
        }
    }

    public function pdf()
    {
        $pdf = new MyPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

        $pdf->SetCreator(PDF_CREATOR);
        $pdf->SetAuthor('Julio Sanchez Gaona');
        $pdf->SetTitle('DEÑA DE MI');
        $pdf->SetSubject('PDF de plan comunitario familiar');
        $pdf->SetKeywords('TCPDF, PDF, example, test, guide');

        $pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE . ' 001', PDF_HEADER_STRING, array(0, 64, 255), array(0, 64, 128));
        $pdf->setFooterData(array(0, 64, 0), array(0, 64, 128));

        $pdf->setHeaderFont(array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
        $pdf->setFooterFont(array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

        $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

        $pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
        $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
        $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

        $pdf->SetAutoPageBreak(true, PDF_MARGIN_BOTTOM);

        $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

        if (@file_exists(dirname(__FILE__) . '/lang/eng.php')) {
            require_once dirname(__FILE__) . '/lang/eng.php';
            $pdf->setLanguageArray($l);
        }

        $pdf->setFontSubsetting(true);

        $pdf->SetFont('dejavusans', '', 14, '', true);

        $pdf->AddPage();

        $pdf->setTextShadow(array('enabled' => true, 'depth_w' => 0.2, 'depth_h' => 0.2, 'color' => array(196, 196, 196), 'opacity' => 1, 'blend_mode' => 'Normal'));
        $dato = $this->_nina->ninaView(75);
        ob_start();
        ?>
        <style>
            .titulo{
                text-align:center;
                
            }
            .subtitle{
                font-size:12px;
                font-weight:bold;
            }

            table, tr, th, td{
                font-size: 12px;
            }
            table tr th{
                width: 35%;
                font-weight:bold;

            }
            table tr td{
                width: 65%;
            }
        </style>
        <p class="titulo">FICHA DE INGRESO DE LA  NIÑA NIÑO Y ADOLESCENTE</p>
        <p>
        <img src="<?=ROOT . "public" . DS . "img" . DS . "nina" . DS . $dato->foto?>" width="200px"  class="img"/>
        </p>
        <table border="1" cellspacing="0" cellpadding="5" >
            <tr>
                <th>Nombres y apellidos de la niña, niño adolescente</th>
                <td><?=$dato->apellidos . " " . $dato->nombres?></td>
            </tr>
            <tr>
                <th>Edad</th>
                <td><?=$this->edad($dato->fecha_nacimiento);?></td>
            </tr>
            <tr>
                <th>Lugar y fecha de nacimiento</th>
                <td><?=$dato->lugar_nacimiento . " " . $dato->fecha_nacimiento?></td>
            </tr>
            <tr>
                <th>Dirección</th>
                <td><?=$dato->direccion?></td>
            </tr>
            <tr>
                <th>Telefono</th>
                <td><?=$dato->telefono?></td>
            </tr>
            <tr>
                <th>Tipo de medida</th>
                <td><?=$dato->tipo_medida?></td>
            </tr>
            <tr>
                <th>N de mediada</th>
                <td><?=$dato->numero_medida?></td>
            </tr>
            <tr>
                <th>Nombre de la persona u organización que solicita la medida</th>
                <td><?=$dato->organiacion_persona?></td>
            </tr>
        </table>
        <p class="subtitle">DATOS QUIEN INFORMA DE LA SITUACION</p>

        <?php

        $html = ob_get_clean();
        ob_clean();
        $pdf->writeHTMLCell(0, 0, '', '', $html, 0, 1, 0, true, '', true);

        $pdf->Output('nina.pdf', 'I');

    }
    private function edad($fecha_nacimiento)
    {
        $cumpleanos = new DateTime($fecha_nacimiento);
        $hoy = new DateTime();
        $annos = $hoy->diff($cumpleanos);
        return $annos->y;
    }
}
