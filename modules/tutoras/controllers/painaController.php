<?php

class painaController extends tutorasController
{
    private $_paina;
    public function __construct()
    {
        parent::__construct();

        $this->_paina = $this->loadModel('paina');
    }

    public function index()
    {
        $this->_view->setJs(array("ajax"));
        $this->_view->assign('nina',$this->_paina->nina());
        $area_acomp=$this->push_array($this->_paina->area_acomp_des_personal(),$this->_paina->area_acomp_des_social()) ;
        $this->_view->assign('nina',$this->_paina->nina());
        $this->_view->assign('desarrollo_pers',$area_acomp);
        $this->_view->renderizar("registro");

    }

    public function nuevo_paina()
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            if ($this->getInt('guardar') == 1) {
                // echo "<pre>";print_r($_POST);
                // exit;
                $resp = $this->_paina->nuevo_paina(
                    array(
                        ":familia" => $this->getText('familia'),
                        ":etnia" => $this->getText('etnia'),
                        ":acogimiento" => $this->getText('causa_acogimiento'),
                        ":fecha_elaboracion" => $this->getText('fecha_elaboracion'),
                        ":proxima_evaluacion" => $this->getText('fecha_evaluacion'),
                        ":profesional" => $this->getText('profesional'),
                        ":cedula" => $this->getText('cedula'),
                        ":obj_general" => $this->getText('obj_general'),
                        ":nina" => $this->getInt('nina')
                    ),
                    $_POST['area']
                );
                if (!$resp) {
                    echo false;
                    exit;
                }
                echo true;
                exit;
            }
        } else {
            echo "Ha ocurrido un error no es una peticion xmlhttprequest";
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
        $dato = $this->_paina->Datos_Paina(2);
        ob_start();
        ?>
        <style>
            table{
                font-size:10px;
                margin-bottom:5px;
            }
            .border{
                border-radius: 2px;
            }
        </style>
        <p class="titulo">PROYECTO INTEGRAL DE ATENCION A LA NIÑA, NIÑO Y ADOLECENTE - PAINA</p>
        <table border="1" cellspacing="0" cellpadding="5" >
            <tr>
                <th>etnia</th>
                <th> <?= $dato->etnia;?> </th>
            </tr>
        </table>
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
