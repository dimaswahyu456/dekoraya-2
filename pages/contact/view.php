<!-- Page Heading/Breadcrumbs -->
<div class="row">
    <div class="col-lg-12">

        <?php
        // fungsi untuk menampilkan pesan
        // jika alert = "" (kosong)
        // tampilkan pesan "" (kosong) 
        if (empty($_GET['alert'])) {
            echo "";
        }
        // jika alert = 1
        // tampilkan pesan Gagal "NISN sudah terdaftar"
        elseif ($_GET['alert'] == 1) { ?>
            <div style="margin-top:25px" class="alert alert-success alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <strong><i class="glyphicon glyphicon-alert"></i> Success!</strong> Your message was successfully sent.
            </div>
        <?php
        }
        ?>
        <div class="row">
            <div style="padding-right:50px" class="col-lg-8">
                <h3 class="page-header">
                    <i style="margin-right:6px" class="fa fa-envelope-o"></i>
                    Kritik & Saran
                </h3>

                <form action="pages/contact/proses.php" method="POST">
                    <div class="form-group">
                        <input type="text" class="form-control" name="name" placeholder="Name" autocomplete="off" required>
                    </div>

                    <div class="form-group">
                        <input type="email" class="form-control" name="email" placeholder="Email" autocomplete="off" required>
                    </div>

                    <div class="form-group">
                        <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
                    </div>

                    <input style="width:100px" type="submit" class="btn btn-primary" name="send" value="Send" />
                </form>

            </div>

            <div class="col-lg-4">
                <div style="margin-top:70px"></div>
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div style="padding: 0 10px;text-align:justify">
                            <h4>Address</h4>
                            <div style="border: 1px dotted #eee; margin: 10px 0 10px 0"></div>
                            <p><i style="margin-right:10px" class="fa fa-map-marker"></i>Jl. Pakal Madya No.10, Surabaya, Jawa Timur</p>
                            <div style="border: 1px dotted #eee; margin: 10px 0 10px 0"></div>
                            <p><i style="margin-right:10px" class="fa fa-phone"></i>+62 822-4526-3340</p>
                            <div style="border: 1px dotted #eee; margin: 10px 0 10px 0"></div>
                            <p><i style="margin-right:10px" class="fa fa-envelope"></i>dekoraya@gmail.com</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.row -->