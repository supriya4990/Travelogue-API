<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, Origin, Cache-Control, Pragma, Authorization, Accept, Accept-Encoding");
include_once("../db_connect.php");
if(!empty($_GET['id'])) {
    $id=$_GET['id'];
}
 $items = getItems($conn, $id);
echo json_encode($items);


function getItems($conn, $id) {	
    $sql = "SELECT p.id, p.title, p.description, p.imageurl, p.date FROM t_listing p WHERE id = $id";
    $resultset = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));
    $row = mysqli_fetch_assoc($resultset);
    return $row;
}

?>