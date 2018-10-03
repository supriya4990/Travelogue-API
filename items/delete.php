<?php 
header("Access-Control-Allow-Origin: *");
header("Access-Control-Request-Method: POST");
header("Access-Control-Request-Headers: X-Custom-Header");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, Origin, Cache-Control, Pragma, Authorization, Accept, Accept-Encoding");
header("Access-Control-Allow-Method: OPTIONS, GET, POST, PUT, DELETE");
include_once("../db_connect.php");

if(!empty($_GET['id'])) {
    $id=$_GET['id'];
    $items = deleteItems($conn,$id);
    echo json_encode($items);
}   

function deleteItems($conn, $id) {	
    $sql = "DELETE FROM t_listing WHERE id = $id";
    $resultset = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));
    $response = ['success' => $resultset];
    return $response;
}

?>