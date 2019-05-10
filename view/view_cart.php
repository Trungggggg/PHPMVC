<div class="box-container">
    <div class="box-home box-news">
        <div class="header">
            <div class="promote">
                <a href="#"><span>Gio hang</span></a>
            </div>
        </div>
        <div class="content">
            <form method="post" id="form_update" action="index.php?controller=cart&act=update">
            <table cellpadding="5" border="1" style="width: 100%; border-collapse: collapse">
                <tr>
                    <th style="width: 100px";>Anh</th>
                    <th>Ten san pham</th>
                    <th style="width: 100px">Gia</th>
                    <th style="width: 70px">So luong</th>
                    <th style="width: 70px"></th>
                </tr>
                <?php
                    foreach ($_SESSION["cart"] as $product){
                ?>
                <tr>
                    <td style="text-align: center"><img src="public/upload/product/<?php echo $product["c_img"]; ?>" style="width: 146px;height: 121px;"></td>
                    <td><?php echo $product["c_name"]; ?></td>
                    <td style="text-align: center">
                        <?php
                            echo number_format($product["c_price"]);
                        ?> VND
                    </td>
                    <td style="text-align: center">
                       <input type="number" name="product_<?php echo $product["pk_product_id"]; ?>" value="<?php echo $product["number"]; ?>" style="width: 60px;">
                    </td>
                    <td style="text-align: center">
                        <a href="index.php?controller=cart&act=delete&id=<?php echo $product["pk_product_id"]; ?>">Xoa</a>
                    </td>
                </tr>
                <?php } ?>
            </table>
            </form>
            </div>
        <script type="text/javascript">
            function update_cart() {
                document.getElementById("form_update").submit();
            }
        </script>
        <style type="text/css">
            .menu_cart{margin: 15px 0px}
            .menu_cart ul {padding: 0px; margin: 0px ; list-style: none}
            .menu_cart ul li{display: inline-table; padding: 20px}
        </style>
        <div class="menu_cart">
        <ul>
            <li><a href="index.php">Tiep tuc mua hang</a></li>
            <li><a href="index.php?controller=cart&act=destroy">Xoa gio hang</a></li>
            <li><a href="#" onclick="update_cart();">Cap nhat gio hang</a></li>
            <li><a href="index.php?controller=checkout">Thanh toan</a></li>

        </ul>
        </div>
     </div>
</div>