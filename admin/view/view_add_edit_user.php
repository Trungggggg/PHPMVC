<div class="col-md-8 col-xs-offset-2">
    <div style="margin-bottom: 5px">
        <a href="index.php?controller=add_edit_user&act=add" class="btn btn-primary">Add</a>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">Edit user</div>
        <div class="panel-body">
            <form method="post" action="<?php echo $form_action; ?>">
                <!-- row -->
                <div class="row" style="margin-top: 5px">
                    <div class="col-md-2">Username</div>
                    <div class="col-md-10"><input type="text"<?php echo isset($arr["c_username"])?"disabled":"";?>

                            value="<?php echo isset($arr["c_username"])?$arr["c_username"]:""; ?>" name="c_username" required class="form-control"></div>
                </div>
                <!--end row-->

                <!-- row -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Password</div>
                    <div class="col-md-10"><input type="password" name="c_password" class="form-control" <?php echo isset($arr["c_username"])?"":""; ?>
                                                  placeholder="<?php echo isset($arr["c_username"])?"Nếu không đổi password thì để trống trường này":""; ?>"></div>
                </div>
                <!-- end row -->

                <!-- row -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">fullname</div>
                    <div class="col-md-10">
                        <input type="text" name="c_fullname" value="<?php echo isset($arr["c_fullname"])?$arr["c_fullname"]:""; ?>" class="form-control" required>
                    </div>
                </div>
                <!-- end row -->

                <!-- row -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2"></div>
                    <div class="col-md-10"><input type="submit" value="Process" class="btn btn-primary">
                        <input type="reset" class="btn btn-danger" value="Reset">
                           </div>
                </div>
                <!-- end row -->
            </form>
        </div>
    </div>
</div>