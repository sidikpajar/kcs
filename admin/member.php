<?php
  include("component/header.php");
  include("component/sidebar.php");
?>
  <div class="content-wrapper">


    <section class="content">
      <div class="row">
          <div class="container">


            <div class="box">
                        <div class="box-header">
                          <h3 class="box-title">Data Member KCS</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                          <table id="example1" class="table table-bordered table-striped">
                            <thead>
                            <tr>
                              <th>NIM</th>
                              <th>Nama</th>
                              <th>Jurusan</th>
                              <th>Divisi</th>
                            </tr>
                            </thead>
                            <tbody>
                              <?php
                                  while($row = mysqli_fetch_array($show_member)) {
                               ?>
                                <tr>
                                  <td><?php echo $row['nim'];?></td>
                                  <td><?php echo $row['nama'];?></td>
                                  <td><?php echo $row['jurusan_nama'];?></td>
                                  <td><?php echo $row['divisi_nama'];?></td>
                                </tr>
                                <?php
                                  }
                                 ?>
                            </tbody>
                            <tfoot>
                            <tr>
                              <th>NIM</th>
                              <th>Nama</th>
                              <th>Jurusan</th>
                              <th>Divisi</th>
                            </tr>
                            </tfoot>
                          </table>
                        </div>
                        <!-- /.box-body -->
                      </div>
                      <!-- /.box -->


          </div>
      </div>
    </section>
  </div>
  <?php
  include("component/footer.php");
   ?>
