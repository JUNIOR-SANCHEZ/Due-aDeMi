<?php
class pgfController extends tutorasController
{
    private $_pgf;

    public function __construct()
    {

        parent::__construct();
        $this->_pgf = $this->loadModel('pgf');
    }

    public function index()
    {
        $this->_view->setJs(array('ajax'));
        $area_acomp = $this->push_array($this->_pgf->area_acomp_des_personal(), $this->_pgf->area_acomp_des_social());
        $this->_view->assign('nina', $this->_pgf->nina());
        $this->_view->assign('desarrollo_pers', $area_acomp);

        $this->_view->renderizar("nuevo");
    }
    public function nuevopgf()
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            if ($this->getInt('guardar') == 1) {
                // echo "<pre>";print_r($_POST);
                // exit;
                $resp = $this->_pgf->nuevapgf(
                    array(
                        ":familia" => $this->getText('familia'),
                        ":etnia" => $this->getText('etnia'),
                        ":acogimiento" => $this->getText('causa_acogimiento'),
                        ":fecha_elaboracion" => $this->getText('fecha_elaboracion'),
                        ":proxima_evaluacion" => $this->getText('fecha_evaluacion'),
                        ":profesional" => $this->getText('profesional'),
                        ":cedula" => $this->getText('cedula'),
                        ":diag_familia" => $this->getText('diag_familia'),
                        ":diag_equipo" => $this->getText('diag_equipo'),
                        ":consensuado_familia" => $this->getText('Consensuado_familia'),
                        ":consensuado_equipo" => $this->getText('del_equipo'),
                        ":nina" => $this->getInt('nina'),
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

        $pdf->setTextShadow(array('enabled' => true, 'depth_w' => 0.2, 'depth_h' => 0.2, 'color' => array(196, 196, 196), 'opacity' => 1, 'blend_mode' => 'Normal'));
        $dato = $this->_pgf->Datos_PGF($id);
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
        <p class="titulo"><strong>FICHA DE INGRESO DEL PLAN GLOBAL FAMILIAR</strong></p>
        <table border="1" cellspacing="" cellpadding="5" >
            <tr>
                <td colspan="2">
                <strong> Proyecto Global De Familia</strong>
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
                   Niños/as Adolescentes:

                </td>
                <td>
                <?=$dato->nombres?> <?=$dato->apellidos?>
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
                <td colspan="2">
                <strong> Diagnostico De Situacion</strong>
                </td>
            </tr>
        <tr>
            <td>

                   Familia:  <?=$dato->diag_sit_familia?>

            </td>
                <td>
                Equipo:  <?=$dato->diag_sit_equipo?>
                </td>
            </tr>

        </table>
        <p></p>
        <table border="1" cellspacing="" cellpadding="5" >
        <tr>
                <td colspan="2">
                <strong>Objetivo General</strong>
                </td>
            </tr>
        <tr>
            <td>

            Consensuado con la familia : <?=$dato->obj_gene_familia?>

            </td>
                <td>
                Del equipo Consensuado con la familia: <?=$dato->obj_gene_equipo?>
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
                    <p Style="text-align:center;"><strong>Dinamica Intrafamiliares</strong></p>
                    <p> -Convivencia y Relaciones Familiares</p>
                    <p> -Aislamiento Socio Familiar</p>
                    <p>-Habitos Y Rutina Familiar</p>
                    <p>-Habilidades Educativas/de cuidado del NNA</p>
               </td>
               <td>
               <p Style="text-align:center;"><strong>Condiciones Socioculturales</strong></p>
                   <p> -Salud</p>
                   <p> -Legal</p>
                   <p> -Vivienda</p>
                   <p> -Economia Laboral</p>
                   <p> -Educacion</p>
                   <p>-Recursos Comunitarios</p>
                   </td>
           </tr>
        </table>

        <p></p>
        <?php
$area = $this->_pgf->Datos_AREA($dato->id_pgf);
        foreach ($area as $item): ?>
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
                <td colspan="1"><strong>Evaluacion Global de todas las Areas</strong></td>
            </tr>
            <tr>
                <td>
                <?=$item["descripcion_area_acomp"]?>
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

    public function lista_pgf()
    {
        $this->_view->setJs(array("ajaxlista"));
        $paginador = new Paginador();
        # ENVIAMOS LLOS REGISTROS DE LA TABLA PFC A LA VISTA UTILIANDO LA PAGINACION
        $this->_view->assign('l', $paginador->paginar($this->_pgf->listapgf(), false));
        # ENVIAMOS LA PAGINACION
        $this->_view->assign('paginador', $paginador->getView('paginacion_ajax'));
        // $this->_view->assign("l", $this->_pgf->listapgf());
        $this->_view->renderizar("pgflista");

    }

    public function lista_pgf_ajax()
    {
        if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
            # OBTENEMOS EL NUMERO DE PAGINA DEL PAGINADOR
            $pagina = $this->getInt('pagina');
            # MUESTRA LOS DATOS DE LAS NIÑAS INGRESADAS
            $paginador = new Paginador();
            # ENVIAMOS LLOS REGISTROS DE LA TABLA PFC A LA VISTA UTILIZANDO LA PAGINACION
            $this->_view->assign('l', $paginador->paginar($this->_pgf->listapgf(), $pagina));
            # ENVIAMOS LA PAGINACION
            $this->_view->assign('paginador', $paginador->getView('paginacion_ajax'));
            # RENDERIZAMOS LA VISTA QUE MOSTRARA EL CONTENIDO DE LA PAGINA
            $this->_view->renderizar("viewAjax/pgf", false, true);
        } else {
            throw new Exception("Error Processing Request", 1);
        }
    }
}