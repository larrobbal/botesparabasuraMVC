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

        public function loadProductos()
        {
            $subcategoria=$this->getControladorSubcategoria();
            $load = $this->db->query("SELECT idProducto,nombreProducto,imagenProducto FROM producto p INNER JOIN subcategoria s ON p.fk_idSubcategoria = s.idSubcategoria WHERE s.controlador_subcategoria ='$subcategoria';");
            $_SESSION['nombreSubcategoria']=$this->db->query("SELECT nombreSubcategoria FROM subcategoria WHERE controlador_subcategoria = '$subcategoria';");
            return $load;
        }
    }
?>