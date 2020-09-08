<?php
    require_once 'models/subcategoria.php';
    class subcategoriacontroller
    {
        public function loadproductos()
        {
            if(isset($_GET['subcategoria']))
            {
                $subcategoria = new Subcategoria();
                $subcategoria->setControladorSubcategoria($_GET['subcategoria']);
                $result = $subcategoria->loadProductos();
                require_once 'views/producto/index.php';
            }
        }
    }
?>