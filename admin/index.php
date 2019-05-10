<?php
    session_start();
include "../config.php";
include "../application/model.php";
include "../application/controller.php";

// logout
if (isset($_GET["act"])&& $_GET["act"] == "logout")
    unset($_SESSION["c_username"]);

// ktra xem user da dap nhap chua,neu chua dang nhap thi load view login, neu da dang nhap thi load view layout
if (isset($_SESSION["c_username"]) ==false)
    include "controller/controller_login.php";
else {

    // dieu phoi controller

    // lay value cua bien controller truyen tren url
    $c = isset($_GET["controller"]) ? $_GET["controller"] : "";
    // ghep chuoi de lay ra duong dan vat li
    $controller = $c != "" ? "controller/controller_$c.php" : "";



    include "view/view_layout.php";
}
?>