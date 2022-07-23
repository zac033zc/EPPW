<?php

$request_body = file_get_contents('php://input');
$json = json_decode($request_body);
//var_dump($json);

$pdo = new PDO(
    'mysql:host=localhost;dbname=eppw',
    'root',
    '',
);

$query = "insert into productos(nom_productos, cantidad) values (:nom_productos, :cantidad)";
$stmt = $pdo->prepare($query);
$stmt->bindValue("nom_productos", $json->nom_productos);
$stmt->bindValue("cantidad", $json->cantidad);

$stmt->execute();

echo "Record added";

?>