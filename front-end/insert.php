<?php

$request_body = file_get_contents('php://input');
$json = json_decode($request_body);
var_dump($json);

//Conexion a la base de datos
$pdo = new PDO(
    'mysql:host=localhost;dbname=eppw',
    'root',
    '',
);

//Preparando el query con pdo
$query = "insert into productos1(nombre_productos, cantidad, tipo_producto) values (:nombre_productos, :cantidad, :tipo_producto)";
$stmt = $pdo->prepare($query);
$stmt->bindValue("nombre_productos", $json->nombre_productos);
$stmt->bindValue("cantidad", $json->cantidad);
$stmt->bindValue("tipo_producto", $json->tipo_producto);

//Ejecutamos
$stmt->execute();

echo "Record added";

?>