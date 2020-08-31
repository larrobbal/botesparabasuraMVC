<?php
include('param.php');
class DataBase
{
    public static function connect()
    {
        $db = new mysqli(DBHOST,DBUSER,DBPASS,DBNAME);
        $db->query("set names 'utf8'");
        return $db;
    }
}
?>