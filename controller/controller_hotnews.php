<?php
    class controller_hotnews extends controller{
        public function __construct()
        {
            parent::__construct();
            // lay ds tin noi bat: hotnews = 1
            $arr = $this->model->fetch("select * from tbl_news where c_hotnews=1 order by pk_news_id DESC ");
            // load view
            include "view/view_hotnews.php";
        }
    }
    new controller_hotnews();
?>