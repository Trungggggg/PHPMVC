<?php
	class controller_cart extends controller{
		public function __construct(){
			parent::__construct();
			//khởi tạo giỏ hàng
			if(!isset($_SESSION['cart'])) $_SESSION['cart'] = array();
			//===========
            $act = isset($_GET["act"])?$_GET["act"]:"";
            switch ($act){
                case "add":
                    $id = isset($_GET["id"])?$_GET["id"]:0;
                    // goi ham them san pham vao gio hang
                $this->cart_add($id);
                // quay tro lai trang gio hang
               echo  "<meta http-equiv='refresh' content='0; url=index.php?controller=cart'>";
                break;
                case "delete":
                    $id = isset($_GET["id"])?$_GET["id"]:0;
                    // goi ham xoa 1 sp khoi gio hang ung voi id truyen vao
                $this->cart_delete($id);
                    echo  "<meta http-equiv='refresh' content='0; url=index.php?controller=cart'>";
                    break;
                case "destroy":
                    $this->cart_destroy();
                    echo  "<meta http-equiv='refresh' content='0; url=index.php?controller=cart'>";
                    break;
                case "update":
                    // duyet cac phan tu cua session, update lai so luong
                    foreach($_SESSION["cart"] as $rows){
                        $number = $_POST["product_".$rows["pk_product_id"]];
                        $this->cart_update($rows["pk_product_id"],$number);
                        break;
                    }

            }
//            echo "<pre>";
//            print_r($_SESSION["cart"]);
//            echo "</pre>";
			//===========
			//load view
			include "view/view_cart.php";
			//=================
		}

		public function cart_add($pk_product_id){
		    if(isset($_SESSION['cart'][$pk_product_id])){
		        //nếu đã có sp trong giỏ hàng thì số lượng lên 1
		        $_SESSION['cart'][$pk_product_id]['number']++;
		    } else {
		        //lấy thông tin sản phẩm từ CSDL và lưu vào giỏ hàng
		        $product = $this->model->fetch_one("select * from tbl_product where pk_product_id=$pk_product_id");
		        
		        $_SESSION['cart'][$pk_product_id] = array(
		            'pk_product_id' => $pk_product_id,
		            'c_name' => $product['c_name'],
		            'c_img' => $product['c_img'],
		            'number' => 1,
		            'c_price' => $product['c_price']
		        );
		    }
		}
		/**
		 * Cập nhật số lượng sản phẩm
		 * @param int
		 * @param int
		 */
		public function cart_update($pk_product_id, $number){
		    if($number==0){
		        //xóa sp ra khỏi giỏ hàng
		        unset($_SESSION['cart'][$pk_product_id]);
		    } else {
		        $_SESSION['cart'][$pk_product_id]['number'] = $number;
		    }
		}
		/**
		 * Xóa sản phẩm ra khỏi giỏ hàng
		 * @param int
		 */
		public function cart_delete($pk_product_id){
		    unset($_SESSION['cart'][$pk_product_id]);
		}
		/**
		 * Tổng giá trị giỏ hàng
		 */
		public function cart_total(){
		    $total = 0;
		    foreach($_SESSION['cart'] as $product){
		        $total += $product['c_price'] * $product['number'];
		    }
		    return $total;
		}
		/**
		 * Số sản phẩm có trong giỏ hàng
		 */
		public function cart_number(){
		    $number = 0;
		    foreach($_SESSION['cart'] as $product){
		        $number += $product['number'];
		    }
		    return $number;
		}
		/**
		 * Danh sách sản phẩm trong giỏ hàng
		 */
		public function cart_list(){
		    return $_SESSION['cart'];
		}
		/**
		 * Xóa giỏ hàng
		 */
		public function cart_destroy(){
		    $_SESSION['cart'] = array();
		}

	}
	new controller_cart();
?>