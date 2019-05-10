<?php
class controller_add_edit_category_product extends controller{
    public function __construct()
    {
        parent::__construct();
        $act = isset($_GET["act"])?$_GET["act"]: "";
        switch ($act){
            case "edit":
                $id = isset($_GET["id"])?$_GET["id"]:0;
                // lay ban ghi co id truyen vao
                $arr = $this->model->fetch_one("select * from tbl_category_product WHERE pk_category_product_id=$id");
                $form_action = "index.php?controller=add_edit_category_product&act=do_edit&id=$id";
                //load view
                include "view/view_add_edit_category_product.php";
                break;
            case "do_edit":
                $id = isset($_GET["id"])?$_GET["id"]:0;
                $c_name = $_POST["c_name"];
                //update ban ghi co id truyen vao
                $this->model->execute("update tbl_category_product set c_name='$c_name' WHERE pk_category_product_id=$id");
                //kiem tra xem co anh update khong,neu co anh thi thuc hien upload
                header("location:index.php?controller=category_product");
                break;
            case "add":
                $form_action = "index.php?controller=add_edit_category_product&act=do_add";
                include "view/view_add_edit_category_product.php";break;
            case "do_add":
                $c_name = $_POST["c_name"];
                //kiem tr xem co anh update k,neu co anh thi thuc hien upload
                $this->model->execute("insert into tbl_category_product(c_name) VALUES ('$c_name')");
                header("location:index.php?controller=category_product");break;
        }
    }
}
new controller_add_edit_category_product();
?>