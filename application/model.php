<?php
    class model{ 
        //lay danh sach cac ban ghi
        public function fetch($sql){
            global $link;
            $result = mysqli_query($link,$sql);
            $arr = array();
            while($rows = mysqli_fetch_array($result))
                $arr[] = $rows;
            return $arr;
        }
        // truy van de tra ve 1 ban ghi

        public function fetch_one($sql){
            global $link;
            $result = mysqli_query($link,$sql);
            $rows = mysqli_fetch_array($result);
            return $rows;
        }
        // thuc thi cau lenh sql
        public function execute($sql){
            global $link;
            mysqli_query($link,$sql);
        }

        //dem so luong ban ghi
        public function num_rows($sql){
            global  $link;
            $result = mysqli_query($link,$sql);
            // mysql_num_rows: ham tra ve so luong cac ban ghi
            return mysqli_num_rows($result);
        }

        // lay ban ghi vua moi insert vao
        public function get_insert_id($id_name,$table_name){
            global $link;
            $result = mysqli_query($link,"select $id_name from $table_name order by $id_name DESC limit 0,1");
            $rows = mysqli_fetch_array($result);
            return $rows;
        }
    }
?>