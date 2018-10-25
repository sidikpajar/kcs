<?php

$error='';

include "db_connect.php";
if(isset($_POST['submit']))
{
    $user_nim   = $_POST['user_nim'];
    $user_password   = $_POST['user_password'];


    $query = mysqli_query($connect, "SELECT * FROM users WHERE user_nim='$user_nim' AND user_password='$user_password'");
    if(mysqli_num_rows($query) == 0)
    {
        $error = "username or Password is invalid";
    }
    else
    {
        $row = mysqli_fetch_assoc($query);
        $_SESSION['user_level'] = $row['user_level'];
        $_SESSION['user_nim']  = $row['user_nim'];
        $_SESSION['user_id']  = $row['user_id'];

        if($row['user_level'] == "anggota")
        {
            header("Location: anggota/index.php");
        }
        else if($row['user_level'] =="staff")
        {
            header("Location: staff/index.php");
        }
        else if($row['user_level'] =="admin")
        {
            header("Location: admin/index.php");
        }
        else
        {
            $error = "Failed Login";
        }
    }
}
?>
