<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class pdfController extends Controller {

    private $_pdf;

    public function __construct() {
        parent::__construct();
        $this->getLibreria("fpdf");
        $this->_pdf = new FPDF;
    }

    public function index() {
        
    }

    public function pdf1() {
        $this->_pdf->AddPage();
        $this->_pdf->SetFont('Arial', 'B', 16);
        $this->_pdf->Cell(40, 10, '¡Hola, Mundo!');
        $this->_pdf->Output();
    }

}
