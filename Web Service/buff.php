<?php
 header('Access-Control-Allow-Origin: *');
 header('Access-Control-Allow-Methods: GET, POST,OPTIONS, PUT, DELETE');
 header('content-type: application/json; charset=utf-8');
 header('Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept');

//importar mis librerias
include "config.php";
include "utilitarios.php";

//conectar con la base de datos

$dbConn= connect($db);

if($_SERVER['REQUEST_METHOD']==='GET')
{
 
    if(isset($_GET['id'])===false){
       // si no envió parametros
       //localhost/ws61/agenda.php
       $cadenaSql="";
       $cadenaSql=" SELECT * FROM `buff` ";
       $respuestaSql= $dbConn->prepare($cadenaSql);
       $respuestaSql->execute();
       $respuestaSql->setFetchMode(PDO::FETCH_ASSOC);
       header("HTTP/1.1 200 ok");
       echo json_encode( $respuestaSql->fetchAll());
       exit();
    }

}





?>