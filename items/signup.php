<?php 
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, Origin, Cache-Control, Pragma, Authorization, Accept, Accept-Encoding");
include_once("../db_connect.php");
$loginData = json_decode($_REQUEST['data'],true);

$items = checkLoginDetails($conn, $loginData);
echo json_encode($items);

function checkLoginDetails($conn, $loginData) { 

    $dataRow = '("'.implode('","', $loginData).'")';

    $sql = 'INSERT INTO t_users (username, password, email, description) VALUES '.$dataRow;
    $resultset = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));

    if($resultset){
      $response = ['success' => true ];  
      return $response;
    }
}
?>