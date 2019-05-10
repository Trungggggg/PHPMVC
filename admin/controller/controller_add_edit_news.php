<?php
    class controller_add_edit_news extends controller{
        public function __construct()
        {
            parent::__construct();
            $act = isset($_GET["act"])?$_GET["act"]: "";
            switch ($act){
                case "edit":
                    $id = isset($_GET["id"])?$_GET["id"]:0;
                    // lay ban ghi co id truyen vao
                $arr = $this->model->fetch_one("select * from tbl_news WHERE pk_news_id=$id");
                $form_action = "index.php?controller=add_edit_news&act=do_edit&id=$id";
                //load view
                    include "view/view_add_edit_news.php";
                    break;
                case "do_edit":
                    $id = isset($_GET["id"])?$_GET["id"]:0;
                    $c_name = $_POST["c_name"];
                    $c_description = $_POST["c_description"];
                    $c_content = $_POST["c_content"];
                    $c_hotnews = isset($_POST["c_hotnews"])?1:0;
                    //update ban ghi co id truyen vao
                $this->model->execute("update tbl_news set c_name='$c_name',c_description='$c_description',c_content='$c_content',c_hotnews=c_hotnews WHERE pk_news_id=$id");
                //kiem tra xem co anh update khong,neu co anh thi thuc hien upload
                if($_FILES["c_img"]["name"] != ""){
                    //------------
                    // xoa anh vat li neu anh nay ton tai
                    $arr_old_img = $this->model->fetch_one("select * from tbl_news where pk_news_id=$id");
                    $old_img = isset($arr_old_img["c_img"])?$arr_old_img["c_img"]:"";
                    if (file_exists("../public/upload/news/".$old_img))
                        //xoa file
                        unlink("../public/upload/news/".$old_img);
                    //------------

                    $c_img = time().$_FILES["c_img"]["name"];
                    //upload file
                    move_uploaded_file($_FILES["c_img"]["tmp_name"],"../public/upload/news/" . time().$_FILES["c_img"]["name"]);
                    $this->model->execute("update tbl_news set c_img='$c_img' where pk_news_id=$id");
                }

                header("location:index.php?controller=news");
                break;
                case "add":
                    $form_action = "index.php?controller=add_edit_news&act=do_add";
                    include "view/view_add_edit_news.php";break;
                case "do_add":
                    $c_name = $_POST["c_name"];
                    $c_description = $_POST["c_description"];
                    $c_content = $_POST["c_content"];
                    $c_hotnews = isset($_POST["c_hotnews"])?1:0;
                    $c_img = "";
                    //kiem tr xem co anh update k,neu co anh thi thuc hien upload
                if ($_FILES["c_img"]["name"] != ""){
                    $c_img = time().$_FILES["c_img"]["name"];
                    //upload file
                    move_uploaded_file($_FILES["c_img"]["tmp_name"],"../public/upload/news/".time().$_FILES["c_img"]["name"]);
                }
                $this->model->execute("insert into tbl_news(c_name,c_description,c_content,c_img,c_hotnews) VALUES ('$c_name','$c_description','$c_content','$c_img',$c_hotnews)");
                    header("location:index.php?controller=news");break;
            }
        }
    }
    new controller_add_edit_news();
?>