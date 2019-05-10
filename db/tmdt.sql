-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2019 at 03:42 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tmdt`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adv`
--

CREATE TABLE `tbl_adv` (
  `pk_adv_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_img` varchar(500) NOT NULL,
  `c_position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_adv`
--

INSERT INTO `tbl_adv` (`pk_adv_id`, `c_name`, `c_img`, `c_position`) VALUES
(1, 'Trai', 'public/images/adv1.gif', 1),
(2, 'Giua', 'public/images/adv2.gif', 2),
(3, 'Duoi', 'public/images/adv3.gif', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `pk_category_product_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`pk_category_product_id`, `c_name`) VALUES
(1, 'Giày Vải'),
(2, 'Sneakers'),
(3, 'Dép'),
(4, 'Giày Sandal'),
(5, 'Giày Búp Bê'),
(6, 'Giày Tây'),
(7, 'Giày Đế Mềm'),
(8, 'Giày Thể Thao');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` char(200) NOT NULL,
  `customer_add` varchar(250) NOT NULL,
  `customer_phone` varchar(250) NOT NULL,
  `customer_note` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_add`, `customer_phone`, `customer_note`) VALUES
(27, 'anhtrung', 'binh yen', '01230', 'tủng'),
(28, 'trung112', 'Nam ĐỊnh', '123', 'sadad');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `pk_news_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_description` varchar(20000) NOT NULL,
  `c_content` text NOT NULL,
  `c_img` varchar(500) NOT NULL,
  `c_hotnews` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`pk_news_id`, `c_name`, `c_description`, `c_content`, `c_img`, `c_hotnews`) VALUES
(11, 'Kiểu dáng thời trang, phù hợp với mọi phong cách.', '<p>- Mẹ cũng c&oacute; thể dễ d&agrave;ng nhận thấy sự đa dạng về kiểu d&aacute;ng gi&agrave;y d&eacute;p hiện nay. Thiết kế đơn giản nhưng lại v&ocirc; c&ugrave;ng tinh tế v&agrave; hợp thời trang. C&aacute;c thiết kế&nbsp;<strong>gi&agrave;y d&eacute;p trẻ em cao cấp</strong>&nbsp;lu&ocirc;n hướng tới sự đơn giản v&agrave; tiện lợi khi mang. C&aacute;i sang của sản phẩm kh&ocirc;ng chỉ nằm ở m&agrave;u sắc, họa tiết tr&ecirc;n gi&agrave;y. M&agrave; sự tinh tế, chuẩn chỉnh đến từng chi tiết nhỏ như đường may tr&ecirc;n gi&agrave;y mới thể hiện được r&otilde; nhất đẳng cấp của 1 thương hiệu.</p>\r\n', '<p>- Những đ&ocirc;i gi&agrave;y kiểu d&aacute;ng đơn giản với c&aacute;c điểm nhấn nhỏ như 1 chiếc nơ hoặc c&aacute;c h&igrave;nh th&ecirc;u hoạt h&igrave;nh ngộ nghĩnh lu&ocirc;n được c&aacute;c mẹ v&agrave; b&eacute; y&ecirc;u th&iacute;ch. Kh&ocirc;ng qu&aacute; cầu k&igrave;, ph&ugrave; hợp với nhiều kiểu trang phục quần, &aacute;o từ điệu đ&agrave; đến c&aacute; t&iacute;nh. C&aacute;c kiểu&nbsp;<em>gi&agrave;y d&eacute;p trẻ em cao cấp</em>&nbsp;thiết kế đơn giản cũng rất sang. N&ecirc;n d&ugrave; b&eacute; c&oacute; tham gia 1 buổi tiệc lớn th&igrave; ch&uacute;ng vẫn ph&ugrave; hợp. Đặc biệt l&agrave; mẹ sẽ chẳng bao giờ phải lo&nbsp;<a href=\"http://crownspace.vn/chon-mua-giay-dep-tre-em-cao-cap-cho-mua-dong.html\">chọn mua gi&agrave;y d&eacute;p trẻ em</a><strong><em>&nbsp;</em></strong>mới cho b&eacute; mỗi dịp v&igrave; đ&ocirc;i gi&agrave;y n&agrave;y đ&atilde; lỗi mốt.</p>\r\n', '152562434923(1).png', 1),
(12, 'Chất liệu cao cấp, tuyệt đối an toàn với bé.', '<p>Yếu tố đầu ti&ecirc;n để đ&aacute;nh gi&aacute; chất lượng của gi&agrave;y d&eacute;p ch&iacute;nh l&agrave; chất liệu sản phẩm. V&agrave; với&nbsp;<strong>gi&agrave;y d&eacute;p trẻ em cao cấp</strong>&nbsp;từ thương hiệu Crown Space, bạn ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m về vấn đề n&agrave;y:</p>\r\n\r\n<p>- To&agrave;n bộ sản phẩm gi&agrave;y d&eacute;p đều được l&agrave;m từ chất liệu cao cấp, được xử l&yacute; theo đ&uacute;ng quy tr&igrave;nh, ti&ecirc;u chuẩn sản xuất. D&acirc;y chuyền sản xuất hiện đại từ Anh Quốc, sản xuất tu&acirc;n theo c&aacute;c ti&ecirc;u chuẩn chất lượng khắt khe.</p>\r\n\r\n<p>- Sản phẩm sản xuất ra đều đ&atilde; được kiểm nghiệm v&agrave; chứng nhận tuyệt đối an to&agrave;n với l&agrave;n da v&agrave; sức khỏe của trẻ từ Bộ C&ocirc;ng thương Việt Nam. Vậy n&ecirc;n c&aacute;c bậc cha mẹ c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi cho b&eacute; sử dụng sản phẩm&nbsp;<em>gi&agrave;y d&eacute;p trẻ em</em>&nbsp;của Crown Space. Kể cả những b&eacute; c&oacute; l&agrave;n da nhạy cảm.</p>\r\n', '<p>- Chất liệu cao cấp, mềm mại, tho&aacute;ng kh&iacute; tr&aacute;nh c&aacute;c hiện tượng mẩn ngứa, k&iacute;ch ứng da ở trẻ. Đồng thời khả năng thấm h&uacute;t mồ h&ocirc;i cực tốt, hạn chế mồ h&ocirc;i t&iacute;ch tụ g&acirc;y m&ugrave;i h&ocirc;i kh&oacute; chịu v&agrave; c&aacute;c bệnh l&yacute; kh&aacute;c về da.</p>\r\n', '152562430610(2).png', 1),
(13, 'Giày dép trẻ em cao cấp với thiết kế an toàn.', '<p>Kh&ocirc;ng chỉ đảm bảo ch&acirc;n b&eacute; được thoải m&aacute;i khi mang gi&agrave;y d&eacute;p di chuyển, vận động. M&agrave;&nbsp;<em>gi&agrave;y d&eacute;p trẻ em</em>&nbsp;c&ograve;n c&oacute; chức năng v&ocirc; c&ugrave;ng quan trọng l&agrave; bảo vệ ch&acirc;n b&eacute; khỏi những t&aacute;c động b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<p>- Đế gi&agrave;y: Đế gi&agrave;y hiện nay đều được sản xuất từ cao su thơm tự nhi&ecirc;n, kh&ocirc;ng lưu h&oacute;a v&agrave; được tổng hợp lần đầu. Đặc biệt l&agrave; hệ thống r&atilde;nh chống trơn trượt ở mặt ngo&agrave;i đế gi&uacute;p giảm ma s&aacute;t khi tiếp x&uacute;c với c&aacute;c địa h&igrave;nh kh&aacute;c nhau.</p>\r\n\r\n<p>- G&oacute;t gi&agrave;y: Tất cả c&aacute;c sản phẩm&nbsp;<strong>gi&agrave;y d&eacute;p trẻ em cao cấp</strong>&nbsp;từ Crown Space đều được nghi&ecirc;n cứu v&agrave; thiết kế phần g&oacute;t gi&agrave;y ph&ugrave; hợp với từng giai đoạn ph&aacute;t triển của trẻ. N&acirc;ng đỡ, hỗ trợ sự ph&aacute;t triển của cổ ch&acirc;n v&agrave; to&agrave;n hệ vận động.</p>\r\n', '<p>Kh&ocirc;ng chỉ ri&ecirc;ng gi&agrave;y d&eacute;p, bất cứ sản phẩm n&agrave;o sử dụng cho b&eacute; mẹ đều cần phải đặc biệt ch&uacute; &yacute; đến chất lượng v&agrave; độ an to&agrave;n của sản phẩm với con y&ecirc;u. Những sản phẩm thời trang,&nbsp;<strong>gi&agrave;y d&eacute;p trẻ em cao cấp</strong>&nbsp;mức gi&aacute; thường cao hơn nhưng nguồn gốc r&otilde; r&agrave;ng, chất lượng được kiểm chứng&hellip; Thực tế mẹ ho&agrave;n to&agrave;n c&oacute; thể săn sale, điều n&agrave;y ho&agrave;n to&agrave;n c&oacute; thể khi m&agrave; internet ng&agrave;y c&agrave;ng ph&aacute;t triển. N&ecirc;n mẹ c&oacute; thể săn sale v&agrave; đặt mua h&agrave;ng Online để nhận được c&aacute;c ưu đ&atilde;i lớn. Crown Space cũng đang c&oacute;&nbsp;<a href=\"http://crownspace.vn/tet-ron-rang-don-xuan-sang-giam-gia-50-toan-bo-san-pham.html\">chương tr&igrave;nh khuyến mại khủng từ 50% to&agrave;n bộ c&aacute;c item</a>&nbsp;cực hot. Mẹ v&agrave; b&eacute; mau qua tham quan mua sắm nha!</p>\r\n', '15256244157(1).png', 1),
(14, 'TẦM QUAN TRỌNG CỦA GIÀY DÉP TRẺ EM ĐẾN SỨC KHỎE VÀ SỰ PHÁT TRIỂN CỦA TRẺ', '<p><em>Kh&ocirc;ng giống như quần &aacute;o hay những chiếc mũ chỉ c&oacute; t&aacute;c dụng trong việc che chắn.&nbsp;<strong>Gi&agrave;y d&eacute;p trẻ em</strong>&nbsp;c&oacute; 1 nghĩa vụ đặc biệt quan trọng trong việc bảo vệ v&agrave; hỗ trợ sự ph&aacute;t triển của trẻ. Ch&uacute;ng phải chống đỡ to&agrave;n bộ trọng lượng cơ thể của b&eacute;, Nhưng b&ecirc;n cạnh đ&oacute; lại vẫn phải đảm bảo được sự&nbsp;thoải m&aacute;i , linh hoạt khi di chuyển. Đồng thời lại phải đảm bảo t&iacute;nh thời trang, gi&uacute;p b&eacute; nổi bật khi xuất hiện.</em></p>\r\n', '<p>Rất nhiều bậc cha mẹ hiện nay chỉ chọn gi&agrave;y d&eacute;p cho b&eacute; y&ecirc;u theo ti&ecirc;u ch&iacute; đẹp, độc m&agrave; &iacute;t quan t&acirc;m đến vấn đề chất lượng của sản phẩm. Một sản phẩm tốt c&oacute; thể gi&uacute;p con y&ecirc;u của bạn ph&aacute;t triển tốt nhất v&agrave; an to&agrave;n. Nhưng ngược lại, chỉ 1 sản phẩm độc hại c&oacute; thể khiến tương lai của con y&ecirc;u trở n&ecirc;n kh&oacute; khăn v&agrave; m&ugrave; mịt. V&agrave; gi&agrave;y d&eacute;p ch&iacute;nh l&agrave; 1 t&aacute;c nh&acirc;n c&oacute; thể khiến con y&ecirc;u ph&aacute;t triển theo cả 2 chiều hướng đ&oacute;. C&ugrave;ng shop&nbsp;đi v&agrave;o t&igrave;m v&agrave; hiểu hơn về vai tr&ograve;, tầm quan trọng của&nbsp;<em>gi&agrave;y d&eacute;p trẻ em</em>&nbsp;để c&oacute; c&aacute;i nh&igrave;n v&agrave; lựa chọn đ&uacute;ng đắn nhất cho con y&ecirc;u nh&eacute;!</p>\r\n\r\n<h2><strong>1.H&atilde;y chọn mua gi&agrave;y d&eacute;p trẻ em c&oacute; đế kh&acirc;u.</strong><br />\r\n&nbsp;</h2>\r\n\r\n<p>- Kh&ocirc;ng thể phủ nhận rằng những đ&ocirc;i gi&agrave;y đế kh&acirc;u chắc chắn hơn v&agrave; thiết thực hơn rất nhiều so với những đ&ocirc;i gi&agrave;y được d&aacute;n hoặc gắn keo. Đặc biệt với trẻ, ch&uacute;ng v&ocirc; c&ugrave;ng hiếu động v&agrave; chẳng chịu ngồi y&ecirc;n. Trẻ cũng chứ thể c&oacute; &yacute; thức trong việc giữ g&igrave;n gi&agrave;y d&eacute;p của m&igrave;nh. Vậy n&ecirc;n lựa chọn gi&agrave;y d&eacute;p trẻ em đế kh&acirc;u mới c&oacute; thể &ldquo;l&agrave;m bạn&rdquo; được với b&eacute; trong 1 thời gian.</p>\r\n\r\n<p>- Những thiết kế&nbsp;<em>gi&agrave;y d&eacute;p trẻ em h&agrave;ng hiệu</em>&nbsp;được l&agrave;m ra 1 c&aacute;ch rất tỉ mỉ. Từng đường may tr&ecirc;n gi&agrave;y đến c&aacute;c chi tiết nhỏ nhất đều được ch&uacute; trọng. Hơn nữa, qua c&aacute;c đường mau tr&ecirc;n gi&agrave;y mẹ cũng c&oacute; thể dế d&agrave;ng ph&acirc;n biệt được gi&agrave;y d&eacute;p tốt hay kh&ocirc;ng. V&iacute; dụ như gi&agrave;y d&eacute;p được l&agrave;m từ da thật&nbsp;thường c&oacute; c&aacute;c đường may chắc chắn v&agrave; n&eacute;t v&igrave; chất liệu da bền, dai. Những thiết kế da gải, k&eacute;m chất lượng rất dễ r&aacute;ch n&ecirc;n thường hạn chế c&aacute;c đường may tr&ecirc;n gi&agrave;y. Thay v&agrave;o đ&oacute; ch&uacute;ng sẽ được gắn keo hoặc d&aacute;n qua.</p>\r\n\r\n<p>- Đế gi&agrave;y l&agrave; yếu tố quan trọng gi&uacute;p bảo vệ l&ograve;ng b&agrave;n ch&acirc;n của b&eacute; cũng nhự an to&agrave;n khi b&eacute; di chuyển. Đế gi&agrave;y qu&aacute; mềm hay qu&aacute; cứng đều g&acirc;y những ảnh hưởng nhất định đến sự ph&aacute;t triển xương b&agrave;n ch&acirc;n của trẻ. N&ecirc;n điều quan trọng khi sản xuất l&agrave; phải c&oacute; sự nghi&ecirc;n cứu v&agrave; thiết kế kiểu đế gi&agrave;y sao cho ph&ugrave; hợp với từng giai đoạn ph&aacute;t triển của trẻ. V&agrave; Crown Space lu&ocirc;n tự h&agrave;o v&igrave; điều n&agrave;y. Hơn nữa, lớp đệm đế &ecirc;m, mềm c&ugrave;ng hệ thống r&atilde;nh chống trơn trượt th&ocirc;ng minh mặt ngo&agrave;i đế của c&aacute;c sản phẩm&nbsp;<strong>gi&agrave;y d&eacute;p trẻ em</strong>&nbsp;gi&uacute;p tăng độ thoải m&aacute;i v&agrave; ma s&aacute;t với c&aacute;c bề mặt khi tiếp x&uacute;c. Gi&uacute;p b&eacute; an to&agrave;n khi di chuyển, vận động tr&ecirc;n mọi loại địa h&igrave;nh.</p>\r\n\r\n<p>Một điều kh&ocirc;ng may đ&oacute; l&agrave;: &ldquo;Chất lượng kh&ocirc;ng phải l&agrave; thứ m&agrave; mẹ c&oacute; thể thấy ngay được ngay khi chọn mua gi&agrave;y d&eacute;p mới. Nhưng mẹ c&oacute; thể nhận thấy được sự kh&aacute;c biệt lớn khi sử dụng gi&agrave;y được tới 6 th&aacute;ng, 1 năm. Vậy n&ecirc;n trước khi mua<em>gi&agrave;y d&eacute;p trẻ em</em>&nbsp;cho con y&ecirc;u. Mẹ h&atilde;y tham khảo &yacute; kiến của bạn b&egrave; hoặc những mẹ kh&aacute;c tr&ecirc;n c&aacute;c cộng đồng, group nha.</p>\r\n\r\n<h2><strong>2.Chất liệu gi&agrave;y d&eacute;p ảnh hướng rất nhiều đến l&agrave;n da v&agrave; sức khỏe của trẻ.</strong><br />\r\n&nbsp;</h2>\r\n\r\n<p>- Chất liệu gi&agrave;y tốt, an to&agrave;n l&agrave; yếu tố đảm bảo độ bền, sự an to&agrave;n v&agrave; chất lượng của sản phẩm. V&agrave; đ&acirc;y cũng ch&iacute;nh l&agrave; yếu tố quyết định gi&aacute; th&agrave;nh, uy t&iacute;n của 1 thương hiệu gi&agrave;y d&eacute;p.</p>\r\n\r\n<p>- C&aacute;c sản phẩm gi&agrave;y d&eacute;p được l&agrave;m từ chất liệu cao cấp sẽ an to&agrave;n với trẻ. Rất nhiều trẻ thường c&oacute; hiện tượng bị mẩn ngứa, k&iacute;ch ứng da&hellip; khi mang gi&agrave;y d&eacute;p. Một phần nguy&ecirc;n nh&acirc;n ch&iacute;nh đến từ chất liệu gi&agrave;y. Gi&agrave;y được l&agrave;m từ c&aacute;c chất liệu k&eacute;m chất lượng sẽ khiến da ch&acirc;n kh&ocirc;ng thể h&ocirc; hấp, kh&iacute; kh&ocirc;ng thể lưu th&ocirc;ng. G&acirc;y ra n&oacute;ng ẩm, nhất l&agrave; khi ch&acirc;n trẻ đổ mồ h&ocirc;i. Đ&acirc;y ch&iacute;nh l&agrave; m&ocirc;i trường thuận lợi cho vi khuẩn ph&aacute;t triển, g&acirc;y ra m&ugrave;i v&agrave; c&aacute;c bệnh về da như: Nấm, mẩn ngứa&hellip;</p>\r\n\r\n<h2><strong>3.Dạy trẻ c&aacute;ch giữ g&igrave;n gi&agrave;y d&eacute;p của m&igrave;nh.</strong></h2>\r\n\r\n<p>Giữ g&igrave;n gi&agrave;y d&eacute;p đ&uacute;ng c&aacute;ch l&agrave; yếu tố quan trọng quyết định tuổi thọ của 1 đ&ocirc;i gi&agrave;y sau chất liệu sản phẩm.</p>\r\n\r\n<p>- H&atilde;y l&acirc;u gi&agrave;y trước v&agrave; sau khi mang. Lời khuy&ecirc;n cho c&aacute;c mẹ l&agrave; đối với&nbsp;<strong>gi&agrave;y d&eacute;p trẻ em</strong>&nbsp;cũng như gi&agrave;y d&eacute;p của cả gia đ&igrave;nh, n&ecirc;n lau gi&agrave;y bằng 1 miếng vải mềm hoặc giấy được l&agrave;m ẩm trước v&agrave; sau khi đi. Mẹ ho&agrave;n to&agrave;n c&oacute; thể hướng dẫn b&eacute; hoặc gi&uacute;p đỡ trẻ khi ch&uacute;ng chưa thể tự m&igrave;nh l&agrave;m việc n&agrave;y. Nhất l&agrave; với gi&agrave;y d&eacute;p da, bụi bẩn b&aacute;m tr&ecirc;n gi&agrave;y sau mỗi lần sử dụng sẽ tập trung ở c&aacute;c vết gấp khi đi. V&agrave; ch&uacute;ng đ&oacute;ng vai tr&ograve; như giấy r&aacute;p tr&ecirc;n da gi&agrave;y l&agrave;m đ&ocirc;i gi&agrave;y trở l&ecirc;n mất thẩm mỹ v&agrave; giảm đ&aacute;ng kể tuổi thọ của gi&agrave;y d&eacute;p.</p>\r\n\r\n<p>- Với gi&agrave;y da lộn, mẹ h&atilde;y sử dụng nước sạch hoặc nước tẩy xịt nhẹ l&ecirc;n gi&agrave;y v&agrave; d&ugrave;ng 1 chiếc b&agrave;n chải mềm để l&agrave;m sạch gi&agrave;y. Gi&agrave;y da lộn thường sẽ bền v&agrave; dễ vệ sinh hơn rất nhiều. N&ecirc;n thay v&igrave; chọn mua gi&agrave;y da thật th&igrave; mẹ c&oacute; thể chọn mua cho b&eacute; gi&agrave;y da lộn.<br />\r\n&nbsp;</p>\r\n\r\n<p>- D&ugrave; l&agrave; gi&agrave;y d&eacute;p l&agrave;m bằng chất liệu g&igrave; đi nữa th&igrave; tốt nhất mẹ n&ecirc;n vệ sinh gi&agrave;y d&eacute;p cho trẻ sau mỗi lần sử dụng. Đặc biệt l&agrave; cần phải vệ sinh gi&agrave;y d&eacute;p m&ugrave;a mưa. Như vậy sẽ đảm bảo gi&agrave;y của b&eacute; lu&ocirc;n sạch sẽ như mới v&agrave; tăng được tuổi thọ của gi&agrave;y d&eacute;p.</p>\r\n\r\n<p>N&oacute;i chung ngo&agrave;i l&agrave;m đẹp, bảo vệ ch&acirc;n b&eacute; khỏi nững dị vật khi di chuyển tr&ecirc;n c&aacute;c địa h&igrave;nh kh&aacute;c nhau. Th&igrave;&nbsp;<strong>gi&agrave;y d&eacute;p trẻ em</strong>&nbsp;c&ograve;n l&agrave; 1 phần quan trọng t&aacute;c động đến sự ph&aacute;t triển của trẻ sau n&agrave;y: Đảm bảo v&agrave; hỗ trợ sự ph&aacute;t triển của xương cổ ch&acirc;n, xương b&agrave;n ch&acirc;n, hệ vận động. Ảnh hưởng trực tiếp đến sự ph&aacute;t triển của xương cột sống, h&igrave;nh th&agrave;nh d&aacute;ng đi đ&uacute;ng, tốt cho sự ph&aacute;t triển. Tr&aacute;nh g&acirc;y c&aacute; t&aacute;c động l&agrave;m ph&aacute;t sinh c&aacute;c dị tật cho b&agrave;n ch&acirc;n v&agrave; hệ xương. Vậy n&ecirc;n h&atilde;y thật cẩn trọng khi lựa chọn gi&agrave;y d&eacute;p cho b&eacute; y&ecirc;u nh&eacute; c&aacute;c mẹ!</p>\r\n', '152562967021(3).png', 1),
(15, 'GIÀY TRẺ EM NỮ 4 TUỔI CỰC YÊU ĐI CHƠI TẾT', '<p><em>Kh&ocirc;ng kh&iacute; mua sắm ng&agrave;y c&agrave;ng nhộn nhịp hơn những ng&agrave;y gi&aacute;p Tết. H&agrave;ng ng&agrave;n mặt h&agrave;ng gi&agrave;y d&eacute;p, thời trang trẻ em được b&agrave;y b&aacute;n với đủ c&aacute;c kiểu d&aacute;ng, m&agrave;u sắc cực bắt mắt. Ngo&agrave;i t&iacute;nh thời trang v&agrave; bảo vệ đ&ocirc;i ch&acirc;n của b&eacute; khỏi những t&aacute;c nh&acirc;n b&ecirc;n ngo&agrave;i.&nbsp;<strong>Gi&agrave;y d&eacute;p trẻ em</strong>&nbsp;<strong>nữ</strong>&nbsp;c&ograve;n c&oacute; vai tr&ograve; rất quan trọng trong qu&aacute; tr&igrave;nh ph&aacute;t triển của trẻ.</em></p>\r\n', '<h1>&nbsp;</h1>\r\n\r\n<p>Dịp mua sắm Tết c&oacute; thể n&oacute;i l&agrave; 1 trong số những dịp mua sắm lớn nhất trong năm. Nhưng khả năng kiểm so&aacute;t chất lượng, nguồn gốc của sản phẩm lại kh&oacute; m&agrave; biết. V&igrave; vậy m&agrave; việc chọn mua c&aacute;c sản phẩm cho b&eacute; dịp Tết l&agrave; vấn đề đau đầu với c&aacute;c bậc cha mẹ. L&agrave;m sao để chọn mua được c&aacute;c set đồ thời trang,&nbsp;<em>gi&agrave;y d&eacute;p trẻ em nữ cao cấp</em>, chất lượng v&agrave; an to&agrave;n? C&ugrave;ng Shop đi v&agrave;o t&igrave;m c&acirc;u trả lời cho vấn đề n&agrave;y nh&eacute;!</p>\r\n\r\n<h2><strong>1.Hiện trang gi&agrave;y d&eacute;p trẻ em dịp Tết.</strong></h2>\r\n\r\n<p>- H&agrave;ng ng&agrave;n mặt h&agrave;ng gi&agrave;y d&eacute;p được b&agrave;y b&aacute;n tr&agrave;n l&agrave;n tr&ecirc;n thị trường dịp mua sắm Tết khiến người ti&ecirc;u d&ugrave;ng kh&oacute; m&agrave; nhận biết được đ&acirc;u mới l&agrave; sản phẩm tốt, chất lượng. Nguồn gốc kh&ocirc;ng r&otilde;, chất lượng kh&ocirc;ng được kiểm chứng, độ an to&agrave;n của sản phẩm lại c&agrave;ng l&agrave; c&acirc;u hỏi kh&oacute; c&oacute; lời giải.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Gi&agrave;y d&eacute;p trẻ em nữ cho b&eacute; 4 tuổi- gi&agrave;y b&uacute;p b&ecirc; cho b&eacute; g&aacute;i</em></p>\r\n\r\n<p>- Kh&ocirc;ng ai c&oacute; thể k&igrave;m l&ograve;ng trước những đ&ocirc;i&nbsp;<strong>gi&agrave;y d&eacute;p trẻ em nữ</strong>&nbsp;nhỏ xinh với đủ c&aacute;c loại m&agrave;u sắc thu h&uacute;t. Đ&oacute; cũng ch&iacute;nh l&agrave; l&iacute; do khiến c&aacute;c bậc cha mẹ thường qu&ecirc;n đi vẫn đề chất lượng của sản phẩm m&agrave; gật đầu mua sản phẩm bởi kiểu d&aacute;ng v&agrave; m&agrave;u sắc sản phẩm b&ecirc;n ngo&agrave;i. Nhưng để l&agrave;m được ra những m&agrave;u sắc rực rỡ như vậy, nh&agrave; sản xuất chắc chắn đ&atilde; phải sử dụng 1 lượng h&oacute;a chất tạo m&agrave;u kh&ocirc;ng hề nhỏ. V&agrave; thật kh&ocirc;ng may nếu lượng h&oacute;a chất tạo m&agrave;u đ&oacute; kh&ocirc;ng được xử l&yacute; đ&uacute;ng theo c&aacute;c ti&ecirc;u chuẩn an to&agrave;n. V&agrave; đ&oacute; cũng ch&iacute;nh l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y hại trực tiếp đến l&agrave;n da, sức khỏe v&agrave; sự ph&aacute;t triển của trẻ khi mang.</p>\r\n\r\n<p>- Chưa kể đến những chất liệu kh&ocirc;ng an to&agrave;n nhẹ th&igrave; c&oacute; thể khiến da b&eacute; bị mẩn ngữa, k&iacute;ch ứng&hellip; Nhưng nặng hơn c&oacute; thể khiến b&eacute; bị c&aacute;c bệnh l&yacute; nguy hiểm về da như ung thư khi mang gi&agrave;y d&eacute;p k&eacute;m chất lượng trong 1 thời gian d&agrave;i. Chẳng phải ngẫu nhi&ecirc;n m&agrave; vấn đề sức khỏe, an to&agrave;n của trẻ cũng như những th&ocirc;ng tin về&nbsp;<a href=\"http://crownspace.vn/nhan-biet-tac-hai-tu-quan-ao-tre-em-trung-quoc.html\">g</a>i&agrave;y d&eacute;p trung quốc chứa h&oacute;a chất độc hại&nbsp;được b&agrave;y b&aacute;n tr&ecirc;n thị trường ng&agrave;y c&agrave;ng n&oacute;ng dịp gi&aacute;p Tết.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Tiếp đến, những lựa chọn&nbsp;<strong>gi&agrave;y d&eacute;p trẻ em nữ</strong>&nbsp;kh&ocirc;ng ph&ugrave; hợp với b&agrave;n ch&acirc;n của trẻ cũng g&acirc;y những ảnh hưởng rất nguy hiểm về sau n&agrave;y. Một đối gi&agrave;y qu&aacute; cứng hay qu&aacute; mềm, qưu&aacute; chật hay qu&aacute; rộng đều khiến b&agrave;n ch&acirc;n b&eacute; bị tổn thương. Nhẹ th&igrave; c&oacute; thể l&agrave; đau r&aacute;t, phồng rộp nhưng nếu nặng hơn ch&iacute;nh những thiết kế gi&agrave;y d&eacute;p kh&ocirc;ng ph&ugrave; hợp đ&oacute; c&oacute; thể g&acirc;y ra c&aacute;c dị tật cho b&agrave;n ch&acirc;n trẻ. Trực tiếp t&aacute;c động đến d&aacute;ng đi, xương cổ ch&acirc;n, xương cổ sống v&agrave; to&agrave;n bộ sự ph&aacute;t triển của hệ vận động sau n&agrave;y.</p>\r\n\r\n<h2><strong>2.Đ&acirc;u mới l&agrave; 1 đ&ocirc;i gi&agrave;y d&eacute;p trẻ em nữ 4 tu&ocirc;it tốt dịp Tết n&agrave;y?</strong></h2>\r\n\r\n<p>Một đ&ocirc;i gi&agrave;y tốt sẽ khiến ch&acirc;n b&eacute; cảm thấy thoải m&aacute;i khi mang. Ngo&agrave;i việc bảo vệ ch&acirc;n b&eacute; th&igrave; gi&agrave;y d&eacute;p c&ograve;n c&oacute; vai tr&ograve; rất quan trọng trong việc đảm bảo v&agrave; hỗ trợ sự ph&aacute;t triển của trẻ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Gi&agrave;y b&uacute;p b&ecirc; cho b&eacute; cực y&ecirc;u-&nbsp;RB Baby Fashion Shoes 051_1006</em></p>\r\n\r\n<p>- Mũi gi&agrave;y rộng: Những ng&oacute;n ch&acirc;n của trẻ thường c&oacute; xu hướng x&ograve;e rộng hơn so với b&agrave;n ch&acirc;n của những người trưởng th&agrave;nh. V&igrave; vậy m&agrave; 1 đ&ocirc;i gi&agrave;y mũi nhọn sẽ kh&ocirc;ng ph&ugrave; hợp với ch&acirc;n b&eacute;. Mẹ h&atilde;y chọn mua những thiết kế&nbsp;<em>gi&agrave;y d&eacute;p trẻ em</em>&nbsp;mũi tr&ograve;n hoặc vu&ocirc;ng để đảm bảo c&aacute;c ng&oacute;n ch&acirc;n của b&eacute; c&oacute; đủ kh&ocirc;ng gian để ph&aacute;t triển.</p>\r\n\r\n<p>- G&oacute;t gi&agrave;y: C&aacute;c thiết kế&nbsp;<strong>gi&agrave;y d&eacute;p trẻ em</strong>&nbsp;cần phải ph&ugrave; hợp v&agrave; hỗ trợ được sự ph&aacute;t triển của b&eacute;. Phần g&oacute;t gi&agrave;y của trẻ thường được thiết kế kh&aacute; cao với phần đệm l&oacute;t &ecirc;m &aacute;i. Vừa gi&uacute;p ch&acirc;n b&eacute; thoải m&aacute;i, kh&ocirc;ng bị phồng rộp do cọ s&aacute;t với g&oacute;t gi&agrave;y. Đặc biệt l&agrave; vai tr&ograve; trong việc n&acirc;ng đỡ, hỗ trợ cổ ch&acirc;n b&eacute; khi di chuyển, vận động.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Đế gi&agrave;y chống trơn trượt an to&agrave;n: C&aacute;c bước đi của b&eacute; chưa vững, hay chạy nhảy, th&ecirc;m nữa l&agrave; khả năng giữ thăng cũng kh&ocirc;ng thể như người trưởng th&agrave;nh. Vậy n&ecirc;n 1 đ&ocirc;i gi&agrave;y, d&eacute;p c&oacute; phần mặt ngo&agrave;i đế được thiết kế hệ thống r&atilde;nh chống trơn trượt th&ocirc;ng minh sẽ rất l&yacute; tưởng. Gi&uacute;p tăng ma s&aacute;t khi tiếp x&uacute;c trực tiếp với c&aacute;c bề mặt địa h&igrave;nh kh&aacute;c nhau. Nhưng mẹ h&atilde;y đảm bảo chọn gi&agrave;y d&eacute;p cho trẻ&nbsp;c&oacute; lớp đệm l&oacute;t đế b&ecirc;n trong mềm v&agrave; &ecirc;m nh&eacute;!</p>\r\n\r\n<p>- Chất liệu gi&agrave;y: Gi&agrave;y d&eacute;p được l&agrave;m từ c&aacute;c chất liệu tốt sẽ mềm v&agrave; an to&agrave;n với ch&acirc;n b&eacute;. C&aacute;c chất liệu cao cấp sẽ c&oacute; khả năng thấm h&uacute;t mồ h&ocirc;i tốt hơn, đảm bảo ch&acirc;n b&eacute; lu&ocirc;n tho&aacute;ng m&aacute;t, tr&aacute;nh g&acirc;y m&ugrave;i h&ocirc;i kh&oacute; chịu do mồ h&ocirc;i t&iacute;ch tụ. Th&ecirc;m nữa l&agrave;n da của b&eacute; rất nhạy cảm, c&aacute;c sản phẩm gi&agrave;y da cao cấp hay gi&agrave;y vải cao cấp tho&aacute;ng kh&iacute;, đảm bảo da được h&ocirc; hấp. Đặc biệt l&agrave; đảm bảo an to&agrave;n, tr&aacute;nh những bệnh l&yacute; về da như mẩn ngứa, k&iacute;ch ứng&hellip;</p>\r\n\r\n<p>Dịp Tết b&eacute; sẽ di chuyển, chạy nhảy rất nhiều n&ecirc;n 1 đ&ocirc;i&nbsp;<strong>gi&agrave;y d&eacute;p trẻ em nữ 4 tuổi&nbsp;</strong>tốt l&agrave; rất cần thiết với trẻ. Để lựa chọn được 1 đ&ocirc;i gi&agrave;y ph&ugrave; hợp thực sự kh&ocirc;ng hề dễ với c&aacute;c bậc cha mẹ. Qua b&agrave;i viết tr&ecirc;n, hy vọng sẽ gi&uacute;p việc chọn mua gi&agrave;y d&eacute;p dịp Tết n&agrave;y cho b&eacute; sẽ dễ d&agrave;ng hơn với c&aacute;c bậc cha mẹ. Nhớ gh&eacute; qua hệ thống của h&agrave;ng củaShop để ring ngay c&aacute;c&nbsp;<a href=\"http://crownspace.vn/set-do-thoi-trang-tre-em-cao-cap-dip-tet.html\">s</a>et đồ tết cực y&ecirc;u nh&eacute;!</p>\r\n', '1525629845IMG_8227(5).jpg', 0),
(16, 'GIÀY BÚP BÊ TRẺ EM GÁI SIÊU XINH ĐÓN TẾT', '<p><em>Cũng như c&aacute;c ch&agrave;ng ho&agrave;ng tử, những c&ocirc;ng ch&uacute;a b&eacute; bỏng của ch&uacute;ng ta cũng cần t&igrave;m được đ&ocirc;i &ldquo;Gi&agrave;y thủy tinh&rdquo; của m&igrave;nh để Tết n&agrave;y th&ecirc;m lung linh. Với c&aacute;c b&eacute; g&aacute;i th&igrave; kh&ocirc;ng thể kh&ocirc;ng nhắc đến c&aacute;c mẫu&nbsp;<strong>gi&agrave;y b&uacute;p b&ecirc; trẻ em g&aacute;i</strong>- hiện th&acirc;n của những n&agrave;ng c&ocirc;ng ch&uacute;a xinh đẹp trong thế giới cổ t&iacute;ch.</em></p>\r\n', '<p>Gi&agrave;y b&uacute;p b&ecirc; trở lại v&agrave; thống trị ng&ocirc;i vị nữ ho&agrave;ng với c&aacute;c thiết kế, m&agrave;u sắc v&ocirc; c&ugrave;ng bắt mắt. Kh&ocirc;ng qu&aacute; hoa lệ, cầu kỳ, vẻ ngo&agrave;i đơn giản, sang m&agrave; vẫn giữ nguy&ecirc;n được n&eacute;t đ&aacute;ng y&ecirc;u vốn c&oacute; của trẻ.&nbsp;<em>Giay bup be tre em gai</em>&nbsp;ch&iacute;nh x&aacute;c l&agrave; mẫu gi&agrave;y mẹ n&ecirc;n chọn mua cho c&ocirc; c&ocirc;ng ch&uacute;a nhỏ nh&agrave; m&igrave;nh dịp Tết n&agrave;y. C&ugrave;ng tham khảo c&aacute;c mẫu gi&agrave;y hot nhất dịp Tết n&agrave;y cho b&eacute; g&aacute;i từ Shop nh&eacute;!</p>\r\n\r\n<h2><strong>1.Gi&agrave;y b&uacute;p b&ecirc;- vật bất ly th&acirc;n của c&aacute;c b&eacute; g&aacute;i.</strong></h2>\r\n\r\n<p>Kh&ocirc;ng phải ngẫu nhi&ecirc;n m&agrave; gi&agrave;y b&uacute;p b&ecirc; trở th&agrave;nh mẫu gi&agrave;y kh&ocirc;ng thể thiếu trong tủ gi&agrave;y của c&aacute;c b&eacute; g&aacute;i.&nbsp;<strong>Gi&agrave;y b&uacute;p b&ecirc; cho b&eacute; g&aacute;i</strong>&nbsp;được y&ecirc;u th&iacute;ch bởi:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Gi&agrave;y&nbsp;b&uacute;p b&ecirc; cao g&oacute;t cho c&aacute;c b&eacute; g&aacute;i điệu đ&agrave;</em></p>\r\n\r\n<p>- Thiết kế miệng rộng, mềm rất tiện lợi khi mang- th&aacute;o nhất l&agrave; trong dịp Tết phải di chuyển v&agrave; mang- th&aacute;o thường xuy&ecirc;n.</p>\r\n\r\n<p>- Kiểu d&aacute;ng đơn giản, gam m&agrave;u nh&atilde;n nhặn, dế phối đồ v&agrave; ph&ugrave; hợp với mọi ho&agrave;n cảnh: Đi học, đi chơi, dự tiệc, &hellip;</p>\r\n\r\n<p>- Biến đổi phong c&aacute;ch trong nh&aacute;y mắt chỉ với 1 đ&ocirc;i&nbsp;<em>giầy b&uacute;p b&ecirc; cho b&eacute; g&aacute;i</em>. Đa dạng về kiểu d&aacute;ng, m&agrave;u sắc, họa tiết từ c&aacute; t&iacute;nh đến b&aacute;nh b&egrave;o n&ecirc;n c&aacute;c b&eacute; c&oacute; thể thoải m&aacute;i thể hiện phong c&aacute;ch của m&igrave;nh trong c&aacute;c bộ trang phục thường ng&agrave;y.</p>\r\n\r\n<h2><strong>2.Thoải m&aacute;i, năng động với gi&agrave;y b&uacute;p b&ecirc; trẻ em g&aacute;i.</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Giầy b&uacute;p b&ecirc; cho b&eacute; g&aacute;i- Crown Space</em></p>\r\n\r\n<p>- Ưu điểm nữa của c&aacute;c thiết kế&nbsp;<strong>giay bup be tre em gai</strong>&nbsp;l&agrave; v&ocirc; c&ugrave;ng thoải m&aacute;i khi mang. Phần da mềm b&ecirc;n ngo&agrave;i cũng với đ&oacute; l&agrave; lớp đệm kh&iacute; &ecirc;m &aacute;i, mềm mại gi&uacute;p bảo vệ l&ograve;ng b&agrave;n ch&acirc;n. Gi&uacute;p b&agrave;n ch&acirc;n được thoải m&aacute;i, thư giản ngay cả khi mang gi&agrave;y.</p>\r\n\r\n<p>- Thiết kế miệng rộng, c&ugrave;ng với đ&oacute; l&agrave; chất liệu sản xuất cao cấp thấm h&uacute;t mồ h&ocirc;i rất tốt. Đảm bảo sự h&ocirc; hấp của da, gi&uacute;p ch&acirc;n lu&ocirc;n kh&ocirc; tho&aacute;ng, tr&aacute;nh sự t&iacute;ch tụ mồ h&ocirc;i g&acirc;y m&ugrave;i kh&oacute; chịu.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Princencess Ballerina CRUK 389</em></p>\r\n\r\n<p>- Ph&ugrave; hợp với mọi lứa tuổi: D&ugrave; l&agrave; c&aacute;c b&eacute; mới tập đi hay lớn hơn với c&aacute;c thiết kế gi&agrave;y b&uacute;p b&ecirc; trẻ em g&aacute;i 1 tuổi, 6 tuổi&hellip; đều c&oacute; thể dử dụng. Với trẻ nhỏ, mẹk c&oacute; thể chọn c&aacute;c mẫu gi&agrave;y c&oacute; quai để b&eacute; cảm thấy chắc ch&acirc;n hơn khi mang.</p>\r\n\r\n<p>- Quan t&acirc;m 1 ch&uacute;t đến phần đế gi&agrave;y khi&nbsp;<a href=\"http://crownspace.vn/huong-dan-chon-mua-giay-dep-tre-em-cuc-chuan-dip-tet-2018.html\">chọn mua gi&agrave;y d&eacute;p trẻ em cho b&eacute; dịp Tết&nbsp;</a>n&agrave;y nh&eacute; c&aacute;c mẹ. Lớp đệm đế cần &ecirc;m, mềm để bảo vệ l&ograve;ng b&agrave;n ch&acirc;n của b&eacute;. Nhưng phần đế ngo&agrave;i cần c&oacute; 1 độ cứng nhất định. Qu&aacute; cứng hay qu&aacute; mềm đều kh&ocirc;ng hề tốt cho trẻ ch&uacute;t n&agrave;o. Một đ&ocirc;i gi&agrave;y c&oacute; phần đế thiết kế ph&ugrave; hợp với trẻ sẽ đảm bảo được sự linh hoạt khi tiếp x&uacute;c với c&aacute;c bề mặt địa h&igrave;nh kh&aacute;c nhau. Đặc biệt l&agrave; cần c&oacute; hệ thống chống trơn trượt mặt ngo&agrave;i đế.</p>\r\n\r\n<h2><strong>3.Thiết kế tinh tế, hỗ trợ sự ph&aacute;t triển của trẻ.</strong></h2>\r\n\r\n<p>Kh&ocirc;ng qu&aacute; cầu k&igrave; với c&aacute;c hoa văn, họa tiết nhưng vẫn v&ocirc; c&ugrave;ng đẹp, sang v&agrave; h&uacute;t mắt. Chuẩn chỉ đến từng đường may, họa tiết th&ecirc;u tỉ mỉ&hellip; Đặc biệt l&agrave; rất đa năng n&ecirc;n gi&agrave;y b&uacute;p b&ecirc; được sử dụng rất thường xuy&ecirc;n, trong suốt cả giai đoạn đầu ph&aacute;t triển của trẻ cũng như về sau n&agrave;y. Vậy n&ecirc;n trước khi sản xuất đều phải c&oacute; sự nghi&ecirc;n cứu, thiết kế sao cho ph&ugrave; hợp nhất với từng giai đoạn ph&aacute;t triển của trẻ:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Gi&agrave;y b&uacute;p b&ecirc; si&ecirc;u xinh cho b&eacute; g&aacute;i dịp Tết</em></p>\r\n\r\n<p>- G&oacute;t gi&agrave;y: Phần g&oacute;t&nbsp;<em>gi&agrave;y b&uacute;p b&ecirc; trẻ em g&aacute;i</em>&nbsp;thường được thiết kế hơi cao với phần đệm mềm mại. Ch&uacute;ng c&oacute; t&aacute;c dụng n&acirc;ng đỡ, bảo vệ v&agrave; hỗ trợ sự vận động v&agrave; ph&aacute;t triển của xương cổ ch&acirc;n. Từ đ&oacute; đảm bảo sự ph&aacute;t triển của hệ xương cột sống v&agrave; to&agrave;n bộ hệ vận động.</p>\r\n\r\n<p>- Mũi gi&agrave;y: Đ&acirc;y l&agrave; phần tiếp x&uacute;c trực tiếp với c&aacute;c ng&oacute;n ch&acirc;n non nớt của trẻ. Ch&uacute;ng rất dễ tổn thương d&ugrave; chỉ l&agrave; 1 t&aacute;c động nhỏ, bạn thừa biết c&aacute;i cảm gi&aacute;c đầu ng&oacute;n ch&acirc;n của m&igrave;nh bị tổn thương sẽ đau đến thế n&agrave;o rồi đ&uacute;ng chứ. Kh&aacute;c với cấu tạo b&agrave;n ch&acirc;n của người trưởng th&agrave;nh. C&aacute;c ng&oacute;n ch&acirc;n của b&eacute; thường c&oacute; xu hướng x&ograve;e rộng. Vậy n&ecirc;n hầu hết c&aacute;c mẫu gi&agrave;y b&uacute;p b&ecirc; đế bệt&nbsp;thường c&oacute; thiết kế mũi tr&ograve;n, mũi vu&ocirc;ng. C&aacute;c loại mũi gi&agrave;y kiểu n&agrave;y thường rộng, tạo ra 1 kh&ocirc;ng gian đủ lớn cho những ng&oacute;n ch&acirc;n xinh của b&eacute; thoải&nbsp;m&aacute;i vui đ&ugrave;a, ph&aacute;t triển.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Gi&agrave;y b&uacute;p b&ecirc; đế bệt</em></p>\r\n\r\n<p>- Chất liệu gi&agrave;y: Gi&agrave;y được sản xuất từ c&aacute;c chất liệu cao cấp, tho&aacute;ng m&aacute;t v&agrave; tuyệt đối an to&agrave;n với l&agrave;n da v&agrave; sức khỏe của trẻ. L&agrave;n da của b&eacute; rất nhạy cảm n&ecirc;n mẹ cần đặc biệt ch&uacute; &yacute; đến chất liệu của gi&agrave;y nh&eacute;. Một đ&ocirc;i gi&agrave;y được l&agrave;m từ những chất liệu k&eacute;m chất lượng, chứa chất độc hại c&oacute; thể g&acirc;y hại cho da b&eacute; như: Dị ứng, mẩn đỏ, k&iacute;ch ứng da, thậm ch&iacute; l&agrave; ung thư da. Mang gi&agrave;y l&acirc;u c&ograve;n c&oacute; thể khiến ch&acirc;n b&eacute; bị mắc c&aacute;c dị tật, l&agrave;m ảnh hưởng đến hệ vận động v&agrave; sự ph&aacute;t triển của trẻ sau n&agrave;y.</p>\r\n\r\n<p>Lựa chọn gi&agrave;y d&eacute;p l&agrave; việc chẳng bao giờ dễ d&agrave;ng với c&aacute;c bậc cha mẹ, đặc biệt l&agrave; khi chọn gi&agrave;y cho trẻ nhỏ. Dịp Tết n&agrave;y th&igrave; việc lựa chọn gi&agrave;y d&eacute;p kh&ocirc;ng chỉ cần đẹp, thời trang m&agrave; c&ograve;n phải thoải m&aacute;i, ph&ugrave; hợp với ch&acirc;n b&eacute;. Đặc biệt yếu tố cần đặt l&ecirc;n h&agrave;ng đầu ch&iacute;nh l&agrave; chất lượng v&agrave; độ an to&agrave;n của sản phẩm tới sức khỏe của trẻ. C&aacute;c mặt h&agrave;ng gi&agrave;y d&eacute;p dịp tết v&ocirc; c&ugrave;ng đa dạng về cả mẫu m&atilde; v&agrave; nguồn gốc. Thật kh&oacute; để c&oacute; thể kiểm so&aacute;t được chất lượng sản phẩm, vậy n&ecirc;n h&atilde;y thật cản thận khi mua&nbsp;<strong>gi&agrave;y b&uacute;p b&ecirc; trẻ em g&aacute;i</strong>&nbsp;cho c&ocirc; c&ocirc;ng ch&uacute;a nhỏ nh&agrave; bạn nha.</p>\r\n', '152562997717(1).png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `total_amount` int(10) NOT NULL,
  `date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `total_amount`, `date`, `customer_id`, `status`) VALUES
(10, 123000, '2019-01-18', 28, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `pk_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `c_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`order_detail_id`, `pk_product_id`, `order_id`, `c_number`) VALUES
(1, 27, 9, 1),
(2, 37, 27, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pk_product_id` int(11) NOT NULL,
  `fk_category_product_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_description` varchar(2000) NOT NULL,
  `c_content` text NOT NULL,
  `c_img` varchar(500) NOT NULL,
  `c_price` float NOT NULL DEFAULT '0',
  `c_hotproduct` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pk_product_id`, `fk_category_product_id`, `c_name`, `c_description`, `c_content`, `c_img`, `c_price`, `c_hotproduct`) VALUES
(27, 2, 'D&A Giày Sneaker Bé Trai', '<p>Th&acirc;n gi&agrave;y được may từ vải bạt vừa bền chắc vừa dễ d&agrave;ng l&agrave;m sạch.- Gi&agrave;y c&oacute; m&agrave;u đen, thiết kế đơn giản với d&acirc;y buộc khỏe khoắn- Form gi&agrave;y &ocirc;m vừa phải, kh&ocirc;ng qu&aacute; g&ograve; b&ograve; ch&acirc;n khi đi.- Đế gi&agrave;y l&agrave;m bằng chất liệu cao su si&ecirc;u bền c&oacute; xẻ r&atilde;nh chống trơn trượt, tạo sự &ecirc;m &aacute;i v&agrave; nhẹ nh&agrave;ng khi di chuyển.....- Kiểu d&aacute;ng năng động, ph&ugrave; hợp với nhiều loại trang phục.</p>\r\n', '<p>Bảo quản trong điều kiện m&ocirc;i trường kh&ocirc; tho&aacute;ng- Sản phẩm c&oacute; thể chải giặt với m&ocirc;i trường nước thường- Tr&aacute;nh phơi sản phẩm trực tiếp dưới &aacute;nh nắng mặt trời- Tr&aacute;nh để sản phẩm tiếp x&uacute;c với vật nhọn</p>\r\n', '1525629259sneden.png', 200000, 1),
(28, 1, 'D&A Giày Vải Bé Gái', '<p>Thiết kế trẻ trung, hiện đại, nhiều m&agrave;u sắc cho b&eacute; tha hồ lựa chọn.<br />\r\n- Gi&agrave;y được thiết kế với lớp vải bạt hồng tr&aacute;m trắng b&ecirc;n ngo&agrave;i kết hợp lớp vải l&oacute;t mềm mại b&ecirc;n trong..<br />\r\n- Đế gi&agrave;y cao su cực kỳ chắc chắn.<br />\r\n- L&oacute;t gi&agrave;y &ecirc;m &aacute;i, n&acirc;ng đỡ đ&ocirc;i ch&acirc;n b&eacute;.<br />\r\n- Gi&agrave;y &ocirc;m s&aacute;t vừa tạo cảm gi&aacute;c chắc chắn, lại vừa &ecirc;m dịu với đ&ocirc;i b&agrave;n ch&acirc;n..</p>\r\n', '<p>Bảo quản trong điều kiện m&ocirc;i trường kh&ocirc; tho&aacute;ng- Sản phẩm c&oacute; thể chải giặt với m&ocirc;i trường nước thường- Tr&aacute;nh phơi sản phẩm trực tiếp dưới &aacute;nh nắng mặt trời- Tr&aacute;nh để sản phẩm tiếp x&uacute;c với vật nhọn</p>\r\n', '1525629242vaihong.png', 130000, 1),
(29, 2, 'D&A Giày Sneaker Bé Trai', '<p>Thiết kế trẻ trung, hiện đại, nhiều m&agrave;u sắc cho b&eacute; tha hồ lựa chọn.<br />\r\n- Gi&agrave;y được thiết kế với lớp vải PU xanh ch&agrave;m b&ecirc;n ngo&agrave;i kết hợp lớp l&oacute;t th&ocirc; mềm b&ecirc;n trong.<br />\r\n- Đế gi&agrave;y cao su cực kỳ chắc chắn.<br />\r\n- L&oacute;t gi&agrave;y &ecirc;m &aacute;i, n&acirc;ng đỡ đ&ocirc;i ch&acirc;n b&eacute;.<br />\r\n- Gi&agrave;y &ocirc;m s&aacute;t vừa tạo cảm gi&aacute;c chắc chắn, lại vừa &ecirc;m dịu với đ&ocirc;i b&agrave;n ch&acirc;n.</p>\r\n', '<p>Bảo quản trong điều kiện m&ocirc;i trường kh&ocirc; tho&aacute;ng- Sản phẩm c&oacute; thể chải giặt với m&ocirc;i trường nước thường- Tr&aacute;nh phơi sản phẩm trực tiếp dưới &aacute;nh nắng mặt trời- Tr&aacute;nh để sản phẩm tiếp x&uacute;c với vật nhọn</p>\r\n', '1525618918daden.png', 110000, 0),
(30, 1, 'Nomnom Giày Vải Bé Trai', '<p>Thiết kế trẻ trung, hiện đại, nhiều m&agrave;u sắc cho b&eacute; tha hồ lựa chọn.<br />\r\n- Gi&agrave;y được thiết kế với lớp vải bạt m&agrave;u đen b&ecirc;n ngo&agrave;i kết hợp lớp l&oacute;t th&ocirc; mềm b&ecirc;n trong.<br />\r\n- Đế gi&agrave;y cao su cực kỳ chắc chắn.<br />\r\n- L&oacute;t gi&agrave;y &ecirc;m &aacute;i, n&acirc;ng đỡ đ&ocirc;i ch&acirc;n b&eacute;.<br />\r\n- Gi&agrave;y &ocirc;m s&aacute;t vừa tạo cảm gi&aacute;c chắc chắn, lại vừa &ecirc;m dịu với đ&ocirc;i b&agrave;n ch&acirc;n..</p>\r\n', '<p>Bảo quản trong điều kiện m&ocirc;i trường kh&ocirc; tho&aacute;ng- Sản phẩm c&oacute; thể chải giặt với m&ocirc;i trường nước thường- Tr&aacute;nh phơi sản phẩm trực tiếp dưới &aacute;nh nắng mặt trời- Tr&aacute;nh để sản phẩm tiếp x&uacute;c với vật nhọn</p>\r\n', '1525619157vaiden.png', 160000, 0),
(31, 1, 'D&A Giày Vải Bé Gái', '<p>Thiết kế trẻ trung, hiện đại, nhiều m&agrave;u sắc cho b&eacute; tha hồ lựa chọn.<br />\r\n- Gi&agrave;y được thiết kế với lớp vải bạt ghi b&ecirc;n ngo&agrave;i kết hợp lớp vải l&oacute;t mềm mại b&ecirc;n trong..<br />\r\n- Đế gi&agrave;y cao su cực kỳ chắc chắn.<br />\r\n- L&oacute;t gi&agrave;y &ecirc;m &aacute;i, n&acirc;ng đỡ đ&ocirc;i ch&acirc;n b&eacute;.<br />\r\n- Gi&agrave;y &ocirc;m s&aacute;t vừa tạo cảm gi&aacute;c chắc chắn, lại vừa &ecirc;m dịu với đ&ocirc;i b&agrave;n ch&acirc;n..</p>\r\n', '<p>Bảo quản trong điều kiện m&ocirc;i trường kh&ocirc; tho&aacute;ng- Sản phẩm c&oacute; thể chải giặt với m&ocirc;i trường nước thường- Tr&aacute;nh phơi sản phẩm trực tiếp dưới &aacute;nh nắng mặt trời- Tr&aacute;nh để sản phẩm tiếp x&uacute;c với vật nhọn</p>\r\n', '1525629226vainau.png', 120000, 0),
(32, 1, 'D&A Giày Sneaker Bé Gái', '<p>Thiết kế trẻ trung, hiện đại, nhiều m&agrave;u sắc cho b&eacute; tha hồ lựa chọn.<br />\r\n- Gi&agrave;y được thiết kế với lớp vải bạt đỏ b&ecirc;n ngo&agrave;i kết hợp lớp vải l&oacute;t mềm mại b&ecirc;n trong.<br />\r\n- Đế gi&agrave;y cao su cực kỳ chắc chắn.<br />\r\n- L&oacute;t gi&agrave;y &ecirc;m &aacute;i, n&acirc;ng đỡ đ&ocirc;i ch&acirc;n b&eacute;..<br />\r\n- Gi&agrave;y &ocirc;m s&aacute;t vừa tạo cảm gi&aacute;c chắc chắn, lại vừa &ecirc;m dịu với đ&ocirc;i b&agrave;n ch&acirc;n..</p>\r\n', '<p>Bảo quản trong điều kiện m&ocirc;i trường kh&ocirc; tho&aacute;ng- Sản phẩm c&oacute; thể chải giặt với m&ocirc;i trường nước thường- Tr&aacute;nh phơi sản phẩm trực tiếp dưới &aacute;nh nắng mặt trời- Tr&aacute;nh để sản phẩm tiếp x&uacute;c với vật nhọn</p>\r\n', '1525629212snedo.png', 115000, 0),
(33, 3, 'Dép Xốp Bé Trai Cars', '<p>T&ocirc;ng m&agrave;u đỏ v&agrave; đen kết hợp với họa tiết đ&aacute;ng y&ecirc;u tạo n&ecirc;n sự h&agrave;i h&ograve;a l&agrave;m nổi bật sản phẩm.<br />\r\nKiểu d&aacute;ng mới, năng động, trẻ trung, th&iacute;ch hợp với c&aacute;c b&eacute; trai<br />\r\nChất liệu xốp cao cấp mềm mại, kh&ocirc;ng chỉ tạo sự tho&aacute;ng m&aacute;t cho đ&ocirc;i ch&acirc;n m&agrave; c&ograve;n khiến b&eacute; lu&ocirc;n c&oacute; cảm gi&aacute;c &ecirc;m &aacute;i, dễ chịu khi bước đi.<br />\r\nQuai d&eacute;p l&agrave;m bằng chất liệu mềm, được sản xuất v&ocirc; c&ugrave;ng tỉ mỉ v&agrave; chắc chắn khiến b&eacute; kh&ocirc;ng c&oacute; cảm gi&aacute;c đau hay kh&oacute; chịu khi mang v&agrave;o.</p>\r\n', '<p>kh&ocirc;ng sử dụng chất tẩy rửa mạnh</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1525619965depdoden.png', 100000, 0),
(34, 3, 'Anthado Dép Trẻ Em Birken', '<p>Cho b&eacute; lu&ocirc;n hứng khởi tr&ecirc;n mỗi bước ch&acirc;n với d&eacute;p trẻ em thiết kế bởi thương hiệu Anthado. D&eacute;p được l&agrave;m từ chất liệu cao cấp mềm mại, kiểu d&aacute;ng đơn giản tiện lợi mang đến cảm gi&aacute;c thoải m&aacute;i cho b&eacute; khi vui chơi c&ugrave;ng bạn b&egrave;.<br />\r\n<br />\r\n- Chất liệu EVA<br />\r\n- D&eacute;p mũi hở<br />\r\n- Quai đeo phối kh&oacute;a g&agrave;i theo nấc c&oacute; thể điều chỉnh độ rộng quai đeo<br />\r\n- Mặt l&oacute;t in t&ecirc;n thương hiệu<br />\r\n&nbsp;</p>\r\n', '<p><strong>Bảo h&agrave;nh 6 th&aacute;ng kể từ ng&agrave;y b&aacute;n</strong></p>\r\n', '1525620543depden.png', 130000, 0),
(36, 3, 'Dép Xốp Bé Gái Disney Princess', '<p>D&eacute;p Xốp B&eacute; G&aacute;i Disney Princess được l&agrave;m bằng chất liệu cao cấp, mềm mại, an to&agrave;n cho sức khỏe v&agrave; l&agrave;n da của trẻ, gi&uacute;p trẻ tha hồ chạy nhảy suốt cả ng&agrave;y.<br />\r\nKiểu d&aacute;ng mới, năng động, trẻ trung</p>\r\n', '<p>Kh&ocirc;ng sử dụng chất tẩy rửa mạnh</p>\r\n', '1525621361dep.png', 135000, 1),
(37, 4, 'Giày Sandal Crocs Kids -Boy', '<p>C&aacute;c b&eacute; sẽ rất th&iacute;ch th&uacute; với gi&agrave;y sandals in họa tiết của thương hiệu Crocs. Gam m&agrave;u gi&agrave;y nổi bật c&ugrave;ng chất liệu bền bỉ, l&iacute; tưởng cho b&eacute; hoạt động cả ng&agrave;y d&agrave;i</p>\r\n', '<p>Sản phẩm n&agrave;y kh&ocirc;ng được &aacute;p dụng với voucher hoặc c&aacute;c khuyến mại kh&aacute;c</p>\r\n', '1525621822sando.png', 123000, 1),
(38, 4, 'Giày Sandals Geox J Borealis B. F', '<p>- Bảo quản nơi kh&ocirc; tho&aacute;ng<br />\r\n- Vệ sinh bằng khăn mềm</p>\r\n', '<p>Sản phẩm n&agrave;y kh&ocirc;ng được &aacute;p dụng với voucher hoặc c&aacute;c khuyến mại kh&aacute;c</p>\r\n', '1525629199sanden.png', 185000, 1),
(39, 4, 'Giày Sandals Người Nhện Trẻ Em', '<p>Kh&ocirc;ng tẩy rửa bằng chất tẩy mạnh.</p>\r\n', '<p>Sản phẩm n&agrave;y kh&ocirc;ng được &aacute;p dụng với voucher hoặc c&aacute;c khuyến mại kh&aacute;c.</p>\r\n', '1525622349sannhen.png', 115000, 0),
(40, 5, 'Giày Búp Bê Nữ Hoàng Băng Gía Trẻ Em', '<p>kh&ocirc;ng tẩy rửa bằng chất tẩy mạnh</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Sản phẩm n&agrave;y kh&ocirc;ng được &aacute;p dụng với voucher hoặc c&aacute;c khuyến mại kh&aacute;c</p>\r\n', '1525623121bupbenuhoang.png', 100000, 0),
(41, 5, 'Giày Búp Bê Bé Gái Disney Princess', '<p>Gi&agrave;y B&uacute;p B&ecirc; B&eacute; G&aacute;i Disney Princess được l&agrave;m bằng chất liệu cao cấp, mềm mại, an to&agrave;n cho sức khỏe v&agrave; l&agrave;n da của trẻ, gi&uacute;p trẻ tha hồ chạy nhảy suốt cả ng&agrave;y.<br />\r\nSản phẩm c&oacute; quai chắc chắn gi&uacute;p b&eacute; dễ d&agrave;ng mang v&agrave;o v&agrave; kh&ocirc;ng bị tuột trong qu&aacute; tr&igrave;nh chơi đ&ugrave;a.</p>\r\n', '<p>Kh&ocirc;ng sử dụng chất tẩy rửa mạnh.</p>\r\n', '1525623332bb.png', 135000, 1),
(42, 1, 'D&A Giày Búp Bê Bé Gái', '<p>Thiết kế trẻ trung, hiện đại, nhiều m&agrave;u sắc cho b&eacute; tha hồ lựa chọn.<br />\r\n- Gi&agrave;y được thiết kế với lớp vải bạt kẻ xanh b&ecirc;n ngo&agrave;i kết hợp lớp vải l&oacute;t mềm mại b&ecirc;n trong.<br />\r\n- Đế gi&agrave;y cao su cực kỳ chắc chắn.<br />\r\n- L&oacute;t gi&agrave;y &ecirc;m &aacute;i, n&acirc;ng đỡ đ&ocirc;i ch&acirc;n b&eacute;.<br />\r\n- Gi&agrave;y &ocirc;m s&aacute;t vừa tạo cảm gi&aacute;c chắc chắn, lại vừa &ecirc;m dịu với đ&ocirc;i b&agrave;n ch&acirc;n.,..</p>\r\n', '<p>- Bảo quản trong điều kiện m&ocirc;i trường kh&ocirc; tho&aacute;ng<br />\r\n- Sản phẩm c&oacute; thể chải giặt với m&ocirc;i trường nước thường<br />\r\n- Tr&aacute;nh phơi sản phẩm trực tiếp dưới &aacute;nh nắng mặt trời<br />\r\n- Tr&aacute;nh để sản phẩm tiếp x&uacute;c với vật nhọn</p>\r\n', '1525629185bbx.png', 200000, 0),
(43, 6, 'Giày Tây Trẻ Em Geox J Fast A ', '<p>- Bảo quản nơi kh&ocirc; tho&aacute;ng.<br />\r\n- Tr&aacute;nh ng&acirc;m nước.&nbsp;<br />\r\n- Vệ sinh bằng khăn mềm</p>\r\n', '<p>- Bảo quản nơi kh&ocirc; tho&aacute;ng.<br />\r\n- Tr&aacute;nh ng&acirc;m nước.&nbsp;<br />\r\n- Vệ sinh bằng khăn mềm</p>\r\n', '1525623669tay.png', 125000, 0),
(44, 7, 'Giày Slip OnNative C Juniper Gloss Trẻ Em', '<p>- Chất liệu nhựa E.V.A cao cấp<br />\r\n- Độc đ&aacute;o với thiết kế si&ecirc;u nhẹ và b&ecirc;̀n<br />\r\n- Kiểu d&aacute;ng &ocirc;m ch&acirc;n, thoải m&aacute;i khi mang v&agrave; di chuyển<br />\r\n- Bề mặt gi&agrave;y đục lỗ tho&aacute;ng kh&iacute;<br />\r\n- Ho&agrave;n to&agrave;n tự tin khi đi mưa<br />\r\n- Đế c&oacute; r&atilde;nh chống trơn trượt</p>\r\n', '<p>- Chất liệu nhựa E.V.A cao cấp<br />\r\n- Độc đ&aacute;o với thiết kế si&ecirc;u nhẹ và b&ecirc;̀n<br />\r\n- Kiểu d&aacute;ng &ocirc;m ch&acirc;n, thoải m&aacute;i khi mang v&agrave; di chuyển<br />\r\n- Bề mặt gi&agrave;y đục lỗ tho&aacute;ng kh&iacute;<br />\r\n- Ho&agrave;n to&agrave;n tự tin khi đi mưa<br />\r\n- Đế c&oacute; r&atilde;nh chống trơn trượt</p>\r\n', '1525629166mem1.png', 150000, 1),
(45, 7, 'Giày Slip On Native J Miles Trẻ Em', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>- Bảo quản nơi kh&ocirc; tho&aacute;ng<br />\r\n			- Kh&ocirc;ng sử dụng chất tẩy để vệ sinh sản phẩm<br />\r\n			- Kh&ocirc;ng cho v&agrave;o m&aacute;y giặt</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>- Bảo quản nơi kh&ocirc; tho&aacute;ng<br />\r\n			- Kh&ocirc;ng sử dụng chất tẩy để vệ sinh sản phẩm<br />\r\n			- Kh&ocirc;ng cho v&agrave;o m&aacute;y giặt</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1525629086mem2.png', 100000, 0),
(46, 8, 'Giày Thể Thao Trẻ Em J Maisie G. E', '<p>Geox gợi &yacute; đến bạn gi&agrave;y trẻ em với thiết kế đẹp mắt, chất liệu cao cấp c&ugrave;ng c&ocirc;ng nghệ tho&aacute;ng kh&iacute;, chống ẩm hiện đại mang đến cho b&eacute; của bạn cảm gi&aacute;c thoải m&aacute;i v&agrave; dễ chịu khi vui chơi cả ng&agrave;y d&agrave;i.</p>\r\n', '<p>- Chất liệu da lộn thật<br />\r\n- Gi&agrave;y mũi tr&ograve;n<br />\r\n- Thiết kế thắt d&acirc;y<br />\r\n- Phối kh&oacute;a d&aacute;n mui gi&agrave;y<br />\r\n- Mặt l&oacute;t đục lỗ, in t&ecirc;n thương hiệu&nbsp;</p>\r\n', '1525624011tt1.png', 150000, 1),
(47, 8, 'Giày Thể Thao New Balance', '<p>Gi&agrave;y Thể Thao New Balance<br />\r\n- M&agrave;u sắc: Xanh Dương<br />\r\n- Chất liệu: Vải<br />\r\n- KVRUSV1I</p>\r\n', '<p>Gi&agrave;y Thể Thao New Balance<br />\r\n- M&agrave;u sắc: Xanh Dương<br />\r\n- Chất liệu: Vải<br />\r\n- KVRUSV1I</p>\r\n', '1525624158tt2.png', 250000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shopping_cart`
--

CREATE TABLE `tbl_shopping_cart` (
  `id_shopping_cart` int(10) NOT NULL,
  `attribute` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_static`
--

CREATE TABLE `tbl_static` (
  `visited` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_static`
--

INSERT INTO `tbl_static` (`visited`) VALUES
(26);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `pk_user_id` int(11) NOT NULL,
  `c_username` varchar(500) NOT NULL,
  `c_password` varchar(500) NOT NULL,
  `c_fullname` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`pk_user_id`, `c_username`, `c_password`, `c_fullname`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'Nguyễn văn A'),
(3, 'admin2', '202cb962ac59075b964b07152d234b70', ''),
(4, 'admin3', '202cb962ac59075b964b07152d234b70', ''),
(5, 'admin4', '202cb962ac59075b964b07152d234b70', 'Nguyễn Văn BK'),
(8, 'admin12', '202cb962ac59075b964b07152d234b70', 'Nguyen Van Them'),
(9, 'trung', 'e10adc3949ba59abbe56e057f20f883e', 'ty');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_online`
--

CREATE TABLE `tbl_user_online` (
  `pk_user_online_id` int(11) NOT NULL,
  `session_id` varchar(500) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_online`
--

INSERT INTO `tbl_user_online` (`pk_user_online_id`, `session_id`, `time`) VALUES
(449, 's23tv9h2jclg34m5rr2o033r57', 1557495693);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_adv`
--
ALTER TABLE `tbl_adv`
  ADD PRIMARY KEY (`pk_adv_id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`pk_category_product_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`pk_news_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pk_product_id`);

--
-- Indexes for table `tbl_shopping_cart`
--
ALTER TABLE `tbl_shopping_cart`
  ADD PRIMARY KEY (`id_shopping_cart`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`pk_user_id`);

--
-- Indexes for table `tbl_user_online`
--
ALTER TABLE `tbl_user_online`
  ADD PRIMARY KEY (`pk_user_online_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_adv`
--
ALTER TABLE `tbl_adv`
  MODIFY `pk_adv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `pk_category_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `pk_news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pk_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_shopping_cart`
--
ALTER TABLE `tbl_shopping_cart`
  MODIFY `id_shopping_cart` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `pk_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_user_online`
--
ALTER TABLE `tbl_user_online`
  MODIFY `pk_user_online_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
