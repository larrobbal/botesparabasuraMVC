<?php
    require_once 'config/db.php';
    require_once 'autoload.php';
    require_once 'config/param.php';
    require_once 'views/layouts/header.php';
    require_once 'views/layouts/sidebar.html';
    function error_controller()
    {
        $error = new errorcontroller();
        $error->index();
    }
    if(isset($_GET['controller']))
    {
        $controller_name=$_GET['controller'].'controller';
    }
    else if(!isset($_GET['controller'])&&!isset($_GET['action']))
    {
        $controller_name=DEFAUL_CONTROLLER;
    }
    else 
    {
        error_controller();
    }
    if (class_exists($controller_name))
    {
        $controlador = new $controller_name();
        if(isset($_GET['action']) && method_exists($controlador,$_GET['action']))
        {
            $action = $_GET['action'];
            $controlador->$action();
        }
        elseif(!isset($_GET['controller'])&&!isset($_GET['action']))
        {
            $action_default=DEFAULT_ACTION;
            $controlador->$action_default();
        }
        else
        {
            error_controller();
        }
    }
    else
    {
        error_controller();
    }
    require_once 'views/layouts/footer.php';
?>