<?php
class pfcController extends tutorasController
{
    private $_sql;
    public function __construct()
    {
        parent::__construct();
        $this->_sql = $this->loadModel("pfc");
    }
    public function index()
    {
        $this->_view->setJs(array("ajax"));
        $this->_view->assign("nina", $this->_sql->nina());
        $this->_view->renderizar("nuevo", "pfc","pfc_nuevo");
    }
    /**
     * MUESTRA UNA LISTA DE PLANES DE FORTALECIMIENTO COMUNITARIO QUE ESTAN LISTO PARA RELALIZAR UN REPORTE
     */
    public function informe()
    {
        $this->_view->assign("x", $this->_sql->listaPfcPdf());
        $paginador = new Paginador();
        $this->_view->assign('x', $paginador->paginar($this->_sql->listaPfcPdf(), false));
        $this->_view->assign('paginador', $paginador->getView('paginacion_ajax'));
        $this->_view->renderizar("informes","pfc","pfc_informe");
    }
    /**
     * MUESTRA UNA LISTA DE PLANES DE FORTALECIMIENTO COMUNITARIO QUE ESTAN LISTO PARA RELALIZAR CAMBIOS EN ELLOS
     */
    public function lista()
    {
        $this->_view->renderizar("lista","pfc","pfc_lista");
    }
    /**
     * FUNCION QUE PERMITE REGITRA UN PLAN DE FORTALECIMIENTO COMUNITARIO
     */
    public function nuevoPfc()
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            if ($this->getInt("guardar") == 1) {
                echo "<pre>";
                print_r($_POST);
                exit;
                $resp = $this->_sql->nuevoPfc(
                    array(
                        ":nombre" => $this->getText("nombre"),
                        ":canton" => $this->getText("canton"),
                        ":parroquia" => $this->getText("parroquia"),
                        ":num_fami" => $this->getText("nro_familia"),
                        ":num_nna" => $this->getText("nro_nna"),
                        ":fecha_elab" => date("Y/m/d", strtotime($this->getText("fecha_elaboracion"))),
                        ":fecha_eval" => date("Y/m/d", strtotime($this->getText("fecha_evaluacion"))),
                        ":nina" => $this->getText("nina"),
                        ":diag_part_comu" => $this->getText("diag_part_comunidad"),
                        ":obj_gen" => $this->getText("obj_general"),
                        ":obj_esp" => $this->getText("obj_especificos"),
                    ),
                    array(

                    ),
                    $_POST["intervencion"],
                    $_POST["seguimiento"],
                    $_POST["responsable"]
                );

                if (!$resp) {
                    echo false;
                    exit;
                }
                echo true;
                exit;
            }

        } else {
            echo "Error Processing Request";
            exit;
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
        ob_start();
        ?>
        <style>
            table{

                border-collapse: collapse;
            }
            table, tr, th, td{
                border: 1px solid #000;
                font-size: 12px;
            }
            table tr th{
                width: 35%;
                padding-top: 10px;
                font-weight:bold;

            }
            table tr td{
                width: 60%;
                padding: 10px;
            }
        </style>
        <br>
        <div class="titulo">FICHA DE INGRESO DE LA  NIÑA NIÑO Y ADOLECENTE</div>
        <br>
        <table >
            <tr>
                <th  >Nombres y apellidos de la niña, niño adolescente</th>
                <td>Lorem ipsum dolor sit amet.</td>
            </tr>
            <tr>
                <th>Edad</th>
                <td>Lorem ipsum dolor sit amet.</td>
            </tr>
        </table>
        <?php
        $html = ob_get_clean();
        ob_clean();
        $pdf->writeHTMLCell(0, 0, '', '', $html, 0, 1, 0, true, '', true);
        $pdf->Output('example_001.pdf', 'I');
    }
}