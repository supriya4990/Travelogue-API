<?php 
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, Origin, Cache-Control, Pragma, Authorization, Accept, Accept-Encoding");
include_once("../db_connect.php");
$travelRow = json_decode($_REQUEST['data'],true);
//$travelRow['imageurl'] = imageConversion($travelRow['imageurl']);
if(!empty($_GET['id'])) {
    $id=$_GET['id'];
}
if(isset($id) && !empty($id)){
    $items = updateItems($conn, $travelRow, $id);
} else {
    $items = saveItems($conn, $travelRow);
}

function saveItems($conn, $travelRow) {
    $dataRow = '("'.implode('","', $travelRow).'")';

    $sql = 'INSERT INTO t_listing (title, description, imageurl, date) VALUES '.$dataRow;
    $resultset = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));

    $response = ['success' => $resultset];
    return $response;
}

function updateItems($conn, $travelRow, $id) {

    $sql = "UPDATE t_listing SET title = '".$travelRow['title']."', description = '".$travelRow['description']."', imageurl = '".$travelRow['imageurl']."', date = ".$travelRow['date']." WHERE id = $id";

    $resultset = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));

    $response = ['success' => $resultset];
    return $response;
}

function imageConversion($imageurl){
    if(isset($imageurl)){
     $name = $_FILES['imageurl']['name'];
     echo $name;
     $target_dir = "upload/";
     $target_file = $target_dir . basename($_FILES["imageurl"]["name"]);

     // Select file type
     $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

     // Valid file extensions
     $extensions_arr = array("jpg","jpeg","png","gif");

     // Check extension
     if( in_array($imageFileType,$extensions_arr) ){

      // Convert to base64 
      $image_base64 = base64_encode(file_get_contents($_FILES['imageurl']['tmp_name']) );
      $image = 'data:image/'.$imageFileType.';base64,'.$image_base64;
//      // Insert record
//      $query = "insert into images(image) values('".$image."')";
//      mysqli_query($con,$query);

      // Upload file
//      move_uploaded_file($_FILES['file']['tmp_name'],$target_dir.$name);
      return $image;
     }

    }
}

?>