<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
include 'db_connect.php';




if(isset($_GET['nim'])){
			$nim = $_GET['nim'];
      $show_member = mysqli_query($connect, "SELECT * FROM member
        INNER JOIN jurusan
          ON jurusan.jurusan_id = member.jurusan_id
        INNER JOIN divisi
          ON divisi.divisi_id = member.divisi_id
        WHERE nim LIKE '%" .$nim. "%'");
		} else {
      $show_member = mysqli_query($connect, "SELECT * FROM member
        INNER JOIN jurusan
          ON jurusan.jurusan_id = member.jurusan_id
        INNER JOIN divisi
          ON divisi.divisi_id = member.divisi_id ");
		}
/*
$nim = $_GET['nim'];
$show_member = mysqli_query($connect, "SELECT * FROM member
  INNER JOIN jurusan
    ON jurusan.jurusan_id = member.jurusan_id
  INNER JOIN divisi
    ON divisi.divisi_id = member.divisi_id
  WHERE nim LIKE '%" .$nim. "%'
");
*/


if(mysqli_num_rows($show_member) > 0 ){
  $response = array();
  $response["member"] = array();
  while($x = mysqli_fetch_array($show_member)){
    $h['nim'] = $x["nim"];
    $h['nama'] = $x["nama"];

    array_push($response["member"], $h);
  }
  $json_string = json_encode($response, JSON_PRETTY_PRINT);
  echo $json_string;
}else {
  $response["message"]="tidak ada data";
  echo json_encode($response);
}
?>
