<?php
  include('cekadmin.php');
  include('function.php');
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin KCS | Dashboard</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="../core/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="../core/bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="../core/bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="../core/dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="../core/dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="../core/bower_components/morris.js/morris.css">
  <link rel="stylesheet" href="../core/bower_components/jvectormap/jquery-jvectormap.css">
  <link rel="stylesheet" href="../core/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <link rel="stylesheet" href="../core/bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="../core/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  <link rel="stylesheet" href="../core/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">

  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <style>
            .card {
                margin-top:30px;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
                transition: 0.3s;
                border-radius: 5px;
                background-color: white;
            }
            .box{
              box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
              transition: 0.3s;
              border-radius: 5px;
              background-color: white;
            }
            .box:hover{
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);

            }

            .card h4{
              padding:20px 10px;
              text-align: center;
            }

            .card:hover {
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            }

            .card-form {
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
                transition: 0.3s;
                border-radius: 5px;
                background-color: white;
              }
            .card-form p{
              padding:20px 10px;
              text-align: center;

            }

            .card-form:hover {
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            }

            img {
                border-radius: 5px 5px 0 0;
            }

            .container {
                padding: 2px 16px;
            }


        </style>
</head>
<body class="hold-transition skin-purple-light sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <a href="index.php" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>KCS</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Kalbis Care</b> Share</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">

      </div>
    </nav>
  </header>
