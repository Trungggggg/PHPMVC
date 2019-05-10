<?php
    class controller_home extends controller{
        public function __construct()
        {
            parent::__construct();
            // hien thi san pham noi bat
            $arr = $this->model->fetch("select * from tbl_product WHERE c_hotproduct=1 ORDER by pk_product_id DESC");
            // hien thi san pham moi , lay 8 sp moi nhat de hien thi
            $arr_new_product = $this->model->fetch("select *from tbl_product order by pk_product_id DESC limit 0,8");
            //load view
            include "view/view_home.php";
        }
    }
    new controller_home();
?>