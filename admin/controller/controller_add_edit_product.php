<?php 
	class controller_add_edit_product extends controller{
		public function __construct(){
			parent::__construct();
			$act = isset($_GET["act"])?$_GET["act"]:"";
			switch($act){
				case "edit":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//lay ban ghi co id truyen vao
					$arr = $this->model->fetch_one("select * from tbl_product where pk_product_id=$id");
					$form_action="index.php?controller=add_edit_product&act=do_edit&id=$id";
					//load view
					include "view/view_add_edit_product.php";
				break;	
				case "do_edit":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					$c_name = $_POST["c_name"];
					$c_description = $_POST["c_description"];
					$c_content = $_POST["c_content"];
					$c_hotproduct = isset($_POST["c_hotproduct"])?1:0;
					$fk_category_product_id=$_POST["fk_category_product_id"];
					$c_price = $_POST["c_price"];
					//update ban ghi co id truyen vao
					$this->model->execute("update tbl_product set c_name='$c_name',c_description='$c_description',c_content='$c_content',c_hotproduct=$c_hotproduct,c_price=$c_price,fk_category_product_id=$fk_category_product_id where pk_product_id=$id");
					//kiem tra xem co anh update khong, neu co anh thi thuc hien upload
					if($_FILES["c_img"]["name"] != ""){
						//------------
						//xoa anh vat ly neu anh nay ton tai
						$arr_old_img = $this->model->fetch_one("select * from tbl_product where pk_product_id=$id");
						$old_img = isset($arr_old_img["c_img"])?$arr_old_img["c_img"]:"";
						if(file_exists("../public/upload/product/".$old_img)){
							//xoa file
							unlink("../public/upload/product/".$old_img);
						}
						//------------
						$c_img = time().$_FILES["c_img"]["name"];
						//upload file
						move_uploaded_file($_FILES["c_img"]["tmp_name"], "../public/upload/product/".time().$_FILES["c_img"]["name"]);
						//update c_img
						$this->model->execute("update tbl_product set c_img='$c_img' where pk_product_id=$id");
					}
					header("location:index.php?controller=product");
				break;	
				case "add":
					$form_action = "index.php?controller=add_edit_product&act=do_add";
					//load view
					include "view/view_add_edit_product.php";
				break;	
				case "do_add":
					$c_name = $_POST["c_name"];
					$c_description = $_POST["c_description"];
					$c_content = $_POST["c_content"];
					$c_hotproduct = isset($_POST["c_hotproduct"])?1:0;
					$c_img = "";
					$fk_category_product_id=$_POST["fk_category_product_id"];
					$c_price = $_POST["c_price"];
					//kiem tra xem co anh update khong, neu co anh thi thuc hien upload
					if($_FILES["c_img"]["name"] != ""){
						$c_img = time().$_FILES["c_img"]["name"];
						//upload file
						move_uploaded_file($_FILES["c_img"]["tmp_name"], "../public/upload/product/".time().$_FILES["c_img"]["name"]);
					}
					$this->model->execute("insert into tbl_product(c_name,c_description,c_content,c_img,c_hotproduct,c_price,fk_category_product_id) values('$c_name','$c_description','$c_content','$c_img',$c_hotproduct,$c_price,$fk_category_product_id)");
					header("location:index.php?controller=product");
				break;	
			}
		}
	}
	new controller_add_edit_product();
 ?>