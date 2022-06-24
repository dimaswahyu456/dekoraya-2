<br><br>

<div class="row">
    <div class="col-lg-12">
        <h2 style="padding-bottom: 20px" class="page-header center">
            About Us
        </h2>

        <br>
    </div>

    <div class="col-lg-4 profesional center">
        <i class="fa fa-desktop"></i>
        <h3>Profesional</h3>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
    </div>

    <div class="col-lg-4 friendly center">
        <i class="fa fa-user"></i>
        <h3>Friendly</h3>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
    </div>

    <div class="col-lg-4 suitable center">
        <i class="fa fa-cog"></i>
        <h3>Suitable</h3>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
    </div>
</div>

<br><br>

<div class="row">
    <div class="col-lg-12">
        <h2 style="padding-bottom: 20px" class="page-header center">Our Services</h2>
    </div>
    <div class="col-md-4">
        <div class="media">
            <div class="pull-left">
                <span class="fa-stack fa-2x">
                    <i class="fa fa-circle fa-stack-2x text-primary"></i>
                    <i class="fa fa-laptop fa-stack-1x fa-inverse"></i>
                </span>
            </div>
            <div class="media-body">
                <h4 class="media-heading">Web Design</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.</p>
            </div>
        </div>
        <div class="media">
            <div class="pull-left">
                <span class="fa-stack fa-2x">
                    <i class="fa fa-circle fa-stack-2x text-primary"></i>
                    <i class="fa fa-desktop fa-stack-1x fa-inverse"></i>
                </span>
            </div>
            <div class="media-body">
                <h4 class="media-heading">Desktop Application</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.</p>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="media">
            <div class="pull-left">
                <span class="fa-stack fa-2x">
                    <i class="fa fa-circle fa-stack-2x text-primary"></i>
                    <i class="fa fa-code fa-stack-1x fa-inverse"></i>
                </span>
            </div>
            <div class="media-body">
                <h4 class="media-heading">Web Development</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.</p>
            </div>
        </div>
        <div class="media">
            <div class="pull-left">
                <span class="fa-stack fa-2x">
                    <i class="fa fa-circle fa-stack-2x text-primary"></i>
                    <i class="fa fa-users fa-stack-1x fa-inverse"></i>
                </span>
            </div>
            <div class="media-body">
                <h4 class="media-heading">Course and Training</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.</p>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="media">
            <div class="pull-left">
                <span class="fa-stack fa-2x">
                    <i class="fa fa-circle fa-stack-2x text-primary"></i>
                    <i class="fa fa-mobile fa-stack-1x fa-inverse"></i>
                </span>
            </div>
            <div class="media-body">
                <h4 class="media-heading">Mobile Apps</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.</p>
            </div>
        </div>
        <div class="media">
            <div class="pull-left">
                <span class="fa-stack fa-2x">
                    <i class="fa fa-circle fa-stack-2x text-primary"></i>
                    <i class="fa fa-camera fa-stack-1x fa-inverse"></i>
                </span>
            </div>
            <div class="media-body">
                <h4 class="media-heading">Photography</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo itaque ipsum sit harum.</p>
            </div>
        </div>
    </div>
</div>

<br><br>

<div class="row">
    <div class="col-lg-12">
        <h2 style="padding-bottom: 20px" class="page-header center">
            Portfolio
        </h2>

        <br>
    </div>

    <div class="row">
        <?php
        // fungsi query untuk menampilkan data dari tabel portfolio
        $query = mysqli_query($mysqli, "SELECT * FROM is_portfolio ORDER BY portfolio_id DESC LIMIT 6")
            or die('Ada kesalahan pada query tampil portfolio : ' . mysqli_error($mysqli));

        while ($data = mysqli_fetch_assoc($query)) {
        ?>
            <div class="col-sm-4 col-md-4">
                <div class="thumbnail">
                    <a data-toggle="modal" class="open_modal" href="#" data-id="<?php echo $data['portfolio_id']; ?>">
                        <img src="images/portfolio/<?php echo $data['image']; ?>" alt="Portfolio">
                    </a>
                    <div class="caption">
                        <p><?php echo $data['title']; ?></p>
                    </div>
                </div>
            </div>
        <?php
        }
        ?>
    </div>

    <div class="row">
        <div class="col-lg-12 col-md-12 center">
            <a style="width:150px" href="portfolio" class="btn btn-primary"> View All</a>
        </div>
    </div>
</div>

<div id="modal-form" class="modal" tabindex="-1">

</div>

<script type="text/javascript" src="assets/js/jquery.js"></script>

<!-- Javascript untuk popup modal Edit-->
<script type="text/javascript">
    $(document).ready(function() {
        $(".open_modal").click(function(e) {
            var m = $(this).attr("data-id");
            $.ajax({
                url: "pages/portfolio/modal.php",
                type: "GET",
                data: {
                    id: m,
                },
                success: function(ajaxData) {
                    $("#modal-form").html(ajaxData);
                    $("#modal-form").modal('show', {
                        backdrop: 'true'
                    });
                }
            });
        });
    });
</script>