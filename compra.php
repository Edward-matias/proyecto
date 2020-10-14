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
       
       $cadenaSql="";
       $cadenaSql=" SELECT * FROM `compra` ";
       $respuestaSql= $dbConn->prepare($cadenaSql);
       $respuestaSql->execute();
       $respuestaSql->setFetchMode(PDO::FETCH_ASSOC);
       header("HTTP/1.1 200 ok");
       echo json_encode( $respuestaSql->fetchAll());
       exit();
    }

}


if($_SERVER['REQUEST_METHOD']==='POST')
{
        $JSONData = file_get_contents("php://input");
        $dataObject = json_decode($JSONData);
        $cadenaSql="";
        $cadenaSql= $cadenaSql." INSERT INTO compra( `nombre`, `apellido`, `ciudad`, `telefono`, `pago`, `longitudToma`, `latitudToma`) VALUES";
        $cadenaSql= $cadenaSql."( '$dataObject->nombre', ";
        $cadenaSql= $cadenaSql." '$dataObject->apellido', ";
        $cadenaSql= $cadenaSql." '$dataObject->ciudad', ";
        $cadenaSql= $cadenaSql." '$dataObject->telefono', ";
        $cadenaSql= $cadenaSql." '$dataObject->pago', ";
        $cadenaSql= $cadenaSql." '$dataObject->longitudToma', ";
        $cadenaSql= $cadenaSql." '$dataObject->latitudToma');";


      
        $respuestaSql=$dbConn->query($cadenaSql);
        if($respuestaSql){
        //$data->id=$dbConn->insert_id;
        exit(json_encode($data));
        }else{
        exit(json_encode(array('status'=>'error')));
        }   
    
    
}




?>