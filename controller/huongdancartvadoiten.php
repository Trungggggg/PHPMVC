<?php 
	$_SESSION["cart"]=array(
		array("pk_product_id"=>2,"c_name"=>"nokia","c_price"=>"200000","number"=>2)
		);
	//gio hang do session duyet xem co trung k
	//them 1 phan tu vao gio hang
	//kiem tra neu bat dc cai id tang gio hang len 1 con neu k co id them moi
	//
	//
	//rewrite url la cach viet lai duong dan
	//toan bo rewrite se duoc dat trong file co ten .htaccess
	//trong file htaccess se co cac noi dung can chu y:
	//de bat che do rewrite,ngay o dau phai co lenh RewriteEngine On
	//kien truc lenh RewriteRule ^duongdancanrewrite$ duongdanthuc
	//ghi chu trong file htaccess dung # o dau
	//truyen tham so len url
	//RewriteRule ^duongdan/(.*)-(.*)$ duongdanthuc?bien1=$1&bien2=$2(.*) :co n (.*) thi ung voi n bien:la tham so truyen tren url,bao gom tat ca ky tu danh sach bien se tu $1...$n
 ?>