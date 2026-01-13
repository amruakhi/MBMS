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
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Freshshop Login</title>

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
    <?php include 'includes/head.php'; ?>
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

    <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Login</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                        <li class="breadcrumb-item active">Login</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <?php
    // Handle login request
    if (isset($_POST['login'])) {
        // Retrieve username and password from form
        $username = $_POST['uname'];
        $password = $_POST['pswd'];

        // Include database connection
        include('includes/dbconnect.php');

        // Use prepared statement to fetch user data securely
        $stmt = $con->prepare("SELECT * FROM login WHERE username = ? AND password = ?");
        $stmt->bind_param("ss", $username, $password);
        $stmt->execute();
        $result = $stmt->get_result();

        $flag = 0;
        $status = '3';

        if ($result && $result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $status = $row['status'];
                if ($status == 1) {
                    $flag = 1;
                    session_start();
                    $type = $row['type'];
                    $_SESSION['user'] = $type;
                    $_SESSION['username'] = $username;
                }
            }
        }

        // Redirect user based on type
        if ($flag == 1 && $type == "admin") {
            echo "<script>location.href='admin/index.php'</script>";
        } else if ($flag == 1 && $type == "user") {
            echo "<script>location.href='user/index.php'</script>";
        } else if ($flag == 1 && $type == "groceryshop") {
            echo "<script>location.href='groceryshop/index.php'</script>";
        } else if ($flag == 1 && $type == "deliveryboy") {
            echo "<script>location.href='deliveryboy/index.php'</script>";
        } else if ($status == '0') {
            echo "<script>alert('Your account is not validated');</script>";
        } else if ($status == '2') {
            echo "<script>alert('Request for your account is rejected');</script>";
        } else {
            echo "<script>alert('Invalid Username or Password');</script>";
        }

        // Close connection
        $stmt->close();
        $con->close();
    }
    ?>

    <!-- Start Contact Us  -->
    <div class="contact-box-main">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-sm-12">
                    <div class="contact-form-right">
                        <form action="" method="POST">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="name" name="uname" placeholder="User Name" required>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="password" placeholder="Your Password" id="password" class="form-control" name="pswd" required>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="submit-button text-center">
                                        <button class="btn hvr-hover" id="submit" name="login" type="submit">Login</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Contact Us -->

    <!-- Footer -->
    <?php include 'includes/footer1.php'; ?>
    <!-- End Footer -->

    <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

    <!-- JS FILES -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>

</html>
