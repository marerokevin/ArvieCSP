<?php
    $server = "localhost";
    $username = "root";
    $password = "";
    $database = "ArvieDS2";

    if(!$conn = mysqli_connect($server, $username, $password, $database)){
        die("Failed to Connect to Database!");
    }
?>
