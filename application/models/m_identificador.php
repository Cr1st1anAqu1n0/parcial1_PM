<?php
    class m_identificador extends CI_Model
    {
        public function __construct()
        {
            parent::__construct();
        }

        function GetIdentificador($ci) {
         
            $this->db->where('ci', $ci);
            $query = $this->db->get('identificador');
            return $query->result();
        }
    }
    