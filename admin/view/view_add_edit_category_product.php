
<div class="col-md-10 col-xs-offset-1">
    <div class="panel panel-primary">
        <div class="panel-heading">Add edit category_product</div>
        <div class="panel-body">
            <form method="post" action="<?php echo $form_action; ?>">
                <!-- row -->
                <div class="row" style="margin:5px">
                    <div class="col-md-2">Ten san pham</div>
                    <div class="col-md-10">
                        <input type="text" name="c_name" class="form-control" required value="<?php echo isset($arr["c_name"])?$arr["c_name"]:""; ?>">
                    </div>
                </div>
                <!-- end row -->





                <!-- row -->
                <div class="row" style="margin:5px">
                    <div class="col-md-2"></div>
                    <div class="col-md-10">
                        <input type="submit" name="btn" class="btn btn-primary" value="Process">
                    </div>
                </div>
                <!-- end row -->
            </form>
        </div>
    </div>
</div>