<?php
    class Subcategoria
    {
        private $idSubcategoria;
        private $idCategoria;
        private $nombreSubcategoria;
        private $controladorSubcategoria;
        private $imagenSubcategoria;
        private $db;

        public function __construct()
        {
            $this->db=DataBase::connect();
        }

        public function setIdSubcategoria($idSubcategoria)
        {
            $this->idSubcategoria = $idSubcategoria;
        }
        public function getIdSubcategoria()
        {
            return $this->idSubcategoria;
        }
        
        public function setIdCategoria($idCategoria)
        {
            $this->idCategoria = $idCategoria;
        }
        public function getIdCategoria()
        {
            return $this->idCategoria;
        }

        public function setNombreSubcategoria($nombreSubcategoria)
        {
            $this->nombreSubcategoria=$nombreSubcategoria;
        }
        public function getNombreSubcategoria()
        {
            return $this->nombreSubcategoria;
        }

        public function setControladorSubcategoria($controladorSubcategoria)
        {
            $this->controladorSubcategoria=$controladorSubcategoria;
        }
        public function getControladorSubcategoria()
        {
            return $this->controladorSubcategoria;
        }

        public function setImagenSubcategoria($imagenSubcategoria)
        {
            $this->imagenSubcategoria=$imagenSubcategoria;
        }
        public function getImagenSubcategoria()
        {
            return $this->imagenSubcategoria;
        }

        public function loadSubcategorias($categoria)
        {
            $load = $this->db->query("SELECT idSubcategoria,nombreSubcategoria,controlador_subcategoria,imagenSubcategoria FROM subcategoria subcat INNER JOIN categoria cat ON subcat.fk_idCategoria = cat.idCategoria WHERE cat.controlador_categoria ='$categoria';");
            return $load;
        }
    }
?>