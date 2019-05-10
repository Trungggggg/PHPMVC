<?php
	class controller_static extends controller{
		public function __construct(){
			parent::__construct();
			//dem so luot truy cap
			//co 2 cach dem so luot truy cap
			//cach 1 click vao link nao cung tang truy cap
			//cach 2 mo trinh duyet len la chi tang 1 lan,tat trinh duyet mo lai moi tang them 1 lan
			//cach 2
			if (isset($_SESSION["visited"])==false) {
				//session la o server phan hoi ve nen khi dang nhap hoac dem so luot dang nhap phai dung session
				//cach 1
				$_SESSION["visited"]=true;
				//neu k co dong nay la cach 2
				# code...
				# cap nhat view len 1
				$this->model->execute("update tbl_static set visited=visited+1");
			}
			$arr_visited=$this->model->fetch_one("select * from tbl_static");
			$visited=$arr_visited["visited"];
			//online
			//Sau 15p kiem tra:
			//Lay thoi gian o thoi diem 15p do - thoi gian ma nguoi dung truy cap lan gan nhat.neu >15p thi xoa ban ghi
			//lay thoi gian hien tai
			$time=time();
			$timeout=10;
			//xoa nhung user co thoi gian truy cap lon hon time out
			$time_new=time();
			$this->model->execute("delete from tbl_user_online where $time_new - time> $timeout");
			//2 dong tren lam sau
			//kiem tra xem nguoi dung truy cap da duoc luu trong csdl chua,neu chua luu thi luu ban ghi do,neu da co thi update lai tg
			$session_id=session_id();
			$check=$this->model->num_rows("select * from tbl_user_online where session_id='$session_id'");
			if ($check == 0) {
				# code...
				$this->model->execute("insert into tbl_user_online(session_id,time) values('$session_id','$time')");
			}else{
				//neu k thi update lai
				$this->model->execute("update tbl_user_online set time='$time' where session_id='$session_id'");
			}
			
			//lay cac ban ghi trong tbl_user_online
			$user_online=$this->model->num_rows("select * from tbl_user_online");
			//load view
			include "view/view_static.php";
		}
	}
	new controller_static();
 ?>;