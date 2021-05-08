-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 28, 2021 lúc 02:34 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `image`, `summary`, `description`, `type`, `category_id`, `position`, `status`, `url`, `is_active`, `user_id`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(10, 'Săn hàng siêu rẻ: Smartphone giảm giá cả triệu đồng', 'san-hang-sieu-re-smartphone-giam-gia-ca-trieu-dong', 'uploads/article/1618548056_1590291121_anh-bai-viet.png', '<p>Trong tầm gi&aacute; chỉ 3 triệu đồng, bạn lăn tăn kh&ocirc;ng biết liệu c&oacute; chiếc m&aacute;y t&iacute;nh bảng n&agrave;o đủ tốt để đ&aacute;p ứng được nhu cầu sử dụng h&agrave;ng ng&agrave;y của m&igrave;nh? Một số người m&aacute;ch bạn về những sản phẩm&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<h2>Săn h&agrave;ng si&ecirc;u rẻ: Smartphone giảm gi&aacute; cả triệu đồng</h2>', NULL, 72, 1, NULL, NULL, 1, NULL, NULL, NULL, '2021-04-15 21:40:56', '2021-04-24 06:30:34'),
(11, 'Realme X3 SuperZoom: Smartphone khuynh đảo phân khúc tầm trung', 'realme-x3-superzoom-smartphone-khuynh-dao-phan-khuc-tam-trung', 'uploads/article/1619075420_Realme-X3-Superzoom-Update-768x512.jpg', '<p>iPhone 11 Pro Max hiện vẫn đang l&agrave; một trong những chiếc smartphone tốt nhất thế giới ở thời điểm hiện tại. Trong b&agrave;i viết n&agrave;y, m&igrave;nh sẽ chia sẻ cho c&aacute;c bạn một chiếc iPhone 11 Pro Max gi&aacute; rẻ m&agrave; nếu mua n&oacute;,&nbsp;</p>', '<p><a href=\"https://didongthongminh.vn/ban-tin-cong-nghe/realme-x3-superzoom-smartphone-khuynh-dao-phan-khuc-tam-trung\">Realme X3 SuperZoom: Smartphone khuynh đảo ph&acirc;n kh&uacute;c tầm trung</a></p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 94px; top: 57.6667px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', NULL, 72, 2, NULL, NULL, 1, NULL, NULL, NULL, '2021-04-16 04:03:03', '2021-04-24 06:31:18'),
(12, 'Lời 7 triệu khi mua iPhone 11 Pro Max bản quốc tế này?', 'loi-7-trieu-khi-mua-iphone-11-pro-max-ban-quoc-te-nay', 'uploads/article/1618571031_1590296459_iphone-11-pro-max-cu-mat-lung-3-1.png', '<p>Khi thị trường sản phẩm c&ocirc;ng nghệ trở n&ecirc;n b&atilde;o h&ograve;a, nhu cầu sở hữu smartphone của người d&ugrave;ng kh&ocirc;ng đơn thuần chỉ l&agrave; một thiết bị đ&aacute;p ứng tốt mục đ&iacute;ch sử dụng thường ng&agrave;y m&agrave; họ cần nhiều hơn thế.&nbsp;</p>', '<p>Khi thị trường sản phẩm c&ocirc;ng nghệ trở n&ecirc;n b&atilde;o h&ograve;a, nhu cầu sở hữu smartphone của người d&ugrave;ng kh&ocirc;ng đơn thuần chỉ l&agrave; một thiết bị đ&aacute;p ứng tốt mục đ&iacute;ch sử dụng thường ng&agrave;y m&agrave; họ cần nhiều hơn thế. Họ muốn sản phẩm điện thoại đ&oacute; phải tr&ocirc;ng sao thật bắt mắt, mức gi&aacute; sao cho thật dễ chịu v&agrave; điều quan trọng l&agrave; phải tạo được &ldquo;chất&rdquo; ri&ecirc;ng. Liệu smartphone n&agrave;o mới c&oacute; thể xuất sắc đ&aacute;p ứng ngần ấy y&ecirc;u cầu từ ph&iacute;a người d&ugrave;ng? C&acirc;u trả lời chỉ c&oacute; thể l&agrave; Realme X3 SuperZoom ch&iacute;nh h&atilde;ng m&agrave; th&ocirc;i. Dưới đ&acirc;y, b&agrave;i đ&aacute;nh gi&aacute; chi tiết sản phẩm của Di Động Th&ocirc;ng Minh sẽ gi&uacute;p bạn kh&aacute;m ph&aacute; những đặc trưng cấu h&igrave;nh nổi bật đ&oacute;.&nbsp;</p>\r\n\r\n<p><img alt=\"Realme X3 SuperZoom chính hãng\" src=\"https://cdn.didongthongminh.vn/upload_images/2019/05/realme-x3-super-zoom-mat-lung.jpg\" /></p>\r\n\r\n<p><em>Đ&aacute;nh gi&aacute; Realme X3 SuperZoom: Smartphone khuynh đảo thị trường tầm trung&nbsp;</em></p>\r\n\r\n<h2><strong>Realme X3 SuperZoom: Smartphone khuynh đảo thị trường tầm trung&nbsp;</strong></h2>\r\n\r\n<p>Realme X3 SuperZoom &ndash; smartphone khuynh đảo thị trường tầm trung, chất kh&ocirc;ng thể chất hơn với trang bị camera tầm cỡ, khả năng si&ecirc;u Zoom, si&ecirc;u lấy n&eacute;t, nức l&ograve;ng người d&ugrave;ng. B&ecirc;n cạnh đ&oacute;, c&ograve;n rất nhiều điều th&uacute; vị g&oacute;p phần l&agrave;m n&ecirc;n một X3 SuperZoom huyền thoại vạn người m&ecirc;. Ch&uacute;ng ta c&ugrave;ng t&igrave;m hiểu ngay trong phần nội dung tiếp theo nh&eacute;!</p>\r\n\r\n<p><strong>Hệ thống camera si&ecirc;u zoom, si&ecirc;u lấy n&eacute;t đỉnh cao</strong></p>\r\n\r\n<p><img alt=\"Realme X3 SuperZoom chính hãng\" src=\"https://cdn.didongthongminh.vn/upload_images/2019/05/realme-x3-super-zoom-camera.jpg\" /></p>\r\n\r\n<p><em>Realme x3 SuperZoom sở hữu 4 camera sau 64MP cực đỉnh</em></p>\r\n\r\n<p>Cuộc sống hiện đại cuốn con người v&agrave;o những đam m&ecirc; v&agrave; kh&aacute;t vọng mới. Sự ph&aacute;t triển kh&ocirc;ng ngừng của nền kinh tế thị trường n&acirc;ng cao đời sống mỗi người d&acirc;n to&agrave;n thế giới v&agrave; từ đ&oacute;, trải nghiệm hưởng thụ của người d&ugrave;ng cũng n&acirc;ng l&ecirc;n r&otilde; n&eacute;t. Với giới trẻ, họ đam m&ecirc; nghệ thuật v&agrave; s&aacute;ng tạo cao, do đ&oacute; lấy nguồn cảm hứng từ người d&ugrave;ng trẻ, Realme mang đến sự đầu tư thi&ecirc;n về camera tr&ecirc;n m&aacute;y. Trong đ&oacute;:</p>\r\n\r\n<ul>\r\n	<li>Camera selfie k&eacute;p: 32MP, 8MP</li>\r\n	<li>Bộ tứ camera sau: 64MP, 8MP, 8MP, 2MP</li>\r\n</ul>\r\n\r\n<p>X3 SuperZoom hội tụ đầy đủ tất cả những g&igrave; được coi l&agrave; vượt trội nhất, đỉnh cao nhất d&agrave;nh cho thiết kế camera tr&ecirc;n smartphone đương thời, về cả chất lượng v&agrave; số lượng. Trong đ&oacute;, camera selfie g&oacute;c rộng cho ph&eacute;p chụp ảnh tự sướng g&oacute;c h&igrave;nh rộng lớn, khung cảnh v&agrave; đối tượng ấn tượng. C&aacute;c ống k&iacute;nh tại mặt sau gồm: ống k&iacute;nh g&oacute;c rộng 119 độ, cảm biến ch&iacute;nh, camera macro v&agrave; camera tele dễ d&agrave;ng đ&aacute;p ứng mọi y&ecirc;u cầu chụp ảnh của người d&ugrave;ng. Kh&ocirc;ng những thế, m&aacute;y được trang bị t&iacute;nh năng si&ecirc;u lấy n&eacute;t, si&ecirc;u zoom, khả năng zoom quang 5x hứa hẹn những trải nghiệm th&uacute; vị, hỗ trợ tốt nhất cho người d&ugrave;ng.</p>\r\n\r\n<p><strong>Sức mạnh chip Snapdragon 855+ của nh&agrave; sản xuất Qualcomm lừng danh&nbsp;</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.didongthongminh.vn/upload_images/2019/05/snapdragon-855.jpg\" /></p>\r\n\r\n<p><em>Realme X3 SuperZoom trang bị chip Snapdragon 855+ lừng danh của Qualcomm</em></p>\r\n\r\n<p>Với vi xử l&yacute; trang bị tr&ecirc;n&nbsp;<a href=\"https://didongthongminh.vn/realme-x3-super-zoom-12gb-256gb-chinh-hang\"><em><strong>Realme X3 SuperZoom</strong></em></a>, c&acirc;u hỏi đặt ra l&agrave;: Tại sao kh&ocirc;ng l&agrave; Snapdragon 865 m&agrave; lại l&agrave; Snapdragon 855+? Tất nhi&ecirc;n, điều g&igrave; xảy ra cũng đều c&oacute; l&yacute; do của n&oacute;. Việc lựa chọn chip Snapdragon 855+ l&agrave; quyết định thể hiện sự kh&eacute;o l&eacute;o của Realme, vừa đảm bảo hiệu năng mạnh mẽ cho thiết bị, vừa c&oacute; thể giảm bớt chi ph&iacute; sản xuất ở mức thấp nhất, tạo điều kiện tốt nhất cho người d&ugrave;ng trong khoảng t&agrave;i ch&iacute;nh phải chăng để giấc mơ về smartphone cấu h&igrave;nh cao mức gi&aacute; phổ th&ocirc;ng trở th&agrave;nh hiện thực.&nbsp;</p>\r\n\r\n<p>So với Snapdragon 865, con chip mang số hiệu 855+ cấu tạo 8 nh&acirc;n n&agrave;y của Qualcomm kh&ocirc;ng hề l&eacute;p vế, n&oacute; được định h&igrave;nh l&agrave; chipset h&agrave;ng đầu d&agrave;nh ri&ecirc;ng cho d&ograve;ng flagship. Do đ&oacute;, sức mạnh hiệu năng n&oacute; mang đến tr&ecirc;n thực tế, khi được t&iacute;ch hợp c&ugrave;ng Adreno 640 (700 MHz), Android 10, Realme UI l&agrave; v&ocirc; song, khuynh đảo ph&acirc;n kh&uacute;c.&nbsp;</p>', NULL, 72, 3, NULL, NULL, 1, NULL, NULL, NULL, '2021-04-16 04:03:51', '2021-04-24 06:30:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(10) UNSIGNED DEFAULT 0,
  `position` int(10) UNSIGNED DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `image`, `url`, `target`, `description`, `type`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(26, 'Điện thoại Samsung Galaxy A71', 'dien-thoai-samsung-galaxy-a71', 'uploads/banner/1618571185_1583415323_Slide-samsung-galaxy-a71-min-1.png', NULL, '_self', '<p>Galaxy A71 sở hữu&nbsp;<a href=\"https://www.thegioididong.com/dtdd-man-hinh-tran-vien\" target=\"_blank\">m&agrave;n h&igrave;nh tr&agrave;n viền</a>&nbsp;Infinity-O với r&atilde;nh camera được đặt ch&iacute;nh giữa tương tự như tr&ecirc;n flagship&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-note-10\" target=\"_blank\">Note 10</a>. Điểm cộng l&agrave; phần r&atilde;nh camera nay đ&atilde; được l&agrave;m rất nhỏ, &iacute;t g&acirc;y ch&uacute; &yacute;, cho trải nghiệm h&igrave;nh ảnh thoải m&aacute;i v&agrave; &iacute;t bị ph&acirc;n t&acirc;m hơn.</p>', 2, 1, 0, '2021-04-15 21:29:20', '2021-04-22 00:49:07'),
(27, 'Galaxy S20', 'galaxy-s20', 'uploads/banner/1618571195_1584932507_L_N_I_S20_SERIES_TR_GI_3_TRI_U.png', NULL, '_blank', '<p>Chiếc điện thoại Samsung Galaxy S20 được trang bị một m&agrave;n h&igrave;nh k&iacute;ch thước 6.2 inch độ ph&acirc;n giải 2K sử dụng tấm nền Dynamic AMOLED 2X mới nhất từ nh&agrave; sản xuất&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung\" target=\"_blank\">Samsung</a>.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh n&agrave;y cho khả năng t&aacute;i tạo m&agrave;u sắc đầy đủ v&agrave; ch&iacute;nh x&aacute;c, đem đến cho bạn những trải nghiệm h&igrave;nh ảnh sống động, ch&acirc;n thực đồng thời giảm lượng &aacute;nh s&aacute;ng xanh bảo vệ sức khỏe người d&ugrave;ng.</p>', 2, 2, 1, '2021-04-15 21:31:43', '2021-04-22 00:47:09'),
(28, 'Iphone 11 | 11 pro | 11 pro max', 'iphone-11-11-pro-11-pro-max', 'uploads/banner/1618547560_1584932676_Right-banner-ip11.png', NULL, '_blank', NULL, 2, 3, 1, '2021-04-15 21:32:40', '2021-04-22 00:49:12'),
(29, 'Vsmart', 'vsmart', 'uploads/banner/1618547582_1584932740_Vsmart_copy.png', NULL, '_blank', NULL, 3, 4, 0, '2021-04-15 21:33:02', '2021-04-22 00:40:34'),
(30, 'Điện thoại Huawei Nova 7i (Nền tảng Huawei Mobile Service)', 'dien-thoai-huawei-nova-7i-nen-tang-huawei-mobile-service', 'uploads/banner/1618547685_1584932808_hotsale_nova_7i.png', NULL, '_self', '<p><a href=\"https://www.thegioididong.com/dtdd?p=tu-4-7-trieu\" target=\"_blank\">Điện thoại tầm trung</a>&nbsp;Huawei Nova 7i được trang bị m&agrave;n h&igrave;nh k&iacute;ch thước 6.4 inch độ ph&acirc;n giải Full HD+ với điểm nhấn ch&iacute;nh l&agrave; m&agrave;n h&igrave;nh kho&eacute;t lỗ nằm b&ecirc;n tr&aacute;i để đặt camera trước.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh của Huawei Nova 7i sử dụng tấm nền&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-man-hinh-ltps-lcd-1172755\" target=\"_blank\">LTPS LCD</a>&nbsp;với ưu điểm g&oacute;c nh&igrave;n rộng, độ s&aacute;ng cao. H&igrave;nh ảnh tr&ecirc;n m&agrave;n h&igrave;nh được t&aacute;i hiện r&otilde; n&eacute;t v&agrave; tươi tắn. Phần viền m&agrave;n h&igrave;nh được l&agrave;m cong 2.5D cho cảm gi&aacute;c hiện đại, sang trọng.</p>\r\n\r\n<p>Mẫu smartphone Huawei được thiết kế nổi bật với hiệu ứng chuyển m&agrave;u gradient được xử l&yacute; một c&aacute;ch tinh tế, cạnh sau cũng được vuốt cong nhẹ để m&aacute;y dễ cầm nắm v&agrave; thanh tho&aacute;t hơn.</p>\r\n\r\n<p>Thay v&igrave; đặt&nbsp;<a href=\"https://www.thegioididong.com/dtdd-bao-mat-van-tay\" target=\"_blank\">cảm biến v&acirc;n tay</a>&nbsp;trong m&agrave;n h&igrave;nh, Huawei chỉ được trang bị với cảm biến v&acirc;n tay t&iacute;ch hợp n&uacute;t nguồn ở cạnh b&ecirc;n, b&ugrave; lại lại cho tốc độ nhận diện nhanh v&agrave; ch&iacute;nh x&aacute;c hơn.</p>\r\n\r\n<p>&nbsp;</p>', 1, 5, 1, '2021-04-15 21:34:45', '2021-04-22 00:34:23'),
(31, 'Điện thoại Samsung Galaxy Note 10', 'dien-thoai-samsung-galaxy-note-10', 'uploads/banner/1618547767_1584932903_lendoi_nte10.png', NULL, '_blank', '<p>M&aacute;y c&oacute; k&iacute;ch thước 6.3 inch c&ugrave;ng độ ph&acirc;n giải Full HD+,&nbsp;được trang bị&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-ma-hinh-dynamic-amoled-co-gi-noi-bat-1151123\" target=\"_blank\">tấm nền Dynamic AMOLED</a>&nbsp;mang lại m&agrave;u sắc đậm đ&agrave; v&agrave; sống động hơn.</p>\r\n\r\n<p>C&ocirc;ng nghệ Dynamic AMOLED n&agrave;y c&ograve;n cho ra m&agrave;n h&igrave;nh &iacute;t &aacute;nh s&aacute;ng xanh hơn nhằm gi&uacute;p mắt thoải m&aacute;i.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, nhờ được hỗ trợ HDR10+ n&ecirc;n Note 10 c&oacute; thể cải thiện độ ch&iacute;nh x&aacute;c m&agrave;u tốt hơn v&agrave; cho ra h&igrave;nh ảnh đẹp hơn.</p>', 1, 6, 1, '2021-04-15 21:36:07', '2021-04-19 12:32:44'),
(32, 'Tai nghe chống ồn JBL T600BTNC', 'tai-nghe-chong-on-jbl-t600btnc', 'uploads/banner/1618547851_1584932951_JBL_T600BTNC_home.png', NULL, '_blank', '<p>JBL T600BTNC được l&agrave;m tr&ecirc;n cấu tr&uacute;c của một chiếc on-ear ti&ecirc;u chuẩn với hai earcup c&oacute; độ lớn vừa phải, đủ để &ocirc;m lấy v&agrave;nh tai của người đeo. Tr&ecirc;n earcup của JBL T600BTNC sẽ c&oacute; th&ecirc;m những đường v&aacute;t những đường nhấn viền mạnh mẽ, tạo th&ecirc;m sự mới lạ cho chiếc tai nghe, n&oacute; gi&uacute;p cho JBL T600BTNC c&oacute; được n&eacute;t đặc trưng ri&ecirc;ng biệt, c&oacute; thể dễ d&agrave;ng nhận biết khi so s&aacute;nh với những người anh em kh&aacute;c thuộc đại gia đ&igrave;nh JBL</p>', 1, 7, 1, '2021-04-15 21:37:31', '2021-04-22 00:43:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `website`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(21, 'Samsung', 'samsung', 'uploads/brand/1618571285_1583329669_logo-thuong-hieu-samsung-typeface-elle-man.jpg', 'https://www.samsung.com/vn/', 2, 1, '2021-04-16 04:08:05', '2021-04-16 04:08:05'),
(22, 'Apple', 'apple', 'uploads/brand/1618571335_1583409648_apple icon.jpg', 'apple.com', 0, 1, '2021-04-16 04:08:55', '2021-04-16 04:08:55'),
(23, 'Xiaomi', 'xiaomi', 'uploads/brand/1618571364_1584935820_1200px-Xiaomi_logo.svg.png', 'https://www.mi.com/global', 1, 1, '2021-04-16 04:09:24', '2021-04-16 04:09:24'),
(24, 'Dell', 'dell', 'uploads/brand/1618571389_1584935886_1024px-Dell_Logo.svg.png', 'Dell', 3, 1, '2021-04-16 04:09:49', '2021-04-16 04:09:49'),
(25, 'Oppo', 'oppo', 'uploads/brand/1618571414_1584935938_1521197184-brasol.vn-logo-oppo-oppo-logo.jpg', 'https://www.oppo.com/vn/', 4, 1, '2021-04-16 04:10:14', '2021-04-16 04:10:27'),
(26, 'Sony', 'sony', 'uploads/brand/1618571456_1584936029_sonyview1.jpg', 'https://www.sony.com/', 5, 1, '2021-04-16 04:10:56', '2021-04-16 04:10:56'),
(28, 'Asus', 'asus', 'uploads/brand/1618571511_1584936126_1_NwfoiV9f96_MhpmJwdinPA.png', 'https://www.asus.com/vn/', 7, 1, '2021-04-16 04:11:51', '2021-04-16 04:11:51'),
(29, 'Vsmart', 'vsmart', 'uploads/brand/1618571542_1584946458_Vsmart-logo.jpg', 'https://www.asus.com/vn/', 8, 1, '2021-04-16 04:12:22', '2021-04-16 04:12:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(10) UNSIGNED DEFAULT 0,
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 : HInệ thị\r\n0 : ẩn',
  `type` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `parent_id`, `position`, `is_active`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Điện Thoại', 'dien-thoai', 'uploads/category/1618569825_1618067465_tải xuống (6).jpeg', 0, 1, 1, 1, '2020-03-22 20:17:22', '2021-04-27 03:33:22'),
(2, 'Tablet', 'tablet', 'uploads/category/1618569874_1618400134_tải xuống (13).jpeg', 0, 2, 1, 1, '2020-03-22 20:17:43', '2021-04-27 05:36:59'),
(3, 'Phụ Kiện', 'phu-kien', 'uploads/category/1618569847_1618067271_tải xuống (1).jpeg', 0, 3, 1, 1, '2020-03-22 20:17:53', '2021-04-27 05:36:49'),
(4, 'Laptop', 'laptop', 'uploads/category/1618569837_1618067332_tải xuống.jpeg', 0, 4, 1, 1, '2020-03-22 20:18:00', '2021-04-27 05:36:34'),
(8, 'Samsung', 'samsung', 'uploads/category/1618067535_tải xuống (8).jpeg', 1, 12, 1, 1, '2020-03-22 20:20:43', '2021-04-15 03:00:19'),
(9, 'Oppo', 'oppo', 'uploads/category/1618067515_tải xuống (7).jpeg', 1, 13, 1, 1, '2020-03-22 20:20:53', '2021-04-15 03:00:08'),
(11, 'Vsmart', 'vsmart', 'uploads/category/1618067489_tải xuống (7).jpeg', 1, 15, 1, 1, '2020-03-22 20:22:15', '2021-04-15 03:00:30'),
(13, 'Xiaomi', 'xiaomi', 'uploads/category/1618067465_tải xuống (6).jpeg', 1, 62, 1, 1, '2020-03-22 20:29:10', '2021-04-15 03:00:36'),
(16, 'Asus', 'asus', 'uploads/category/1618067403_tải xuống (4).jpeg', 4, 42, 1, 1, '2020-03-22 20:31:15', '2021-04-15 03:00:48'),
(17, 'Dell', 'dell', 'uploads/category/1618067368_tải xuống (3).jpeg', 4, 43, 1, 1, '2020-03-22 20:31:26', '2021-04-15 03:01:20'),
(18, 'Lenovo', 'lenovo', 'uploads/category/1618067332_tải xuống.jpeg', 4, 44, 1, 1, '2020-03-22 20:32:00', '2021-04-15 03:01:25'),
(20, 'Tai nghe', 'tai-nghe', 'uploads/category/1618067271_tải xuống (1).jpeg', 3, 52, 1, 1, '2020-03-22 20:32:42', '2021-04-15 03:01:55'),
(63, 'Máy Tính Bảng IPAD (APPLE)', 'may-tinh-bang-ipad-apple', 'uploads/category/1618484489_ipad-2020-gold-1.png', 2, 2, 1, 1, '2021-04-15 03:04:45', '2021-04-27 05:36:21'),
(64, 'Sạc - Cable kết nối', 'sac-cable-ket-noi', 'uploads/category/1618484479_sac-energizer-3.4a-den.png', 3, 3, 1, 1, '2021-04-15 03:08:37', '2021-04-15 04:01:19'),
(65, 'Pin điện thoại - sạc dự phòng', 'pin-dien-thoai-sac-du-phong', 'uploads/category/1618484466_remax-rpp88-300x450.png', 3, 1, 1, 1, '2021-04-15 03:10:01', '2021-04-15 04:01:06'),
(66, 'Realme', 'realme', 'uploads/category/1618484451_Realme-c25-xam.png', 1, 1, 1, 1, '2021-04-15 03:13:15', '2021-04-15 04:00:51'),
(67, 'Máy Tính Bảng SAMSUNG', 'may-tinh-bang-samsung', 'uploads/category/1618484436_samsung-galaxy-tab-s7-gold-new-600x600.jpg', 2, 1, 1, 1, '2021-04-15 03:18:49', '2021-04-27 05:36:12'),
(68, 'Máy Tính Bảng HUAWEI', 'may-tinh-bang-huawei', 'uploads/category/1618484421_huawei-t10s-600x600-600x600.jpg', 2, 1, 1, 1, '2021-04-15 03:22:14', '2021-04-27 05:35:04'),
(69, 'Hp', 'hp', 'uploads/category/1618484401_tải xuống.jpeg', 4, 1, 1, 1, '2021-04-15 03:25:49', '2021-04-27 05:34:31'),
(70, 'Acer', 'acer', 'uploads/category/1618484385_tải xuống (1).jpeg', 4, 1, 1, 1, '2021-04-15 03:27:41', '2021-04-15 03:59:45'),
(72, 'Tin tức công nghệ', 'tin-tuc-cong-nghe', NULL, 0, 1, 0, 2, '2021-04-16 03:54:50', '2021-04-16 03:54:50'),
(73, 'MacBook', 'macbook', NULL, 0, 9, 1, 1, '2021-04-24 04:04:16', '2021-04-24 04:04:39'),
(78, 'Apple', 'apple', NULL, 1, 1, 1, 1, '2021-04-27 05:23:54', '2021-04-27 05:23:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `content`, `created_at`, `updated_at`) VALUES
(31, 'nguyễn huy', '1653394888', 'nguyenvanhuy1998pt@gmail.com', 'abc', '2021-04-14 12:43:52', '2021-04-14 12:43:52'),
(32, 'nguyễn huy33', '165339488833', 'nguyenvanhuy193398pt@gmail.com', 'asd', '2021-04-19 03:33:45', '2021-04-19 03:33:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `percent` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent`, `created_at`, `updated_at`) VALUES
(1, 'SHOP-KM1', 1, 50000, 30, '2020-05-19 16:50:32', '2020-05-19 16:50:32'),
(2, 'SHOP-K2', 2, NULL, 50, '2020-05-19 16:52:27', '2020-05-19 16:52:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `member`
--

CREATE TABLE `member` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2020_01_07_122649_create_categories_table', 1),
(10, '2020_01_09_113851_create_products_table', 1),
(11, '2020_02_06_031728_create_banners_table', 2),
(12, '2020_02_06_032831_create_banners_table', 3),
(13, '2020_02_06_125433_create_vendors_table', 4),
(14, '2020_02_06_125734_create_brands_table', 5),
(15, '2020_03_04_083632_create_products_table', 6),
(17, '2020_03_05_122445_create_contacts_table', 7),
(20, '2020_07_13_130015_create_member_table', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) DEFAULT 0,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `total` int(11) DEFAULT 0,
  `user_id` int(11) DEFAULT 0,
  `order_status_id` int(11) DEFAULT 0,
  `payment_id` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `fullname`, `email`, `address`, `address2`, `phone`, `discount`, `note`, `coupon`, `total`, `user_id`, `order_status_id`, `payment_id`, `created_at`, `updated_at`) VALUES
(9, NULL, 'Hoàng Công Dũng', 'dungthuy2109@gmail.com', 'HN', NULL, '0986346007', 0, NULL, '0', 25970000, 0, 4, 0, '2020-05-19 12:18:21', '2020-05-19 12:18:21'),
(10, NULL, 'Hoàng Công Dũng', 'hcdung2109@gmail.com', 'HN', NULL, '0986346006', 11395000, 'AB', 'SHOP-K2', 22790000, 0, 1, 0, '2020-05-20 09:55:45', '2020-05-20 09:55:45'),
(11, 'DH-11-20052020', 'Trần Thuỷ', 'thuthuy@gmail.com', 'Long Biên , Hà nội', NULL, '0986346008', 3995000, 'ko', 'SHOP-K2', 7990000, 0, 1, 0, '2020-05-20 11:01:38', '2020-05-20 11:01:38'),
(12, 'DH-12-21052020', 'Trần Thuỷ', 'dungthuy2109@gmail.com', 'HN', NULL, '0986346008', 0, NULL, NULL, 15980000, 0, 1, 0, '2020-05-21 07:41:24', '2020-05-21 07:41:24'),
(13, 'DH-13-21052020', 'Trần Thuỷ', 'dungthuy2109@gmail.com', 'HN', NULL, '0986346008', 0, NULL, NULL, 15980000, 0, 2, 0, '2020-05-21 07:42:09', '2020-05-21 07:42:09'),
(14, 'DH-14-23052020', 'Trần Thuỷ', 'hcdung2109@gmail.com', 'Bắc Ninh', 'fdfd', '0986346008', 0, 'kfdsfsdf', NULL, 23390000, 0, 3, 0, '2020-05-23 00:30:46', '2020-05-25 23:46:41'),
(15, 'DH-15-26052020', 'HCDUNG', 'hcdung2109@gmail.com', 'Tầng 6, Tòa CT Building , Đống Đa , HN', NULL, '0986346008', 0, 'Giao hàng ngoài 17h', NULL, 7990000, 0, 2, 0, '2020-05-25 23:59:42', '2020-05-26 00:05:38'),
(16, 'DH--21082020-1598017675', 'dung', 'hcdung2109@gmail.com', 'HN', NULL, '098793332', 50000, 'N', 'SHOP-KM1', -67400000, 0, 1, 0, '2020-08-21 06:47:55', '2020-08-21 06:47:55'),
(17, 'DH-21082020-1598018495', 'dung', 'admin@gmail.com', 'HN', NULL, '0986468888', 0, 'dag giao hang', NULL, 15980000, 0, 3, 0, '2020-08-21 07:01:35', '2020-08-21 07:07:35'),
(18, 'COZA-18-17042021', 'nguyễn huy', 'nguyenvanhuy1998pt@gmail.com', '11a, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', NULL, '1653394888', 0, 'ssadas', NULL, 9760000, 0, 1, 0, '2021-04-17 09:35:04', '2021-04-17 09:35:04'),
(19, 'COZA-19-17042021', 'nguyễn huy', 'nguyenvanhuy1998pt@gmail.com', '11a, Thị trấn Phong Điền, Huyện Phong Điền, Thành phố Cần Thơ', NULL, '1653394888', 0, 'ssadas', NULL, 9760000, 0, 1, 0, '2021-04-17 09:35:05', '2021-04-17 09:35:05'),
(20, 'COZA-20-19042021', 'nguyễn huy', 'nguyenvanhuy1998pt@gmail.com', '11a, Thị trấn Cờ Đỏ, Huyện Cờ Đỏ, Thành phố Cần Thơ', NULL, '1653394888', 0, 'sssssssssssss', NULL, 8490000, 0, 1, 0, '2021-04-18 22:54:38', '2021-04-18 22:54:38'),
(21, 'COZA-21-19042021', 'nguyễn huy', 'nguyenvanhuy1998pt@gmail.com', '11a, Thị trấn Cờ Đỏ, Huyện Cờ Đỏ, Thành phố Cần Thơ', NULL, '1653394888', 0, 'sssssssssssss', NULL, 8490000, 0, 1, 0, '2021-04-18 22:54:38', '2021-04-18 22:54:38'),
(22, 'COZA-22-19042021', 'nguyễn huy', 'nguyenvanhuy1998pt@gmail.com', '11a, Thị trấn Cờ Đỏ, Huyện Cờ Đỏ, Thành phố Cần Thơ', NULL, '1653394888', 0, 'sssssssssssss', NULL, 8490000, 0, 1, 0, '2021-04-18 22:54:39', '2021-04-18 22:54:39'),
(23, 'COZA-23-19042021', 'nguyễn huy', 'nguyenvanhuy1998pt@gmail.com', '11a, Thị trấn Cờ Đỏ, Huyện Cờ Đỏ, Thành phố Cần Thơ', NULL, '1653394888', 0, 'sssssssssssss', NULL, 8490000, 0, 1, 0, '2021-04-18 22:54:40', '2021-04-18 22:54:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `name`, `image`, `sku`, `user_id`, `order_id`, `product_id`, `price`, `qty`) VALUES
(2, NULL, NULL, '', NULL, 9, 43, 17980000, 2),
(3, NULL, NULL, '', NULL, 9, 30, 7990000, 1),
(4, NULL, NULL, '', NULL, 10, 30, 7990000, 1),
(5, NULL, NULL, '', NULL, 10, 44, 14800000, 2),
(6, NULL, NULL, '', NULL, 11, 30, 7990000, 1),
(7, 'Iphone 7 Plus 32GB - NEW', 'uploads/product/1584949065_iphone-7-plus-gold-400x460-400x460.png', NULL, 0, 13, 30, 15980000, 2),
(8, 'Apple Watch S5 LTE 40mm viền nhôm dây cao su', 'uploads/product/1586667604_apple-watch-s5-lte-40mm-vien-nhom-day-cao-su-ava-400x400.jpg', NULL, 0, 14, 50, 2900000, 1),
(9, 'ASUS ROG Phone 2 512GB', 'uploads/product/1584948535__600x600__crop_600_asus_rog_phone2_min_1.jpg', NULL, 0, 14, 28, 20490000, 1),
(10, 'Iphone 7 Plus 32GB - NEW', 'uploads/product/1584949065_iphone-7-plus-gold-400x460-400x460.png', NULL, 0, 15, 30, 7990000, 1),
(11, 'Iphone 7 Plus 32GB - NEW', 'uploads/product/1584949065_iphone-7-plus-gold-400x460-400x460.png', NULL, 0, 16, 30, 47940000, 6),
(12, 'ASUS ROG Phone 2 512GB', 'uploads/product/1584948535__600x600__crop_600_asus_rog_phone2_min_1.jpg', NULL, 0, 16, 28, 20490000, 1),
(13, 'Oppo Reno 2F', 'uploads/product/1584946658_oppo-reno2-f-400x460.png', NULL, 0, 17, 12, 15980000, 2),
(14, 'iPad 10.2 inch Wifi Cellular 128GB (2019)', 'uploads/category/1618400146_tải xuống (14).jpeg', NULL, 0, 18, 43, 9760000, 1),
(15, 'iPad 10.2 inch Wifi Cellular 128GB (2019)', 'uploads/category/1618400146_tải xuống (14).jpeg', NULL, 0, 19, 43, 9760000, 1),
(16, 'Headphones chống ồn Sony WH-1000XM3', 'uploads/category/1618400494_tải xuống (23).jpeg', '0', 0, 20, 25, 8490000, 1),
(17, 'Headphones chống ồn Sony WH-1000XM3', 'uploads/category/1618400494_tải xuống (23).jpeg', '0', 0, 21, 25, 8490000, 1),
(18, 'Headphones chống ồn Sony WH-1000XM3', 'uploads/category/1618400494_tải xuống (23).jpeg', '0', 0, 22, 25, 8490000, 1),
(19, 'Headphones chống ồn Sony WH-1000XM3', 'uploads/category/1618400494_tải xuống (23).jpeg', '0', 0, 23, 25, 8490000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Mới'),
(2, 'Đang Xử Lý'),
(3, 'Hoàn Thành'),
(4, 'Hủy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `sale` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_hot` int(11) DEFAULT 0,
  `views` int(11) DEFAULT 0,
  `category_id` int(11) DEFAULT 0,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) DEFAULT 0,
  `vendor_id` int(11) DEFAULT 0,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `image`, `stock`, `price`, `sale`, `position`, `is_active`, `is_hot`, `views`, `category_id`, `url`, `sku`, `color`, `memory`, `brand_id`, `vendor_id`, `summary`, `description`, `meta_title`, `meta_description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Iphone 11 128GB Chính hãng (VN/A)', 'iphone-11-128gb-chinh-hang-vna', 'uploads/category/1618572270_1584936264_iphone11-purple-select-2019.png', 10, 23990000, 22190000, 1, 1, 1, 0, 78, NULL, NULL, NULL, NULL, 22, 5, NULL, NULL, NULL, NULL, 0, '2020-03-22 21:04:24', '2021-04-27 05:25:49'),
(3, 'Iphone 11 256GB Chính hãng (VN/A)', 'iphone-11-256gb-chinh-hang-vna', 'uploads/category/1618572319_1584424288_iphone-11-pro-max-256gb-black-600x600.jpg', 15, 25990000, 24990000, 3, 1, 0, 0, 78, NULL, NULL, NULL, NULL, 22, 5, NULL, NULL, NULL, NULL, 0, '2020-03-22 21:09:44', '2021-04-27 05:25:40'),
(8, 'Samsung Galaxy A71', 'samsung-galaxy-a71', 'uploads/category/1618572390_samsung-galaxy-a71-blue-400x460-400x460-1-400x460.png', 29, 10490000, 9490000, 8, 1, 1, 0, 8, NULL, NULL, NULL, NULL, 21, 8, NULL, NULL, NULL, NULL, 0, '2020-03-22 23:49:49', '2021-04-26 09:23:10'),
(9, 'Iphone Xr 64GB', 'iphone-xr-64gb', 'uploads/category/1618572457_1584424998_iphone-xs-max-gold-600x600.jpg', 13, 16990000, 15990000, 9, 1, 0, 0, 78, NULL, NULL, NULL, NULL, 22, 8, NULL, NULL, NULL, NULL, 0, '2020-03-22 23:50:58', '2021-04-27 05:25:30'),
(10, 'Vsmart Active 3 6GB-64GB', 'vsmart-active-3-6gb-64gb', 'uploads/category/1618571934_tải xuống(26).jpeg', 5, 4490000, 3990000, 10, 1, 1, 0, 11, NULL, NULL, NULL, NULL, 29, 5, NULL, NULL, NULL, NULL, 0, '2020-03-22 23:55:08', '2021-04-26 09:22:57'),
(14, 'iMac 2019 27 inch Retina 5K MRR12 – New (Full VAT)', 'imac-2019-27-inch-retina-5k-mrr12-new-full-vat', 'uploads/category/1618572524_1584947228_imac27inch2019.jfif', 2, 57990000, 57990000, 14, 1, 1, 0, 2, NULL, 'kajima0420', NULL, NULL, 22, 0, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:07:08', '2021-04-23 05:12:59'),
(21, 'Apple AirPods 2 VN/A', 'apple-airpods-2-vna', 'uploads/category/1618400517_tải xuống (25).jpeg', 30, 5900000, 3650000, 21, 1, 1, 0, 20, NULL, NULL, NULL, NULL, 22, 7, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:17:00', '2021-04-26 09:22:40'),
(24, 'LAPTOP DELL INSPRION 7591 KJ2G41(I7 9750H 8GB / 256GB SSD/15.6FHD / VGA 3GB / Win 10 / Bạc)', 'laptop-dell-insprion-7591-kj2g41i7-9750h-8gb-256gb-ssd156fhd-vga-3gb-win-10-bac', 'uploads/category/1619178007_1584948108_30089_laptop_dell_inspiron_15_7591_kj2g41_1.jpg', 10, 29990000, 2890000, 24, 1, 1, 0, 17, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:21:48', '2021-04-26 09:22:30'),
(25, 'Headphones chống ồn Sony WH-1000XM3', 'headphones-chong-on-sony-wh-1000xm3', 'uploads/category/1618400494_tải xuống (23).jpeg', 5, 8490000, 6490000, 25, 1, 1, 0, 20, NULL, '0', NULL, NULL, 27, 6, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:24:53', '2021-04-26 09:22:05'),
(26, 'Samsung Galaxy S20 Ultra', 'samsung-galaxy-s20-ultra', 'uploads/category/1618400481_tải xuống (22).jpeg', 35, 29990000, 25099000, 26, 1, 1, 0, 8, NULL, NULL, NULL, NULL, 21, 6, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:26:33', '2021-04-26 09:21:55'),
(27, 'Asus Zenbook UX333FA-A4011T/Core i5-8265U', 'asus-zenbook-ux333fa-a4011tcore-i5-8265u', 'uploads/category/1619177907_1584948463_637020003765248380_asus-zenbook-flip-um462da-bac-2.png', 3, 21990000, 20990000, 27, 1, 0, 0, 16, NULL, NULL, NULL, NULL, 28, 8, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:27:43', '2021-04-26 09:21:46'),
(28, 'ASUS ROG Phone 2 512GB', 'asus-rog-phone-2-512gb', 'uploads/category/1618400452_tải xuống (20).jpeg', 0, 21490000, 20490000, 28, 1, 0, 0, 78, NULL, NULL, NULL, NULL, 28, 8, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:28:55', '2021-04-27 05:25:20'),
(29, 'Tai Nghe Gaming Logitech G Pro (Gen 2) – Hàng Chính Hãng', 'tai-nghe-gaming-logitech-g-pro-gen-2-hang-chinh-hang', 'uploads/category/1618400437_tải xuống (19).jpeg', 2, 2890000, 1990000, 29, 1, 1, 0, 20, NULL, NULL, NULL, NULL, 27, 6, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:35:43', '2021-04-26 09:21:19'),
(30, 'Iphone 7 Plus 32GB - NEW', 'iphone-7-plus-32gb-new', 'uploads/category/1618400299_tải xuống (18).jpeg', 0, 8990000, 7990000, 30, 1, 0, 0, 78, NULL, NULL, NULL, NULL, 22, 6, '<p>Đặc điểm nổi bật của iPhone 7 32GB T&igrave;m hiểu th&ecirc;m Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, S&aacute;ch hướng dẫn, C&aacute;p, C&acirc;y lấy sim iPhone 7 32GB vẫn mang tr&ecirc;n m&igrave;nh thiết kế quen thuộc của từ thời iPhone 6 nhưng c&oacute; nhiều thay đổi lớn về phần cứng, d&agrave;n loa stereo v&agrave; cấu h&igrave;nh cực mạnh.</p>', '<h2>vẫn mang tr&ecirc;n m&igrave;nh thiết kế quen thuộc của từ thời&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-6-32gb-gold\" target=\"_blank\">iPhone 6</a>&nbsp;nhưng c&oacute; nhiều thay đổi lớn về phần cứng, d&agrave;n loa stereo v&agrave; cấu h&igrave;nh cực mạnh.</h2>\r\n\r\n<h3>Camera trước tăng l&ecirc;n 7 MP</h3>\r\n\r\n<p>Một sự cải thiện đ&aacute;ng kể so với&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-6s-32gb\" target=\"_blank\">iPhone 6s</a>&nbsp;trước đ&oacute;, những tấm ảnh chụp selfie của bạn c&agrave;ng th&ecirc;m độ chi tiết v&agrave; sắc n&eacute;t.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/74110/iphone-7-tgdd-12.jpg\" onclick=\"return false;\"><img alt=\"Nâng câp camera trên điện thoại iPhone 7\" src=\"https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-tgdd-12.jpg\" /></a></p>\r\n\r\n<p>Bộ nhớ trong của m&aacute;y cũng được n&acirc;ng cấp l&ecirc;n 32 GB gi&uacute;p bạn thoải m&aacute;i chụp v&agrave; lưu trữ ảnh m&agrave; kh&ocirc;ng lo hết dung lượng để lưu.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/74110/iphone-7-tgdd-2.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp từ camera sau của điện thoại iPhone 7\" src=\"https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-tgdd-2.jpg\" /></a></p>\r\n\r\n<p>C&ugrave;ng với đ&oacute; l&agrave; t&iacute;nh năng chụp Retina Flash gi&uacute;p bạn chụp ảnh tốt hơn ở điều kiện thiếu s&aacute;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/74110/iphone-7-tgdd-1.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp từ camera sau của điện thoại iPhone 7\" src=\"https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-tgdd-1.jpg\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra, camera ph&iacute;a sau của&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\">điện thoại iPhone</a>&nbsp;n&agrave;y&nbsp;đ&atilde; được thiết kế gọn g&agrave;ng với đường bo mềm mại hơn, hạn chế tối đa trầy xước cho ống k&iacute;nh.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/74110/iphone-7-tgdd-15.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế camera trên điện thoại iPhone 7\" src=\"https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-tgdd-15.jpg\" /></a></p>\r\n\r\n<h3>&Acirc;m thanh stereo ph&aacute;t ra từ 2 ph&iacute;a</h3>\r\n\r\n<p>Kh&ocirc;ng c&ograve;n kh&oacute; chịu khi bạn cầm m&aacute;y chơi game nhưng bị b&iacute;t loa như ở những phi&ecirc;n bản trước đ&oacute;.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/87838/iphone-7-256gb-loa.jpg\" onclick=\"return false;\"><img alt=\"Dàn loa stereo của điện thoại iPhone 7\" src=\"https://cdn.tgdd.vn/Products/Images/42/87838/iphone-7-256gb-loa.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">Điện thoại</a>&nbsp;iPhone 7 32 GB được trang bị d&agrave;n loa tr&ecirc;n dưới cho &acirc;m thanh ph&aacute;t ra hay hơn.</p>\r\n\r\n<h3>Cảm biến v&acirc;n tay nhanh nhạy hơn</h3>\r\n\r\n<p>Gi&uacute;p bạn mở kh&oacute;a m&aacute;y chỉ trong v&agrave;i nốt nhạc, gi&uacute;p tiết kiệm thời gian cũng như bảo mật cao dữ liệu trong m&aacute;y.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/74110/iphone-7-tgdd-16.jpg\" onclick=\"return false;\"><img alt=\"Nút home lực tích hợp trên điện thoại iPhone 7\" src=\"https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-tgdd-16.jpg\" /></a></p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/thiet-lap-van-tay-moi-tren-iphone-7-920010\" target=\"_blank\">Hướng dẫn bạn c&aacute;ch c&agrave;i đặt v&acirc;n tay iPhone 7</a>.</p>\r\n\r\n<h3>M&agrave;n h&igrave;nh 4.7 inch c&agrave;ng th&ecirc;m sắc n&eacute;t</h3>\r\n\r\n<p>C&ugrave;ng với đ&oacute; l&agrave; khả năng hiển thị tốt hơn dưới trời nắng, g&oacute;c nh&igrave;n nghi&ecirc;ng kh&ocirc;ng bị mất m&agrave;u.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/74110/iphone-7-tgdd-13.jpg\" onclick=\"return false;\"><img alt=\"Màn hình hiển thị trên điện thoại iPhone 7\" src=\"https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-tgdd-13.jpg\" /></a></p>\r\n\r\n<h3>Cấu h&igrave;nh mạnh mẽ thoải m&aacute;i chiến game</h3>\r\n\r\n<p>M&aacute;y t&iacute;ch hợp&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tong-quan-ve-chip-a10-fusion-cua-apple-885052\" target=\"_blank\">chip xử l&yacute; A10</a>&nbsp;mới nhất, RAM 2 GB c&ugrave;ng hệ điều h&agrave;nh iOS lu&ocirc;n được cập nhật mới gi&uacute;p m&aacute;y vận h&agrave;nh nhẹ nh&agrave;ng v&agrave; nhanh nhạy.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/74110/iphone-7-tgdd-3-2.jpg\" onclick=\"return false;\"><img alt=\"Điểm Antutu Benchmark trên chiếc điện thoại iPhone 7\" src=\"https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-tgdd-3-2.jpg\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Clip test game nặng GTA (Nguồn: Youtube XEETECHCARE)</em></p>\r\n\r\n<h3>N&uacute;t home th&agrave;nh dạng cứng v&agrave; nhận biết cảm ứng lực</h3>\r\n\r\n<p>N&uacute;t home tr&ograve;n tr&ecirc;n iPhone 7 ch&iacute;nh thức l&agrave; dạng cứng, tức bạn sẽ kh&ocirc;ng nhấn xuống được nữa, để thao t&aacute;c tr&ecirc;n n&uacute;t n&agrave;y bạn sẽ nhấn 1 lực vừa phải đến khi n&uacute;t home run nhẹ l&ecirc;n.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/74110/iphone-7-tgdd-19.jpg\" onclick=\"return false;\"><img alt=\"Nâng cấp nút Home của điện thoại iPhone 7\" src=\"https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-tgdd-19.jpg\" /></a></p>\r\n\r\n<p>Điều dễ nhận thấy nhất về iPhone 7 tiếp theo ch&iacute;nh l&agrave; mặt sau với d&atilde;y ăng-ten được giấu đi, c&ograve;n lại ngoại h&igrave;nh m&aacute;y kh&ocirc;ng thay đổi nhiều so với&nbsp;iPhone 6s&nbsp;trước đ&oacute;.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/74110/iphone-7-tgdd-11.jpg\" onclick=\"return false;\"><img alt=\"Nâng cấp nút Home của điện thoại iPhone 7\" src=\"https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-tgdd-11.jpg\" /></a></p>', NULL, NULL, 0, '2020-03-23 00:37:45', '2021-04-27 05:25:02'),
(40, 'Samsung Galaxy Tab with S Pen (P205)', 'samsung-galaxy-tab-with-s-pen-p205', 'uploads/category/1618400287_tải xuống (17).jpeg', 5, 6999000, 5999000, 0, 1, 0, 0, 67, NULL, NULL, NULL, NULL, 21, 6, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 21:39:43', '2021-04-26 09:21:08'),
(41, 'iPad Mini 7.9 inch Wifi 64GB (2019)', 'ipad-mini-79-inch-wifi-64gb-2019', 'uploads/category/1618400230_tải xuống (16).jpeg', 5, 10990000, 10490000, 1, 1, 1, 0, 2, NULL, NULL, NULL, NULL, 0, 6, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 21:42:46', '2021-04-23 05:12:17'),
(42, 'Samsung Galaxy Tab A8 8\" T295 (2019)', 'samsung-galaxy-tab-a8-8-t295-2019', 'uploads/category/1618400215_tải xuống (15).jpeg', 4, 4000000, 3690000, 2, 1, 1, 0, 67, NULL, NULL, NULL, NULL, 21, 7, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 21:43:53', '2021-04-26 09:20:56'),
(43, 'iPad 10.2 inch Wifi Cellular 128GB (2019)', 'ipad-102-inch-wifi-cellular-128gb-2019', 'uploads/category/1618400146_tải xuống (14).jpeg', 2, 9760000, 8990000, 3, 1, 1, 0, 63, NULL, NULL, NULL, NULL, 26, 6, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 21:45:00', '2021-04-26 09:20:47'),
(44, 'Huawei MediaPad M5 Lite', 'huawei-mediapad-m5-lite', 'uploads/category/1618400134_tải xuống (13).jpeg', 3, 7900000, 7400000, 0, 1, 1, 0, 68, NULL, NULL, NULL, NULL, 27, 6, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 21:46:02', '2021-04-26 09:20:35'),
(45, 'Acer Aspire A315 54 36QY i3 10110U (NX.HM2SV.001)', 'acer-aspire-a315-54-36qy-i3-10110u-nxhm2sv001', 'uploads/category/1618400057_tải xuống (12).jpeg', 2, 10230000, 8500000, 0, 1, 1, 0, 70, NULL, NULL, NULL, NULL, 22, 6, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 21:49:54', '2021-04-26 09:20:19'),
(46, 'Asus VivoBook A412FA i3 8145U', 'asus-vivobook-a412fa-i3-8145u', 'uploads/category/1618400043_tải xuống (11).jpeg', 8, 7890000, 6900000, 0, 1, 1, 0, 16, NULL, 'EK661T', NULL, NULL, 28, 0, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 21:51:06', '2021-04-26 09:20:04'),
(47, 'HP 15s du0072TX i3 7020U (8WP16PA)', 'hp-15s-du0072tx-i3-7020u-8wp16pa', 'uploads/category/1618067157_tải xuống.jpeg', 5, 22520000, 20000000, 2, 1, 1, 0, 69, NULL, NULL, NULL, NULL, 24, 0, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 21:53:51', '2021-04-26 09:19:52'),
(48, 'Asus VivoBook X409FA i5 8265U', 'asus-vivobook-x409fa-i5-8265u', 'uploads/category/1619177621_1586667310_asus-vivobook-x409f-i5-8265u-8gb-1tb-win10-ek138t2-1-thumb-1-400x400.jpg', 2, 13800000, 12000000, 4, 1, 1, 0, 16, NULL, 'EK138T', NULL, NULL, 28, 8, NULL, '<h3>Thiết kế mỏng nhẹ thanh lịch</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop-asus-vivobook\" target=\"_blank\">Asus Vivobook&nbsp;</a>X409F (EK138T) được thiết kế hướng đến người d&ugrave;ng hiện đại cần di chuyển nhiều, laptop gọn nhẹ với trọng lượng&nbsp;<strong>1.6 kg</strong>&nbsp;dễ d&agrave;ng đem theo đến bất cứ đ&acirc;u.</p>\r\n\r\n<p>C&aacute;c g&oacute;c m&aacute;y được bo tr&ograve;n tinh tế tạo cảm gi&aacute;c thanh lịch v&agrave; dễ d&agrave;ng cầm nắm.</p>', NULL, NULL, 0, '2020-04-11 21:55:10', '2021-04-26 09:19:36'),
(49, 'HP 348 G7 i5 10210U (9PH06PA)', 'hp-348-g7-i5-10210u-9ph06pa', 'uploads/category/1619177590_1586667371_hp-348-g7-i5-9ph06pa-218439-1-400x400.jpg', 4, 16000000, 15700000, 0, 1, NULL, 0, 69, NULL, NULL, NULL, NULL, 24, 5, '<p>tt</p>', '<h3>Th&ocirc;ng số kỹ thuật chi tiết Laptop HP 348 G7 (9PH06PA) (i5 10210U/8GB RAM/512GB SSD/14 inch FHD/Win/Bạc)</h3>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>M&ocirc; tả chi tiết</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>H&atilde;ng sản xuất</p>\r\n			</td>\r\n			<td>\r\n			<p>HP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chủng loại</p>\r\n			</td>\r\n			<td>\r\n			<p>HP 348 G7 (SILVER)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Part Number</p>\r\n			</td>\r\n			<td>\r\n			<p>9PH06PA</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Mầu sắc</p>\r\n			</td>\r\n			<td>\r\n			<p>Bạc</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Bộ vi xử l&yacute;</p>\r\n			</td>\r\n			<td>\r\n			<p>Intel Core i5-10210U Processor (4 x 1.60 GHz), Max Turbo Frequency : 4.20 GHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chipset</p>\r\n			</td>\r\n			<td>\r\n			<p>Intel</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Bộ nhớ trong</p>\r\n			</td>\r\n			<td>\r\n			<p>1 x 8GB DDR4/ 2666MHz (2 slots)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Số khe cắm</p>\r\n			</td>\r\n			<td>\r\n			<p>2</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dung lượng tối đa</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>VGA</p>\r\n			</td>\r\n			<td>\r\n			<p>Intel UHD Graphics</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ổ cứng</p>\r\n			</td>\r\n			<td>\r\n			<p>512GB SSD PCIe (M.2 2280)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ổ quang</p>\r\n			</td>\r\n			<td>\r\n			<p>No</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Card Reader</p>\r\n			</td>\r\n			<td>\r\n			<p>SD Card reader (Supports SD/SDHC/SDXC)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Bảo mật, c&ocirc;ng nghệ</p>\r\n			</td>\r\n			<td>\r\n			<p>Fingerprint reader ; Administrator Password, Power-On Password, TPM Device, Intel Software Guard Extensions (SGX), DriveLock passwords, Security Lock</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>M&agrave;n h&igrave;nh</p>\r\n			</td>\r\n			<td>\r\n			<p>14&quot; inch diagonal FHD (1920 x 1080) IPS WLED-backlit slim ; Anti-glare</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Webcam</p>\r\n			</td>\r\n			<td>\r\n			<p>HP TrueVision HD Camera with dual array microphone</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Audio</p>\r\n			</td>\r\n			<td>\r\n			<p>Realtek High Definition Audio</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Giao tiếp mạng</p>\r\n			</td>\r\n			<td>\r\n			<p>Integrated 10/100/1000 GbE LAN</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Giao tiếp kh&ocirc;ng d&acirc;y</p>\r\n			</td>\r\n			<td>\r\n			<p>Realtek 802.11 ac (1x1) and Bluetooth&reg; 5.0 combo&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Cổng giao tiếp</p>\r\n			</td>\r\n			<td>\r\n			<p>1 x USB 3.1 Gen 1 Type-C ; 3 x USB 3.1 Gen 1 Type-A (one with support charging/power delivery); 1 x HDMI ; 1 x RJ45 ; 1 x Headphone/Microphone combo jack ; 1 x SATA3 (no cable)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Pin</p>\r\n			</td>\r\n			<td>\r\n			<p>3 Cell Int (41.04Wh)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>K&iacute;ch thước (rộng x d&agrave;i x cao)</p>\r\n			</td>\r\n			<td>\r\n			<p>22.59 x 32.4 x 1.99 cm (W x H x D)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>C&acirc;n nặng</p>\r\n			</td>\r\n			<td>\r\n			<p>1.42 kg</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Hệ điều h&agrave;nh</p>\r\n			</td>\r\n			<td>\r\n			<p>Windows 10 Home Single Language 64-bit</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Phụ kiện đi k&egrave;m</p>\r\n			</td>\r\n			<td>\r\n			<p>S&aacute;ch hướng dẫn, 45 W Smart AC power adapter</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, 0, '2020-04-11 21:56:11', '2021-04-26 09:19:22'),
(62, 'iPhone 11 64GB Chính Hãng VN/A', 'iphone-11-64gb-chinh-hang-vna', 'uploads/product/1619260369_iphone11-yellow-select-2019-225x300.png', 10, 21990000, 15650000, 1, 1, 1, 0, 1, NULL, NULL, NULL, NULL, 22, 7, 'Thông tin sản phẩm:Apple iPhone 11 chính hãng VN/A mới 100% nguyên Seal phụ kiện chính hãng, chưa kích hoạt, được phân phối chính hãng tại Việt Nam, Full VAT. Phụ kiện gồm: hộp trùng imei, cáp, sách hướng dẫn, que chọc sim. Khi kích họat lên máy sẽ đủ bảo hành chính hãng 12 tháng 1 đổi 1 tại Việt Nam.', '<h2>TH&Ocirc;NG SỐ KỸ THUẬT</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Băng tần - Sim</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/bang-tan-sim/2g-3g-4g-lte\">2G, 3G, 4G LTE</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>M&agrave;n h&igrave;nh</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/man-hinh/ips-lcd-6-1-inches\">IPS LCD , 6.1 inches</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/cpu/apple-a13-bionic\">Apple A13 Bionic</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>RAM</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/ram/4-gb\">4 GB</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Bộ nhớ trong</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/bo-nho-trong/64-gb\">64 GB</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Camera sau</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/camera-sau/dual-12-mp\">Dual 12 MP</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Camera trước</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/camera-truoc/12mp\">12MP</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sim</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/sim/single-sim-nano-sim-or-dual-sim-nano-sim-dual-stand-by\">Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Cảm biến</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/cam-bien/face-id-accelerometer-gyro-proximity-compass-barometer\">Face ID, accelerometer, gyro, proximity, compass, barometer</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Bảo mật n&acirc;ng cao</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/bao-mat-nang-cao/faceid\">FaceID</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Pin</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/pin/li-ion-3110-mah\">Li-Ion 3110 mAh</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>M&agrave;u sắc</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/mau-sac/den\">Đen</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/do\">Đỏ</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/tim\">T&iacute;m</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/trang\">Trắng</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/vang\">V&agrave;ng</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/xanh-la\">Xanh l&aacute;</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&igrave;nh trạng sản phẩm</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/tinh-trang-san-pham/blackfivedays\">BlackFiveDays</a>,&nbsp;<a href=\"https://didongthongminh.vn/tinh-trang-san-pham/moi\">New</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, 0, '2021-04-24 03:32:49', '2021-04-24 03:32:49'),
(63, 'iPhone 12 Pro Max 128GB Chính Hãng VN/A', 'iphone-12-pro-max-128gb-chinh-hang-vna', 'uploads/product/1619260571_iPhone-12-Pro-Max-2-225x300.png', 10, 33990000, 29050000, 2, 1, 1, 0, 1, NULL, NULL, NULL, NULL, 22, 7, NULL, NULL, NULL, NULL, 0, '2021-04-24 03:36:11', '2021-04-24 03:50:35'),
(64, 'Oppo Reno5 8GB/128GB chính hãng', 'oppo-reno5-8gb128gb-chinh-hang', 'uploads/product/1619261425_oppo-reno5-pro-5g-1-225x300.png', 10, 7350000, 7350000, 3, 1, 1, 0, 9, NULL, NULL, NULL, NULL, 25, 7, 'Thông tin sản phẩm:\r\nĐiện thoại Oppo Reno5 chính hãng được phân phối chính hãng bởi Oppo Việt Nam. Oppo Reno5 nổi bật bởi sạc nhanh 50W đi kèm viên pin 4310mAh, cụm 4 camera 64MP ở mặt sau cùng nhiều chế độ chụp như chân dung, góc rộng hay chụp chân dung đen trắng. Bộ phụ kiện Oppo Reno5 chuẩn gồm: Sạc, cable, tai nghe cao cấp, sách hướng dẫn sử dụng, thẻ bảo hành chính hãng.', '<h2>TH&Ocirc;NG SỐ KỸ THUẬT</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Băng tần - Sim</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/bang-tan-sim/2g-3g-4g-lte\">2G, 3G, 4G LTE</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>M&agrave;n h&igrave;nh</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/man-hinh/643-inch-oled\">6,43 inch, OLED</a>,&nbsp;<a href=\"https://didongthongminh.vn/man-hinh/full-hd\">Full HD+</a>,&nbsp;<a href=\"https://didongthongminh.vn/man-hinh/tan-so-quet-90hz\">Tần số qu&eacute;t 90Hz</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Hệ điều h&agrave;nh</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/he-dieu-hanh/android-11-coloros-11-1\">Android 11, ColorOS 11.1</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/cpu/qualcomm-sm7125-snapdragon-720g-8-nm\">Qualcomm SM7125 Snapdragon 720G (8 nm)</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Chip đồ họa ( GPU )</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/chip-do-hoa-gpu/adreno-618\">Adreno 618</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Bộ nhớ trong</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/bo-nho-trong/128-gb\">128 GB</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>RAM</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/ram/8-gb\">8 GB</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Camera sau</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/camera-sau/chinh-64-mp-phu-8-mp-2-mp-2-mp\">Ch&iacute;nh 64 MP &amp; Phụ 8 MP, 2 MP, 2 MP</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Camera trước</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/camera-truoc/44mp\">44MP</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Pin</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/pin/4-310-mah-sac-nhanh-50w\">4.310 mAh + Sạc nhanh 50W</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Cảm biến</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/cam-bien/van-tay-duoi-man-hinh\">V&acirc;n tay dưới m&agrave;n h&igrave;nh</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>M&agrave;u sắc</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/mau-sac/bac-da-sac\">Bạc Đa Sắc</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/den-thien-thach\">Đen thi&ecirc;n thạch</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&igrave;nh trạng sản phẩm</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/tinh-trang-san-pham/hotsale-8-3\">HOTsale 8/3</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, 0, '2021-04-24 03:50:25', '2021-04-26 09:18:38'),
(65, 'Xiaomi POCO M3 – Chính hãng', 'xiaomi-poco-m3-chinh-hang', 'uploads/product/1619261545_xiaomi-poco-m3-thumb-225x300.png', 10, 3290000, 3190000, 4, 1, 1, 0, 13, NULL, NULL, NULL, NULL, 23, 6, 'Thông tin sản phẩm:Xiaomi POCO M3 đáp ứng viên Pin khủng dung lượng 6.000mAh... phù hợp với những người hay di chuyển hoặc thường xuyên làm việc ngoài trời. Sản phẩm mới nguyên seal, bộ sản phẩm chuẩn gồm: thân máy, hộp, sạc, cable, giấy hdsd, ốp lưng. Bảo hành chính hãng 18 tháng.', '<h2>TH&Ocirc;NG SỐ KỸ THUẬT</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Băng tần - Sim</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/bang-tan-sim/2g-3g-4g-lte\">2G, 3G, 4G LTE</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Hệ điều h&agrave;nh</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/he-dieu-hanh/android-10-miui-12\">Android 10, MIUI 12</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>M&agrave;n h&igrave;nh</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/man-hinh/ips-lcd-6-53-full-hd\">IPS LCD, 6.53&quot;, Full HD+</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Camera trước</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/camera-truoc/8mp\">8MP</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Camera sau</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/camera-sau/chinh-48-mp-phu-2-mp-2-mp\">Ch&iacute;nh 48 MP &amp; Phụ 2 MP, 2 MP</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/cpu/snapdragon-662-8-nhan\">Snapdragon 662 8 nh&acirc;n</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Chip đồ họa ( GPU )</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/chip-do-hoa-gpu/adreno-610\">Adreno 610</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>RAM</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/ram/4gb\">4GB</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Bộ nhớ trong</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/bo-nho-trong/64-gb\">64 GB</a>,&nbsp;<a href=\"https://didongthongminh.vn/bo-nho-trong/128-gb\">128 GB</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Thẻ nhớ</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/the-nho/microsd-ho-tro-toi-da-256-gb\">MicroSD, hỗ trợ tối đa 256 GB</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Pin</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/pin/6000mah\">6000mAh</a>,&nbsp;<a href=\"https://didongthongminh.vn/pin/sac-nhanh-18w\">Sạc nhanh 18W</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>M&agrave;u sắc</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/mau-sac/den\">Đen</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/vang\">V&agrave;ng</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/xanh\">xanh</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&igrave;nh trạng sản phẩm</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/tinh-trang-san-pham/hotsale-8-3\">HOTsale 8/3</a>,&nbsp;<a href=\"https://didongthongminh.vn/tinh-trang-san-pham/moi\">New</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, 0, '2021-04-24 03:52:25', '2021-04-26 09:18:26'),
(66, 'Samsung Galaxy A12 Chính Hãng', 'samsung-galaxy-a12-chinh-hang', 'uploads/product/1619261620_Galaxy-A12-xanh-thumbnail-225x300.png', 10, 4290000, 3590000, 5, 1, 1, 0, 9, NULL, NULL, NULL, NULL, 21, 7, 'Thông tin sản phẩm:Galaxy A12 CAM KẾT GIÁ TỐT, là Smartphone sở hữu công nghệ âm thanh vòm Dolby Atmos, 4 camera sau và pin trâu. Bộ sản phẩm chuẩn gồm: thân máy, sạc nhanh 15W, cable Type-C, sách HDSD. Bảo hành chính hãng 12 tháng.', '<h2>TH&Ocirc;NG SỐ KỸ THUẬT</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Băng tần - Sim</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/bang-tan-sim/2g-3g-4g-lte\">2G, 3G, 4G LTE</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Hệ điều h&agrave;nh</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/he-dieu-hanh/android-10\">Android 10</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>M&agrave;n h&igrave;nh</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/man-hinh/tft-lcd-6-5-hd\">TFT LCD, 6.5&quot;, HD+</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/cpu/mediatek-helio-p35-8-nhan\">MediaTek Helio P35 8 nh&acirc;n</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>RAM</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/ram/4gb\">4GB</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Bộ nhớ trong</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/bo-nho-trong/128-gb\">128 GB</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Camera trước</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/camera-truoc/8mp\">8MP</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Camera sau</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/camera-sau/chinh-48-mp-phu-5-mp-2-mp-2-mp\">Ch&iacute;nh 48 MP &amp; Phụ 5 MP, 2 MP, 2 MP</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Pin</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/pin/sac-nhanh-15w\">Sạc nhanh 15W</a>,&nbsp;<a href=\"https://didongthongminh.vn/pin/li-po-5000-mah\">Li-Po 5000 mAh</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Cảm biến</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/cam-bien/fingerprint-under-display-accelerometer-gyro-proximity-compass\">Fingerprint (under display), accelerometer, gyro, proximity, compass</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>M&agrave;u sắc</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/mau-sac/den\">Đen</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/do\">Đỏ</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/trang\">Trắng</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/xanh-duong\">Xanh Dương</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&igrave;nh trạng sản phẩm</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/tinh-trang-san-pham/hotsale-8-3\">HOTsale 8/3</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, 0, '2021-04-24 03:53:40', '2021-04-27 05:24:47'),
(67, 'iPad Gen 8 10.2″ 2020 32GB Wi-Fi', 'ipad-gen-8-102-2020-32gb-wi-fi', 'uploads/product/1619262410_ipad-gen8-2020-silver-1-225x300.png', 10, 9290000, 8490000, 1, 1, 1, 0, 63, NULL, NULL, NULL, NULL, 22, 7, 'Thông tin sản phẩm:iPad Gen 8 10.2 2020 chính hãng 32GB bản Only Wifi mới 100% Fullbox, Nguyên Seal, Chưa kích hoạt, Full VAT. Máy nguyên seal xịn và phụ kiện chính hãng, khi kích họat lên sẽ đủ bảo hành chính hãng 12 tháng.', '<h2>TH&Ocirc;NG SỐ KỸ THUẬT</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>Băng tần - Sim</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/bang-tan-sim/2g-3g-4g-lte\">2G, 3G, 4G LTE</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>M&agrave;n h&igrave;nh</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/man-hinh/retina-ips-lcd-10-2-inch\">Retina IPS LCD 10.2 inch</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Camera sau</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/camera-sau/hdr-panorama\">HDR, panorama</a>,&nbsp;<a href=\"https://didongthongminh.vn/camera-sau/8-0-mp\">8.0 MP</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/cpu/apple-a12-bionic-7-nm\">Apple A12 Bionic (7 nm)</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Chip đồ họa ( GPU )</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/chip-do-hoa-gpu/apple-gpu-4-nhan-do-hoa\">Apple GPU (4 nh&acirc;n đồ hoạ)</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>RAM</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/ram/3-gb\">3 GB</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Bộ nhớ trong</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/bo-nho-trong/32-gb\">32 GB</a>,&nbsp;<a href=\"https://didongthongminh.vn/bo-nho-trong/128gb\">128GB</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Pin</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/pin/li-po-8827-mah\">Li-Po 8827 mAh</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>M&agrave;u sắc</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/mau-sac/den\">Đen</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/trang\">Trắng</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/vang\">V&agrave;ng</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, 0, '2021-04-24 04:06:50', '2021-04-26 09:17:50'),
(68, 'iPad 2018 Cũ 32G (4G + Wifi)', 'ipad-2018-cu-32g-4g-wifi', 'uploads/product/1619262616_iPad-2018-gold-1-225x300.png', 10, 6690000, 6690000, 3, 1, 1, 0, 63, NULL, NULL, NULL, NULL, 22, 8, 'Thông tin sản phẩm:iPad 9.7 inch 2018 là dòng iPad thế hệ mới. iPad 9.7 2018 32G (4G+Wifi) cũ tại Di Động Thông Minh được tuyển chọn và bán ra được cam kết chất lượng cao nhất. Cam kết chỉ bán iPad nguyên bản 100%, Hình thức không móp méo, đẹp như mới. Bảo hành tốt nhất với chính sách 30 ngày 1 đổi 1 nếu sản phẩm nếu có lỗi của nhà sản xuất.', '<h2>TH&Ocirc;NG SỐ KỸ THUẬT</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&agrave;n h&igrave;nh</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/man-hinh/ips-lcd-9-7-inch-retina-2048x1536-pixel-264ppi\">IPS LCD 9.7 inch Retina 2048&times;1536 pixel (264ppi)</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Băng tần - Sim</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/bang-tan-sim/2g-3g-4g-lte\">2G, 3G, 4G LTE</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/cpu/apple-a10-fusion\">Apple A10 Fusion</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Chip đồ họa ( GPU )</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/chip-do-hoa-gpu/powervr-series7xt-plus\">PowerVR Series7XT Plus</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Bảo mật n&acirc;ng cao</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/bao-mat-nang-cao/mo-khoa-bang-van-tay\">Mở kh&oacute;a bằng v&acirc;n tay</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>RAM</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/ram/2-gb\">2 GB</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Bộ nhớ trong</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/bo-nho-trong/32-gb\">32 GB</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Pin</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/pin/li-po-8827-mah\">Li-Po 8827 mAh</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Camera sau</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/camera-sau/8-0-mp\">8.0 MP</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>M&agrave;u sắc</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/mau-sac/den\">Đen</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/trang\">Trắng</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/vang\">V&agrave;ng</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&igrave;nh trạng sản phẩm</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/tinh-trang-san-pham/cu\">Used</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, 0, '2021-04-24 04:10:16', '2021-04-26 09:17:26'),
(69, 'iPad Gen 7 2019 10.2″ 32GB Wifi mới chính hãng', 'ipad-gen-7-2019-102-32gb-wifi-moi-chinh-hang', 'uploads/product/1619262846_ipad-gen8-2020-silver-1-225x300.png', 10, 8690000, 8490000, 8, 1, 1, 0, 63, NULL, NULL, NULL, NULL, 22, 7, 'Thông tin sản phẩm:iPad Gen 7 2019 chính hãng 32GB Wifi. iPad 10.2 inch 2019 hàng chính hãng mới 100% Fullbox, Nguyên Seal, Chưa kích hoạt, Full VAT. Di Động Thông Minh cam kết hàng chuẩn, bảo hành 12 tháng 1 đổi 1 tại trung tâm bảo hành Apple', '<h2>TH&Ocirc;NG SỐ KỸ THUẬT</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&agrave;n h&igrave;nh</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/man-hinh/10-2-inches-ips-lcd\">10.2 inches IPS LCD</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/cpu/apple-a10-fusion\">Apple A10 Fusion</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Chip đồ họa ( GPU )</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/chip-do-hoa-gpu/powervr-series7xt-plus\">PowerVR Series7XT Plus</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>RAM</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/ram/3-gb\">3 GB</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Bộ nhớ trong</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/bo-nho-trong/32-gb\">32 GB</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Pin</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/pin/li-po-8827-mah\">Li-Po 8827 mAh</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Camera sau</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/camera-sau/8-0-mp\">8.0 MP</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>M&agrave;u sắc</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/mau-sac/den\">Đen</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/trang\">Trắng</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/vang\">V&agrave;ng</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, 0, '2021-04-24 04:14:06', '2021-04-26 09:17:16'),
(70, 'iPad Air 4 10.9 64GB Wi-Fi 2020', 'ipad-air-4-109-64gb-wi-fi-2020', 'uploads/product/1619262947_apple-ipadair-4g-qsd-grey-225x300.png', 10, 14950000, 14950000, 2, 1, 1, 0, 63, NULL, NULL, NULL, NULL, 22, 6, 'Thông tin sản phẩm:iPad Air 4 10.9 chính hãng Việt Nam mới 100% fullbox, nguyên seal, chưa kích hoạt. Khi kích họat lên sẽ đủ bảo hành chính hãng 12 tháng 1 đổi 1 tại tất cả các trung tâm bảo hành uỷ quyền của Apple Việt Nam.', '<h2>TH&Ocirc;NG SỐ KỸ THUẬT</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&agrave;n h&igrave;nh</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/man-hinh/liquid-retina-ips-lcd-10-9-inches-1640-x-2360-pixels\">Liquid Retina IPS LCD 10.9 inches 1640 x 2360 pixels</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>CPU</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/cpu/apple-a14-bionic-5-nm\">Apple A14 Bionic (5 nm)</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Băng tần - Sim</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/bang-tan-sim/2g-3g-4g-lte\">2G, 3G, 4G LTE</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Chip đồ họa ( GPU )</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/chip-do-hoa-gpu/apple-gpu-4-core-graphics\">Apple GPU (4-core graphics)</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Bảo mật n&acirc;ng cao</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/bao-mat-nang-cao/mo-khoa-bang-van-tay\">Mở kh&oacute;a bằng v&acirc;n tay</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Camera sau</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/camera-sau/12-mp-f-1-8-wide-1-3-1-22%c2%b5m-dual-pixel-pdaf\">12 MP, f/1.8, (wide), 1/3&quot;, 1.22&micro;m, dual pixel PDAF</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Camera trước</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/camera-truoc/7-mp-f-2-0-31mm-standard\">7 MP, f/2.0, 31mm (standard)</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Bộ nhớ trong</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/bo-nho-trong/64-gb\">64 GB</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Pin</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/pin/li-po-28-6-wh\">Li-Po 28.6 Wh</a>,&nbsp;<a href=\"https://didongthongminh.vn/pin/up-to-10-h-multimedia\">Up to 10 h (multimedia)</a></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>M&agrave;u sắc</th>\r\n			<td>\r\n			<p><a href=\"https://didongthongminh.vn/mau-sac/xanh-luc\">Xanh lục</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/bac\">Bạc</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/hong\">Hồng</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/xam\">X&aacute;m</a>,&nbsp;<a href=\"https://didongthongminh.vn/mau-sac/xanh-duong\">Xanh Dương</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, 0, '2021-04-24 04:15:47', '2021-04-26 09:16:50'),
(71, 'Củ Sạc Nhanh Apple 20W PD Type-C', 'cu-sac-nhanh-apple-20w-pd-type-c', 'uploads/product/1619265815_sac-nhanh-apple-iphone-20w-type-c-pd-mhje3za-a-29661-removebg-preview-300x300.png', 10, 890000, 590000, 9, 1, 1, 0, 64, NULL, NULL, NULL, NULL, 22, 7, 'Thông tin sản phẩm:Củ sạc bảo hành chính hãng tại các trung tâm bảo hành của Apple Việt Nam toàn quốc 12 tháng 1 đổi 1. Củ sạc có thể sử dụng cho iPhone, iPad, iPad Pro, các thiết bị hỗ trợ sạc nhanh từ iPhone 8. Sạc nhanh 20W giúp tiết kiệm thời gian sạc đáng kể với chỉ 30 phút đạt 50% pin.', '<h3>Củ Sạc Nhanh Apple 20W MHJE3ZA &ndash; Sạc nhanh cho iPhone, iPad</h3>\r\n\r\n<p>Giới thiệu c&ugrave;ng với&nbsp;<a href=\"https://didongthongminh.vn/iphone-12-mini-64gb-chinh-hang\">iPhone 12</a>, Apple đ&atilde; bổ sung một bộ chuyển đổi nguồn mới USB-C 20W c&oacute; m&atilde; MHJE3ZA v&agrave;o d&ograve;ng phẩm phụ kiện của m&igrave;nh. Bộ chuyển đổi nguồn USB-C 20W mới thay thế bộ chuyển đổi USB-C 18W m&agrave; Apple từng b&aacute;n với gi&aacute; 29 USD.</p>', NULL, NULL, 0, '2021-04-24 05:03:35', '2021-04-26 09:15:40'),
(72, 'Chuột Bluetooth Apple Magic Mouse 2 – Chính Hãng', 'chuot-bluetooth-apple-magic-mouse-2-chinh-hang', 'uploads/product/1619265878_Apple-Magic-Mouse-2-Space-Gray.png', 10, 2590000, 2590000, 1, 1, 1, 0, 3, NULL, NULL, NULL, NULL, 22, 7, 'Thông tin sản phẩm:Chuột Bluetooth Apple Magic Mouse 2 là sản phẩm có thiết kế sang trọng, lịch lãm khi sử dụng với các thiết bị Macbook giúp tối ưu hết sức mạnh của việc chạm, vuốt, cuộn trang đều đem lại cảm giác vô cùng mượt mà.', '<h3>Kiểu d&aacute;ng thanh lịch &amp; sang trọng</h3>\r\n\r\n<p>Kiểu d&aacute;ng thiết kế của Magic Mouse 2 mang đậm phong c&aacute;ch của Apple khi ng&ocirc;n ngữ thiết kế đơn giản nhưng vẫn tạo n&ecirc;n n&eacute;t sang trọng, liền mạch, k&iacute;ch cỡ nhỏ gọn vừa tay v&agrave; logo quả t&aacute;o nhận diện thương hiệu ph&iacute;a tr&ecirc;n</p>', NULL, NULL, 0, '2021-04-24 05:04:38', '2021-04-24 05:04:38'),
(73, 'Tai nghe Huawei Freebuds Pro Chính Hãng', 'tai-nghe-huawei-freebuds-pro-chinh-hang', 'uploads/product/1619265955_Tai-nghe-khong-day-Huawei-Freebuds-Pro-xam-1-225x300.png', 10, 4490000, 3490000, 2, 1, 1, 0, 20, NULL, NULL, NULL, NULL, 22, 6, 'Thông tin sản phẩm:\r\nHuawei Freebuds Pro là tai nghe TWS thông minh mới sử dụng công nghệ ANC, giúp loại bỏ tạp âm môi trường bằng cách xác định các sóng âm thanh không mong muốn và tạo ra các tín hiệu đảo ngược chính xác để trung hòa âm thanh gốc, do đó giảm tiếng ồn xung quanh đến mức tối đa có thể.', NULL, NULL, NULL, 0, '2021-04-24 05:05:55', '2021-04-26 09:15:17'),
(74, 'Cổng chuyển/Hub Macbook JCPAL Linx USB-C to HDMI Ft Charging 4 in 1', 'cong-chuyenhub-macbook-jcpal-linx-usb-c-to-hdmi-ft-charging-4-in-1', 'uploads/product/1619266021_Cong-chuyenHub-JCPAL-Linx-USB-C-to-HDMI-Ft-Charging-4-in-1-300x300.png', 10, 1199000, 1099000, 4, 1, 1, 0, 64, NULL, NULL, NULL, NULL, 22, 5, 'Thông tin sản phẩm:CỔNG NỐI JCPAL LINX USB-C Cổng nối USB-C sang HDMI là một công cụ tuyệt vời để kết nối cổng HDMI và 2 cổng USB với thiết bị Macbook, iPad hoặc Chromebook của bạn. Hỗ trợ độ phân giải lên tới 4K Ultra HD - Cổng ra HDMI trình xuất video sắc nét chuẩn 4K Ultra HD với tần số 30Hz. - Hai cổng USB 3.0 hỗ trợ truyền tải dữ liệu 5Gbps. - Cổng USB chuẩn PD với công suất sạc 60W. - Vỏ bằng chất liệu aluminum bóng láng và bền bỉ.', NULL, NULL, NULL, 0, '2021-04-24 05:07:01', '2021-04-26 09:15:03'),
(75, 'Laptop Asus VivoBook X515MA N4020/4GB/256GB/Win10 (BR111T)', 'laptop-asus-vivobook-x515ma-n40204gb256gbwin10-br111t', 'uploads/product/1619266215_t-600x400.jpg', 10, 7390000, 7390000, 0, 1, 1, 0, 16, NULL, NULL, NULL, NULL, 28, 12, 'Đặc điểm nổi bật của Asus VivoBook X515MA N4020/4GB/256GB/Win10 (BR111T)\r\n\r\nBộ sản phẩm chuẩn: Sách hướng dẫn, Thùng máy, Sạc Laptop Asus\r\n\r\nLaptop Asus VivoBook X515MA (BR111T) là một mẫu laptop học tập - văn phòng có thiết kế gọn nhẹ, hiệu năng ổn định phù hợp với các bạn thường xuyên sử dụng các ứng dụng văn phòng nhẹ nhàng.', '<h3>Cấu h&igrave;nh ổn định, xử l&yacute; tốt c&aacute;c ứng dụng văn ph&ograve;ng</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop-asus-vivobook\" target=\"_blank\">Laptop Asus VivoBook</a>&nbsp;được trang bị con chip&nbsp;<a href=\"https://www.thegioididong.com/laptop-celeron-pentium\" target=\"_blank\">Intel Celeron&nbsp;</a>c&oacute; hiệu năng ổn định xử l&yacute; c&aacute;c t&aacute;c vụ căn bản, với<strong>&nbsp;2 nh&acirc;n 2 luồng&nbsp;</strong>chip đạt xung nhịp&nbsp;<strong>1.10 GHz</strong>&nbsp;bạn lướt web, xem phim, nghe nhạc,... V&agrave; đạt xung nhịp tối đa l&agrave;<strong>&nbsp;2.8 GHz</strong>&nbsp;nhờ&nbsp;<strong>Turbo Boost&nbsp;</strong>để xử l&yacute; một số c&ocirc;ng việc văn ph&ograve;ng như: Word, Excel, Powerpoint,...</p>\r\n\r\n<p>Đi c&ugrave;ng với chip l&agrave; card đồ họa t&iacute;ch hợp&nbsp;<strong>Intel UHD Graphics 600</strong>&nbsp;hỗ trợ việc xử l&yacute; h&igrave;nh ảnh tốt hơn v&agrave; tiết kiệm pin hiệu quả nhờ c&oacute; mức ti&ecirc;u thụ điện năng thấp n&ecirc;n th&iacute;ch hợp cho c&aacute;c t&aacute;c vụ văn ph&ograve;ng cơ bản.</p>\r\n\r\n<p>M&aacute;y c&oacute;&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=4-gb\" target=\"_blank\"><strong>RAM 4 GB</strong></a>&nbsp;cho khả năng xử l&yacute; đa nhiệm ổn định, bạn c&oacute; thể mở c&ugrave;ng l&uacute;c nhiều ứng dụng để phục vụ cho c&ocirc;ng việc tốt hơn m&agrave; kh&ocirc;ng lo m&aacute;y bị đơ hay giật. Nếu 4 GB c&oacute; thể l&agrave; qu&aacute; &iacute;t với bạn th&igrave; m&aacute;y c&ograve;n hỗ trợ n&acirc;ng cấp RAM l&ecirc;n&nbsp;<strong>16 GB</strong>&nbsp;gi&uacute;p bạn dễ d&agrave;ng n&acirc;ng cấp cho ph&ugrave; hợp với nhu cầu sử dụng.</p>', NULL, NULL, 0, '2021-04-24 05:10:15', '2021-04-26 09:10:20'),
(76, 'Laptop Acer Aspire 5 A514 54 33WY i3 1115G4/4GB/256GB/Win10 (NX.A23SV.00J)', 'laptop-acer-aspire-5-a514-54-33wy-i3-1115g44gb256gbwin10-nxa23sv00j', 'uploads/product/1619266360_acer-aspire-5-a514-54-33wy-i3-nxa23sv00j-021220-101200-400x400.jpg', 10, 13590000, 13590000, 2, 1, 1, 0, 70, NULL, NULL, NULL, NULL, 28, 8, 'Laptop Acer Aspire 5 A514 54 33WY i3 (NX.A23SV.00J) là chiếc laptop mỏng nhẹ đáp ứng hoàn hảo nhu cầu học tập và công việc văn phòng của bạn, sở hữu vi xử lí Intel thế hệ 11, ổ cứng SSD 256 GB cực nhanh và thiết kế sang trọng, di động tối ưu.', '<h3>Thiết kế si&ecirc;u mỏng nhẹ cao cấp</h3>\r\n\r\n<p>Thi&ecirc;́t k&ecirc;́ t&ocirc;́i giản của&nbsp;<a href=\"https://www.thegioididong.com/laptop-acer-aspire\" target=\"_blank\">laptop Acer Aspire 5</a>&nbsp;với độ mỏng chỉ&nbsp;<strong>17.95 mm</strong>, trọng lượng&nbsp;<strong>1.46 kg</strong>&nbsp;được ho&agrave;n thiện tỉ mỉ với vỏ nhựa v&agrave; nắp lưng kim loại đem đến vẻ đẳng cấp, sang trọng cho Acer Aspire 5. Đ&acirc;y l&agrave; một người bạn đồng h&agrave;nh kh&aacute; l&yacute; tưởng cho c&aacute;c bạn học sinh, sinh vi&ecirc;n năng động khi c&oacute; thể cất gọn chiếc laptop v&agrave;o balo v&agrave; đi khắp nơi.</p>', NULL, NULL, 0, '2021-04-24 05:12:40', '2021-04-26 09:10:10');
INSERT INTO `products` (`id`, `name`, `slug`, `image`, `stock`, `price`, `sale`, `position`, `is_active`, `is_hot`, `views`, `category_id`, `url`, `sku`, `color`, `memory`, `brand_id`, `vendor_id`, `summary`, `description`, `meta_title`, `meta_description`, `user_id`, `created_at`, `updated_at`) VALUES
(77, 'MacBook Air 13″ – M1 256GB 2020 – Chính Hãng Apple Việt Nam', 'macbook-air-13-m1-256gb-2020-chinh-hang-apple-viet-nam', 'uploads/product/1619266500_Macbook_Air_2020_M1-thumbnail-225x300.png', 10, 27990000, 24570000, 2, 1, 1, 0, 73, NULL, NULL, NULL, NULL, 22, 6, 'Thông tin sản phẩm:Apple MacBook Air 13\" - M1 256GB 2020 ấn tượng với chip M1 mới được thiết kế dành riêng cho MacBook, tăng hiệu suất CPU nhanh hơn tới 3.5 lần, tuổi thọ pin dài nhất từ ​​trước đến nay trên Macbook Air, lên tới 16h sử dụng liên tục. Sản phẩm mới nguyên seal, đầy đủ phụ kiện, kích hoạt bảo hành đủ 12 tháng chính hãng.', '<h2>Đ&Aacute;NH GI&Aacute; CHI TIẾT</h2>\r\n\r\n<p><a href=\"https://didongthongminh.vn/may-tinh-bang\" target=\"_blank\">Apple</a>&nbsp;vừa cho ra mắt phi&ecirc;n bản MacBook Air 13&Prime; M1 256GB 2020 mới cực k&igrave; ấn tượng với con chip M1 mới được thiết kế d&agrave;nh ri&ecirc;ng cho MacBook gi&uacute;p tăng hiệu suất xử l&yacute; c&aacute;c t&aacute;c vụ nhanh hơn tới 3.5 lần, đồng thời cải thiện tuổi thọ pin d&agrave;i nhất từ ​​trước đến nay tr&ecirc;n MacBook Air l&ecirc;n đến hơn 10h sử dụng.</p>\r\n\r\n<h3>Thiết kế kh&ocirc;ng thay đổi</h3>\r\n\r\n<p>Về mặt thiết kế th&igrave;&nbsp;<a href=\"https://www.facebook.com/didongthongminh.vn\" target=\"_blank\">Macbook Air 2020</a>&nbsp;chạy chip M1 n&agrave;y sẽ gần như kh&ocirc;ng c&oacute; g&igrave; kh&aacute;c biệt so với c&aacute;c đời Macbook Air 2 năm trở về trước. Chất liệu gia c&ocirc;ng vẫn sử dụng vỏ nh&ocirc;m kim loại nguy&ecirc;n khối với độ mỏng tốt v&agrave; mặt tr&ecirc;n logo t&aacute;o khuyết vẫn được l&agrave;m b&oacute;ng đem tới sự sang trọng v&agrave; nổi bật.</p>', NULL, NULL, 0, '2021-04-24 05:15:00', '2021-04-24 05:15:00'),
(78, 'MacBook Pro 13″ – M1 256GB 2020 – Chính Hãng Apple Việt Nam', 'macbook-pro-13-m1-256gb-2020-chinh-hang-apple-viet-nam', 'uploads/product/1619266576_Macbook-Pro-M1-Silver-225x300.png', 0, 35990000, 34990000, 0, 1, 1, 0, 73, NULL, NULL, NULL, NULL, 22, 5, 'Thông tin sản phẩm:Apple MacBook Pro 13\" - M1 256GB 2020 ra mắt cực kì ấn tượng với con chip M1 mới được thiết kế dành riêng cho MacBook tăng hiệu suất CPU nhanh hơn tới 3.5 lần, tuổi thọ pin dài nhất từ ​​trước đến nay trên Macbook Pro, lên tới 18h sử dụng liên tục. Máy mới nguyên seal, đầy đủ phụ kiện, kích hoạt bảo hành đủ 12 tháng chính hãng.', '<h2>Đ&Aacute;NH GI&Aacute; CHI TIẾT</h2>\r\n\r\n<p><a href=\"https://didongthongminh.vn/may-tinh-bang\" target=\"_blank\">Apple</a>&nbsp;vừa cho ra mắt phi&ecirc;n bản MacBook Pro 13&Prime; M1 256GB 2020 mới cực k&igrave; ấn tượng với con chip M1 mới được thiết kế d&agrave;nh ri&ecirc;ng cho MacBook gi&uacute;p tăng hiệu suất xử l&yacute; c&aacute;c t&aacute;c vụ nhanh hơn tới 3.5 lần, đồng thời cải thiện tuổi thọ pin d&agrave;i nhất từ ​​trước đến nay tr&ecirc;n l&ecirc;n đến 20h sử dụng li&ecirc;n tục.</p>\r\n\r\n<h3>Thiết kế vẫn tuyệt vời</h3>\r\n\r\n<p>Về mặt thiết kế th&igrave;&nbsp;<a href=\"https://www.facebook.com/didongthongminh.vn\" target=\"_blank\">Macbook Pro 2020</a>&nbsp;chạy chip M1 n&agrave;y sẽ gần như kh&ocirc;ng c&oacute; g&igrave; kh&aacute;c biệt so với c&aacute;c đời Macbook Pro từ năm 2016 đến nay, về k&iacute;ch thước, c&acirc;n nặng n&oacute; vẫn tương đồng. Chất liệu gia c&ocirc;ng vẫn sử dụng vỏ nh&ocirc;m kim loại nguy&ecirc;n khối với độ mỏng tốt v&agrave; mặt tr&ecirc;n logo t&aacute;o khuyết vẫn được l&agrave;m b&oacute;ng đem tới sự sang trọng v&agrave; nổi bật. Thay đổi chỉ đến từ phần cứng ph&iacute;a b&ecirc;n trong.</p>\r\n\r\n<p><img alt=\"m1_apple_macbook_pro_13in_10\" src=\"https://didongthongminh.vn/upload_images/2021/01/m1_apple_macbook_pro_13in_10.jpg\" style=\"height:675px; width:1199px\" /></p>\r\n\r\n<p>MacBook Pro M1 256GB 2020 thiết kế sang trọng v&agrave; hiện đại, m&agrave;n h&igrave;nh sắc n&eacute;t đem lại trải nghiệm sử dụng tuyệt vời</p>\r\n\r\n<p><img alt=\"m1_apple_macbook_pro_13in_4\" src=\"https://didongthongminh.vn/upload_images/2021/01/m1_apple_macbook_pro_13in_4.jpg\" style=\"height:675px; width:1200px\" /></p>\r\n\r\n<p>C&aacute;c cạnh viền vẫn được ho&agrave;n thiện chi tiết v&agrave; tinh xảo, c&aacute;c g&oacute;c bo cong mềm mại đem lại cảm gi&aacute;c dễ chịu, kh&ocirc;ng bị cấn sắc khi sử dụng, độ mỏng th&igrave; vẫn tương tự như c&aacute;c phi&ecirc;n bản Macbook Pro kh&aacute;c.</p>\r\n\r\n<p><img alt=\"m1_apple_macbook_pro_13in_9\" src=\"https://didongthongminh.vn/upload_images/2021/01/m1_apple_macbook_pro_13in_9.jpg\" style=\"height:675px; width:1199px\" /></p>\r\n\r\n<p>Cổng giao tiếp của m&aacute;y bao gồm, cạnh tr&aacute;i vẫn được trang bị 2 cổng giao tiếp Thunderbolt 3 ki&ecirc;m cổng cắm sạc v&agrave; cạnh tr&aacute;i l&agrave; cổng tai nghe 3,5mm vẫn được Apple giữ lại.</p>\r\n\r\n<p>Phần mở m&aacute;y l&ecirc;n được ho&agrave;n tiện kh&aacute; tinh xảo, kim loại nh&ocirc;m c&oacute; độ ho&agrave;n thiện cao, mặt tr&ecirc;n v&agrave; mặt dưới khớp với nhau rất đồng đều, c&oacute; khe để thuận tiện cho việc đặt ng&oacute;n tay mở m&aacute;y l&ecirc;n.</p>\r\n\r\n<p><img alt=\"m1_apple_macbook_pro_13in_1\" src=\"https://didongthongminh.vn/upload_images/2021/01/m1_apple_macbook_pro_13in_1.jpg\" style=\"height:675px; width:1199px\" /></p>\r\n\r\n<p>B&agrave;n ph&iacute;m Magic Keyboard thế hệ mới dạng cắt k&eacute;o (scissor machanism) đ&atilde; gi&uacute;p Apple phần n&agrave;o lấy lại niềm tin đ&atilde; mất từ người d&ugrave;ng với b&agrave;n ph&iacute;m c&aacute;nh bướm trong 3 năm trước đ&oacute; gặp đủ thứ lỗi như kẹt ph&iacute;m, double, đơ ph&iacute;m. Nay đ&atilde; c&oacute; b&agrave;n ph&iacute;m Magic Keyboard thế hệ mới, lần đầu n&oacute; được giới thiệu tr&ecirc;n chiếc MacBook Pro 16-inch 2019 v&agrave; sử dụng rất tốt đem lại được nhiều th&agrave;nh c&ocirc;ng, dĩ nhi&ecirc;n b&agrave;n ph&iacute;m Magic Keyboard cũng được sử dụng tr&ecirc;n MacBook Pro M1 n&agrave;y cũng tuyệt vời tương tự với nhiều ưu điểm vốn c&oacute; của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"bàn phím MACBOOK PRO M1 2020\" src=\"https://didongthongminh.vn/upload_images/2021/01/m1_apple_macbook_pro_13in_6.jpg\" style=\"height:675px; width:1199px\" /></p>\r\n\r\n<p>Ph&iacute;m ESC (Escape) trước kia được t&iacute;ch hợp trong dải Touch Bar kh&aacute; kh&oacute; bấm th&igrave; giờ đ&acirc;y đ&atilde; được thay đổi l&agrave; dạng l&agrave; ph&iacute;m vật l&yacute; chứ đ&aacute;p ứng được sự mong chờ của đa số người d&ugrave;ng.</p>\r\n\r\n<p>Macbook Pro M1 2020 vẫn được trang bị cảm biến v&acirc;n tay Touch ID ki&ecirc;m n&uacute;t nguồn, loa ngo&agrave;i kh&aacute; to v&agrave; chất lượng &acirc;m thanh đem lại rất tốt, trackpad lớn thoải m&aacute;i kh&ocirc;ng gian trải nghiệm sử dụng.</p>\r\n\r\n<h3>M&agrave;n h&igrave;nh Retina chất lượng cao</h3>\r\n\r\n<p>Macbook Pro M1 2020 sử dụng m&agrave;n h&igrave;nh chuẩn Retina 13.3 inch trứ danh, độ ph&acirc;n giải 2560 x 1600 pixels si&ecirc;u n&eacute;t. MacBook Pro c&ograve;n hỗ trợ c&ocirc;ng nghệ True Tone tự động điều chỉnh m&agrave;u sắc &aacute;nh s&aacute;ng m&agrave;n h&igrave;nh cho ph&ugrave; hợp với m&ocirc;i trường sử dụng v&agrave; dải m&agrave;u rộng P3 nhiều hơn tới 25% m&agrave;u sắc so với chuẩn sRGB th&ocirc;ng thường, gi&uacute;p cho m&agrave;u sắc hiển thị đều được thể hiện ch&acirc;n thực v&agrave; ch&iacute;nh x&aacute;c gần như tuyệt đối.</p>\r\n\r\n<p><img alt=\"Macbook-Pro-M1\" src=\"https://didongthongminh.vn/upload_images/2021/01/0047e83bc5ab60da0659ca3d658c8.png\" style=\"height:708px; width:1256px\" /></p>\r\n\r\n<p>Độ s&aacute;ng tương đối cao đạt 500 nits, cao hơn một ch&uacute;t so với Macbook Air l&agrave; 400 nits. cho n&ecirc;n d&ugrave; bạn l&agrave;m bất cứ c&ocirc;ng việc g&igrave; th&igrave; m&agrave;n h&igrave;nh Retina n&agrave;y cũng đem lại trải nghiệm tốt nhất.</p>\r\n\r\n<h3>Sức mạnh đ&atilde; vượt mức k&igrave; vọng của Macbook Pro 13&Prime; M1 2020</h3>\r\n\r\n<p>Mở hộp ra, khởi động m&aacute;y sử dụng, m&igrave;nh ho&agrave;n to&agrave;n ngạc nhi&ecirc;n khi mọi thứ đều rất mượt v&agrave; nhanh đến kinh ngạc, con chip M1 l&agrave; chip m&aacute;y t&iacute;nh c&aacute; nh&acirc;n đầu ti&ecirc;n Apple tr&ecirc;n quy tr&igrave;nh 5 nanomet. Hiện tại đ&acirc;y l&agrave; con chip mạnh nhất m&agrave; Apple từng l&agrave;m, thực hiện mở ứng dụng gần như kh&ocirc;ng c&oacute; độ trễ.</p>\r\n\r\n<p>GPU t&iacute;ch hợp nhanh nhất thế giới, chip M1 được built với 8 nh&acirc;n GPU, nhanh hơn 6 lần so với GPU t&iacute;ch hợp hiện tại. T&iacute;ch hợp 16 l&otilde;i Neural Engine, gi&uacute;p c&aacute;c c&ocirc;ng việc m&aacute;y học (machine learning) cũng nhanh hơn 15 lần so với card đồ hoạ Iris Plus tr&ecirc;n phi&ecirc;n bản trước.</p>\r\n\r\n<p><img alt=\"chip_apple_m1\" src=\"https://didongthongminh.vn/upload_images/2021/01/chip_apple_m1.jpg\" style=\"height:723px; width:1290px\" /></p>\r\n\r\n<p>Tiến h&agrave;nh kiểm tra hiệu năng của chiếc Macbook Pro 13&Prime; M1 cho khả năng vượt trội đến mức kinh ngạc. Điểm hiệu năng đơn nh&acirc;n đạt 1721, điểm đa nh&acirc;n đạt 7416. Thậm ch&iacute;, điểm đa nh&acirc;n c&ograve;n mạnh hơn cả Macbook Pro 16 inch với vi xử l&yacute; Core-i9 9980HK cực khủng, như vậy c&aacute;c bạn đ&atilde; đủ thấy sức mạnh gh&ecirc; gớm của chip Apple M1 được trang bị tr&ecirc;n Macbook Pro 13&Prime; 2020.</p>\r\n\r\n<p><img alt=\"Hiệu năng Macbook Pro M1 2020\" src=\"https://didongthongminh.vn/upload_images/2021/01/gif1.gif\" style=\"height:953px; width:1300px\" /></p>\r\n\r\n<p>Tiếp theo, thử nghiệm tốc độ ổ cứng của MacBook Pro M1 256GB 2020 với Macbook Pro 13&Prime; 2019 chạy chip Intel, x&eacute;t về mặt th&ocirc;ng số kỹ thuật cả 2 m&aacute;y sử dụng chung một loại ổ cứng 256G c&oacute; th&ocirc;ng số tương tự giống nhau nhưng điều bất ngờ lại chờ ch&uacute;ng ta ở ph&iacute;a trước, qua thử nghiệm th&igrave; m&aacute;y Mac Pro M1 cho tốc độ ổ cứng nhanh gần gấp đ&ocirc;i so với m&aacute;y Mac Pro chạy Intel.</p>\r\n\r\n<p><img alt=\"Macbook-Air-M1-2020-Disk-Test\" src=\"https://didongthongminh.vn/upload_images/2021/01/Macbook-Air-M1-2020-Disk-Test.jpg\" style=\"height:573px; width:1118px\" /></p>\r\n\r\n<h3><strong>Thời lượng pin tới 20 tiếng li&ecirc;n tục</strong></h3>\r\n\r\n<p>MacBook Proxưa nay lu&ocirc;n được đ&aacute;nh gi&aacute; cao về thời lượng Pin bền bỉ, đến nay Macbook Pro M1 2020 thời lượng Pin c&ograve;n y&ecirc;n t&acirc;m hơn thế. Chiếc Mac M1 n&agrave;y c&oacute; khả năng lướt web trong khoảng 16 giờ li&ecirc;n tục, xem video 4k full m&agrave;n h&igrave;nh 20 tiếng v&agrave; l&agrave;m việc đa t&aacute;c vụ hỗn hợp ko dưới 10 tiếng đồng hồ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://didongthongminh.vn/upload_images/2021/01/4k60-Full-Screen-Video-Playback.png\" style=\"height:945px; width:1536px\" /></p>\r\n\r\n<p>Thực sự con chip M1 đ&atilde; gi&uacute;p cải thiện đ&aacute;ng kể khả năng tiết kiệm pin, theo như biểu đồ tr&ecirc;n th&igrave; ngay cả chiếc Macbook Pro 16&Prime; c&oacute; dung lượng pin lớn nhiều, thời lượng sử dụng pin cũng chưa bằng 1 nửa so với MacBook Pro M1 256GB 2020. Sự cải thiện n&agrave;y của Apple thực sự đ&aacute;ng gi&aacute; đối với người d&ugrave;ng, sẽ c&oacute; rất &iacute;t l&yacute; do để ch&uacute;ng ta lựa chọn mua c&aacute;c phi&ecirc;n bản chạy Intel nữa đ&uacute;ng kh&ocirc;ng ? Giờ đ&acirc;y cứ M1 m&agrave; chiến th&ocirc;i.</p>\r\n\r\n<h2><strong>Địa chỉ mua Macbook Pro 13&Prime; M1 uy t&iacute;n</strong></h2>\r\n\r\n<p>Để mua&nbsp;Apple Macbook Pro 13&Prime; M1 256Gb ch&iacute;nh h&atilde;ng, kh&aacute;ch h&agrave;ng cần t&igrave;m đến c&aacute;c cơ sở ph&acirc;n phối uy t&iacute;n nhằm đảm bảo mua được sản phẩm chất lượng cao, mức gi&aacute; ưu đ&atilde;i.&nbsp;<a href=\"https://didongthongminh.vn/\"><em><strong>Di Động Th&ocirc;ng Minh</strong></em></a>&nbsp;hiện l&agrave; cơ sở ph&acirc;n phối sản phẩm c&ocirc;ng nghệ tin cậy h&agrave;ng đầu Việt Nam, do người d&ugrave;ng b&igrave;nh chọn, gồm cả Macbook Pro 13&Prime; M1 256Gb. Để đ&aacute;p ứng nhu cầu mua h&agrave;ng m&ugrave;a corona, Di Động Th&ocirc;ng Minh đẩy mạnh h&igrave;nh thức b&aacute;n h&agrave;ng online, ship h&agrave;ng tận nh&agrave;. Qu&yacute; kh&aacute;ch h&agrave;ng ho&agrave;n to&agrave;n an t&acirc;m về chất lượng, gi&aacute; cả sản phẩm, dịch vụ cũng như phong c&aacute;ch phục vụ. Chi tiết hệ thống showroom to&agrave;n quốc như sau:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, 0, '2021-04-24 05:16:16', '2021-04-27 07:10:53'),
(79, 'Mac Mini M1 – 256GB 2020 (MGNR3SA/A) – Chính Hãng Apple Việt Nam', 'mac-mini-m1-256gb-2020-mgnr3saa-chinh-hang-apple-viet-nam', 'uploads/product/1619266628_Mac-Mini-M1-2020-Grey-225x300.png', 10, 20990000, 20990000, 4, 1, 1, 0, 73, NULL, NULL, NULL, NULL, 22, 6, 'Thông tin sản phẩm:Mac Mini M1 - 256GB 2020 (MGNR3SA/A) ra mắt cực kì ấn tượng với con chip M1 mới được thiết kế dành riêng cho dòng Mac giúp tăng cường hiệu suất CPU nhanh hơn tới 3.5 lần, thời gian xử lý mọi tác vụ được giảm xuống đáng kể. Máy mới nguyên seal, đầy đủ phụ kiện, kích hoạt bảo hành đủ 12 tháng chính hãng.', '<h2>Đ&Aacute;NH GI&Aacute; CHI TIẾT</h2>\r\n\r\n<p>Năm 2020&nbsp;<a href=\"https://www.facebook.com/didongthongminh.vn\" target=\"_blank\">Apple</a>&nbsp;đ&atilde; đem tới cho người d&ugrave;ng một l&agrave;n gi&oacute; ho&agrave;n to&agrave;n mới khi tiến h&agrave;nh sản xuất v&agrave; trang bị cho những chiếc m&aacute;y t&iacute;nh thế hệ mới của m&igrave;nh con chip si&ecirc;u mạnh mẽ Apple Silicon M1. Mac Mini M1 256GB 2020 cũng kh&ocirc;ng nằm ngo&agrave;i cuộc chơi đ&oacute;, trong th&acirc;n h&igrave;nh nhỏ gọn, sức mạnh của n&oacute; đem lại l&agrave; kh&aacute; ngạc nhi&ecirc;n đấy.</p>\r\n\r\n<h3>Thiết kế nhỏ gọn &amp; tinh tế</h3>\r\n\r\n<p>Nh&igrave;n qua, dường như Mac Mini M1 kh&ocirc;ng c&oacute; bất k&igrave; thay đổi n&agrave;o về thiết kế b&ecirc;n ngo&agrave;i, từ mặt ph&iacute;a trước v&agrave; hai b&ecirc;n tr&ecirc;n c&ugrave;ng vẫn vậy, kh&ocirc;ng c&oacute; dấu hiệu n&agrave;o thực sự n&agrave;o cho thấy n&oacute; c&oacute; g&igrave; kh&aacute;c biệt.</p>', NULL, NULL, 0, '2021-04-24 05:17:08', '2021-04-24 05:17:08'),
(80, 'MacBook Pro 16 inch – M1X 2021', 'macbook-pro-16-inch-m1x-2021', 'uploads/product/1619266684_Macbook_Pro_14inch_2021_M1z-thumbnail-225x300-1.png', 10, 200000, 200000, 4, 1, 1, 0, 73, NULL, NULL, NULL, NULL, 22, 6, NULL, NULL, NULL, NULL, 0, '2021-04-24 05:18:04', '2021-04-24 05:18:04'),
(81, 'Mac Mini M1 – 512GB 2020 (MGNT3SA/A) – Chính Hãng Apple Việt Nam', 'mac-mini-m1-512gb-2020-mgnt3saa-chinh-hang-apple-viet-nam', 'uploads/product/1619266713_Mac-Mini-M1-2020-Silver.png', 10, 200000, 200000, 4, 1, 1, 0, 73, NULL, NULL, NULL, NULL, 22, 5, NULL, NULL, NULL, NULL, 0, '2021-04-24 05:18:33', '2021-04-24 05:18:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'MANAGER'),
(2, 'ADMIN'),
(3, 'GUEST'),
(5, 'ORTHERS');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_policy` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduce` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `company`, `address`, `image`, `phone`, `hotline`, `privacy_policy`, `tax`, `facebook`, `email`, `introduce`, `created_at`, `updated_at`, `website`) VALUES
(1, 'Công Ty TNHH HUY HOÀNG', 'Q.Đống Đa , Hà Nội', 'uploads/setting/1618829824_logo.png', '0353394888', '18001166', '1. Thu thập thông tin cá nhân:\r\n\r\n– Các thông tin thu thập thông qua website Didongthongminh.vn sẽ giúp chúng tôi:\r\n\r\n• Hỗ trợ khách hàng khi mua sản phẩm\r\n\r\n• Giải đáp thắc mắc khách hàng\r\n\r\n• Cung cấp cho bạn thông tin mới nhất trên Website của chúng tôi\r\n\r\n• Xem xét và nâng cấp nội dung và giao diện của Website\r\n\r\n• Thực hiện các bản khảo sát khách hàng\r\n\r\n• Thực hiện các hoạt động quảng bá liên quan đến các sản phẩm và dịch vụ của Di Động Thông Minh.\r\n\r\n– Để truy cập và sử dụng một số dịch vụ tại www.didongthongminh.vn, quý khách có thể sẽ được yêu cầu đăng ký với chúngtôi thông tin cá nhân (Email, Họ tên, Số ĐT liên lạc…). Mọi thông tin khai báo phải đảm bảo tính chính xác và hợp pháp.didongthongminh.vn không chịu mọi trách nhiệm liên quan đến pháp luật của thông tin khai báo.\r\n\r\n– Chúng tôi cũng có thể thu thập thông tin về số lần viếng thăm, bao gồm số trang quý khách xem, số links (liên kết) bạn clickvà những thông tin khác liên quan đến việc kết nối đến www.didongthongminh.vn Chúng tôi cũng thu thập các thông tin mà trình duyệt Web (Browser) quý khách sử dụng mỗi khi truy cập vào website www.didongthongminh.vn, bao gồm: địa chỉ IP, loại Browser, ngôn ngữ sử dụng, thời gian và những địa chỉ mà Browser truy xuất đến.\r\n\r\n2. Sử dụng thông tin cá nhân:\r\n\r\n– Didongthongminh.vn thu thập và sử dụng thông tin cá nhân quý khách với mục đích phù hợp và hoàn toàn tuân thủ nội dung của “Chính sách bảo mật” này.\r\n\r\n– Khi cần thiết, chúng tôi có thể sử dụng những thông tin này để liên hệ trực tiếp với bạn dưới các hình thức như: gửi thư ngỏ, đơn đặt hàng, thư cảm ơn, thông tin về kỹ thuật và bảo mật, quý khách có thể nhận được thư định kỳ cung cấp thông tin sản phẩm, dịch vụ mới, thông tin về các sự kiện sắp tới hoặc thông tin tuyển dụng nếu quý khách đăng kí nhận email thông báo.\r\n\r\n3. Chia sẻ thông tin cá nhân:\r\n\r\n– Ngoại trừ các trường hợp về Sử dụng thông tin cá nhân như đã nêu trong chính sách này, chúng tôi cam kết sẽ không tiết lộ thông tin cá nhân bạn ra ngoài.\r\n\r\n– Trong một số trường hợp, chúng tôi có thể thuê một đơn vị độc lập để tiến hành các dự án nghiên cứu thị trường và khi đó thông tin của bạn sẽ được cung cấp cho đơn vị này để tiến hành dự án. Bên thứ ba này sẽ bị ràng buộc bởi một thỏa thuận về bảo mật mà theo đó họ chỉ được phép sử dụng những thông tin được cung cấp cho mục đích hoàn thành dự án.\r\n\r\n– Chúng tôi có thể tiết lộ hoặc cung cấp thông tin cá nhân của bạn trong các trường hợp thật sự cần thiết như sau:\r\n\r\n(a) khi có yêu cầu của các cơ quan pháp luật\r\n\r\n(b) trong trường hợp mà chúng tôi tin rằng điều đó sẽ giúp chúng tôi bảo vệ quyền lợi chính đáng của mình trước pháp luật\r\n\r\n(c) tình huống khẩn cấp và cần thiết để bảo vệ quyền an toàn cá nhân của các thành viên Didongthongminh.vn khác.\r\n\r\n4. Truy xuất thông tin cá nhân:\r\n\r\n– Bất cứ thời điểm nào quý khách cũng có thể truy cập và chỉnh sửa những thông tin cá nhân của mình theo các liên kết (website’s links) thích hợp mà chúng tôi cung cấp.\r\n\r\n5. Bảo mật thông tin cá nhân:\r\n\r\n– Khi bạn gửi thông tin cá nhân của bạn cho chúng tôi, bạn đã đồng ý với các điều khoản mà chúng tôi đã nêu ở trên, didongthongminh.vn cam kết bảo mật thông tin cá nhân của quý khách bằng mọi cách thức có thể. Chúng tôi sẽ sử dụng nhiều công nghệ bảo mật thông tin khác nhau như: chuẩn quốc tế PCI, SSL,… nhằm bảo vệ thông tin này không bị truy lục, sử dụng hoặc tiết lộ ngoài ý muốn.\r\n\r\n– Tuy nhiên do hạn chế về mặt kỹ thuật, không một dữ liệu nào có thể được truyền trên đường truyền internet mà có thể được bảo mật 100%. Do vậy, chúng tôi không thể đưa ra một cam kết chắc chắn rằng thông tin quý khách cung cấp cho chúng tôi sẽ được bảo mật một cách tuyệt đối an toàn, và chúng tôi không thể chịu trách nhiệm trong trường hợp có sự truy cập trái phép thông tin cá nhân của quý khách như các trường hợp quý khách tự ý chia sẻ thông tin với người khác…. Nếu quý khách không đồng ý với các điều khoản như đã mô tả ở trên, Chúng tôi khuyên quý khách không nên gửi thông tin đến cho chúng tôi.\r\n\r\n– Vì vậy, Didongthongminh.vn cũng khuyến cáo quý khách nên bảo mật các thông tin liên quan đến mật khẩu truy xuất của quý khách và không nên chia sẻ với bất kỳ người nào khác.\r\n\r\n– Nếu sử dụng máy tính chung nhiều người, quý khách nên đăng xuất, hoặc thoát hết tất cả cửa sổ Website đang mở.\r\n\r\n6. Sử dụng “Cookie”:\r\n\r\n– Didongthongminh.vn dùng “Cookie” để giúp cá nhân hóa và nâng cao tối đa hiệu quả sử dụng thời gian trực tuyến của quý khách.\r\n\r\n– Một cookie là một file văn bản được đặt trên đĩa cứng của bạn bởi một máy chủ của trang web. Cookie không được dùng để chạy chương trình hay đưa virus vào máy tính của quý khách. Cookie được chỉ định vào máy tính của quý khách và chỉ có thể được đọc bởi một máy chủ trang web trên miền được đưa ra cookie cho quý khách.\r\n\r\n– Một trong những mục đích của Cookie là cung cấp những tiện ích để tiết kiệm thời gian của quý khách khi truy cập tại website Didongthongminh.vn hoặc viếng thăm website Didongthongminh.vn lần nữa mà không cần đăng ký lại thông tin sẵn có.\r\n\r\n– Quý khách có thể chấp nhận hoặc từ chối dùng cookie. Hầu hết những Browser tự động chấp nhận cookie, nhưng quý khách có thể thay đổi những cài đặt để từ chối tất cả những cookie nếu quý khách thích. Tuy nhiên, nếu quý khách chọn từ chối cookie, điều đó có thể gây cản trở và ảnh hưởng không tốt đến một số dịch vụ và tính năng phụ thuộc vào cookie tại website www.didongthongminh.vn\r\n\r\n 7. Quy định về “Spam”:\r\n\r\n– Didongthongminh.vn thực sự quan ngại đến vấn nạn Spam (thư rác), các Email giả mạo danh tín chúng tôi gởi đi. Do đó, Didongthongminh.vn khẳng định chỉ gởi Email đến quý khách khi và chỉ khi quý khách có đăng ký hoặc sử dụng dịch vụ từ hệ thống của chúng tôi.\r\n\r\n– Didongthongminh.vn cam kết không bán, thuê lại hoặc cho thuê email của quý khách từ bên thứ ba. Nếu quý khách vô tình nhận được Email không theo yêu cầu từ hệ thống chúng tôi do một nguyên nhân ngoài ý muốn, xin vui lòng nhấn vào link từ chối nhận Email này kèm theo, hoặc thông báo trực tiếp đến ban quản trị Website.\r\n\r\n8. Thay đổi về chính sách:\r\n\r\n– Chúng tôi hoàn toàn có thể thay đổi nội dung trong trang này mà không cần phải thông báo trước, để phù hợp với các nhu cầu của Didongthongminh.vn cũng như nhu cầu và sự phản hồi từ khách hàng nếu có. Khi cập nhật nội dung chính sách này, chúng tôi sẽ chỉnh sửa lại thời gian “Cập nhật lần cuối” bên dưới.\r\n\r\n– Nội dung “Chính sách bảo mật” này chỉ áp dụng tại www.Didongthongminh.vn, không bao gồm hoặc liên quan đến các bên thứ ba đặt quảng cáo hay có links tại www.Didongthongminh.vn. Chúng tôi khuyến khích bạn đọc kỹ chính sách An toàn và Bảo mật của các trang web của bên thứ ba trước khi cung cấp thông tin cá nhân cho các trang web đó. Chúng tôi không chịu trách nhiệm dưới bất kỳ hình thức nào về nội dung và tính pháp lý của trang web thuộc bên thứ ba.\r\n\r\n– Vì vậy, bạn đã đồng ý rằng, khi bạn sử dụng website của chúng tôi sau khi chỉnh sửa nghĩa là bạn đã thừa nhận, đồng ý tuân thủ cũng như tin tưởng vào sự chỉnh sửa này. Do đó, chúng tôi đề nghị bạn nên xem trước nội dung trang này trước khi truy cập các nội dung khác trên website cũng như bạn nên đọc và t ham khảo kỹ nội dung “Chính sách bảo mật” của từng website mà bạn đang truy cập.\r\n\r\n9. Thông tin liên hệ:\r\n\r\n– Chúng tôi luôn hoan nghênh các ý kiến đóng góp, liên hệ và phản hồi thông tin từ bạn về “Chính sách bảo mật” này. Nếu bạncó những thắc mắc liên quan xin vui lòng liên hệ theo địa chỉ Email: didongthongminh@gmail.com hoặc hotline: 04.62757392', '000010', 'https://www.facebook.com/didongthongminh.vn/', 'admin@gmail.com', 'Phasellus egestas nisi nisi, lobortis ultricies risus semper nec. Vestibulum pharetra ac ante ut pellentesque. Curabitur fringilla dolor quis lorem accumsan, vitae molestie urna dapibus. Pellentesque porta est ac neque bibendum viverra. Vivamus lobortis magna ut interdum laoreet. Donec gravida lorem elit, quis condimentum ex semper sit amet. Fusce eget ligula magna. Aliquam aliquam imperdiet sodales. Ut fringilla turpis in vehicula vehicula. Pellentesque congue ac orci ut gravida. Aliquam erat volutpat. Donec iaculis lectus a arcu facilisis, eu sodales lectus sagittis. Etiam pellentesque, magna vel dictum rutrum, neque justo eleifend elit, vel tincidunt erat arcu ut sem. Sed rutrum, turpis ut commodo efficitur, quam velit convallis ipsum, et maximus enim ligula ac ligula. Vivamus tristique vulputate ultricies. Sed vitae ultrices orci.', NULL, '2021-04-19 12:10:10', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `avatar`, `is_active`) VALUES
(26, 'nguyễn huy1', 'nguyenvanhuy19982pt@gmail.com', '$2y$10$gOKiaYm2BV2Y1oFtPxUWBesSvU5ByxTEXkswB3v4q6S8rQW3lW6uu', NULL, '2021-04-10 07:23:19', '2021-04-10 07:23:19', 3, 'upload/user/avatar04.png', 0),
(27, 'nguyễn huy', 'admin@gmail.com', '$2y$10$VSCTvzmyTGww3i5ykaB0NOfqADw2qyxeqiTLtYU8JzpSgQjKRK.3G', 'mhCrWyAQ3xh8u3q821H6yFgQl3ijPpnRqvqFGdJ7Cyo71MNETKBZvzjYQ5BU', '2021-04-10 07:28:57', '2021-04-12 05:59:59', 1, 'uploads/user/user2-160x160.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `slug`, `email`, `phone`, `image`, `website`, `address`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(5, 'Di động Việt', 'di-dong-viet', 'lienhe@didongviet.vn', '1800 6018', 'uploads/vendor/1618549315_1584935377_logo-ddv-full-03.png', 'https://didongviet.vn/', 'Việt Nam', 2, 1, '2020-03-22 20:49:37', '2021-04-15 22:01:55'),
(6, 'Thế Giới Di Động', 'the-gioi-di-dong', 'cskh@thegioididong.com', '1800 1060', 'uploads/vendor/1618549284_1584935523_Logo-Thegioididong-945x709.jpg', 'https://www.thegioididong.com/', 'Việt Nam', 3, 1, '2020-03-22 20:52:03', '2021-04-15 22:01:24'),
(7, 'Di Động Thông Minh', 'di-dong-thong-minh', NULL, '0945.722.268', 'uploads/vendor/1618549450_logo-fix.png', 'https://didongthongminh.vn/', '119 Thái Thịnh, Thịnh Quang, Đống Đa, Hà Nội', 4, 1, '2020-03-22 20:54:05', '2021-04-15 22:04:10'),
(8, 'FPT Shop', 'fpt-shop', 'fptshop@fpt.com.vn', '1800 6601', 'uploads/vendor/1618549326_1584935728_637133160350737542_201407171129187887_1378267132_fptshop-ver1-0-logo-color-bg-black.jpg', 'https://fptshop.com.vn/', 'Việt Nam', 5, 1, '2020-03-22 20:55:28', '2021-04-15 22:02:06'),
(12, 'Samsung', 'samsung', 'admin@gmail.com', '0986468888', 'uploads/vendor/1618549358_Samsung42-b_25.jpg', 'samsung.com', 'Hàn Quốc', 0, 1, '2020-07-20 07:13:15', '2021-04-15 22:02:38');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `banners_slug_unique` (`slug`) USING BTREE;

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `brands_slug_unique` (`slug`) USING BTREE;

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `categories_slug_unique` (`slug`) USING BTREE;

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `products_slug_index` (`slug`) USING BTREE,
  ADD KEY `name` (`name`),
  ADD KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Chỉ mục cho bảng `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `vendors_slug_unique` (`slug`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `member`
--
ALTER TABLE `member`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
