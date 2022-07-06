<?php
session_start();      // memulai session
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Web Dekoraya">

    <title>Dekoraya</title>

    <!-- favicon -->
    <link rel="shortcut icon" href="images/logo.png">

    <!-- Bootstrap Core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Custom CSS -->
    <link href="assets/css/modern-business.css" rel="stylesheet" type="text/css">

    <!-- Custom Fonts -->
    <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">

    <!-- Custom CSS -->
    <link href="assets/css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="home">
                    <img src="images/dekoraya.jpeg" height="50">
                </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                <!-- panggil file "navbar-menu.php" untuk menampilkan menu -->
                <?php include "navbar-menu.php" ?>

            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <?php
    if ($_GET['page'] == 'home') { ?>
        <!-- Header Carousel -->
        <header id="myCarousel" class="carousel slide">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <div class="fill" style="background-image:url('images/slide/IMG_20220623_201917_630.jpg');"></div>
                    <div class="carousel-caption">
                        <h2></h2>
                    </div>
                </div>
                <div class="item">
                    <div class="fill" style="background-image:url('images/slide/pexels-asad-photo-maldives-169196.jpg');"></div>
                    <div class="carousel-caption">
                        <h2></h2>
                    </div>
                </div>
                <div class="item">
                    <div class="fill" style="background-image:url('images/slide/pexels-photo-1024972.jpg');"></div>
                    <div class="carousel-caption">
                        <h2></h2>
                    </div>
                </div>
                <div class="item">
                    <div class="fill" style="background-image:url('images/slide/pexels-photo-169185.jpeg');"></div>
                    <div class="carousel-caption">
                        <h2></h2>
                    </div>
                </div>
                <div class="item">
                    <div class="fill" style="background-image:url('images/slide/dua kursi.jpg');"></div>
                    <div class="carousel-caption">
                        <h2></h2>
                    </div>
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="icon-prev"></span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="icon-next"></span>
            </a>
        </header>
    <?php
    } elseif ($_GET['page'] == 'about') { ?>
        <!-- Header Carousel -->
        <header>
            <div class="top">
                <br><br>
                <a href="about">
                    About Us
                </a>
            </div>
        </header>
    <?php
    } elseif ($_GET['page'] == 'service') { ?>
        <!-- Header Carousel -->
        <header>
            <div class="top">
                <br><br>
                <a href="service">
                    Our Services
                </a>
            </div>
        </header>
    <?php
    } elseif ($_GET['page'] == 'portfolio') { ?>
        <!-- Header Carousel -->
        <header>
            <div class="top">
                <br><br>
                <a href="portfolio">
                    Galeri
                </a>
            </div>
        </header>
    <?php
    } elseif ($_GET['page'] == 'contact') { ?>
        <!-- Header Carousel -->
        <header>
            <div style="margin-top:27px"></div>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3957.9659740783864!2d112.61414941478928!3d-7.244712194770351!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e78009cc2bb4f5f%3A0x92be63604acf86db!2sJl.%20Pakal%20Madya%20No.10%2C%20Pakal%2C%20Kec.%20Pakal%2C%20Kota%20SBY%2C%20Jawa%20Timur%2060196!5e0!3m2!1sid!2sid!4v1656048692285!5m2!1sid!2sid" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </header>
    <?php
    }
    ?>

    <!-- Page Content -->
    <div style="min-height:400px" class="container">

        <!-- panggil file "content.php" untuk menampilkan halaman konten-->
        <?php include "content.php"; ?>

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer style="margin-bottom:0; background: #C9ADA7 none repeat scroll 0 0;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; 2022 - <a href="#" style="color: #ffffff">Dekoraya</a></p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script type="text/javascript" src="assets/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>

    <script src="assets/js/owl.carousel.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
        $('.carousel').carousel({
            interval: 5000 //changes the speed
        })

        $(document).ready(function() {
            $("#owl-demo").owlCarousel({
                navigation: true,
                slideSpeed: 300,
                paginationSpeed: 400,
                singleItem: true,
                autoPlay: true

            });
        });
    </script>
</body>

</html>