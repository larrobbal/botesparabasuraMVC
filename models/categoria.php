<?php
    class Categoria
    {
        private $idCategoria;
        private $nombreCategoria;
        private $controladorCategoria;
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

        public function setControladorCategoria($controladorCategoria)
        {
            $this->controladorCategoria=$controladorCategoria;
        }
        public function getControladorCategoria()
        {
            return $this->controladorCategoria;
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
            $load = $this->db->query("SELECT idCategoria,nombreCategoria,controlador_categoria,imagenCategoria FROM categoria");
            return $load;
        }

        public function loadSubcategorias()
        {
            $categoria=$this->getControladorCategoria();
            $load = $this->db->query("SELECT idSubcategoria,fk_idCategoria,nombreSubcategoria,controlador_subcategoria,imagenSubcategoria FROM subcategoria subcat INNER JOIN categoria cat ON subcat.fk_idCategoria = t2.idCategoria WHERE t2.controlador_categoria ='$categoria';");
            return $load;
        }
    }
?>