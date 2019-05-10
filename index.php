<?php
session_start();
include "config.php";
include "application/model.php";
include "application/controller.php";



    // dieu phoi controller

    // lay value cua bien controller truyen tren url
    $c = isset($_GET["controller"]) ? $_GET["controller"] : "home";
    // ghep chuoi de lay ra duong dan vat li
    $controller = $c != "" ? "controller/controller_$c.php" : "";



    include "view/view_layout.php";

?>