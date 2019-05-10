<div class="col-md-8 col-xs-offset-2">
    <div class="panel panel-primary">
        <div class="panel-heading">User</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover">
                <tr>
                    <th>Username</th>
                    <th>Fullname</th>
                    <th style="width: 100px"></th>
                </tr>
                <?php
                    foreach ($arr as $rows){


                ?>
                <tr>
                    <td><?php echo $rows["c_username"]; ?></td>
                    <td><?php echo $rows["c_fullname"]; ?></td>
                    <td style="text-align: center">
                        <a href="index.php?controller=add_edit_user&act=edit&id=<?php echo $rows["pk_user_id"]; ?>">Edit</a>&nbsp;&nbsp;
                        <a href="index.php?controller=user&act=delete&id=<?php echo $rows["pk_user_id"];?>" onclick="return window.confirm('Are you sure?'); ">Delete</a>
                    </td>
                </tr>
                <?php }?>
            </table>
            <style type="text/css">
                .pagination{ padding: 0; margin: 0}
            </style>
            <ul class="pagination">
                <li class="active"><a href="#">Trang</a></li>
                <?php
                    for ($i =1;$i <= $num_page;$i++){
                ?>
                <li><a href="index.php?controller=user&p=<?php echo $i; ?>">
                        <?php echo $i; ?></a></li>
                <?php }?>
            </ul>
        </div>
    </div>
</div>