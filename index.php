<?php
    require_once 'config/db.php';
    require_once 'autoload.php';
    require_once 'config/param.php';
    require_once 'views/layouts/header.php';
    require_once 'views/layouts/sidebar.html';
    if(isset($_GET['controller']))
    {
        $controller_name=$_GET['controller'].'controller';
    }
    else
    {
        echo 'La página que buscas no existe';
        exit();
    }
    if (class_exists($controller_name))
    {
        $controlador = new $controller_name();
        if(isset($_GET['action']) && method_exists($controlador,$_GET['action']))
        {
            $action = $_GET['action'];
            $controlador->$action();
        }
        else
        {
            echo 'La página que buscas no existe';
        }
    }
    else
    {
        echo 'La página que buscas no existe';
    }
    require_once 'views/layouts/footer.php';
?>