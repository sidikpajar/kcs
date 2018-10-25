
<?php
session_start();

//cek apakah user sudah login
if(!isset($_SESSION['user_nim'])){
    die("Anda belum login");//
}

//cek level user
if($_SESSION['user_level']!="anggota")
{
    die("Anda bukan anggota");
}
?>
