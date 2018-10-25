<?php
    include("../db_connect.php");

    $user_nim = $_SESSION['user_nim'];

    $show_member = mysqli_query($connect, "SELECT * FROM member
      INNER JOIN jurusan
        ON jurusan.jurusan_id = member.jurusan_id
      INNER JOIN divisi
        ON divisi.divisi_id = member.divisi_id
    ");

 ?>
