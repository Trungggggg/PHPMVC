<div class="col-md-10 col-xs-offset-1">
	<div style="margin-bottom:5px;">
		<a href="index.php?controller=add_edit_product&act=add" class="btn btn-primary">
		Add product
		</a>
	</div>
	<div class="panel panel-primary">
		<div class="panel-heading">
			List product
		</div>
		<div class="panel-body">
			<table class="table table-bordered table-hover">
			<tr>
				<th style="width:50px">STT</th>	
				<th style="width:120px;">Image</th>
				<th>Title</th>
				<th style="width: 150px;">Category</th>
				<th style="width: 120px;">Price</th>
				<th style="width: 70px;"></th>
				<th style="width:100px;">Manage</th>
			</tr>
			<?php 
				$stt = 0;
				foreach($arr as $value)
				{
					$stt++;
			 ?>
			<tr>
				<td style="text-align:center"><?php echo $stt; ?></td>
				<td style="text-align:center">
				<?php 
						if(file_exists("../public/upload/product/".$value["c_img"]))
						{
					 ?>
					<img src="<?php echo "../public/upload/product/".$value["c_img"]; ?>" style="width:100px;">
					<?php } ?>
				</td>
				<td><?php echo $value["c_name"]; ?></td>
				<td style="text-align: center;">
					<?php 
						$category = $this->model->fetch_one("select c_name from tbl_category_product where pk_category_product_id=".$value["fk_category_product_id"]);
						echo isset($category["c_name"])?$category["c_name"]:"";
					 ?>
				</td>
				<td style="text-align: center;">
					<?php 
						echo number_format($value["c_price"]);
					 ?> VNĐ
				</td>
				<td style="text-align: center;">
					<?php 
						echo isset($value["c_hotproduct"])&&$value["c_hotproduct"]==1?"Hot":"";
					 ?>
				</td>
				<td style="text-align:center">
					<a href="index.php?controller=add_edit_product&act=edit&id=<?php echo $value["pk_product_id"]; ?>">Edit</a>&nbsp;
					<a href="index.php?controller=product&act=delete&id=<?php echo $value["pk_product_id"]; ?>" onclick="return window.confirm('Are you sure?');">Delete</a>&nbsp;
				</td>
			</tr>
			<?php } ?>
			</table>
			<style type="text/css">
				.pagination{padding: 0px; margin:0px;}
			</style>
			<ul class="pagination">
			<?php 
				for($i = 1; $i<=$num_page; $i++){
			 ?>
				<li>
				<a href="index.php?controller=product&p=<?php echo $i; ?>"><?php echo $i; ?></a></li>
			<?php } ?>
			</ul>
		</div>
	</div>
</div>