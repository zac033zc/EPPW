<?php

//Conexion a la base de datos
$pdo = new PDO(
    'mysql:host=localhost;dbname=eppw',
    'root',
    '',
);

//Preparando el query con pdo
$query = "select * from productos1 where tipo_producto='Refrescos'";
$stmt = $pdo->prepare($query);
$stmt->execute();
$data = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo json_encode((object)array(
    "succes" => true,
    "data" => $data
));

?>