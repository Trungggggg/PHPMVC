
<div class="box-container">
    <div class="box-home box-news">
        <div class="header">
            <div class="promote">
                <a href="#"><span>Checkout</span></a>
            </div>
        </div>
        <div class="content">
            <form method="post" action="">
                <table cellpadding="5" style="width:60%;">
                    <tr>
                    <td>Họ và tên</td>
                    <td><input type="text" name="hovaten" required></td>
                </tr>
                <tr>
                    <td>Địa chỉ</td>
                    <td><input type="text" name="diachi"></td>
                </tr>
                <tr>
                    <td>Điện thoại</td>
                    <td><input type="text" name="dienthoai"></td>
                </tr>
                <tr>
                    <td>Ghi chú</td>
                    <td>
                        <textarea name="ghichu" style="width:300px; height: 150px;"></textarea>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Thanh toán"></td>
                </tr>
                </table>
            </form>
        </div>                        
    </div>
</div>
<!-- end checkout-->
<!-- 
    -  lay thong tin ho ten,dia chi dien thoai ghi chu de insert vao tbl_customer
    -  lay id cua user vua moi insert vao tbl_customer,insert 1 ban ghi vao tbl_order(customer_id,ngaymua,gia)
    -  lay order_id vua moi insert vao,duyet $_SESSION["cart"] de luu san pham vao tbl_order_detail(order_id,fk_product_id,c_number);
    -xoa toan bo san pham trong gio hang
 -->
 <!-- nhung thu con thieu
    -noi quy ghi vao 1 bang rieng
    -quang cao
  -->
 <!-- tao trang khach hang hien thi cac cot sau
    hoten,dia chi, dien thoai,chi tiet,ghi chu  
    khi an vao link "chi tiet" ung voi ban ghi hien thi khach hang thi se den tran donhang bao gom cac thong tin:
    ten san pham,anh,soluong,gia
    
 -->
 