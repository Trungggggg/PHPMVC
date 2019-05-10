<?php
    $hostname = "localhost";
    $user = "root";
    $password = "";
    $database = "tmdt";
    $link = mysqli_connect($hostname,$user,$password,$database);
    mysqli_set_charset($link,"utf8");
?>