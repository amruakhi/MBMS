<?php
$con = new mysqli("localhost", "root", "", "mbms");

if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
?>
