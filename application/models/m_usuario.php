<?php
    class m_usuario extends CI_Model
    {
        public function __construct()
        {
            parent::__construct();
        }

        function GetUsuario($ci, $pass) {
         
            $this->db->where('ci', $ci);
            $this->db->where('clave', $pass);
            $query = $this->db->get('usuario');
            return $query->row();
        }
    }
    