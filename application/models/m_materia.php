<?php
    class m_materia extends CI_Model
    {
        public function __construct()
        {
            parent::__construct();
        }

        function Getmaterias() {
            $query = $this->db->get('departamento');
            return $query->result();
        }


        function GetMateriaAprob($departamento) {
            $this->db->from('notas');
            $this->db->join('materia','notas.id_materia  = materia.id');
            $this->db->where('nota >=', 51);
            $this->db->where('materia.departamento', $departamento);
            $consulta = $this->db->get();
            return $consulta->num_rows();
        }


    }
    