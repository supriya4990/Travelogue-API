<?php 
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, Origin, Cache-Control, Pragma, Authorization, Accept, Accept-Encoding");
include_once("../db_connect.php");
$items = getItems($conn);

echo json_encode($items);

function getItems($conn) {	
    $sql = "SELECT id, title, description, imageurl, date FROM t_listing";
    if(isset($_POST["sort"]) && !empty($_POST["sort"])){
       $sql .= " ORDER BY ".$_POST['sort'];
    } else {
       $sql .= " ORDER BY date";
    }
    $resultset = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));
    $data = array();
    while( $rows = mysqli_fetch_assoc($resultset) ) {
            $data[] = $rows;
    }
    return $data;
}

?>