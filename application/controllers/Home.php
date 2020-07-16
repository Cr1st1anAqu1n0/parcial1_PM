<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller
{
    public function __construct() {

        parent::__construct();

        //cargamos la base de datos por defecto
        $this->load->database('default');
        //cargamos el helper url y el helper form
        $this->load->helper(array('url', 'form'));
        //cargamos la librería form_validation
        $this->load->library(array('form_validation'));
        //cargamos el modelo crud_model
        $this->load->model('m_usuario');
        $this->load->model('m_materia');
        $this->load->model('m_identificador');
    }

    public function index() {
        $ci =  $this->session->userdata('ci');
       // echo json_encode($ci);
        $data['ident'] =$this->m_identificador->GetIdentificador($ci);
            
        $data['materias'] = $this->m_materia->Getmaterias();
        $this->load->view('home_view',$data);
    }

    function testQuery() {
        //$this->Mgestor_aplicacion->InsertServidorBD( 8, "172.16.101.18", "VIRTUALIZADO", "IAQUINO", "FUDNDEMQ", "", "", "", "", "iaquino");

        $idConcepto = $this->m_usuario->GetUsuario('6168054');

        echo json_encode($idConcepto);
        //  echo 'hola';
        //  echo json_encode( $this->Mdirectorio->MostrarRelacionAppSrvF());
    }

  
}
