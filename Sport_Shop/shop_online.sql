-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 18, 2021 at 08:17 AM
-- Server version: 5.7.25
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_online`
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
(3, 'Puma');

-- --------------------------------------------------------

--
-- Table structure for table `diachi`
--

CREATE TABLE `diachi` (
  `id` int(11) NOT NULL,
  `nguoidung_id` int(11) NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `macdinh` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diachi`
--

INSERT INTO `diachi` (`id`, `nguoidung_id`, `diachi`, `macdinh`) VALUES
(1, 4, 'Đông Xuyên, Long Xuyên', 1),
(2, 5, 'Mỹ Xuyên, Long Xuyên', 1),
(3, 7, 'Mỹ Long', 1),
(4, 8, 'Mỹ Thới', 1),
(5, 9, 'Mỹ Xuyên', 1),
(6, 10, 'Mỹ Long', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `nguoidung_id` int(11) NOT NULL,
  `diachi_id` int(11) DEFAULT NULL,
  `ngay` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tongtien` float NOT NULL DEFAULT '0',
  `ghichu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `nguoidung_id`, `diachi_id`, `ngay`, `tongtien`, `ghichu`) VALUES
(1, 4, 1, '2020-10-23 13:38:40', 1320000, NULL),
(2, 5, 2, '2020-10-24 15:13:10', 3920000, NULL),
(3, 8, 4, '2021-03-13 16:38:57', 6035000, NULL),
(4, 9, 5, '2021-03-13 16:53:28', 6035000, NULL),
(5, 10, 6, '2021-03-13 16:55:44', 7800000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `donhangct`
--

CREATE TABLE `donhangct` (
  `id` int(11) NOT NULL,
  `donhang_id` int(11) NOT NULL,
  `mathang_id` int(11) NOT NULL,
  `dongia` float NOT NULL DEFAULT '0',
  `soluong` int(11) NOT NULL DEFAULT '1',
  `thanhtien` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donhangct`
--

INSERT INTO `donhangct` (`id`, `donhang_id`, `mathang_id`, `dongia`, `soluong`, `thanhtien`) VALUES
(1, 1, 1, 1320000, 1, 1320000),
(2, 2, 3, 2130000, 1, 2130000),
(3, 2, 7, 1790000, 1, 1790000),
(4, 4, 9, 1775000, 1, 1775000),
(5, 4, 4, 2130000, 2, 4260000),
(6, 5, 7, 1790000, 1, 1790000),
(7, 5, 5, 2050000, 1, 2050000),
(8, 5, 1, 1320000, 3, 3960000);

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

CREATE TABLE `loai` (
  `id` int(11) NOT NULL,
  `tenloai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`id`, `tenloai`) VALUES
(1, 'Quần áo'),
(2, 'Giày dép');

-- --------------------------------------------------------

--
-- Table structure for table `mathang`
--

CREATE TABLE `mathang` (
  `id` int(11) NOT NULL,
  `tenmathang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `giagoc` float NOT NULL DEFAULT '0',
  `giaban` float NOT NULL DEFAULT '0',
  `soluongton` int(11) NOT NULL DEFAULT '0',
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `danhmuc_id` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL DEFAULT '0',
  `luotmua` int(11) NOT NULL DEFAULT '0',
  `loai_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mathang`
--

INSERT INTO `mathang` (`id`, `tenmathang`, `mota`, `giagoc`, `giaban`, `soluongton`, `hinhanh`, `danhmuc_id`, `luotxem`, `luotmua`, `loai_id`) VALUES
(1, 'Áo thể thao Adidas trắng sọc đen', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 100000, 10, 'images/a1.jpg', 1, 91, 0, 1),
(2, 'Quần thể thao 3 sọc Adidas đen sọc trắng', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 150000, 10, 'images/a2.jpg', 1, 17, 0, 1),
(3, 'Giày thể thao 3 sọc Adidas ', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 350000, 10, 'images/a3.jpg', 1, 28, 0, 2),
(4, 'Dép Adidas đúc cao su nguyên khối', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 250000, 10, 'images/a4.jpg', 1, 9, 0, 2),
(5, 'Áo thun Nike cao cấp nhập khẩu USA', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 200000, 10, 'images/n1.jpg', 2, 8, 0, 1),
(6, 'Quần thể thao Nike siêu co giản', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 300000, 10, 'images/n2.jpg', 2, 16, 0, 1),
(7, 'Giày thể thao Nike AF1 trắng đen có logo Nike', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 350000, 10, 'images/n3.jpg', 2, 91, 0, 2),
(8, 'Dép Nike đúc cao su nguyên khối', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 200000, 10, 'images/n4.jpg', 2, 3, 0, 2),
(9, 'Áo thun Puma cao cấp trắng đen', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 150000, 10, 'images/p1.jpg', 3, 8, 0, 1),
(10, 'Quần thể thao Puma Đen', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 200000, 10, 'images/p2.jpg', 3, 3, 0, 1),
(11, 'Giày thể thao Puma trắng đen', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 300000, 10, 'images/p3.jpg', 3, 5, 0, 2),
(12, 'Dép Puma đúc cao su nguyên khối', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 200000, 10, 'images/p4.jpg', 3, 7, 0, 2),
(13, 'Giày thể thao Adidas thấm hút tốt', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 200000, 10, 'images/a5.jpg', 1, 6, 0, 2),
(14, 'Áo thể thao Adidas siêu thoáng', NULL, 0, 250000, 10, 'images/a6.jpg', 1, 12, 0, 1),
(15, 'Giày thể thao Nike đàn hồi tốt', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 300000, 10, 'images/n5.jpg', 2, 6, 0, 2),
(16, 'Áo thể thao Nike siêu thấm tốt', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 300000, 10, 'images/n6.jpg', 2, 4, 0, 1);

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
  `loai` tinyint(4) NOT NULL DEFAULT '3',
  `trangthai` tinyint(4) NOT NULL DEFAULT '1',
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `email`, `sodienthoai`, `matkhau`, `hoten`, `loai`, `trangthai`, `hinhanh`) VALUES
(1, 'abc@abc.com', '0988994683', '900150983cd24fb0d6963f7d28e17f72', 'Quản trị ABC', 1, 1, NULL),
(2, 'def@abc.com', '0988994684', '900150983cd24fb0d6963f7d28e17f72', 'Nhân viên DEF', 2, 1, NULL),
(3, 'ghi@abc.com', '0988994685', '900150983cd24fb0d6963f7d28e17f72', 'Nhân viên GHI', 2, 1, NULL),
(4, 'kh1@gmail.com', '0988994686', '900150983cd24fb0d6963f7d28e17f72', 'Nguyễn Thị Thu An', 3, 1, NULL),
(5, 'kh2@gmail.com', '0988994687', '900150983cd24fb0d6963f7d28e17f72', 'Hồ Xuân Minh', 3, 1, NULL),
(6, 'aaa@abc.com', '1234567890', 'e807f1fcf82d132f9bb018ca6738a19f', 'AAA', 3, 1, NULL),
(7, 'bbb@abc.com', '1234567891', '0f7e44a922df352c05c5f73cb40ba115', 'BBB', 3, 1, NULL),
(8, 'ccc@abc.com', '1234567892', 'd893377c9d852e09874125b10a0e4f66', 'CCC', 3, 1, NULL),
(9, 'ddd@abc.com', '1234567893', '43042f668f07adfd174cb1823d4795e1', 'DDD', 3, 1, NULL),
(10, 'eee@abc.com', '1234567894', 'f66f4446648ae7ae56419eca43bf2b8a', 'EEE', 3, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `tensize` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `size_loai_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `tensize`, `size_loai_id`) VALUES
(1, 'S', 1),
(2, 'M', 1),
(3, 'L', 1),
(4, 'XL', 1),
(5, '38', 2),
(6, '39', 2),
(7, '40', 2),
(8, '41', 2),
(9, '42', 2),
(10, '43', 2);

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
  ADD KEY `mathang_id` (`mathang_id`);

--
-- Indexes for table `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mathang`
--
ALTER TABLE `mathang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhmuc_id` (`danhmuc_id`),
  ADD KEY `mathang_fk_loai` (`loai_id`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `size_fk_loai` (`size_loai_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `diachi`
--
ALTER TABLE `diachi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `donhangct`
--
ALTER TABLE `donhangct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `loai`
--
ALTER TABLE `loai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mathang`
--
ALTER TABLE `mathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  ADD CONSTRAINT `donhangct_ibfk_2` FOREIGN KEY (`mathang_id`) REFERENCES `mathang` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `mathang`
--
ALTER TABLE `mathang`
  ADD CONSTRAINT `mathang_fk_loai` FOREIGN KEY (`loai_id`) REFERENCES `loai` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mathang_ibfk_1` FOREIGN KEY (`danhmuc_id`) REFERENCES `danhmuc` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_fk_loai` FOREIGN KEY (`size_loai_id`) REFERENCES `loai` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
