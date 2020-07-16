<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Aprobado extends CI_Controller
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
        $id1 =  $this->uri->segment(2);
        $data['aprob'] = $this->m_materia->GetMateriaAprob($id1);
        $this->load->view('aprobado_view',$data);
    }
}
