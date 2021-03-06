<!-- adv -->
<div class="main-adv"><img src="public/images/adv3.jpg" /></div>
<!-- end adv -->
<!-- san pham noi bat -->
<div class="box-container">
    <div class="box-home box-product">
        <div class="header">
            <div class="promote">
                <a href="#"><span>Sản phẩm nổi bật</span></a>
            </div>
        </div>
        <div class="content">
            <ul>
                <?php
                    foreach ($arr as $rows){
                ?>
                <!-- product -->
                <li>
                    <div class="image">
                        <a href="index.php?controller=product_detail&id=<?php echo $rows["pk_product_id"]; ?>" class="jt" title="<?php echo $rows["c_name"]; ?>"
                           style="background:url(public/upload/product/<?php echo $rows["c_img"]; ?>) no-repeat 50% 50%;background-size: cover;">
                        </a>
                    </div>
                    <div class="info">
                        <p><a href="index.php?controller=product_detail&id=<?php echo $rows["pk_product_id"]; ?>" class="jt" ><?php echo $rows["c_name"]; ?></a></p>
                        <p><strong>Giá:</strong> <strong class="price"><?php echo number_format($rows["c_price"]); ?>
                            VND</strong> <a href="index.php?controller=cart&act=add&id=<?php echo $rows["pk_product_id"]; ?>">
                                <img src="public/images/icon-cart.jpg" style="width:10px;" /> Cart</a></p>
                    </div>
                </li>
                <!-- end product -->

               <?php } ?>
            </ul>
        </div>
    </div>
</div>
<!-- end san pham noi bat-->

<!-- san pham moi -->
<div class="box-container">
    <div class="box-home box-product">
        <div class="header">
            <div class="new">
                <a href="#"><span>Sản phẩm mới</span></a>
            </div>
        </div>
        <div class="content">
            <ul>
                <?php
                    foreach ($arr_new_product as $rows_new_product) {
                        ?>
                        <!-- product -->
                        <li>
                            <div class="image">
                                <a href="index.php?controller=product_detail&id=<?php echo $rows_new_product["pk_product_id"]; ?>" class="jt" title="<?php echo $rows_new_product["c_name"]; ?>" style="background:url(public/upload/product/<?php echo $rows_new_product["c_img"]; ?>) no-repeat 50% 50%;background-size: cover;">
                                        </a>
                            </div>
                            <div class="info">
                                <p><a href="index.php?controller=product_detail&id=<?php echo $rows_new_product["pk_product_id"]; ?>" class="jt" ><?php echo $rows_new_product["c_name"]; ?></a></p>
                                <p><strong>Giá:</strong> <strong class="price"><?php echo number_format($rows_new_product["c_price"]); ?>
                                        VND</strong> <a href="index.php?controller=cart&act=add&id=<?php echo $rows_new_product["pk_product_id"]; ?>"><img
                                                src="public/upload/product/<?php echo $rows_new_product["c_img"]; ?>" style="width:10px;"/> Cart</a></p>
                            </div>
                        </li>
                        <!-- end product -->
                        <?php
                    }
                ?>


            </ul>
        </div>
    </div>
</div>
<!-- end san pham moi -->

<!-- quảng cáo -->
<div class="box-container">
    <div class="box-ads">
        <ul>
            <li><a href="#"><img src="public/images/quang-cao.jpg" style="width:735px; padding:2px; background:#fff; border:1px solid #ccc;"
                                 title="Nhận vé thăm quan cho khách hàng mua hàng có hóa đơn lớn hơn 1 triệu đồng"/></a></li>
        </ul>
    </div>
</div>
<!-- hết quảng cáo -->