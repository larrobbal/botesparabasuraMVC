<?php
    class Categoria
    {
        private $idCategoria;
        private $nombreCategoria;
        private $imagenCategoria;
        private $db;

        public function __construct()
        {
            $this->db=DataBase::connect();
        }

        public function setIdCategoria($idCategoria)
        {
            $this->idCategoria = $idCategoria;
        }
        public function getIdCategoria()
        {
            return $this->idCategoria;
        }

        public function setNombreCategoria($nombreCategoria)
        {
            $this->nombreCategoria=$nombreCategoria;
        }
        public function getNombreCategoria()
        {
            return $this->nombreCategoria;
        }

        public function setImagenCategoria($imagenCategoria)
        {
            $this->imagenCategoria=$imagenCategoria;
        }
        public function getImagenCategoria()
        {
            return $this->imagenCategoria;
        }

        public function loadCategorias()
        {
            $load = $this->db->query("SELECT idCategoria,nombreCategoria,imagenCategoria FROM categoria");
            return $load;
        }
    }
?>