<?php 
	class controller_about extends controller{
		public function __construct(){
			parent::__construct();
			//load view
			include "view/view_about.php";
		}
	}
	new controller_about();
 ?>