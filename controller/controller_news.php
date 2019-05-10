<?php
class controller_news extends controller{
    public function __construct(){
        //goi ham tao cua class controller
        parent::__construct();
        //---------
        //phan trang
        //tong so ban ghi
        $total_record = $this->model->num_rows("select * from tbl_news");
        //so ban ghi moi trang
        $record_per_page = 7;
        //tinh so trang = tong_so_ban_ghi/so_ban_ghi_moi_trang
        $num_page = ceil($total_record/$record_per_page);
        //lay bien p tu url (day la bien the hien dang o trang nao)
        $p = isset($_GET["p"])&&is_numeric($_GET["p"])&&$_GET["p"]>0 ? ($_GET["p"]-1):0;
        //lay tu ban ghi nao de hien thi
        $from = $p*$record_per_page;
        //---------
        //lay thong tin cac ban ghi trong table
        $arr = $this->model->fetch("select * from tbl_news order by pk_news_id desc limit $from,$record_per_page");
        //load view
        include "view/view_news.php";
    }
}
new controller_news();
?>