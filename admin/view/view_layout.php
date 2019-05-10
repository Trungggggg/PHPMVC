<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="public/css/bootstrap.min.css">
    <script language="JavaScript" src="public/ckeditor/ckeditor.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.php">Home</a></li>
                <li class="active"><a href="index.php?controller=category_product">Danh muc san pham</a></li>
                <li class="active"><a href="index.php?controller=product">San pham</a></li>
                <li class="active"><a href="index.php?controller=news">Tin tuc</a></li>
                <li class="active"><a href="index.php?controller=user">User</a></li>
                <li class="active"><a href="index.php?controller=order">Đơn Hàng</a></li>
                <li class="active"><a href="index.php?act=logout">Logout</a></li>

            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<div class="container" style="margin-top: 80px">
    <?php
        if(file_exists($controller))
            include $controller;
    ?>
</div>
</body>
</html>