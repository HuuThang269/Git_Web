-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2021 at 10:35 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_thethao`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `tendanhmuc` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`) VALUES
(1, 'Adidas'),
(2, 'Nike'),
(3, 'Puma'),
(22, 'Balenciaga'),
(25, 'Gucci'),
(26, 'Jordan'),
(33, 'Demo');

-- --------------------------------------------------------

--
-- Table structure for table `diachi`
--

CREATE TABLE `diachi` (
  `id` int(11) NOT NULL,
  `nguoidung_id` int(11) NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `macdinh` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diachi`
--

INSERT INTO `diachi` (`id`, `nguoidung_id`, `diachi`, `macdinh`) VALUES
(111, 130, '<p>Vĩnh Ph&uacute;, Giang Th&agrave;nh, Ki&ecirc;n Giang</p>\r\n', 1),
(112, 129, '<p>Long Xuy&ecirc;n</p>\r\n', 1),
(113, 1, '<p>Vĩnh Ph&uacute;, Giang Th&agrave;nh, Ki&ecirc;n Giang</p>\r\n', 1),
(114, 129, '<p>Vĩnh Ph&uacute;, Giang Th&agrave;nh, Ki&ecirc;n Giang</p>\r\n', 1),
(115, 129, '<p>Long Xuy&ecirc;n</p>\r\n', 1),
(116, 129, '<p>Tịnh Bi&ecirc;n</p>\r\n', 1),
(117, 129, '<p>Demo</p>\r\n', 1),
(118, 129, '<p>Tịnh Bi&ecirc;n</p>\r\n', 1),
(119, 129, '<p>Giang Th&agrave;nh</p>\r\n', 1),
(120, 149, '<p>Vĩnh Ph&uacute;, Giang Th&agrave;nh, Ki&ecirc;n Giang</p>\r\n', 1),
(121, 149, '<p>Ki&ecirc;n Giang</p>\r\n', 1),
(122, 149, '<p>Tịnh Bi&ecirc;n</p>\r\n', 1),
(123, 149, '<p>An Giang</p>\r\n', 1),
(124, 149, '<p>Vĩnh Ph&uacute;, Giang Th&agrave;nh, Ki&ecirc;n Giang</p>\r\n', 1),
(125, 149, '<p>Long Xuy&ecirc;n</p>\r\n', 1),
(126, 149, '<p>Giang Th&agrave;nh</p>\r\n', 1),
(127, 1, '<p>Vĩnh Ph&uacute;, Giang Th&agrave;nh, Ki&ecirc;n Giang</p>\r\n', 1),
(128, 1, '<p>Long Xuy&ecirc;n</p>\r\n', 1),
(129, 129, '<p>Tịnh BI&ecirc;n, An Giang</p>\r\n', 1),
(130, 130, '<p>Việt Nam</p>\r\n', 1),
(131, 130, '<p>Mẹt Lung, Vĩnh Ph&uacute;, Giang Th&agrave;n, Ki&ecirc;n Giang</p>\r\n', 1),
(132, 1, '<p>Demo</p>\r\n', 1),
(133, 1, '<p>Ki&ecirc;n Giang</p>\r\n', 1),
(134, 129, '<p>Tịnh Bi&ecirc;n</p>\r\n', 1),
(135, 130, '<p>Nh&agrave; Em</p>\r\n', 1),
(136, 150, '<p>Long Xuy&ecirc;n</p>\r\n', 1),
(137, 150, '<p>Mỹ Xuy&ecirc;n, Long Xuy&ecirc;n, An Giang</p>\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `nguoidung_id` int(11) NOT NULL,
  `diachi_id` int(11) DEFAULT NULL,
  `ngay` datetime NOT NULL DEFAULT current_timestamp(),
  `tongtien` float NOT NULL DEFAULT 0,
  `ghichu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `nguoidung_id`, `diachi_id`, `ngay`, `tongtien`, `ghichu`) VALUES
(135, 150, 137, '2021-12-21 10:24:15', 2050000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `donhangct`
--

CREATE TABLE `donhangct` (
  `id` int(11) NOT NULL,
  `donhang_id` int(11) NOT NULL,
  `mathangsize_id` int(11) NOT NULL,
  `dongia` float NOT NULL DEFAULT 0,
  `soluong` int(11) NOT NULL DEFAULT 1,
  `thanhtien` float NOT NULL DEFAULT 0,
  `tinhtrang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donhangct`
--

INSERT INTO `donhangct` (`id`, `donhang_id`, `mathangsize_id`, `dongia`, `soluong`, `thanhtien`, `tinhtrang`) VALUES
(120, 135, 74, 300000, 1, 300000, NULL),
(121, 135, 30, 350000, 5, 1750000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mathang`
--

CREATE TABLE `mathang` (
  `id` int(11) NOT NULL,
  `tenmathang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `giagoc` float NOT NULL DEFAULT 0,
  `giaban` float NOT NULL DEFAULT 0,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `danhmuc_id` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `luotmua` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mathang`
--

INSERT INTO `mathang` (`id`, `tenmathang`, `mota`, `giagoc`, `giaban`, `hinhanh`, `danhmuc_id`, `luotxem`, `luotmua`) VALUES
(1, 'Áo thể thao Adidas trắng sọc đen co giản', '<p>- Chất liệu cao cấp co giản tốt</p>\n\n<p>- Th&iacute;ch hợp cho thể thao v&agrave; đi du lịch</p>\n\n<p>-&nbsp; Kiểu d&aacute;ng trẻ trung, năng động</p>\n', 0, 100000, 'images/a1.jpg', 1, 131, 0),
(2, 'Quần thể thao 3 sọc Adidas đen sọc trắng', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 150000, 'images/a2.jpg', 1, 26, 0),
(3, 'Giày thể thao 3 sọc Adidas năng động ', '            - Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>                ', 0, 350000, 'images/a3.jpg', 1, 57, 0),
(4, 'Dép Adidas đúc cao su nguyên khối', '- Chất liệu cao cấp co giản tốt <br/>\n- Thích hợp cho thể thao và đi du lịch <br/>\n- Kiểu dáng trẻ trung, năng động <br/>        ', 0, 250000, 'images/a4.jpg', 1, 12, 0),
(5, 'Áo thun Nike cao cấp nhập khẩu USA', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 200000, 'images/n1.jpg', 2, 13, 0),
(6, 'Quần thể thao Nike siêu co giản', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 300000, 'images/n2.jpg', 2, 19, 0),
(7, 'Giày thể thao Nike AF1 trắng đen có logo Nike', '            - Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>        ', 0, 350000, 'images/n3.jpg', 2, 112, 0),
(8, 'Dép Nike đúc cao su nguyên khối', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 200000, 'images/n4.jpg', 2, 9, 0),
(9, 'Áo thun Puma cao cấp trắng đen siêu thấm hút', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>        ', 0, 150000, 'images/p1.jpg', 3, 8, 0),
(10, 'Quần thể thao Puma Đen chất liệu cotton', '                                                                                                                        - Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>                                                                                ', 0, 300000, 'images/p2.jpg', 3, 3, 0),
(11, 'Giày thể thao Puma trắng đen siêu nhẹ', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 300000, 'images/p3.jpg', 3, 6, 0),
(12, 'Dép Puma đúc cao su nguyên khối', '<p>- Chất liệu cao cấp co giản tốt</p>\r\n\r\n<p>- Th&iacute;ch hợp cho thể thao v&agrave; đi du lịch</p>\r\n\r\n<p>-&nbsp; Kiểu d&aacute;ng trẻ trung, năng động</p>\r\n', 0, 200000, 'images/p4.jpg', 3, 10, 0),
(13, 'Giày thể thao Adidas thấm hút tốt', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 200000, 'images/a5.jpg', 1, 18, 0),
(14, 'Áo thể thao Adidas siêu thoáng thấm hút tốt', '<p>- Chất liệu cao cấp co giản tốt</p>\r\n\r\n<p>- Th&iacute;ch hợp cho thể thao v&agrave; đi du lịch</p>\r\n\r\n<p>- Kiểu d&aacute;ng trẻ trung, năng động</p>\r\n', 0, 250000, 'images/a6.jpg', 1, 45, 0),
(15, 'Giày thể thao Nike trắng đen đàn hồi tốt', '- Chất liệu cao cấp co giản tốt <br/>\n- Thích hợp cho thể thao và đi du lịch <br/>\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 300000, 'images/n5.jpg', 2, 23, 0),
(16, 'Áo thể thao Nike vải cotton siêu thấm tốt', '            - Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>        ', 0, 300000, 'images/n6.jpg', 2, 27, 0),
(191, 'Aó thể thao 2022', '<p>- Demo</p>\r\n', 100000, 100000, 'images/a1.jpg', 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mathang_size`
--

CREATE TABLE `mathang_size` (
  `id` int(11) NOT NULL,
  `mathang_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `soluongton` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mathang_size`
--

INSERT INTO `mathang_size` (`id`, `mathang_id`, `size_id`, `soluongton`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 41),
(3, 1, 3, 46),
(4, 1, 4, 46),
(5, 2, 1, 10),
(6, 2, 2, 11),
(7, 2, 3, 11),
(8, 2, 4, 21),
(9, 3, 7, 69),
(10, 3, 6, 31),
(11, 3, 7, 11),
(12, 3, 8, 11),
(13, 3, 9, 31),
(14, 3, 10, 6),
(15, 4, 5, 11),
(16, 4, 6, 11),
(17, 4, 7, 11),
(18, 4, 8, 11),
(19, 4, 9, 11),
(20, 4, 10, 11),
(21, 5, 1, 11),
(22, 5, 2, 11),
(23, 5, 3, 11),
(24, 5, 4, 11),
(25, 6, 1, 11),
(26, 6, 2, 11),
(27, 6, 3, 11),
(28, 6, 4, 11),
(29, 7, 7, 8),
(30, 7, 6, 11),
(31, 7, 7, 11),
(32, 7, 8, 11),
(33, 7, 9, 11),
(34, 7, 10, 11),
(35, 8, 5, 10),
(36, 8, 6, 11),
(37, 8, 7, 11),
(38, 8, 8, 11),
(39, 8, 9, 11),
(40, 8, 10, 11),
(41, 9, 1, 11),
(42, 9, 2, 11),
(43, 9, 3, 11),
(44, 9, 4, 11),
(48, 10, 1, 11),
(49, 10, 2, 11),
(50, 10, 3, 11),
(51, 10, 4, 11),
(52, 11, 5, 11),
(53, 11, 6, 11),
(54, 11, 7, 11),
(55, 11, 8, 11),
(56, 11, 9, 11),
(57, 11, 10, 11),
(58, 12, 5, 8),
(59, 12, 6, 11),
(60, 12, 7, 11),
(61, 12, 8, 11),
(62, 12, 9, 11),
(63, 12, 10, 11),
(64, 13, 5, 1),
(65, 13, 6, 16),
(66, 13, 7, 11),
(67, 13, 8, 11),
(68, 13, 9, 11),
(69, 13, 10, 11),
(70, 14, 1, 10),
(71, 14, 2, 11),
(72, 14, 3, 11),
(73, 14, 4, 11),
(74, 15, 5, 9),
(75, 15, 6, 11),
(76, 15, 7, 11),
(77, 15, 8, 11),
(78, 15, 9, 11),
(79, 15, 10, 11),
(80, 16, 1, 14),
(81, 16, 2, 11),
(82, 16, 3, 11),
(83, 16, 4, 11),
(287, 191, 1, 10),
(288, 191, 2, 10),
(289, 191, 2, 10),
(290, 191, 3, 10),
(291, 191, 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodienthoai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loai` tinyint(4) NOT NULL DEFAULT 3,
  `trangthai` tinyint(4) NOT NULL DEFAULT 1,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `email`, `sodienthoai`, `matkhau`, `hoten`, `loai`, `trangthai`, `hinhanh`) VALUES
(1, 'admin@gmail.com', '0965814510', '21232f297a57a5a743894a0e4a801fc3', 'Admin Hữu Thắng', 1, 1, 'ẢNH THẺ.png'),
(3, 'nv2@gmail.com', '0988994685', '30ad3d7bd534c1131f298bad4513b177', 'Nhân viên 2', 2, 1, 'male.png'),
(129, 'kh1@gmail.com', '0965814510', 'c4ca4238a0b923820dcc509a6f75849b', 'Khách hàng 1', 3, 1, '119943159_919494565120900_2006303655249753728_n.jpg'),
(130, 'kh2@gmail.com', '2', 'c81e728d9d4c2f636f067f89cc14862c', 'KHÁCH HÀNG 2', 3, 1, NULL),
(144, 'nv1@gmail.com', '0965814510', 'b81fbabe373a8a0a80df5da5602e702e', 'Nhân viên 1', 2, 1, NULL),
(145, 'nv3@gmail.com', '1234567890', 'b05711d9019c314ada2f9a6213407989', 'Nhân viên 3', 2, 1, NULL),
(149, 'demo1@gmail.com', '123', 'fe01ce2a7fbac8fafaed7c982a04e229', 'Tài Khoản Demo', 3, 1, NULL),
(150, 'thangdao2692000@gmail.com', '0965814510', '1279925cc2230f42fafa96afa46d1a40', 'ĐÀO HỮU THẮNG', 3, 1, '122728489_947378675665822_3580049085368898990_n.jpg'),
(151, 'demo123@gmail.com', '123', '9872e5aeafc4771fa53969946b1a639d', 'Khách hàng demo', 3, 1, NULL),
(152, 'quantridemo@gmail.com', '0965814510', 'fe01ce2a7fbac8fafaed7c982a04e229', 'Quản trị demo', 2, 1, NULL),
(153, 'dhthang_19th1@student.agu.edu.vn', '1234567890', 'a89680116974e8b2a1a08fdfad9c0c88', 'Tài khoản AGU', 3, 1, NULL),
(154, 'daohuuthangdemo@gmail.com', '123', '92eca3b8ae62d4182b4d11058b479a3f', 'Tài khoản gửi mail', 3, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `tensize` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `tensize`, `mota`) VALUES
(1, 'S', 'quanao'),
(2, 'M', 'quanao'),
(3, 'L', 'quanao'),
(4, 'XL', 'quanao'),
(5, '38', 'giaydep'),
(6, '39', 'giaydep'),
(7, '40', 'giaydep'),
(8, '41', 'giaydep'),
(9, '42', 'giaydep'),
(10, '43', 'giaydep');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diachi`
--
ALTER TABLE `diachi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoidung_id` (`nguoidung_id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoidung_id` (`nguoidung_id`),
  ADD KEY `diachi_id` (`diachi_id`);

--
-- Indexes for table `donhangct`
--
ALTER TABLE `donhangct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donhang_id` (`donhang_id`),
  ADD KEY `mathang_id` (`mathangsize_id`);

--
-- Indexes for table `mathang`
--
ALTER TABLE `mathang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhmuc_id` (`danhmuc_id`);

--
-- Indexes for table `mathang_size`
--
ALTER TABLE `mathang_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mathang_fk_id` (`mathang_id`),
  ADD KEY `size_fk_id` (`size_id`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `diachi`
--
ALTER TABLE `diachi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `donhangct`
--
ALTER TABLE `donhangct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `mathang`
--
ALTER TABLE `mathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `mathang_size`
--
ALTER TABLE `mathang_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diachi`
--
ALTER TABLE `diachi`
  ADD CONSTRAINT `diachi_ibfk_1` FOREIGN KEY (`nguoidung_id`) REFERENCES `nguoidung` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`nguoidung_id`) REFERENCES `nguoidung` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `donhangct`
--
ALTER TABLE `donhangct`
  ADD CONSTRAINT `donhangct_ibfk_1` FOREIGN KEY (`donhang_id`) REFERENCES `donhang` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `donhangct_ibfk_2` FOREIGN KEY (`mathangsize_id`) REFERENCES `mathang_size` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `mathang`
--
ALTER TABLE `mathang`
  ADD CONSTRAINT `mathang_fk_danhmuc` FOREIGN KEY (`danhmuc_id`) REFERENCES `danhmuc` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `mathang_size`
--
ALTER TABLE `mathang_size`
  ADD CONSTRAINT `mathang_fk_id` FOREIGN KEY (`mathang_id`) REFERENCES `mathang` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `size_fk_id` FOREIGN KEY (`size_id`) REFERENCES `size` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
