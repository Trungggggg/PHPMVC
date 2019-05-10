<?php
    class controller_add_edit_user extends controller{
        public function __construct()
        {
            parent::__construct();
            $act = isset($_GET["act"])?$_GET["act"]:"";
            switch ($act) {
                case "edit":
                    $id = isset($_GET["id"]) ? $_GET["id"] : 0;
                    // lay ban ghi co id truyen vao
                    $arr = $this->model->fetch_one("select * from tbl_user WHERE pk_user_id=$id");

                    $form_action = "index.php?controller=add_edit_user&act=do_edit&id=$id";
                    //load view
                    include "view/view_add_edit_user.php";
                    break;
                case "do_edit":
                    $id = isset($_GET["id"])?$_GET["id"]:0;
                    $c_password = $_POST["c_password"];
                    $c_fullname = $_POST["c_fullname"];
                    // update ban ghi co id truyen vao
                $this->model->execute("update tbl_user set c_fullname='$c_fullname' WHERE pk_user_id=$id");
                if($c_password != ""){
                    $c_password = md5($c_password);
                    $this->model->execute("update tbl_user set c_password='$c_password' WHERE pk_user_id=$id");
                }
                header("location:index.php?controller=user");
                    break;
                case "add":
                    $form_action = "index.php?controller=add_edit_user&act=do_add";
                    include "view/view_add_edit_user.php";
                    break;
                case "do_add":
                    $c_username = $_POST["c_username"];
                    $c_password = $_POST["c_password"];
                    $c_password = md5($c_password);
                    $c_fullname = $_POST["c_fullname"];
                    $this->model->execute("insert into tbl_user(c_username,c_password,c_fullname) VALUE('$c_username','$c_password','$c_fullname')");
                    header("location:index.php?controller=user");break;

            }

        }
    }
    new  controller_add_edit_user();
?>