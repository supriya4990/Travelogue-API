<?php 
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, Origin, Cache-Control, Pragma, Authorization, Accept, Accept-Encoding");
include_once("../db_connect.php");
$loginData = json_decode($_REQUEST['data'],true);

$items = checkLoginDetails($conn, $loginData);
echo json_encode($items);

function checkLoginDetails($conn, $loginData) { 

    $sql = "SELECT * FROM t_users WHERE email = '".$loginData['email']."' AND password = '".$loginData['password']."'";
    $resultset = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));
    $row = mysqli_fetch_assoc($resultset);
    //If Row Exist then Send Data
    if($row){
      $response = ['success' => true ];  
      return $response;
    }
}
?>