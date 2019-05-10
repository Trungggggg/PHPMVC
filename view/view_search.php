<!-- begin right -->
<div class="right-col">
    <!-- ----------------- -->
    <div class="box-container">
        <!-- Sản phẩm -->
        <div class="box-tabs box-product">
            <div class="header">
                <div class="label">
                    <div>
                        Tim kiem</div>
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
                                <a href="index.php?controller=product_detail&id=<?php echo $rows["pk_product_id"]; ?>"
                                   class="jt" title="<?php echo $rows["c_name"]; ?>" style="background:url(public/upload/product/<?php echo $rows["c_img"]; ?>)
                                    no-repeat 50% 50%">
                                </a>
                            </div>
                            <div class="info">
                                <p><a href="index.php?controller=product_detail&id=<?php echo $rows["pk_product_id"]; ?>" class="jt" ><?php echo $rows["c_name"]; ?></a></p>
                                <p><strong>Giá:</strong> <strong class="price"><?php echo number_format($rows["c_price"])?>
                                        VND</strong> <a href="index.php?controller=cart&act=add&id=<?php echo $rows["pk_product_id"]; ?>">
                                        <img src="public/upload/product/<?php echo $rows["c_img"]; ?>" style="width:10px;" /> Cart</a></p>
                            </div>
                        </li>
                        <!-- end product -->
                    <?php } ?>

                </ul>
            </div>
        </div>
        <!-- hết sản phẩm -->

        <!-- paging -->
        <div class="pagination" style="padding-top:20px; padding-bottom:20px;">
            <ul>
                <li><a href="#" class="prevnext disablelink">Trang</a></li>
                <?php for ($i=1;$i<=$num_page;$i++){

                    ?>
                    <li><a href="index.php?controller=search&category_id=<?php echo $key; ?>&p=<?php echo $i; ?>" ><?php echo $i; ?></a></li>
                <?php } ?>
            </ul>
        </div>
        <!-- end paging -->

    </div>

    <!-- ----------------- -->
</div>

<!-- end right -->