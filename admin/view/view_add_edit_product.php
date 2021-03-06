<div class="col-md-10 col-xs-offset-1">
	<div class="panel panel-primary">
		<div class="panel-heading">Add edit product</div>
		<div class="panel-body">
			<form method="post" action="<?php echo $form_action; ?>" enctype="multipart/form-data">
			<!-- row -->
			<div class="row" style="margin:5px">
				<div class="col-md-2">Title</div>
				<div class="col-md-10">
					<input type="text" name="c_name" class="form-control" required value="<?php echo isset($arr["c_name"])?$arr["c_name"]:""; ?>">
				</div>
			</div>			
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin:5px">
				<div class="col-md-2">Price</div>
				<div class="col-md-10">
					<input type="text" name="c_price" class="form-control" required value="<?php echo isset($arr["c_name"])?$arr["c_price"]:""; ?>">
				</div>
			</div>			
			<!-- end row -->navbar-header
			<!-- row -->
			<div class="row" style="margin:5px">
				<div class="col-md-2">Category</div>
				<div class="col-md-10">
					<select name="fk_category_product_id">
						<?php 
							$arr_category=$this->model->fetch("select * from tbl_category_product");
							foreach ($arr_category as $key => $value) {
								# code...
						 ?>
						 <option <?php echo isset($arr["fk_category_product_id"])&&$value["pk_category_product_id"]==$arr["fk_category_product_id"]?"selected":""; ?> 
						 value="<?php echo $value["pk_category_product_id"];?>">
							<?php echo $value["c_name"]; ?>						 	
						 </option>
						 <?php } ?>						
					</select>
				</div>
			</div>			
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin:5px">
				<div class="col-md-2"></div>
				<div class="col-md-10">
					<input type="checkbox" <?php echo isset($arr["c_name"])&&$arr["c_hotproduct"]==1?"checked":""; ?> name="c_hotproduct" id="hot_product"> <label for="hot_product">Hot product</label>
				</div>
			</div>			
			<!-- end row -->
			
			<!-- row -->
			<div class="row" style="margin:5px">
				<div class="col-md-2">Description</div>
				<div class="col-md-10">
					<textarea style="width:700px;height:100px;" name="c_description">
					<?php echo isset($arr["c_description"])?$arr["c_description"]:""; ?>
					</textarea>
					<script type="text/javascript">
						CKEDITOR.replace("c_description");
					</script>
				</div>
			</div>			
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin:5px">
				<div class="col-md-2">Content</div>
				<div class="col-md-10">
					<textarea style="width:700px;height:100px;" name="c_content">
					<?php echo isset($arr["c_content"])?$arr["c_content"]:""; ?>
					</textarea>
					<script type="text/javascript">
						CKEDITOR.replace("c_content");
					</script>
				</div>
			</div>			
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin:5px">
				<div class="col-md-2">Image</div>
				<div class="col-md-10">
					<input type="file" name="c_img">
					<div style="margin-top:5px;">
						<?php 
							if (isset($arr["c_img"])&&file_exists("../public/upload/product/".$arr["c_img"])) {
								# code...
						 ?>
						<img src="<?php echo "../public/upload/product/".$arr["c_img"]; ?>" style="width:100px;">
						<?php } ?>
					</div>
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