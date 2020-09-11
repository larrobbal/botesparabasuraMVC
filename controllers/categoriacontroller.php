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
        public function loadsubcat()
        {
            if(isset($_GET['categoria']))
            {
                $categoria = new Categoria();
                $categoria->setControladorCategoria($_GET['categoria']);
                $result = $categoria->loadSubcategorias();
                require_once 'views/subcategoria/index.php';
            }
        }
    }
?>