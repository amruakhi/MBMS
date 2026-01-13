<?php
session_start();

// Authorization check
// if (!isset($_SESSION['username']) || $_SESSION['user'] != 'admin') {
//     echo "<script>alert('You are not authorized to view this page!');</script>";
//     echo "<script>location.href='../login.php';</script>";
//     exit; // Prevent further execution
// }
// ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <script type="text/javascript">
        function preventBack() {
            window.history.forward();
        }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>MBMS</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
</head>

<body>
    <!-- Start Main Top -->
    <?php
    // Include head file
    $headFile = 'includes/head.php';
    if (file_exists($headFile)) {
        include $headFile;
    } else {
        echo "<p style='color: red;'>Error: Head file not found!</p>";
    }
    ?>
    <!-- End Main Top -->

    <!-- Start Top Search -->
    <div class="top-search">
        <div class="container">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-search"></i></span>
                <input type="text" class="form-control" placeholder="Search">
                <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
            </div>
        </div>
    </div>
    <!-- End Top Search -->

    <!-- Start Slider -->
    <div id="slides-shop" class="cover-slides">
        <ul class="slides-container">
            <li class="text-center">
                <img src="images/banner-01.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong><br>Micro Business Management System</strong></h1>
                        </div>
                    </div>
                </div>
            </li>
            <li class="text-center">
                <img src="images/banner-02.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong><br>Micro Business Management System</strong></h1>
                        </div>
                    </div>
                </div>
            </li>
            <li class="text-center">
                <img src="images/banner-03.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong><br>Micro Business Management System</strong></h1>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <!-- End Slider -->

    <!-- Start Footer -->
    <?php
    // Include footer file
    $footerFile = 'includes/footer1.php';
    if (file_exists($footerFile)) {
        include $footerFile;
    } else {
        echo "<p style='color: red;'>Error: Footer file not found!</p>";
    }
    ?>
    <!-- End Footer -->

    <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

    <!-- JS FILES -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
</body>

</html>
