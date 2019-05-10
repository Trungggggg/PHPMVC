<?php 
	class controller_checkout extends controller{
		public function __construct(){
			parent::__construct();
			//kiem tra, neu san pham trong gio hang chua co thi quay tro lai trang gio hang
			if(count($_SESSION["cart"])==0)
				echo "<meta http-equiv='refresh' content='0; url=index.php?controller=cart'>";
			//----------
			if($_SERVER["REQUEST_METHOD"] == "POST"){
					$hovaten = $_POST["hovaten"];
					$diachi = $_POST["diachi"];
					$dienthoai = $_POST["dienthoai"];
					$ghichu = $_POST["ghichu"];
					//luu thong tin vao bang khach hang tbl_customer
					$this->model->execute("insert into tbl_customer(customer_name,customer_add,customer_phone,customer_note) values('$hovaten','$diachi','$dienthoai','$ghichu')");
					//lay id customer vua moi insert vao
					$arr_customer_id = $this->model->get_insert_id("customer_id","tbl_customer");
					$customer_id = $arr_customer_id["customer_id"];
					//insert thong tin vao bang hoa don: tbl_order

					$gia = $this->cart_total();
					$this->model->execute("insert into tbl_order(customer_id,date,total_amount) values($customer_id,now(),$gia)");
					//lay id order vua moi insert vao
					$arr_order_id = $this->model->get_insert_id("order_id","tbl_order");
					$order_id = $arr_order_id["order_id"]; 
					//insert thong tin vao bang chi tiet hoa don: tbl_order_detail
					foreach($_SESSION["cart"] as $cart){
						$fk_product_id = $cart["pk_product_id"];
						$c_number = $cart["number"];
						$this->model->execute("insert into tbl_order_detail(order_id,pk_product_id,c_number) values($order_id,$fk_product_id,$c_number)");	
					}
					//xoa toan bo gio hang
					$this->cart_destroy();
					echo "<meta http-equiv='refresh' content='0; URL=index.php?controller=cart'>";
				}
			//----------
			//load view
			include "view/view_checkout.php";
		}
		public function cart_total(){
		    $total = 0;
		    foreach($_SESSION['cart'] as $product){
		        $total += $product['c_price'] * $product['number'];
		    }
		    return $total;
		}
		public function cart_destroy(){
		    $_SESSION['cart'] = array();
		}
	}
	new controller_checkout();
 ?>