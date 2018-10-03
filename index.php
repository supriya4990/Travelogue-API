<?php	
//header("Access-Control-Allow-Origin: *");
//header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, Origin, Cache-Control, Pragma, Authorization, Accept, Accept-Encoding");
//include_once("db_connect.php");
//$items = getItems($conn);
//echo json_encode($items);
//
//function getItems($conn) {	
//    $sql = "SELECT p.id, p.title, p.description, p.imageurl, p.date FROM t_listing p ORDER BY p.date DESC";
//    $resultset = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));
//    $data = array();
//    while( $rows = mysqli_fetch_assoc($resultset) ) {
//            $data[] = $rows;
//    }
//    return $data;
//}
//
//function deleteItems($conn) {	
//    $sql = " FROM t_listing p ORDER BY p.date DESC";
//    $resultset = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));
//    $data = array();
//    while( $rows = mysqli_fetch_assoc($resultset) ) {
//            $data[] = $rows;
//    }
//    return $data;
//}

//if(!empty($_GET['name'])) {
//	$name=$_GET['name'];
//	if(empty($items)) {
//		jsonResponse(200,"Items Not Found",NULL);
//	} else 	{
//		jsonResponse(200,"Item Found",$items);
//	}
        

//        
//		$url = "http://localhost/travelougephp/items/read.php";
//		$client = curl_init($url);
//		curl_setopt($client,CURLOPT_RETURNTRANSFER,true);
//		$response = curl_exec($client);		
//		$result = json_decode($response);	
//		print_r($result);
