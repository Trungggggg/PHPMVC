<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="public/css/reset.css" rel="stylesheet" type="text/css" />
    <link href="public/css/styles.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="public/css/paginate.css">
    <script type="text/javascript" src="public/js/jquery-3.1.1.js"></script>
    
    
    <title>Cửa Hàng Bé Yêu</title>
</head>

<body>
	<div id="wrapper">
    
    <!-- begin header -->
    	<div id="header"> 
        	<div id="logo">
            	<a href="/"><img src="public/images/logo.jpg" title="Cửa hàng bé yêu"  /></a>
            </div>
            <div id="top-nav">				
                <div id="info">
                	<p><span>Địa chỉ: Số 10, Chợ Phùng Khoang, Q. Thanh Xuân</span></p>
                	<p><span>Điện thoại:  04-333 3333 - Hotline: 012345678</span></p>
                </div>
                <div id="menu">
                	<ul>
                    	<li><a href="index.php" class="actived"><span>Trang chủ</span></a></li>
                        <li><a href="index.php?controller=news"><span>Tin tức</span></a></li>
                        <li><a href="index.php?controller=cart"><span>Giỏ hàng</span></a></li>
                        <li class="last"><a href="index.php?controller=about"><span>Liên hệ</span></a></li>
                    </ul>
                </div>
            </div>
            <script type="text/javascript">
            // lam sau
                function search(){
                    var key=document.getElementById("key").value;
                    //di chuyen den trang can chi dinh
                    location.href="index.php?controller=search&key="+key;
                    
                }
            </script>
            <div class="search-bar">
            	<form method="get" id="frm">
                	<div class="search-box">
    	            	<input id="key" type="text" placeholder="Nhập từ khóa tìm kiếm" />
						<a href="#" ><img onclick="search()" src="public/images/buttun-search.jpg" title="Tìm kiếm" /></a>
                    </div>
                    <div class="cart-message">
                    	<a href="index.php?controller=cart" class="cart"><img src="public/images/icon-cart.jpg" title="click vào đây để xem giỏ hàng của bạn"></a>
                    	<span class="message">Có <strong>
                         <?php 
                            //dem so luong san pham trong gio hang
                            //lam sau
                            $count = 0;
                            if (isset($_SESSION["cart"])) {
                                # code...
                                 foreach($_SESSION["cart"] as $product){
                                $count++;
                                }
                            echo $count;
                            }
                           
                          ?>      
                        </strong> sản phẩm trong giỏ hàng của bạn</span>
                    </div>
                </form>
            </div>
        </div>
        <!-- end header -->
        
        <div id="content">        	
        
            <!-- begin left -->
            <div class="left-col">
            
            	<?php
                    include "controller/controller_category.php";
                ?>
                <!-- support -->
                <div class="support">
                    <div class="support_title">Hỗ trợ bán hàng</div>
                    <div>
                        <img src="public/images/icon-skype.jpg" border="0">
                    </div>
                    <div class="support_title">Hỗ trợ bán hàng</div>
                    <div class="support_ym">
                        <img src="public/images/icon-skype.jpg" border="0">
                    </div>
                </div>
                <!-- end support -->
                    <?php
                        include "controller/controller_hotnews.php";
                    ?>               
                    <?php
                        include "controller/controller_static.php";
                    ?>
                
                <!-- adv -->
                <div class="box_content">
                <div class="logo"><a href="#"><img src="public/images/adv1.jpg" width="240"></a></div>
                
            	</div>
                <!-- end adv -->
                
            </div>
            
            <!-- end left -->
            
            
            <!-- begin right -->
            <div class="right-col">
            <!-- ----------------- -->
                <?php
                    if(file_exists($controller)){
                    include $controller;}
                ?>              
                
            <!-- ----------------- -->    
            </div>
            
            <!-- end right -->
            
            
        </div>
        
        <!-- begin footer -->
        <div id="footer">
        	<div class="footer-c">
                <div class="quick-link">
                    <ul>
                        <li class="header">Quản lý tài khoản</li>
                        <li><a href="#">Tạo tài khoản</a></li>
                        <li><a href="#">Đăng nhập</a></li>
                        <li><a href="#">Thay đổi thông tin tài khoản</a></li>
                        <li><a href="#">Quên mật khẩu</a></li>
                        <li><a href="#">Lịch sử mua hàng</a></li>
                    </ul>
                    
                    <ul>
                        <li class="header">Trợ giúp</li>
                        <li><a href="#">Quy định sử dụng</a></li>
                        <li><a href="#">Hướng dẫn mua hàng</a></li>
                        <li><a href="#">Phương thức thanh toán</a></li>
                        <li><a href="#">Phương thức vận chuyển</a></li>
                        <li><a href="#">Câu hỏi thường gặp</a></li>
                    </ul>
                    
                    <ul>
                        <li class="header">Hỗ trợ khách hàng</li>
                        <li><a href="#">Mọi thắc mắc xin vui lòng liên hệ:</a></li>
                        <li><strong>Tel:</strong> 04.3761 8738</li>
                        <li><strong>Hotline:</strong>  0912 795 723</li>
                        <li><strong>Email:</strong>  khongcoten19962014@gmail.com</li>
                        <li><strong>Website:</strong>  www.TMDT.vn</li>
                    </ul>
                    
                    <ul>
                        <li class="header">Thông tin cửa hàng</li>
                        <li><a href="#">Tin tuyển dụng</a></li>
                        <li><a href="#">Báo chí viết</a></li>
                        <li><a href="#">Thông tin khuyến mại</a></li>
                        <li><a href="#"> Sơ đồ web</a></li>
                    </ul>
                </div>
                
                <div class="copyright">
                    <p>Bản quyền © 20018  - Thiên đường cho Bé!</p>
                    <p><strong>Địa chỉ: Số 10, Chợ Phùng Khoang, Q. Thanh Xuân</strong></p>
                </div>
            </div>
        </div>
        <!-- end footer -->
        
    </div>
</body>
</html>