<?php
    require_once 'models/categoria.php';
    class categoriacontroller
    {
        public function index()
        {
            $categoria = new Categoria();
            $result = $categoria->loadCategorias();
            require_once 'views/categoria/index.php';
        }
    }
?>