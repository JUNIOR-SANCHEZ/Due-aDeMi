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
    public function pdf($id)
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
        $tagvs = array('p' => array(0 => array('h' => 0, 'n' => 0), 1 => array('h' => 0, 'n' => 0)));
        $pdf->setHtmlVSpace($tagvs);

        $pdf->setTextShadow(array('enabled' => true, 'depth_w' => 0.2, 'depth_h' => 0.2, 'color' => array(196, 196, 196), 'opacity' => 1, 'blend_mode' => 'Normal'));
        $dato = $this->_paina->Datos_Paina($id);
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
                <td colspan="2">
                <strong> Paina</strong>
                </td>
            </tr>
        <tr>
                <td>
                   Familia:

                </td>
                <td>
                    <?=$dato->familia?>
                </td>
        </tr>
            <tr>
                <td>
                   Etnia:

                </td>
                <td>
                    <?=$dato->etnia?>
                </td>
            </tr>
            <tr>
                <td>
                   Acogimiento:

                </td>
                <td>
                <?=$dato->acogimiento?>
                </td>
            </tr>
            <tr>
                <td>
                   Fecha Elaboracion:

                </td>
                <td>
                    <?=$dato->fecha_elaboracion?>
                </td>
            </tr>
            <tr>
                <td>
                   Proxima Evaluacion:

                </td>
                <td>
                <?=$dato->proxima_evaluacion?> 
                </td>
            </tr>
            <tr>
                <td>
                   Profesional:

                </td>
                <td>
                    <?=$dato->profesional?>
                </td>
            </tr>
            <tr>
                <td>
                   Cedula:

                </td>
                <td>
                <?=$dato->cedula?> 
                </td>
            </tr>
        </table>
        <p></p>
        <table border="1" cellspacing="" cellpadding="5" >
        <tr>
                <td colspan="1">
                <strong>Objetivo General</strong>
                </td>
            </tr>
        <tr>
            <td>
            <?=$dato->obj_general?>
            </td>
        </tr>
                      
        </table>
        <p></p>
        <table border="1" cellspacing="" cellpadding="5" >
            <tr>
                <td colspan="2"><strong>Area de acompañamiento</strong></td>
            </tr>
            <tr>
                <td>
                    <p Style="text-align:center;"><strong>Desarrollo Personal</strong></p>
                    <p> -Cognitivo Intelectual</p>
                    <p> -Afectivo Emocional</p>
                    <p>-Autonomia Personal</p>
                    <p>-Fisico y Salud</p>
                    <p>-Habilidades Sociales</p>
                    <p>-Espiritual</p>
               </td>
               <td>
               <p Style="text-align:center;"><strong>Desarrollo Social</strong></p>
                   <p> -Familiar</p>
                   <p> -Escolar</p>
                   <p> -Espacio de Acogida</p>
                   <p> -Comunitario</p>
                   <p> -Ocio y Tiempo Libre</p>
                   </td>
           </tr>
        </table>
        <p></p>
        <?php
        $area = $this->_paina->Datos_AREA($dato->id_paina);
        foreach($area as $item ):?>
        <table border="1" cellspacing="" cellpadding="5" >
            <tr>
                <td colspan="1"><strong>Area</strong></td>
            </tr>
            <tr>
                <td colspan="1"><strong>Diagnostico del Area</strong></td>
            </tr>
            <tr>
                <td>
                <?=$item["diagnostico_area"]?>
               </td>
           </tr>
        </table>
        <p></p>
        <table border="1" cellspacing="" cellpadding="5" >
            <tr>
                <td colspan="1"><strong>Objetivo del Area</strong></td>
            </tr>
            <tr>
                <td>
                <?=$item["objetivo_area"]?>
               </td>
           
           </tr>
        </table>
        <p></p>
        <table border="1" cellspacing="" cellpadding="5" >
           <tr>
               <td colspan="2"><strong>Areas</strong></td>
           </tr> 
            <tr>
                <td colspan="2">
                    <p><strong>Descripcion</strong></p>
                    <?=$item["acti_descripcion"]?>
               </td>
            </tr>
                
            <tr>
                <td>
                    <p><strong>Responsables</strong></p>
                    <?=$item["acti_responsable"]?>
               </td>
               <td>
                    <p><strong>Tiempo</strong></p>
                    <?=$item["acti_tiempo"]?>

               </td>
            </tr>
            <tr>
                <td>
                    <p><strong>Evaluacion</strong></p>
                    <?=$item["acti_evaluacion"]?>

               </td>
               <td>
                    <p><strong>Observaciones</strong></p>
                    <?=$item["acti_observacion"]?>

               </td>
            </tr>
        </table>
        <p></p>
        <table border="1" cellspacing="" cellpadding="5" >
        <tr>
                <td colspan="1">
                <strong>Evaluacion Global de Todas las Areas</strong>
                </td>
            </tr>
        <tr>
             <td>
                <?=$item["evaluacion_global"]?>
            </td>
        </tr>
        </table>
        <?php endforeach;?>
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
    public function lista_paina()
    {
       $this->_view->assign("l",$this->_paina->listapaina());
       $this->_view->renderizar("listapaina");

    }

}
