-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2021 at 10:18 AM
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
(1, 'Áo thể thao Adidas trắng sọc đen co giản', '<p>- Chất liệu cao cấp co giản tốt</p>\n\n<p>- Th&iacute;ch hợp cho thể thao v&agrave; đi du lịch</p>\n\n<p>-&nbsp; Kiểu d&aacute;ng trẻ trung, năng động</p>\n', 0, 100000, 'images/a1.jpg', 1, 119, 0),
(2, 'Quần thể thao 3 sọc Adidas đen sọc trắng', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 150000, 'images/a2.jpg', 1, 23, 0),
(3, 'Giày thể thao 3 sọc Adidas năng động ', '            - Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>                ', 0, 350000, 'images/a3.jpg', 1, 38, 0),
(4, 'Dép Adidas đúc cao su nguyên khối', '- Chất liệu cao cấp co giản tốt <br/>\n- Thích hợp cho thể thao và đi du lịch <br/>\n- Kiểu dáng trẻ trung, năng động <br/>        ', 0, 250000, 'images/a4.jpg', 1, 9, 0),
(5, 'Áo thun Nike cao cấp nhập khẩu USA', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 200000, 'images/n1.jpg', 2, 13, 0),
(6, 'Quần thể thao Nike siêu co giản', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 300000, 'images/n2.jpg', 2, 19, 0),
(7, 'Giày thể thao Nike AF1 trắng đen có logo Nike', '            - Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>        ', 0, 350000, 'images/n3.jpg', 2, 102, 0),
(8, 'Dép Nike đúc cao su nguyên khối', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 200000, 'images/n4.jpg', 2, 3, 0),
(9, 'Áo thun Puma cao cấp trắng đen siêu thấm hút', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>        ', 0, 150000, 'images/p1.jpg', 3, 8, 0),
(10, 'Quần thể thao Puma Đen chất liệu cotton', '                                                                                                                        - Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>                                                                                ', 0, 300000, 'images/p2.jpg', 3, 3, 0),
(11, 'Giày thể thao Puma trắng đen siêu nhẹ', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 300000, 'images/p3.jpg', 3, 6, 0),
(12, 'Dép Puma đúc cao su nguyên khối', '<p>- Chất liệu cao cấp co giản tốt</p>\r\n\r\n<p>- Th&iacute;ch hợp cho thể thao v&agrave; đi du lịch</p>\r\n\r\n<p>-&nbsp; Kiểu d&aacute;ng trẻ trung, năng động</p>\r\n', 0, 200000, 'images/p4.jpg', 3, 9, 0),
(13, 'Giày thể thao Adidas thấm hút tốt', '- Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 200000, 'images/a5.jpg', 1, 9, 0),
(14, 'Áo thể thao Adidas siêu thoáng thấm hút tốt', '<p>- Chất liệu cao cấp co giản tốt</p>\r\n\r\n<p>- Th&iacute;ch hợp cho thể thao v&agrave; đi du lịch</p>\r\n\r\n<p>- Kiểu d&aacute;ng trẻ trung, năng động</p>\r\n', 0, 250000, 'images/a6.jpg', 1, 33, 0),
(15, 'Giày thể thao Nike trắng đen đàn hồi tốt', '- Chất liệu cao cấp co giản tốt <br/>\n- Thích hợp cho thể thao và đi du lịch <br/>\n- Kiểu dáng trẻ trung, năng động <br/>', 0, 300000, 'images/n5.jpg', 2, 13, 0),
(16, 'Áo thể thao Nike vải cotton siêu thấm tốt', '            - Chất liệu cao cấp co giản tốt <br/>\r\n- Thích hợp cho thể thao và đi du lịch <br/>\r\n- Kiểu dáng trẻ trung, năng động <br/>        ', 0, 300000, 'images/n6.jpg', 2, 21, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mathang`
--
ALTER TABLE `mathang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhmuc_id` (`danhmuc_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mathang`
--
ALTER TABLE `mathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mathang`
--
ALTER TABLE `mathang`
  ADD CONSTRAINT `mathang_fk_danhmuc` FOREIGN KEY (`danhmuc_id`) REFERENCES `danhmuc` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
