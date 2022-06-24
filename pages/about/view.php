<?php
// fungsi query untuk menampilkan data dari tabel about
$query = mysqli_query($mysqli, "SELECT * FROM is_about WHERE about_id='1'")
    or die('Ada kesalahan pada query tampil data about : ' . mysqli_error($mysqli));

$data = mysqli_fetch_assoc($query);
?>
<!-- Page Heading/Breadcrumbs -->
<div class="row">
    <div class="col-lg-12">
        <div class="container" style="text-align: center;">
            <br>
            <div class="col-lg-12">
                <img src="images/dekoraya-removebg.png" style="width:400px; text-align: center;">
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <br><br>
                <div style="padding: 0 10px;text-align:justify">
                    <p style="margin-bottom:5px;font-size:20px"><?php echo $data['title']; ?></p>
                    <p><?php echo $data['content']; ?></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.row -->