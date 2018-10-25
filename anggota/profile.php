<?php
  include("component/header.php");
  include("component/sidebar.php");
  include("function.php");
?>
  <div class="content-wrapper">

    <section class="content-header">

    </section>


    <section class="content">
      <div class="row">
        <?php
            while($row = mysqli_fetch_array($show_member)) {
         ?>
        <div class="col-md-3">
          <div class="box box-primary">
            <div class="box-header">
              <h3 class="box-title">About Me</h3>
            </div>
            <div class="box-body box-profile">
              <img class="profile-user-img img-responsive img-circle" src="../../dist/img/user4-128x128.jpg" alt="User profile picture">
              <h3 class="profile-username text-center">
                    <?php
                        echo $row['nama'];
                    ?>
              </h3>
              <p class="text-muted text-center">
                    <?php
                        echo $row['jurusan_nama'];
                    ?>
              </p>
              <p class="text-muted text-center">
                    <?php
                        echo $row['divisi_nama'];
                    ?>
              </p>
              <ul class="list-group list-group-unbordered">
                <li class="list-group-item">
                  <b>Jenis Kelamin</b> <a class="pull-right">
                    <?php
                        echo $row['jk'];
                    ?>
                  </a>
                </li>
                <li class="list-group-item">
                  <b>Kota Lahir</b> <a class="pull-right" >
                    <?php
                        echo $row['kota'];
                    ?>
                  </a>
                </li>
                <li class="list-group-item">
                  <b>Tanggal Lahir</b> <a class="pull-right">
                    <?php
                        echo $row['tanggal'];
                    ?>
                  </a>
                </li>
                <li class="list-group-item">
                  <b>Tlp</b> <a class="pull-right">
                    0<?php
                        echo $row['tlp'];
                    ?>
                  </a>
                </li>
                <li class="list-group-item">
                  <b>email</b> <a class="pull-right">
                    <?php
                        echo $row['email'];
                    ?>
                  </a>
                </li>
                <li class="list-group-item">
                  <b>Instagram</b>
                  <?php
                      echo "<a class='pull-right btn  btn-xs  btn-warning' href='https://www.instagram.com/".$row['ig']."'>".$row['ig']."</a>";

                    ?>
                </li>
                <li class="list-group-item">
                  <b>Line ID</b> <a class="pull-right">
                    <?php
                        echo $row['idline'];
                    ?>
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="box box-primary">
            <div class="box-header with-border">

            </div>
            <div class="box-body">
              <strong><i class="fa fa-book margin-r-5"></i> Tujuan</strong>
              <p class="text-muted">
                <?php
                    echo $row['tujuan'];
                ?>
              </p>

            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <?php } ?>


        <div class="col-md-9">

          <div class="box box-primary">
            <div class="box-body box-profile">

               
            </div>
          </div>

        </div>
      </div>


    </section>
  </div>
  <?php
  include("component/footer.php");
   ?>
