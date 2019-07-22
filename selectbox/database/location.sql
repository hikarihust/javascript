-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 05, 2013 at 02:05 PM
-- Server version: 5.1.33
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `location`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` tinyint(11) NOT NULL DEFAULT '10',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=64 ;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `order`, `status`) VALUES
(1, 'An Giang', 10, 1),
(2, 'Bà Rịa - Vũng Tàu', 10, 1),
(3, 'Bạc Liêu', 10, 1),
(4, 'Bắc Kạn', 10, 1),
(5, 'Bắc Giang', 10, 1),
(6, 'Bắc Ninh', 10, 1),
(7, 'Bến Tre', 10, 1),
(8, 'Bình Dương', 10, 1),
(9, 'Bình Định', 10, 1),
(10, 'Bình Phước', 10, 1),
(11, 'Bình Thuận', 10, 1),
(12, 'Cà Mau', 10, 1),
(13, 'Cao Bằng', 10, 1),
(14, 'Cần Thơ', 5, 1),
(15, 'Đà Nẵng ', 3, 1),
(16, 'Đắc Lắk ', 10, 1),
(17, 'Đắc Nông', 10, 1),
(18, 'Điện Biên', 10, 1),
(19, 'Đồng Nai ', 10, 1),
(20, 'Đồng Tháp', 10, 1),
(21, 'Gia Lai', 10, 1),
(22, 'Hà Giang', 10, 1),
(23, 'Hà Nội', 2, 1),
(24, 'Hà Tây', 10, 1),
(25, 'Hà Tĩnh ', 10, 1),
(26, 'Hải Dương', 10, 1),
(27, 'Hải Phòng', 4, 1),
(28, 'Hậu Giang', 10, 1),
(29, 'Hoà Bình', 10, 1),
(30, 'Hưng Yên', 10, 1),
(31, 'Khánh Hoà', 10, 1),
(32, 'Kiên Giang', 10, 1),
(33, 'Kon Tum', 10, 1),
(34, 'Lai Châu', 10, 1),
(35, 'Lâm Đồng', 10, 1),
(36, 'Lạng Sơn ', 10, 1),
(37, 'Lào Cai', 10, 1),
(38, 'Long An', 10, 1),
(39, 'Nam Định', 10, 1),
(40, 'Nghệ An', 10, 1),
(41, 'Ninh Bình ', 10, 1),
(42, 'Ninh Thuận', 10, 1),
(43, 'Phú Thọ', 10, 1),
(44, 'Phú Yên', 10, 1),
(45, 'Quảng Bình', 10, 1),
(46, 'Quảng Nam ', 10, 1),
(47, 'Quảng Ngãi', 10, 1),
(48, 'Quảng Ninh', 10, 1),
(49, 'Quảng Trị', 10, 1),
(50, 'Sóc Trăng', 10, 1),
(51, 'Sơn La', 10, 1),
(52, 'Tây Ninh', 10, 1),
(53, 'Thái Bình', 10, 1),
(54, 'Thái Nguyên', 10, 1),
(55, 'Thanh Hoá', 10, 1),
(56, 'Thừa Thiên Huế', 10, 1),
(57, 'Tiền Giang', 10, 1),
(58, 'Thành Phố Hồ Chí Minh', 1, 1),
(59, 'Trà Vinh ', 10, 1),
(60, 'Tuyên Quang', 10, 1),
(61, 'Vĩnh Long ', 10, 1),
(62, 'Vĩnh Phúc', 10, 1),
(63, 'Yên Bái', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE IF NOT EXISTS `districts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `order` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `cityid` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `order`, `status`, `cityid`) VALUES
(1, 'Hoàn Kiếm', 10, 1, 23),
(2, 'Ba Đình', 10, 1, 23),
(3, 'Đống Đa', 10, 1, 23),
(4, 'Hai Bà Trưng', 10, 1, 23),
(5, 'Thanh Xuân', 10, 1, 23),
(6, 'Tây Hồ', 10, 1, 23),
(7, 'Cầu Giấy', 10, 1, 23),
(8, 'Hoàng Mai', 10, 1, 23),
(9, 'Long Biên', 10, 1, 23),
(10, 'Đông Anh', 10, 1, 23),
(11, 'Gia Lâm', 10, 1, 23),
(12, 'Sóc Sơn', 10, 1, 23),
(13, 'Thanh Trì', 10, 1, 23),
(14, 'Từ Liêm', 10, 1, 23),
(15, 'Hà Đông', 10, 1, 23),
(16, 'Sơn Tây', 10, 1, 23),
(17, 'Mê Linh', 10, 1, 23),
(18, 'Ba Vì', 10, 1, 23),
(19, 'Phúc Thọ', 10, 1, 23),
(20, 'Đan Phượng', 10, 1, 23),
(21, 'Hoài Đức', 10, 1, 23),
(22, 'Quốc Oai', 10, 1, 23),
(23, 'Thạch Thất', 10, 1, 23),
(24, 'Chương Mỹ', 10, 1, 23),
(25, 'Thanh Oai', 10, 1, 23),
(26, 'Thường Tín', 10, 1, 23),
(27, 'Phú Xuyên', 10, 1, 23),
(28, 'Ứng Hòa', 10, 1, 23),
(29, 'Mỹ Đức', 10, 1, 23),
(30, 'Quận 1', 10, 1, 58),
(31, 'Quận 2', 10, 1, 58),
(32, 'Quận 3', 10, 1, 58),
(33, 'Quận 4', 10, 1, 58),
(34, 'Quận 5', 10, 1, 58),
(35, 'Quận 6', 10, 1, 58),
(36, 'Quận 7', 10, 1, 58),
(37, 'Quận 8', 10, 1, 58),
(38, 'Quận 9', 10, 1, 58),
(39, 'Quận 10', 10, 1, 58),
(40, 'Quận 11', 10, 1, 58),
(41, 'Quận 12', 10, 1, 58),
(42, 'Bình Tân', 10, 1, 58),
(43, 'Bình Thạnh', 10, 1, 58),
(44, 'Gò Vấp', 10, 1, 58),
(45, 'Phú Nhuận', 10, 1, 58),
(46, 'Tân Bình', 10, 1, 58),
(47, 'Tân Phú', 10, 1, 58),
(48, 'Thủ Đức', 10, 1, 58),
(49, 'Bình Chánh', 10, 1, 58),
(50, 'Cần Giờ', 10, 1, 58),
(51, 'Củ Chi', 10, 1, 58),
(52, 'Hóc Môn', 10, 1, 58),
(53, 'Nhà Bè', 10, 1, 58),
(54, 'Cẩm Lệ', 10, 1, 15),
(55, 'Hải Châu', 10, 1, 15),
(56, 'Liên Chiểu', 10, 1, 15),
(57, 'Ngũ Hành Sơn', 10, 1, 15),
(58, 'Sơn Trà', 10, 1, 15),
(59, 'Thanh Khê', 10, 1, 15),
(60, 'Hòa Vang', 10, 1, 15),
(61, 'Hoàng Sa', 10, 1, 15),
(62, 'Đồ Sơn', 10, 1, 27),
(63, 'Dương Kinh', 10, 1, 27),
(64, 'Hải An', 10, 1, 27),
(65, 'Hồng Bàng', 10, 1, 27),
(66, 'Kiến An', 10, 1, 27),
(67, 'Lê Chân', 10, 1, 27),
(68, 'Ngô Quyền', 10, 1, 27),
(69, 'An Dương', 10, 1, 27),
(70, 'An Lão', 10, 1, 27),
(71, 'Bạch Long Vĩ', 10, 1, 27),
(72, 'Cát Hải', 10, 1, 27),
(73, 'Kiến Thụy', 10, 1, 27),
(74, 'Thủy Nguyên', 10, 1, 27),
(75, 'Tiên Lãng', 10, 1, 27),
(76, 'Vĩnh Bảo', 10, 1, 27),
(77, 'Cờ Đỏ', 10, 1, 14),
(78, 'Phong Điền', 10, 1, 14),
(79, 'Thốt Nốt', 10, 1, 14),
(80, 'Vĩnh Thạnh', 10, 1, 14),
(81, 'Bình Thủy', 10, 1, 14),
(82, 'Cái Răng', 10, 1, 14),
(83, 'Ninh Kiều', 10, 1, 14),
(84, 'Ô Môn', 10, 1, 14),
(85, ' Thới Lai', 10, 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE IF NOT EXISTS `ward` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `order` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `districtid` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=115 ;

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`id`, `name`, `order`, `status`, `districtid`) VALUES
(1, '5', 10, 1, 30),
(2, 'Bến Nghé', 10, 1, 30),
(3, 'Bến Thành', 10, 1, 30),
(4, 'Cô Giang', 10, 1, 30),
(5, 'Cầu Kho', 10, 1, 30),
(6, 'Cầu Ông Lãnh', 10, 1, 30),
(7, 'Kế Bính', 10, 1, 30),
(8, 'Nguyễn Công Trứ', 10, 1, 30),
(9, 'Nguyễn Cư Trinh', 10, 1, 30),
(10, 'Nguyễn Thái Bình', 10, 1, 30),
(11, 'Phạm Ngũ Lão', 10, 1, 30),
(12, 'Tân Định', 10, 1, 30),
(13, 'Đa Kao', 10, 1, 30),
(14, ' Thạnh Mỹ Lợi', 10, 1, 31),
(15, 'An Khánh', 10, 1, 31),
(16, 'An Lợi Đông', 10, 1, 31),
(17, 'An Phú', 10, 1, 31),
(18, 'Bình An', 10, 1, 31),
(19, 'Bình Khánh', 10, 1, 31),
(20, 'Bình Trưng Tây', 10, 1, 31),
(21, 'Bình Trưng Đông', 10, 1, 31),
(22, 'Cát Lái', 10, 1, 31),
(23, 'Thảo Điền', 10, 1, 31),
(24, 'Thủ Thiêm', 10, 1, 31),
(25, '1', 10, 1, 32),
(26, '10', 10, 1, 32),
(27, '11', 10, 1, 32),
(28, '12', 10, 1, 32),
(29, '13', 10, 1, 32),
(30, '14', 10, 1, 32),
(31, '2', 10, 1, 32),
(32, '3', 10, 1, 32),
(33, '4', 10, 1, 32),
(34, '5', 10, 1, 32),
(35, '6', 10, 1, 32),
(36, '7', 10, 1, 32),
(37, '8', 10, 1, 32),
(38, '9', 10, 1, 32),
(39, '15', 10, 1, 32),
(40, '1', 10, 1, 33),
(41, '10', 10, 1, 33),
(42, '12', 10, 1, 33),
(43, '13', 10, 1, 33),
(44, '14', 10, 1, 33),
(45, '15', 10, 1, 33),
(46, '16', 10, 1, 33),
(47, '17', 10, 1, 33),
(48, '18', 10, 1, 33),
(49, '2', 10, 1, 33),
(50, '3', 10, 1, 33),
(51, '4', 10, 1, 33),
(52, '5', 10, 1, 33),
(53, '6', 10, 1, 33),
(54, '8', 10, 1, 33),
(55, '9', 10, 1, 33),
(56, '1', 10, 1, 34),
(57, '10', 10, 1, 34),
(58, '11', 10, 1, 34),
(59, '12', 10, 1, 34),
(60, '13', 10, 1, 34),
(61, '14', 10, 1, 34),
(62, '15', 10, 1, 34),
(63, '2', 10, 1, 34),
(64, '3', 10, 1, 34),
(65, '4', 10, 1, 34),
(66, '5', 10, 1, 34),
(67, '6', 10, 1, 34),
(68, '7', 10, 1, 34),
(69, '8', 10, 1, 34),
(70, '9', 10, 1, 34),
(71, ' Hiệp Phú', 10, 1, 48),
(72, 'Bình Chiểu', 10, 1, 48),
(73, 'Bình Thọ', 10, 1, 48),
(74, 'Bình Thọ', 10, 1, 48),
(75, 'Hiệp Bình Chánh', 10, 1, 48),
(76, 'Hiệp Bình Phước', 10, 1, 48),
(77, 'Linh Chiểu', 10, 1, 48),
(78, 'Linh Trung', 10, 1, 48),
(79, 'Linh Tây', 10, 1, 48),
(80, 'Linh Xuân', 10, 1, 48),
(81, 'Linh Đông', 10, 1, 48),
(82, 'Phước Long', 10, 1, 48),
(83, 'Tam Bình', 10, 1, 48),
(84, 'Tam Phú', 10, 1, 48),
(85, 'Thủ Đức', 10, 1, 48),
(86, 'Trường Thọ', 10, 1, 48),
(87, 'Tân Phú', 10, 1, 48),
(88, 'Hiệp Phú', 10, 1, 38),
(89, 'Long Bình', 10, 1, 38),
(90, 'Long Phước', 10, 1, 38),
(91, 'Long Thạnh Mỹ', 10, 1, 38),
(92, 'Long Trường', 10, 1, 38),
(93, 'Phú Hữu', 10, 1, 38),
(94, 'Phước Bình', 10, 1, 38),
(95, 'Phước Long A', 10, 1, 38),
(96, 'Phước Long B', 10, 1, 38),
(97, 'Trường Thạnh', 10, 1, 38),
(100, 'Tân Phú', 10, 1, 38),
(101, 'Tăng Nhơn Phú A', 10, 1, 38),
(102, 'Tăng Nhơn Phú B', 10, 1, 38),
(103, 'An Phú Đông', 10, 1, 41),
(104, 'Hiệp Thành', 10, 1, 41),
(105, 'Thạnh Lộc', 10, 1, 41),
(106, 'Thạnh Xuân', 10, 1, 41),
(107, 'Thới An', 10, 1, 41),
(108, 'Trung Mỹ Tây', 10, 1, 41),
(109, 'Tân Chánh Hiệp', 10, 1, 41),
(110, 'Tân Hưng Thuận', 10, 1, 41),
(111, 'Tân Thới Hiệp', 10, 1, 41),
(112, 'Tân Thới Nhất', 10, 1, 41),
(113, 'Đông Hưng Thuận', 10, 1, 41),
(114, 'Đông Hưng Thuận', 10, 1, 41);
