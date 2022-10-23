<?php
    $server = "localhost";
    $username = "arviecsp";
    $password = "p@55w0rd";
    $database = "ArvieDS";

    if(!$conn = mysqli_connect($server, $username, $password, $database)){
        die("Failed to Connect to Database!");
    }

    // if(!$conn = mysqli_connect($server, $username, $password, $database)){
    //     die("Failed to Connect to Database!");
    // } else $conn = mysqli_connect($server, $username, $password, $database);
?>