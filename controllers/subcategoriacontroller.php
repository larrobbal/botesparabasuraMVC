<?php
    require_once 'models/subcategoria.php';
    class subcategoriacontroller
    {
        public function loadsubcat()
        {
            if(isset($_GET['categoria']))
            {
                $subcategoria = new Subcategoria();
                $result = $subcategoria->loadSubcategorias($_GET['categoria']);
                require_once 'views/subcategoria/index.php';
            }
        }
    }
?>