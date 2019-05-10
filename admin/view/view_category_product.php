<div class="col-md-10 col-xs-offset-1">
    <div style="margin-bottom:5px;">
        <a href="index.php?controller=add_edit_category_product&act=add" class="btn btn-primary">
            Add category product
        </a>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">
            List category product
        </div>
        <div class="panel-body">
            <table class="table table-bordered table-hover">
                <tr>
                    <th style="width:50px">STT</th>
                    <th style="">Category Name</th>
                    <th style="width:100px; text-align: center;">Manager</th>
                </tr>
                <?php
                $stt = 0;
                foreach($arr as $rows){
                    $stt++;

                    ?>
                    <tr>
                        <td style="text-align:center"><?php echo $stt; ?></td>

                        <td><?php echo $rows["c_name"]; ?></td>

                        <td style="text-align:center">
                            <a href="index.php?controller=add_edit_category_product&act=edit&id=<?php echo $rows["pk_category_product_id"]; ?>">Edit</a>&nbsp;
                            <a href="index.php?controller=category_product&act=delete&id=<?php echo $rows["pk_category_product_id"]; ?>" onclick="return window.confirm('Are you sure?');">Delete</a>&nbsp;
                        </td>
                    </tr>
                <?php }?>
            </table>
            <style type="text/css">
                .pagination{
                    padding: 0px; margin: 0px;
                }
            </style>
            <ul class="pagination">
                <?php
                for ($i = 1;$i<= $num_page;$i++){
                    ?>
                    <li>
                        <a href="index.php?controller=category_product&p=<?php echo $i?>"><?php echo $i; ?></a></li>
                <?php }?>
            </ul>
        </div>
    </div>
</div>