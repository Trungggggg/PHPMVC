<?php
    class controller_login extends controller{
        public function __construct()
        {
            parent::__construct();

            if ($_SERVER["REQUEST_METHOD"] == "POST"){
                $c_username = $_POST["c_username"];
                $c_password = $_POST["c_password"];
                $c_password = md5($c_password);
                $check = $this->model->fetch_one("select c_username,c_password from tbl_user 
                      WHere c_username='$c_username'");
                if (isset($check["c_username"])){
                    if ($check["c_password"]==$c_password){
                    // dang nhap thanh cong
                    $_SESSION["c_username"]=$c_username;
                    header("location:index.php?controller=user");
                }else{
                    // dang nhap khong thanh cong
                    header("location:index.php?err=1");
                }
            }else{
                // dang nhap khong thanh cong
                    header("location:index.php?err=1");
                }
            }

            include "view/view_login.php";
        }
    }
    new controller_login();
?>