-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2019 at 01:14 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pnc_pracitice_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` int(11) NOT NULL,
  `catname` varchar(30) NOT NULL,
  `description` varchar(220) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `catname`, `description`) VALUES
(1, 'Mother Board', 'main boards'),
(2, 'Mouse', 'pointer devices'),
(3, 'Monitor', 'Display devices'),
(4, 'Speaker', 'Sound devices'),
(5, 'USB Flash', 'portable storage devices'),
(6, 'Laptop', 'portable computer'),
(7, 'Desktop', 'computer on the table'),
(8, 'Server', 'fast computer'),
(9, 'HDD', 'storage for computer'),
(10, 'Switch', 'network devices'),
(11, 'Router', 'network devices'),
(12, 'Hub', 'network devices'),
(13, 'Network Cable', 'network cable'),
(14, 'Printer', 'printing devices');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `yearofservice` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `perks` int(11) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `departmentid` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstname`, `lastname`, `title`, `age`, `yearofservice`, `salary`, `perks`, `email`, `departmentid`) VALUES
(10, 'Paul', 'Simon Leler', 'Multimedia Programmer', 23, 1, 85000, 12000, 'ps@gmail.com', 'DP03'),
(11, 'Edward', 'Parhar', 'Multimedia Programmer', 30, 2, 75000, 15000, 'a@hotmail.com', 'DP06'),
(12, 'Kim', 'Hunter', 'Senior Web Designer', 32, 4, 110000, 20000, 'kim@coolmail.com', NULL),
(13, 'Roger', 'Lewis', 'System Administrator', 32, 3, 100000, 13000, 'roger@mail.com', 'DP06'),
(14, 'Danny', 'Gibson', 'System Administrator', 31, 2, 90000, 12000, 'danny@hotmail.com', 'DP02'),
(15, 'Mike', 'Harper', 'Senior Marketing Executive', 36, NULL, 120000, 28000, 'm@gmail.com', 'DP03'),
(16, 'Mary', 'Sunday', 'Marketing Executive', 31, 5, 90000, 25000, 'monica@bigmail.com', 'DP04'),
(17, 'Jack', 'Sim', 'Marketing Executive', 27, 1, 70000, 18000, 'hal@gmail.com', NULL),
(18, 'Joe', 'Irvine', 'Marketing Executive', 27, 1, 72000, 9000, 'joseph@hotmail.com', 'DP05'),
(19, 'Henry', 'Ali', 'Customer Service Manager', 32, 3, 70000, 9000, 'shahida@hotmail.com', NULL),
(20, 'Peter', 'Champion', 'Finance Manager', 36, 2, 120000, 25000, 'peter@yahoo.com', 'DP01'),
(21, 'HENG', 'Vongkol', 'Store Manager', 30, 4, 150000, 30000, 'hengvongkol@gmail.com', 'DP04'),
(22, 'SAM', 'Vuthy', 'Store Manager', 29, 3, 140000, 29000, 'sam.vuthy@gmail.com', 'DP02'),
(29, 'Dakhen', 'Test', NULL, 21, NULL, 60, NULL, NULL, NULL),
(30, 'Rith', 'NHEL', 'WEB', 23, 1, 300, 232, 'parongnhel@gmail.com', 'Trainer'),
(31, 'Sreyleng', 'Chheang', NULL, 2, NULL, 46, NULL, NULL, NULL),
(32, 'Virak', 'Rim', NULL, 5, NULL, 250, NULL, NULL, NULL),
(33, 'PNC', 'Cambodia', 'School', 16, 2, 400, 0, 'pnc.cambodia@example.com', '50'),
(35, 'Sokkun', 'Norn', 'WEB Developer', 20, 2, 300, 1, 'sokkun.norn@gmail.com', '3'),
(39, 'Sam Oun', 'SONGHA', 'Programmer', 28, 2, 75000, 14000, 'samoun@gmail.com', 'DP03');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `locationid` int(11) NOT NULL,
  `locationname` varchar(40) NOT NULL,
  `managerid` int(11) DEFAULT NULL,
  `description` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`locationid`, `locationname`, `managerid`, `description`) VALUES
(1, 'Takhmoa', 21, 'The first location.'),
(2, 'Boeung Salang', 22, 'The second location.'),
(3, 'Kompot', 22, 'The third location.');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `supplier` varchar(45) DEFAULT NULL,
  `unitprice` double(12,3) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `catid` int(11) DEFAULT NULL,
  `storeid` int(11) DEFAULT NULL,
  `description` varchar(220) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pname`, `supplier`, `unitprice`, `quantity`, `catid`, `storeid`, `description`) VALUES
(1, 'Fujisu LCD Monitor', 'Fujisu', 120.000, 100, 3, 13, NULL),
(2, 'Dell LCD Monitor', 'Dell', 141.570, 80, 3, 1, NULL),
(3, 'Dell Touch Monitor', 'Dell', 217.800, 50, 3, 2, NULL),
(4, 'Sony LCD Touch Monitor', 'Sony', 180.000, 70, 3, 1, NULL),
(5, 'Toshiba CRT Monitor', 'Toshiba', 50.000, 30, 3, 3, NULL),
(6, 'Toshiba LCD Monitor', 'Toshiba', 90.000, 79, 3, 2, NULL),
(7, 'Toshiba LCD Touch Monitor', 'Toshiba', 170.000, 80, 3, 4, NULL),
(8, 'Asuz X64 Mainboard', 'Asuz', 58.000, 32, 1, 1, NULL),
(9, 'Asuz x86 Mainboard', 'Asuz', 52.000, 29, 1, 1, NULL),
(10, 'Dell x64 Mainboard', 'Dell', 64.251, 50, 1, 4, NULL),
(11, 'Dell x86 Mainboard', 'Dell', 59.895, 76, 1, 3, NULL),
(12, 'Dell x64 Extreme Mainboard', 'Dell', 78.408, 29, 1, 1, NULL),
(13, 'Intel x64 Core i7 Mainboard', 'Intel', 120.000, 130, 1, 2, NULL),
(14, 'Intel x64 Mainboard', 'Intel', 77.000, 14, 1, 2, NULL),
(15, 'Intel x64 Server Mainboard', 'Intel', 230.000, 62, 1, 2, NULL),
(16, 'Intel x86 Mainboard', 'Intel', 55.000, 100, 1, 2, NULL),
(17, 'Linksys x86 Mainboard', 'Linksys', 56.000, 70, 1, 1, NULL),
(18, 'Linksys x64 Mainboard', 'Linksys', 58.000, 82, 1, 1, NULL),
(19, 'Phoenix x86 Mainboard', 'Phoenix', 54.000, 75, 1, 3, NULL),
(20, 'Phoenix x64 Mainboard', 'Phoenix', 60.000, 37, 1, 3, NULL),
(21, 'Dell Optic Mouse', 'Dell', 7.623, 56, 2, 2, NULL),
(22, 'Sony Optic Mouse', 'Sony', 8.000, 77, 2, 4, NULL),
(23, 'Prolink Optic Mouse', 'Prolink', 2.000, 50, 2, 4, NULL),
(24, 'Dell Wireless Mouse', 'Dell', 13.068, 65, 2, 3, NULL),
(25, 'Dell Speaker', 'Dell', 37.026, 21, 4, 3, NULL),
(26, 'Sony Speaker', 'Sony', 40.000, 40, 4, 3, NULL),
(27, 'Prolink Speaker', 'Prolink', 30.000, 25, 4, 3, NULL),
(28, 'Transcend USB 32G', 'Transcend', 20.000, 30, 5, 1, NULL),
(29, 'Transcend USB 16G', 'Transcend', 15.000, 80, 5, 1, NULL),
(30, 'Transcend USB 8G', 'Transcend', 12.000, 90, 5, 1, NULL),
(31, 'Transcend USB 4G', 'Transcend', 9.000, 30, 5, 3, NULL),
(32, 'ADATA USB 32G', 'ADATA', 22.000, 40, 5, 2, NULL),
(33, 'ADATA USB 16G', 'ADATA', 17.000, 70, 5, 2, NULL),
(34, 'ADATA USB 8G', 'ADATA', 14.000, 55, 5, 3, NULL),
(35, 'Dell Thinpad', 'Dell', 653.400, 40, 6, 2, NULL),
(36, 'Dell Inspiron', 'Dell', 544.500, 70, 6, 4, NULL),
(37, 'Acer Core i7', 'Acer', 800.000, 60, 6, 4, NULL),
(38, 'Acer Core i5', 'Acer', 560.000, 47, 6, 4, NULL),
(39, 'Acer Core i3', 'Acer', 450.000, 68, 6, 4, NULL),
(40, 'Sony Touch', 'Sony', 790.000, 40, 6, 2, NULL),
(41, 'Sony Core i7', 'Sony', 680.000, 50, 6, 2, NULL),
(42, 'Toshiba Core i5', 'Toshiba', 500.000, 30, 6, 2, NULL),
(43, 'Dell Desktop', 'Dell', 468.270, 40, 7, 1, NULL),
(44, 'IBM Desktop', 'IBM', 400.000, 90, 7, 1, NULL),
(45, 'Sony Desktop', 'Sony', 410.000, 50, 7, 1, NULL),
(46, 'HP Desktop', 'HP', 390.000, 23, 7, 1, NULL),
(47, 'Dell Server', 'Dell', 13068.000, 40, 8, 1, NULL),
(48, 'HP Server', 'HP', 11000.000, 30, 8, 1, NULL),
(49, 'IBM Server', 'IBM', 15000.000, 50, 8, 4, NULL),
(50, 'Intel Server', 'Intel', 20000.000, 30, 8, 4, NULL),
(51, 'Transcend HDD', 'Transcend', 50.000, 20, 9, 1, NULL),
(52, 'Dell HDD', 'Dell', 65.340, 36, 9, 4, NULL),
(53, 'CISCO Switch', 'CISCO', 700.000, 51, 10, 2, NULL),
(54, 'Linksys Switch', 'Linksys', 40.000, 30, 10, 2, NULL),
(55, 'TP-Link Switch', 'TP-Link', 36.000, 90, 10, 3, NULL),
(56, 'CISCO Router', 'CISCO', 12000.000, 17, 11, 1, NULL),
(57, 'TP-Link Router', 'TP-Link', 50.000, 22, 11, 3, NULL),
(58, 'TP-Link Hub', 'TP-Link', 12.000, 30, 12, 3, NULL),
(59, 'CMG Cat 5', 'CMG', 35.000, 30, 13, 3, NULL),
(60, 'ETL Cat 6', 'ETL', 40.000, 85, 13, 2, NULL),
(61, 'EPSON Printer', 'EPSON', 68.000, 34, 14, 2, NULL),
(62, 'HP Printer', 'HP', 67.000, 40, 14, 1, NULL),
(63, 'CANON Printer', 'CANON', 68.000, 32, 14, 1, NULL),
(64, 'abc', 'xyz', 12.000, 1, 15, 4, NULL),
(65, 'angkor', 'mm', 20.000, 32, 20, 4, NULL),
(66, 'Anchor Beer', 'mm', 20.000, 21, 60, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `salesid` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `discount` float(12,5) DEFAULT NULL,
  `salesdate` date DEFAULT NULL,
  `seller` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`salesid`, `pid`, `quantity`, `discount`, `salesdate`, `seller`) VALUES
(1, 39, 55, NULL, '2009-01-28', 'PEN Oudom'),
(2, 46, 78, NULL, '2009-11-21', 'HENG Vongkol'),
(3, 4, 100, NULL, '2011-06-23', 'HENG Vongkol'),
(4, 43, 89, NULL, '2011-10-07', 'UM Borey'),
(5, 22, 14, NULL, '2011-09-17', 'CHOEN Sochy'),
(6, 40, 18, NULL, '2012-02-13', 'CHHAY Vandirichat'),
(7, 18, 100, NULL, '2009-06-26', 'SAM Vuthy'),
(8, 63, 60, NULL, '2010-11-20', 'HOUR Bunthoeun'),
(9, 45, 90, NULL, '2013-03-10', 'UM Borey'),
(10, 35, 91, NULL, '2010-08-20', 'UM Borey'),
(11, 38, 82, NULL, '2009-07-10', 'CHHAY Vandirichat'),
(12, 54, 100, NULL, '2011-06-27', 'PEN Oudom'),
(13, 43, 89, NULL, '2010-03-21', 'CHOEN Sochy'),
(14, 45, 72, NULL, '2013-04-25', 'SAM Vuthy'),
(15, 15, 42, NULL, '2012-01-27', 'VEN Chanthy'),
(16, 11, 71, NULL, '2009-12-24', 'VOEURN Leakhna'),
(17, 49, 60, NULL, '2011-01-04', 'PEN Oudom'),
(18, 29, 81, NULL, '2012-10-21', 'PEN Thida'),
(19, 31, 33, NULL, '2009-08-04', 'CHOEN Sochy'),
(20, 40, 92, NULL, '2010-12-11', 'CHOEN Sochy'),
(21, 25, 40, NULL, '2011-04-23', 'PEN Thida'),
(22, 24, 21, NULL, '2012-03-24', 'VEN Chanthy'),
(23, 14, 88, NULL, '2011-05-01', 'PEN Thida'),
(24, 36, 34, NULL, '2012-05-02', 'HENG Vongkol'),
(25, 4, 75, NULL, '2009-05-24', 'PEN Oudom'),
(26, 31, 52, NULL, '2009-12-15', 'UM Borey'),
(27, 48, 76, NULL, '2013-07-16', 'PEN Thida'),
(28, 58, 39, NULL, '2010-07-25', 'PEN Oudom'),
(29, 27, 94, NULL, '2011-03-03', 'PEN Thida'),
(30, 58, 71, NULL, '2009-03-13', 'VOEURN Leakhna'),
(31, 50, 73, NULL, '2013-10-06', 'PEN Thida'),
(32, 33, 69, NULL, '2011-07-28', 'SAM Vuthy'),
(33, 39, 30, NULL, '2011-10-11', 'VOEURN Leakhna'),
(34, 31, 68, NULL, '2013-04-14', 'PEN Oudom'),
(35, 16, 97, NULL, '2012-05-11', 'CHHAY Vandirichat'),
(36, 48, 82, NULL, '2011-05-28', 'SAM Vuthy'),
(37, 53, 63, NULL, '2013-03-17', 'VEN Chanthy'),
(38, 7, 42, NULL, '2010-03-07', 'HOUR Bunthoeun'),
(39, 31, 1, NULL, '2010-04-19', 'PEN Thida'),
(40, 4, 20, NULL, '2011-07-24', 'SAM Vuthy'),
(41, 55, 45, NULL, '2013-04-08', 'VEN Chanthy'),
(42, 61, 18, NULL, '2011-06-22', 'HOUR Bunthoeun'),
(43, 49, 81, NULL, '2011-04-08', 'CHHAY Vandirichat'),
(44, 12, 76, NULL, '2011-08-20', 'HOUR Bunthoeun'),
(45, 5, 10, NULL, '2011-05-16', 'SAM Vuthy'),
(46, 45, 28, NULL, '2010-11-16', 'VOEURN Leakhna'),
(47, 31, 10, NULL, '2009-12-17', 'VEN Chanthy'),
(48, 52, 50, NULL, '2013-10-24', 'HENG Vongkol'),
(49, 7, 17, NULL, '2012-11-02', 'CHOEN Sochy'),
(50, 62, 90, NULL, '2009-02-27', 'CHHAY Vandirichat'),
(51, 23, 8, NULL, '2013-01-17', 'PEN Oudom'),
(52, 1, 83, NULL, '2009-04-18', 'SAM Vuthy'),
(53, 1, 45, NULL, '2011-12-24', 'CHOEN Sochy'),
(54, 27, 100, NULL, '2013-12-08', 'HOUR Bunthoeun'),
(55, 14, 30, NULL, '2010-09-04', 'SAM Vuthy'),
(56, 4, 36, NULL, '2013-02-26', 'HOUR Bunthoeun'),
(57, 16, 76, NULL, '2013-08-10', 'HENG Vongkol'),
(58, 4, 13, NULL, '2011-12-24', 'PEN Thida'),
(59, 29, 58, NULL, '2010-07-05', 'PEN Oudom'),
(60, 1, 76, NULL, '2012-11-03', 'PEN Oudom'),
(61, 63, 20, NULL, '2013-04-12', 'HENG Vongkol'),
(62, 61, 16, NULL, '2009-03-19', 'VOEURN Leakhna'),
(63, 26, 72, NULL, '2013-05-01', 'CHHAY Vandirichat'),
(64, 26, 77, NULL, '2009-05-27', 'PEN Thida'),
(65, 60, 30, NULL, '2012-06-25', 'UM Borey'),
(66, 28, 63, NULL, '2012-06-22', 'HENG Vongkol'),
(67, 51, 4, NULL, '2010-07-17', 'PEN Oudom'),
(68, 62, 84, NULL, '2009-03-01', 'CHOEN Sochy'),
(69, 25, 2, NULL, '2010-06-27', 'PEN Oudom'),
(70, 36, 20, NULL, '2012-11-19', 'CHOEN Sochy'),
(71, 5, 60, NULL, '2011-11-09', 'HENG Vongkol'),
(72, 17, 42, NULL, '2011-09-09', 'PEN Oudom'),
(73, 12, 88, NULL, '2013-11-24', 'HOUR Bunthoeun'),
(74, 13, 28, NULL, '2010-06-12', 'CHHAY Vandirichat'),
(75, 55, 41, NULL, '2010-07-27', 'VOEURN Leakhna'),
(76, 2, 33, NULL, '2012-02-04', 'HENG Vongkol'),
(77, 32, 19, NULL, '2011-06-28', 'PEN Thida'),
(78, 13, 46, NULL, '2011-10-06', 'HOUR Bunthoeun'),
(79, 31, 38, NULL, '2010-08-20', 'PEN Oudom'),
(80, 16, 33, NULL, '2011-05-22', 'PEN Thida'),
(81, 54, 28, NULL, '2011-08-28', 'SAM Vuthy'),
(82, 44, 2, NULL, '2011-07-10', 'PEN Oudom'),
(83, 14, 61, NULL, '2009-11-01', 'CHHAY Vandirichat'),
(84, 24, 54, NULL, '2009-02-13', 'CHOEN Sochy'),
(85, 34, 47, NULL, '2009-05-21', 'HENG Vongkol'),
(86, 58, 61, NULL, '2010-07-27', 'SAM Vuthy'),
(87, 2, 2, NULL, '2009-02-09', 'CHHAY Vandirichat'),
(88, 38, 97, NULL, '2012-07-21', 'HOUR Bunthoeun'),
(89, 28, 47, NULL, '2013-12-15', 'UM Borey'),
(90, 45, 54, NULL, '2011-04-20', 'VOEURN Leakhna'),
(91, 21, 40, NULL, '2012-08-03', 'CHHAY Vandirichat'),
(92, 36, 35, NULL, '2009-07-07', 'VEN Chanthy'),
(93, 34, 4, NULL, '2009-06-06', 'PEN Oudom'),
(94, 38, 58, NULL, '2010-09-23', 'CHHAY Vandirichat'),
(95, 26, 93, NULL, '2013-01-12', 'HENG Vongkol'),
(96, 30, 94, NULL, '2009-11-21', 'VOEURN Leakhna'),
(97, 47, 90, NULL, '2013-04-23', 'PEN Oudom'),
(98, 57, 95, NULL, '2011-06-24', 'HENG Vongkol'),
(99, 48, 55, NULL, '2012-04-19', 'UM Borey'),
(100, 11, 38, NULL, '2009-09-09', 'PEN Thida'),
(101, 49, 54, NULL, '2013-08-01', 'VOEURN Leakhna'),
(102, 61, 11, NULL, '2009-04-03', 'CHOEN Sochy'),
(103, 27, 97, NULL, '2012-05-07', 'VOEURN Leakhna'),
(104, 42, 1, NULL, '2010-10-02', 'VEN Chanthy'),
(105, 31, 50, NULL, '2012-10-16', 'VEN Chanthy'),
(106, 49, 38, NULL, '2011-12-11', 'SAM Vuthy'),
(107, 61, 60, NULL, '2011-05-03', 'CHOEN Sochy'),
(108, 47, 88, NULL, '2009-12-09', 'VOEURN Leakhna'),
(109, 13, 57, NULL, '2013-06-27', 'CHHAY Vandirichat'),
(110, 44, 89, NULL, '2012-12-21', 'PEN Oudom'),
(111, 13, 50, NULL, '2013-09-09', 'CHOEN Sochy'),
(112, 21, 48, NULL, '2009-02-25', 'UM Borey'),
(113, 52, 61, NULL, '2013-01-06', 'UM Borey'),
(114, 35, 56, NULL, '2013-10-27', 'CHOEN Sochy'),
(115, 31, 58, NULL, '2010-09-07', 'HENG Vongkol'),
(116, 36, 15, NULL, '2013-08-21', 'PEN Thida'),
(117, 55, 21, NULL, '2010-06-15', 'PEN Oudom'),
(118, 33, 52, NULL, '2011-07-14', 'HOUR Bunthoeun'),
(119, 34, 37, NULL, '2013-10-28', 'VOEURN Leakhna'),
(120, 59, 12, NULL, '2009-04-23', 'HOUR Bunthoeun'),
(121, 44, 50, NULL, '2013-11-14', 'PEN Thida'),
(122, 28, 75, NULL, '2009-07-13', 'VOEURN Leakhna'),
(123, 48, 25, NULL, '2013-01-11', 'SAM Vuthy'),
(124, 60, 37, NULL, '2009-12-14', 'SAM Vuthy'),
(125, 3, 63, NULL, '2012-01-13', 'VOEURN Leakhna'),
(126, 33, 45, NULL, '2012-01-18', 'SAM Vuthy'),
(127, 48, 36, NULL, '2010-07-28', 'HOUR Bunthoeun'),
(128, 1, 79, NULL, '2009-04-01', 'HENG Vongkol'),
(129, 26, 57, NULL, '2013-04-07', 'PEN Thida'),
(130, 18, 97, NULL, '2011-09-13', 'UM Borey'),
(131, 45, 91, NULL, '2013-08-02', 'CHOEN Sochy'),
(132, 21, 84, NULL, '2013-07-08', 'HENG Vongkol'),
(133, 36, 81, NULL, '2011-06-03', 'SAM Vuthy'),
(134, 56, 55, NULL, '2012-05-23', 'HOUR Bunthoeun'),
(135, 17, 41, NULL, '2013-06-22', 'PEN Thida'),
(136, 38, 7, NULL, '2012-12-07', 'HENG Vongkol'),
(137, 44, 26, NULL, '2012-01-23', 'HENG Vongkol'),
(138, 2, 74, NULL, '2011-07-09', 'VEN Chanthy'),
(139, 17, 29, NULL, '2011-10-16', 'HOUR Bunthoeun'),
(140, 41, 37, NULL, '2011-11-25', 'PEN Oudom'),
(141, 52, 53, NULL, '2009-03-09', 'CHOEN Sochy'),
(142, 6, 81, NULL, '2010-04-03', 'CHOEN Sochy'),
(143, 60, 28, NULL, '2013-10-05', 'VOEURN Leakhna'),
(144, 51, 47, NULL, '2012-10-25', 'HENG Vongkol'),
(145, 31, 29, NULL, '2013-10-17', 'HENG Vongkol'),
(146, 50, 84, NULL, '2011-01-02', 'HENG Vongkol'),
(147, 20, 22, NULL, '2011-12-08', 'CHOEN Sochy'),
(148, 4, 41, NULL, '2009-05-19', 'CHHAY Vandirichat'),
(149, 55, 19, NULL, '2013-04-18', 'PEN Thida'),
(150, 17, 40, NULL, '2011-02-14', 'UM Borey'),
(151, 56, 16, NULL, '2009-08-02', 'VOEURN Leakhna'),
(152, 42, 80, NULL, '2012-10-27', 'SAM Vuthy'),
(153, 20, 63, NULL, '2009-07-18', 'VEN Chanthy'),
(154, 49, 48, NULL, '2013-03-04', 'HENG Vongkol'),
(155, 8, 8, NULL, '2011-07-23', 'HOUR Bunthoeun'),
(156, 50, 58, NULL, '2010-03-12', 'VEN Chanthy'),
(157, 13, 48, NULL, '2012-12-15', 'PEN Oudom'),
(158, 23, 64, NULL, '2010-12-02', 'CHOEN Sochy'),
(159, 54, 24, NULL, '2012-03-15', 'HENG Vongkol'),
(160, 29, 53, NULL, '2011-09-21', 'VEN Chanthy'),
(161, 27, 6, NULL, '2011-10-21', 'HENG Vongkol'),
(162, 28, 54, NULL, '2012-08-11', 'HOUR Bunthoeun'),
(163, 31, 36, NULL, '2013-09-12', 'CHOEN Sochy'),
(164, 51, 89, NULL, '2013-02-08', 'SAM Vuthy'),
(165, 25, 6, NULL, '2010-03-26', 'VOEURN Leakhna'),
(166, 57, 64, NULL, '2011-04-13', 'VEN Chanthy'),
(167, 54, 91, NULL, '2013-09-28', 'HOUR Bunthoeun'),
(168, 18, 36, NULL, '2013-05-24', 'PEN Thida'),
(169, 16, 83, NULL, '2010-06-26', 'PEN Oudom'),
(170, 6, 74, NULL, '2011-09-17', 'PEN Thida'),
(171, 14, 95, NULL, '2009-09-10', 'VOEURN Leakhna'),
(172, 12, 2, NULL, '2009-11-01', 'HOUR Bunthoeun'),
(173, 8, 78, NULL, '2009-03-25', 'SAM Vuthy'),
(174, 22, 52, NULL, '2009-02-05', 'CHOEN Sochy'),
(175, 63, 77, NULL, '2013-10-19', 'CHOEN Sochy'),
(176, 44, 16, NULL, '2009-08-06', 'VEN Chanthy'),
(177, 16, 46, NULL, '2013-06-26', 'HOUR Bunthoeun'),
(178, 47, 29, NULL, '2013-12-16', 'VOEURN Leakhna'),
(179, 54, 83, NULL, '2009-08-09', 'HENG Vongkol'),
(180, 53, 52, NULL, '2010-03-05', 'VEN Chanthy'),
(181, 55, 96, NULL, '2013-04-25', 'UM Borey'),
(182, 22, 57, NULL, '2013-04-21', 'CHOEN Sochy'),
(183, 28, 60, NULL, '2012-05-17', 'HENG Vongkol'),
(184, 16, 4, NULL, '2013-12-19', 'HENG Vongkol'),
(185, 27, 28, NULL, '2009-08-22', 'SAM Vuthy'),
(186, 4, 95, NULL, '2010-01-07', 'HENG Vongkol'),
(187, 34, 41, NULL, '2013-02-13', 'PEN Oudom'),
(188, 31, 91, NULL, '2009-02-27', 'HOUR Bunthoeun'),
(189, 1, 56, NULL, '2011-03-28', 'PEN Thida'),
(190, 13, 22, NULL, '2010-08-24', 'UM Borey'),
(191, 12, 23, NULL, '2011-02-16', 'VOEURN Leakhna'),
(192, 39, 79, NULL, '2010-12-14', 'PEN Oudom'),
(193, 31, 84, NULL, '2011-12-23', 'HOUR Bunthoeun'),
(194, 34, 66, NULL, '2010-06-24', 'VEN Chanthy'),
(195, 38, 89, NULL, '2012-03-10', 'HENG Vongkol'),
(196, 29, 23, NULL, '2011-05-17', 'PEN Oudom'),
(197, 25, 35, NULL, '2011-06-08', 'VEN Chanthy'),
(198, 40, 30, NULL, '2013-06-02', 'CHOEN Sochy'),
(199, 37, 40, NULL, '2013-04-09', 'CHHAY Vandirichat'),
(200, 44, 67, NULL, '2010-11-14', 'PEN Oudom'),
(201, 12, 22, NULL, '2013-12-18', 'SAM Vuthy'),
(202, 17, 28, NULL, '2009-11-16', 'VOEURN Leakhna'),
(203, 61, 77, NULL, '2013-03-20', 'HOUR Bunthoeun'),
(204, 22, 7, NULL, '2012-09-09', 'SAM Vuthy'),
(205, 6, 3, NULL, '2010-11-28', 'PEN Oudom'),
(206, 1, 16, NULL, '2013-12-09', 'UM Borey'),
(207, 20, 20, NULL, '2009-05-21', 'CHHAY Vandirichat'),
(208, 50, 24, NULL, '2011-03-26', 'PEN Oudom'),
(209, 7, 18, NULL, '2011-04-24', 'PEN Thida'),
(210, 49, 72, NULL, '2012-05-04', 'UM Borey'),
(211, 6, 54, NULL, '2011-05-16', 'CHOEN Sochy'),
(212, 9, 15, NULL, '2010-01-19', 'HENG Vongkol'),
(213, 34, 45, NULL, '2011-04-09', 'PEN Thida'),
(214, 2, 93, NULL, '2013-02-10', 'CHHAY Vandirichat'),
(215, 13, 53, NULL, '2011-01-11', 'HOUR Bunthoeun'),
(216, 31, 18, NULL, '2012-02-08', 'CHOEN Sochy'),
(217, 34, 8, NULL, '2009-02-02', 'VEN Chanthy'),
(218, 60, 19, NULL, '2010-02-21', 'CHOEN Sochy'),
(219, 2, 14, NULL, '2012-03-21', 'SAM Vuthy'),
(220, 29, 89, NULL, '2012-01-28', 'CHOEN Sochy'),
(221, 6, 100, NULL, '2013-06-13', 'PEN Thida'),
(222, 22, 64, NULL, '2011-10-12', 'PEN Oudom'),
(223, 53, 61, NULL, '2011-11-10', 'SAM Vuthy'),
(224, 46, 61, NULL, '2009-09-25', 'CHHAY Vandirichat'),
(225, 61, 32, NULL, '2012-07-08', 'UM Borey'),
(226, 39, 22, NULL, '2009-04-02', 'CHHAY Vandirichat'),
(227, 19, 11, NULL, '2011-11-18', 'SAM Vuthy'),
(228, 36, 12, NULL, '2012-03-08', 'CHOEN Sochy'),
(229, 40, 77, NULL, '2013-12-10', 'CHOEN Sochy'),
(230, 51, 42, NULL, '2009-05-22', 'UM Borey'),
(231, 41, 17, NULL, '2012-09-02', 'HENG Vongkol'),
(232, 6, 32, NULL, '2013-01-05', 'HENG Vongkol'),
(233, 14, 84, NULL, '2009-09-02', 'CHOEN Sochy'),
(234, 14, 100, NULL, '2010-12-14', 'VEN Chanthy'),
(235, 28, 10, NULL, '2010-02-17', 'CHOEN Sochy'),
(236, 20, 37, NULL, '2010-09-21', 'CHHAY Vandirichat'),
(237, 17, 54, NULL, '2011-11-10', 'VOEURN Leakhna'),
(238, 25, 65, NULL, '2009-08-02', 'CHHAY Vandirichat'),
(239, 35, 57, NULL, '2009-12-01', 'PEN Oudom'),
(240, 9, 33, NULL, '2010-02-27', 'PEN Oudom'),
(241, 41, 82, NULL, '2012-08-08', 'SAM Vuthy'),
(242, 49, 43, NULL, '2011-12-25', 'HENG Vongkol'),
(243, 14, 89, NULL, '2011-11-26', 'UM Borey'),
(244, 3, 50, NULL, '2009-11-27', 'VEN Chanthy'),
(245, 8, 22, NULL, '2012-11-17', 'HOUR Bunthoeun'),
(246, 39, 59, NULL, '2012-11-03', 'HOUR Bunthoeun'),
(247, 7, 40, NULL, '2011-10-01', 'PEN Thida'),
(248, 29, 18, NULL, '2012-07-22', 'PEN Oudom'),
(249, 27, 26, NULL, '2009-07-08', 'VOEURN Leakhna'),
(250, 29, 39, NULL, '2010-09-27', 'PEN Thida'),
(251, 35, 24, NULL, '2010-01-09', 'HOUR Bunthoeun'),
(252, 44, 47, NULL, '2009-10-20', 'VOEURN Leakhna'),
(253, 31, 80, NULL, '2010-11-12', 'UM Borey'),
(254, 57, 68, NULL, '2012-11-17', 'UM Borey'),
(255, 51, 49, NULL, '2013-10-16', 'VEN Chanthy'),
(256, 32, 72, NULL, '2013-02-18', 'HOUR Bunthoeun'),
(257, 48, 89, NULL, '2012-08-23', 'CHOEN Sochy'),
(258, 62, 77, NULL, '2010-02-22', 'HOUR Bunthoeun'),
(259, 15, 72, NULL, '2009-07-10', 'VEN Chanthy'),
(260, 47, 72, NULL, '2010-10-25', 'VOEURN Leakhna'),
(261, 22, 7, NULL, '2012-07-04', 'HENG Vongkol'),
(262, 53, 55, NULL, '2011-05-25', 'PEN Oudom'),
(263, 37, 85, NULL, '2012-02-12', 'PEN Oudom'),
(264, 50, 63, NULL, '2011-01-22', 'CHHAY Vandirichat'),
(265, 42, 97, NULL, '2009-01-17', 'HOUR Bunthoeun'),
(266, 23, 75, NULL, '2011-06-02', 'VOEURN Leakhna'),
(267, 17, 55, NULL, '2011-08-24', 'CHOEN Sochy'),
(268, 30, 56, NULL, '2011-07-18', 'VOEURN Leakhna'),
(269, 52, 9, NULL, '2011-06-11', 'CHHAY Vandirichat'),
(270, 57, 58, NULL, '2012-09-03', 'CHOEN Sochy'),
(271, 32, 55, NULL, '2010-05-03', 'HENG Vongkol'),
(272, 23, 24, NULL, '2009-05-09', 'SAM Vuthy'),
(273, 56, 13, NULL, '2011-10-21', 'HOUR Bunthoeun'),
(274, 21, 37, NULL, '2009-04-03', 'VOEURN Leakhna'),
(275, 40, 26, NULL, '2010-04-23', 'PEN Thida'),
(276, 40, 44, NULL, '2011-02-25', 'UM Borey'),
(277, 54, 16, NULL, '2010-11-12', 'HOUR Bunthoeun'),
(278, 45, 30, NULL, '2013-12-20', 'PEN Oudom'),
(279, 59, 84, NULL, '2013-10-02', 'PEN Thida'),
(280, 11, 42, NULL, '2013-08-12', 'VOEURN Leakhna'),
(281, 3, 56, NULL, '2013-01-16', 'VOEURN Leakhna'),
(282, 8, 85, NULL, '2009-04-26', 'CHOEN Sochy'),
(283, 18, 39, NULL, '2013-07-21', 'UM Borey'),
(284, 7, 9, NULL, '2010-03-07', 'PEN Thida'),
(285, 33, 68, NULL, '2009-11-19', 'CHHAY Vandirichat'),
(286, 54, 88, NULL, '2009-05-03', 'VOEURN Leakhna'),
(287, 10, 53, NULL, '2013-08-16', 'HENG Vongkol'),
(288, 59, 72, NULL, '2013-07-10', 'VOEURN Leakhna'),
(289, 8, 33, NULL, '2009-05-22', 'HOUR Bunthoeun'),
(290, 6, 45, NULL, '2012-01-03', 'CHOEN Sochy'),
(291, 21, 59, NULL, '2010-05-27', 'CHHAY Vandirichat'),
(292, 9, 71, NULL, '2011-06-13', 'HOUR Bunthoeun'),
(293, 52, 88, NULL, '2011-12-17', 'HOUR Bunthoeun'),
(294, 1, 16, NULL, '2010-07-10', 'HENG Vongkol'),
(295, 17, 34, NULL, '2009-09-22', 'VEN Chanthy'),
(296, 10, 59, NULL, '2010-09-08', 'CHHAY Vandirichat'),
(297, 33, 36, NULL, '2011-07-23', 'HENG Vongkol'),
(298, 62, 90, NULL, '2011-04-13', 'CHOEN Sochy'),
(299, 7, 91, NULL, '2010-02-01', 'UM Borey'),
(300, 55, 14, NULL, '2010-08-07', 'CHHAY Vandirichat'),
(301, 57, 71, NULL, '2011-12-23', 'VEN Chanthy'),
(302, 42, 92, NULL, '2010-08-01', 'UM Borey'),
(303, 40, 40, NULL, '2013-01-05', 'CHOEN Sochy'),
(304, 55, 92, NULL, '2010-11-25', 'VEN Chanthy'),
(305, 59, 100, NULL, '2013-04-24', 'VOEURN Leakhna'),
(306, 61, 12, NULL, '2009-11-14', 'SAM Vuthy'),
(307, 21, 74, NULL, '2009-07-22', 'PEN Thida'),
(308, 35, 16, NULL, '2012-03-10', 'CHOEN Sochy'),
(309, 4, 62, NULL, '2012-10-18', 'HOUR Bunthoeun'),
(310, 17, 36, NULL, '2011-07-04', 'HOUR Bunthoeun'),
(311, 25, 23, NULL, '2010-03-26', 'HENG Vongkol'),
(312, 4, 84, NULL, '2011-07-19', 'HENG Vongkol'),
(313, 51, 52, NULL, '2013-11-27', 'UM Borey'),
(314, 6, 25, NULL, '2013-08-06', 'PEN Oudom'),
(315, 4, 11, NULL, '2012-05-13', 'UM Borey'),
(316, 36, 100, NULL, '2012-12-19', 'CHOEN Sochy'),
(317, 51, 83, NULL, '2011-05-09', 'VOEURN Leakhna'),
(318, 48, 39, NULL, '2009-06-01', 'VOEURN Leakhna'),
(319, 21, 25, NULL, '2009-07-10', 'UM Borey'),
(320, 44, 60, NULL, '2012-12-27', 'HENG Vongkol'),
(321, 29, 67, NULL, '2012-06-15', 'CHHAY Vandirichat'),
(322, 6, 81, NULL, '2009-05-14', 'HENG Vongkol'),
(323, 49, 18, NULL, '2010-06-13', 'PEN Thida'),
(324, 16, 98, NULL, '2013-08-16', 'UM Borey'),
(325, 49, 34, NULL, '2011-04-09', 'CHOEN Sochy'),
(326, 41, 49, NULL, '2012-05-25', 'UM Borey'),
(327, 46, 42, NULL, '2011-08-23', 'HENG Vongkol'),
(328, 13, 72, NULL, '2011-10-24', 'CHOEN Sochy'),
(329, 15, 54, NULL, '2011-12-25', 'CHOEN Sochy'),
(330, 50, 92, NULL, '2010-07-11', 'CHHAY Vandirichat'),
(331, 33, 1, NULL, '2009-12-18', 'HENG Vongkol'),
(332, 26, 37, NULL, '2010-12-21', 'HENG Vongkol'),
(333, 56, 79, NULL, '2013-01-28', 'PEN Oudom'),
(334, 27, 56, NULL, '2010-05-20', 'PEN Thida'),
(335, 10, 100, NULL, '2009-09-09', 'PEN Oudom'),
(336, 54, 73, NULL, '2012-02-14', 'HOUR Bunthoeun'),
(337, 46, 33, NULL, '2009-11-04', 'VEN Chanthy'),
(338, 48, 64, NULL, '2013-05-04', 'HENG Vongkol'),
(339, 51, 45, NULL, '2013-01-12', 'SAM Vuthy'),
(340, 54, 8, NULL, '2011-04-19', 'SAM Vuthy'),
(341, 1, 36, NULL, '2011-06-06', 'SAM Vuthy'),
(342, 29, 21, NULL, '2012-09-25', 'CHHAY Vandirichat'),
(343, 24, 96, NULL, '2011-04-20', 'CHOEN Sochy'),
(344, 46, 41, NULL, '2009-02-13', 'HOUR Bunthoeun'),
(345, 34, 11, NULL, '2012-12-13', 'HENG Vongkol'),
(346, 31, 21, NULL, '2012-01-26', 'HOUR Bunthoeun'),
(347, 53, 44, NULL, '2011-09-19', 'CHOEN Sochy'),
(348, 8, 75, NULL, '2013-12-17', 'CHOEN Sochy'),
(349, 29, 27, NULL, '2013-02-24', 'HENG Vongkol'),
(350, 41, 60, NULL, '2012-08-10', 'CHOEN Sochy'),
(351, 54, 20, NULL, '2012-05-22', 'PEN Oudom'),
(352, 4, 99, NULL, '2013-06-11', 'UM Borey'),
(353, 56, 57, NULL, '2009-11-23', 'PEN Thida'),
(354, 28, 79, NULL, '2013-11-22', 'UM Borey'),
(355, 27, 37, NULL, '2009-10-25', 'HOUR Bunthoeun'),
(356, 6, 76, NULL, '2011-09-27', 'UM Borey'),
(357, 32, 40, NULL, '2011-08-26', 'CHOEN Sochy'),
(358, 38, 12, NULL, '2012-07-01', 'UM Borey'),
(359, 9, 97, NULL, '2012-04-20', 'HOUR Bunthoeun'),
(360, 63, 10, NULL, '2009-03-16', 'SAM Vuthy'),
(361, 11, 68, NULL, '2011-06-19', 'HOUR Bunthoeun'),
(362, 33, 79, NULL, '2009-04-08', 'HOUR Bunthoeun'),
(363, 36, 69, NULL, '2009-11-22', 'PEN Oudom'),
(364, 40, 95, NULL, '2013-06-04', 'SAM Vuthy'),
(365, 9, 4, NULL, '2013-03-08', 'VEN Chanthy'),
(366, 13, 49, NULL, '2012-07-02', 'PEN Oudom'),
(367, 7, 21, NULL, '2013-06-12', 'UM Borey'),
(368, 44, 2, NULL, '2010-11-25', 'PEN Oudom'),
(369, 4, 85, NULL, '2012-07-01', 'UM Borey'),
(370, 61, 42, NULL, '2010-08-08', 'VOEURN Leakhna'),
(371, 20, 14, NULL, '2010-12-21', 'CHOEN Sochy'),
(372, 6, 79, NULL, '2013-05-27', 'PEN Thida'),
(373, 22, 16, NULL, '2010-11-04', 'SAM Vuthy'),
(374, 38, 39, NULL, '2010-01-18', 'UM Borey'),
(375, 41, 9, NULL, '2009-04-20', 'PEN Oudom'),
(376, 55, 94, NULL, '2011-11-08', 'HOUR Bunthoeun'),
(377, 15, 50, NULL, '2010-07-27', 'PEN Thida'),
(378, 56, 84, NULL, '2011-07-14', 'VEN Chanthy'),
(379, 19, 62, NULL, '2011-07-07', 'PEN Thida'),
(380, 12, 100, NULL, '2010-12-25', 'VEN Chanthy'),
(381, 9, 3, NULL, '2011-05-26', 'PEN Oudom'),
(382, 13, 87, NULL, '2010-04-16', 'PEN Oudom'),
(383, 53, 35, NULL, '2013-08-05', 'SAM Vuthy'),
(384, 48, 54, NULL, '2010-10-28', 'UM Borey'),
(385, 46, 91, NULL, '2013-09-27', 'SAM Vuthy'),
(386, 13, 91, NULL, '2013-11-17', 'UM Borey'),
(387, 38, 100, NULL, '2012-06-01', 'PEN Oudom'),
(388, 17, 7, NULL, '2009-07-27', 'CHOEN Sochy'),
(389, 41, 4, NULL, '2013-03-16', 'PEN Thida'),
(390, 14, 31, NULL, '2013-12-24', 'SAM Vuthy'),
(391, 35, 36, NULL, '2009-09-18', 'CHHAY Vandirichat'),
(392, 47, 4, NULL, '2009-05-10', 'HENG Vongkol'),
(393, 49, 50, NULL, '2013-08-17', 'CHOEN Sochy'),
(394, 42, 14, NULL, '2009-11-28', 'VOEURN Leakhna'),
(395, 16, 28, NULL, '2013-12-25', 'HOUR Bunthoeun'),
(396, 47, 43, NULL, '2011-09-02', 'HOUR Bunthoeun'),
(397, 24, 81, NULL, '2010-02-07', 'PEN Oudom'),
(398, 38, 8, NULL, '2011-09-27', 'CHHAY Vandirichat'),
(399, 56, 34, NULL, '2011-03-16', 'VEN Chanthy'),
(400, 1, 14, NULL, '2013-03-14', 'HOUR Bunthoeun'),
(401, 17, 77, NULL, '2012-05-16', 'PEN Oudom'),
(402, 63, 35, NULL, '2013-12-25', 'PEN Oudom'),
(403, 48, 43, NULL, '2013-01-09', 'CHHAY Vandirichat'),
(404, 37, 66, NULL, '2010-10-06', 'PEN Thida'),
(405, 25, 93, NULL, '2012-03-05', 'SAM Vuthy'),
(406, 38, 34, NULL, '2013-02-08', 'SAM Vuthy'),
(407, 42, 37, NULL, '2011-11-18', 'SAM Vuthy'),
(408, 33, 86, NULL, '2011-07-16', 'UM Borey'),
(409, 56, 59, NULL, '2010-03-27', 'SAM Vuthy'),
(410, 49, 4, NULL, '2009-06-21', 'CHHAY Vandirichat'),
(411, 41, 70, NULL, '2010-11-23', 'PEN Thida'),
(412, 47, 93, NULL, '2013-09-17', 'VEN Chanthy'),
(413, 51, 14, NULL, '2010-01-17', 'CHOEN Sochy'),
(414, 43, 59, NULL, '2011-01-06', 'PEN Thida'),
(415, 32, 44, NULL, '2013-08-12', 'CHOEN Sochy'),
(416, 31, 23, NULL, '2013-07-14', 'UM Borey'),
(417, 10, 79, NULL, '2009-01-03', 'HOUR Bunthoeun'),
(418, 56, 23, NULL, '2009-12-14', 'UM Borey'),
(419, 26, 32, NULL, '2012-03-06', 'SAM Vuthy'),
(420, 29, 34, NULL, '2010-08-06', 'VEN Chanthy'),
(421, 50, 49, NULL, '2010-05-01', 'PEN Thida'),
(422, 9, 17, NULL, '2009-04-18', 'VEN Chanthy'),
(423, 12, 12, NULL, '2009-07-14', 'CHOEN Sochy'),
(424, 27, 2, NULL, '2009-06-06', 'PEN Thida'),
(425, 4, 27, NULL, '2009-03-05', 'CHHAY Vandirichat'),
(426, 15, 20, NULL, '2009-04-26', 'HOUR Bunthoeun'),
(427, 55, 75, NULL, '2012-11-16', 'HENG Vongkol'),
(428, 62, 1, NULL, '2009-04-12', 'CHHAY Vandirichat'),
(429, 12, 83, NULL, '2012-10-23', 'SAM Vuthy'),
(430, 35, 1, NULL, '2012-11-03', 'HENG Vongkol'),
(431, 32, 71, NULL, '2010-04-27', 'SAM Vuthy'),
(432, 52, 95, NULL, '2010-11-20', 'UM Borey'),
(433, 9, 88, NULL, '2013-01-21', 'CHOEN Sochy'),
(434, 48, 57, NULL, '2013-11-04', 'PEN Oudom'),
(435, 16, 70, NULL, '2012-01-23', 'HOUR Bunthoeun'),
(436, 43, 76, NULL, '2013-07-11', 'HOUR Bunthoeun'),
(437, 21, 26, NULL, '2010-12-01', 'VEN Chanthy'),
(438, 25, 98, NULL, '2010-12-22', 'VOEURN Leakhna'),
(439, 13, 84, NULL, '2009-03-04', 'SAM Vuthy'),
(440, 55, 44, NULL, '2010-04-20', 'PEN Thida'),
(441, 47, 62, NULL, '2013-10-26', 'PEN Thida'),
(442, 13, 86, NULL, '2010-11-24', 'SAM Vuthy'),
(443, 7, 50, NULL, '2011-04-14', 'SAM Vuthy'),
(444, 7, 93, NULL, '2012-01-03', 'HENG Vongkol'),
(445, 18, 80, NULL, '2011-05-04', 'UM Borey'),
(446, 41, 85, NULL, '2011-05-13', 'HENG Vongkol'),
(447, 20, 49, NULL, '2012-05-19', 'UM Borey'),
(448, 40, 85, NULL, '2011-02-16', 'SAM Vuthy'),
(449, 4, 11, NULL, '2011-10-19', 'CHOEN Sochy'),
(450, 41, 20, NULL, '2012-06-23', 'PEN Oudom'),
(451, 5, 36, NULL, '2011-05-17', 'HENG Vongkol'),
(452, 57, 20, NULL, '2009-09-27', 'CHOEN Sochy'),
(453, 62, 90, NULL, '2013-02-11', 'SAM Vuthy'),
(454, 61, 91, NULL, '2012-04-11', 'CHHAY Vandirichat'),
(455, 11, 43, NULL, '2013-11-09', 'HENG Vongkol'),
(456, 38, 57, NULL, '2013-04-27', 'SAM Vuthy'),
(457, 24, 40, NULL, '2012-09-24', 'HENG Vongkol'),
(458, 23, 52, NULL, '2011-08-10', 'HOUR Bunthoeun'),
(459, 31, 53, NULL, '2010-10-18', 'HENG Vongkol'),
(460, 19, 62, NULL, '2011-09-13', 'HENG Vongkol'),
(461, 46, 91, NULL, '2009-07-11', 'CHHAY Vandirichat'),
(462, 29, 19, NULL, '2011-10-06', 'UM Borey'),
(463, 11, 82, NULL, '2013-05-05', 'PEN Thida'),
(464, 52, 52, NULL, '2011-11-12', 'CHOEN Sochy'),
(465, 49, 67, NULL, '2013-09-18', 'CHOEN Sochy'),
(466, 35, 93, NULL, '2013-04-23', 'VEN Chanthy'),
(467, 11, 47, NULL, '2013-12-18', 'PEN Thida'),
(468, 38, 39, NULL, '2010-05-10', 'CHOEN Sochy'),
(469, 52, 89, NULL, '2013-12-21', 'VEN Chanthy'),
(470, 28, 73, NULL, '2013-11-24', 'SAM Vuthy'),
(471, 63, 5, NULL, '2013-03-06', 'HENG Vongkol'),
(472, 1, 42, NULL, '2010-09-11', 'UM Borey'),
(473, 39, 14, NULL, '2012-12-24', 'UM Borey'),
(474, 27, 93, NULL, '2011-01-19', 'CHHAY Vandirichat'),
(475, 63, 34, NULL, '2012-10-01', 'UM Borey'),
(476, 7, 90, NULL, '2010-04-26', 'CHOEN Sochy'),
(477, 38, 27, NULL, '2009-11-07', 'PEN Thida'),
(478, 4, 46, NULL, '2013-09-14', 'PEN Oudom'),
(479, 57, 56, NULL, '2013-02-09', 'PEN Thida'),
(480, 12, 51, NULL, '2013-02-03', 'CHHAY Vandirichat'),
(481, 44, 74, NULL, '2009-11-17', 'SAM Vuthy'),
(482, 52, 8, NULL, '2009-03-14', 'PEN Thida'),
(483, 30, 87, NULL, '2012-10-26', 'HENG Vongkol'),
(484, 8, 18, NULL, '2010-05-13', 'HENG Vongkol'),
(485, 20, 8, NULL, '2013-11-10', 'VEN Chanthy'),
(486, 60, 61, NULL, '2012-01-22', 'VEN Chanthy'),
(487, 44, 83, NULL, '2010-08-14', 'UM Borey'),
(488, 9, 39, NULL, '2013-08-17', 'PEN Oudom'),
(489, 39, 30, NULL, '2012-09-23', 'PEN Thida'),
(490, 3, 84, NULL, '2012-09-23', 'HENG Vongkol'),
(491, 43, 15, NULL, '2009-06-15', 'HENG Vongkol'),
(492, 57, 11, NULL, '2012-12-21', 'UM Borey'),
(493, 8, 35, NULL, '2012-02-05', 'VEN Chanthy'),
(494, 27, 31, NULL, '2009-11-20', 'UM Borey'),
(495, 25, 60, NULL, '2009-04-01', 'CHHAY Vandirichat'),
(496, 22, 84, NULL, '2012-10-05', 'SAM Vuthy'),
(497, 6, 74, NULL, '2009-09-11', 'UM Borey'),
(498, 41, 94, NULL, '2009-04-27', 'CHHAY Vandirichat'),
(499, 49, 17, NULL, '2013-02-16', 'HOUR Bunthoeun'),
(500, 15, 66, NULL, '2012-06-22', 'SAM Vuthy'),
(501, 34, 14, NULL, '2012-02-04', 'VEN Chanthy'),
(502, 54, 51, NULL, '2012-03-25', 'HOUR Bunthoeun'),
(503, 18, 18, NULL, '2013-04-05', 'VEN Chanthy'),
(504, 32, 68, NULL, '2012-09-24', 'HENG Vongkol'),
(505, 5, 54, NULL, '2010-08-20', 'HENG Vongkol'),
(506, 42, 54, NULL, '2013-12-16', 'VOEURN Leakhna'),
(507, 20, 18, NULL, '2009-10-09', 'PEN Thida'),
(508, 31, 34, NULL, '2012-06-15', 'CHOEN Sochy'),
(509, 47, 84, NULL, '2010-09-20', 'PEN Oudom'),
(510, 5, 30, NULL, '2012-06-22', 'VOEURN Leakhna'),
(511, 48, 83, NULL, '2011-01-15', 'VEN Chanthy'),
(512, 32, 58, NULL, '2009-10-14', 'CHHAY Vandirichat'),
(513, 40, 33, NULL, '2013-01-08', 'HOUR Bunthoeun'),
(514, 60, 32, NULL, '2013-10-21', 'CHOEN Sochy'),
(515, 16, 86, NULL, '2012-03-27', 'PEN Oudom'),
(516, 18, 17, NULL, '2009-03-20', 'HOUR Bunthoeun'),
(517, 17, 62, NULL, '2013-09-12', 'SAM Vuthy'),
(518, 31, 25, NULL, '2009-11-18', 'PEN Thida'),
(519, 60, 65, NULL, '2013-01-25', 'CHOEN Sochy'),
(520, 43, 98, NULL, '2011-09-13', 'CHOEN Sochy'),
(521, 47, 99, NULL, '2009-10-26', 'CHHAY Vandirichat'),
(522, 25, 77, NULL, '2011-05-13', 'VOEURN Leakhna'),
(523, 22, 73, NULL, '2011-12-28', 'VOEURN Leakhna'),
(524, 15, 87, NULL, '2012-10-06', 'PEN Thida'),
(525, 17, 91, NULL, '2011-11-10', 'CHHAY Vandirichat'),
(526, 45, 70, NULL, '2012-02-07', 'UM Borey'),
(527, 4, 67, NULL, '2012-03-06', 'UM Borey'),
(528, 4, 85, NULL, '2012-01-19', 'VEN Chanthy'),
(529, 59, 59, NULL, '2011-03-02', 'VEN Chanthy'),
(530, 27, 76, NULL, '2010-03-10', 'VEN Chanthy'),
(531, 15, 56, NULL, '2013-04-23', 'VEN Chanthy'),
(532, 39, 39, NULL, '2009-03-27', 'SAM Vuthy'),
(533, 40, 62, NULL, '2010-10-08', 'HOUR Bunthoeun'),
(534, 16, 71, NULL, '2013-09-02', 'UM Borey'),
(535, 4, 1, NULL, '2009-12-07', 'CHOEN Sochy'),
(536, 15, 88, NULL, '2013-02-22', 'HENG Vongkol'),
(537, 4, 47, NULL, '2012-09-17', 'PEN Thida'),
(538, 37, 22, NULL, '2012-04-25', 'VOEURN Leakhna'),
(539, 28, 54, NULL, '2012-12-09', 'VEN Chanthy'),
(540, 16, 97, NULL, '2012-02-08', 'HOUR Bunthoeun'),
(541, 28, 37, NULL, '2011-07-01', 'HOUR Bunthoeun'),
(542, 45, 39, NULL, '2013-03-22', 'CHOEN Sochy'),
(543, 48, 64, NULL, '2010-03-22', 'HENG Vongkol'),
(544, 18, 23, NULL, '2012-08-02', 'PEN Oudom'),
(545, 22, 40, NULL, '2009-12-02', 'SAM Vuthy'),
(546, 10, 47, NULL, '2012-03-06', 'CHOEN Sochy'),
(547, 4, 37, NULL, '2009-06-15', 'CHHAY Vandirichat'),
(548, 6, 83, NULL, '2013-03-01', 'PEN Thida'),
(549, 52, 12, NULL, '2013-12-27', 'CHOEN Sochy'),
(550, 34, 89, NULL, '2010-01-06', 'VEN Chanthy'),
(551, 34, 46, NULL, '2012-03-09', 'PEN Thida'),
(552, 61, 46, NULL, '2010-08-12', 'VEN Chanthy'),
(553, 42, 86, NULL, '2012-09-15', 'VEN Chanthy'),
(554, 62, 47, NULL, '2011-12-24', 'SAM Vuthy'),
(555, 6, 45, NULL, '2012-01-15', 'SAM Vuthy'),
(556, 17, 7, NULL, '2009-02-06', 'CHOEN Sochy'),
(557, 29, 19, NULL, '2013-07-03', 'VEN Chanthy'),
(558, 61, 8, NULL, '2013-02-15', 'CHOEN Sochy'),
(559, 40, 86, NULL, '2013-03-02', 'CHOEN Sochy'),
(560, 34, 90, NULL, '2012-06-28', 'CHOEN Sochy'),
(561, 36, 96, NULL, '2011-03-23', 'SAM Vuthy'),
(562, 37, 92, NULL, '2010-04-15', 'CHOEN Sochy'),
(563, 48, 50, NULL, '2012-10-28', 'SAM Vuthy'),
(564, 4, 76, NULL, '2010-04-27', 'VEN Chanthy'),
(565, 45, 1, NULL, '2012-03-06', 'VOEURN Leakhna'),
(566, 63, 25, NULL, '2013-04-12', 'CHHAY Vandirichat'),
(567, 58, 100, NULL, '2013-01-14', 'CHHAY Vandirichat'),
(568, 35, 93, NULL, '2013-02-08', 'CHHAY Vandirichat'),
(569, 56, 49, NULL, '2011-04-28', 'CHOEN Sochy'),
(570, 12, 31, NULL, '2011-02-26', 'CHHAY Vandirichat'),
(571, 61, 42, NULL, '2010-10-03', 'CHOEN Sochy'),
(572, 44, 3, NULL, '2009-02-17', 'VEN Chanthy'),
(573, 47, 94, NULL, '2012-04-10', 'HOUR Bunthoeun'),
(574, 26, 68, NULL, '2013-05-18', 'CHHAY Vandirichat'),
(575, 3, 55, NULL, '2012-05-26', 'SAM Vuthy'),
(576, 56, 13, NULL, '2010-06-01', 'CHOEN Sochy'),
(577, 32, 23, NULL, '2010-02-27', 'UM Borey'),
(578, 22, 94, NULL, '2011-08-05', 'HOUR Bunthoeun'),
(579, 16, 24, NULL, '2013-07-09', 'HENG Vongkol'),
(580, 42, 80, NULL, '2011-11-20', 'PEN Oudom'),
(581, 53, 90, NULL, '2012-11-15', 'CHHAY Vandirichat'),
(582, 15, 65, NULL, '2011-11-08', 'CHOEN Sochy'),
(583, 27, 99, NULL, '2013-07-16', 'CHOEN Sochy'),
(584, 59, 85, NULL, '2013-01-05', 'CHHAY Vandirichat'),
(585, 21, 30, NULL, '2013-07-03', 'HENG Vongkol'),
(586, 11, 60, NULL, '2012-01-22', 'PEN Thida'),
(587, 31, 74, NULL, '2010-08-22', 'SAM Vuthy'),
(588, 52, 91, NULL, '2009-01-19', 'HENG Vongkol'),
(589, 51, 64, NULL, '2009-01-09', 'VEN Chanthy'),
(590, 39, 69, NULL, '2010-10-26', 'UM Borey'),
(591, 15, 8, NULL, '2011-03-16', 'PEN Oudom'),
(592, 59, 68, NULL, '2013-09-25', 'PEN Thida'),
(593, 20, 57, NULL, '2013-02-26', 'VEN Chanthy'),
(594, 24, 6, NULL, '2010-07-12', 'CHHAY Vandirichat'),
(595, 17, 45, NULL, '2012-02-10', 'SAM Vuthy'),
(596, 5, 3, NULL, '2013-11-02', 'VOEURN Leakhna'),
(597, 45, 16, NULL, '2010-11-01', 'VOEURN Leakhna'),
(598, 25, 66, NULL, '2012-10-10', 'CHHAY Vandirichat'),
(599, 23, 35, NULL, '2009-08-07', 'CHOEN Sochy'),
(600, 61, 67, NULL, '2013-09-22', 'PEN Oudom'),
(601, 16, 60, NULL, '2011-11-26', 'CHOEN Sochy'),
(602, 56, 62, NULL, '2012-01-17', 'UM Borey'),
(603, 57, 1, NULL, '2010-10-07', 'PEN Oudom'),
(604, 18, 78, NULL, '2012-08-09', 'HENG Vongkol'),
(605, 18, 72, NULL, '2009-02-02', 'PEN Oudom'),
(606, 26, 58, NULL, '2010-10-10', 'VEN Chanthy'),
(607, 27, 71, NULL, '2012-06-19', 'SAM Vuthy'),
(608, 4, 32, NULL, '2012-01-07', 'HENG Vongkol'),
(609, 52, 100, NULL, '2011-08-04', 'HOUR Bunthoeun'),
(610, 47, 88, NULL, '2009-01-03', 'VOEURN Leakhna'),
(611, 13, 39, NULL, '2011-08-27', 'PEN Oudom'),
(612, 5, 31, NULL, '2013-07-22', 'UM Borey'),
(613, 31, 98, NULL, '2012-03-13', 'PEN Thida'),
(614, 34, 84, NULL, '2011-11-11', 'PEN Thida'),
(615, 4, 98, NULL, '2011-07-27', 'PEN Oudom'),
(616, 13, 58, NULL, '2012-02-26', 'HENG Vongkol'),
(617, 61, 1, NULL, '2009-08-17', 'PEN Oudom'),
(618, 36, 98, NULL, '2013-04-02', 'SAM Vuthy'),
(619, 40, 34, NULL, '2012-06-08', 'HENG Vongkol'),
(620, 5, 93, NULL, '2011-09-13', 'VOEURN Leakhna'),
(621, 51, 44, NULL, '2012-08-25', 'PEN Oudom'),
(622, 28, 12, NULL, '2012-03-02', 'UM Borey'),
(623, 6, 40, NULL, '2010-02-27', 'VEN Chanthy'),
(624, 41, 92, NULL, '2012-10-22', 'HENG Vongkol'),
(625, 56, 23, NULL, '2009-12-16', 'UM Borey'),
(626, 16, 10, NULL, '2013-11-09', 'VEN Chanthy'),
(627, 12, 58, NULL, '2012-10-18', 'SAM Vuthy'),
(628, 32, 53, NULL, '2010-05-21', 'CHOEN Sochy'),
(629, 46, 47, NULL, '2011-06-24', 'PEN Thida'),
(630, 26, 48, NULL, '2011-02-11', 'HOUR Bunthoeun'),
(631, 23, 23, NULL, '2011-04-16', 'PEN Oudom'),
(632, 18, 35, NULL, '2013-11-13', 'PEN Oudom'),
(633, 42, 6, NULL, '2011-07-02', 'PEN Oudom'),
(634, 37, 82, NULL, '2011-08-04', 'HENG Vongkol'),
(635, 36, 42, NULL, '2011-11-15', 'PEN Oudom'),
(636, 9, 84, NULL, '2012-09-21', 'UM Borey'),
(637, 41, 95, NULL, '2012-11-05', 'SAM Vuthy'),
(638, 23, 62, NULL, '2009-11-09', 'CHOEN Sochy'),
(639, 55, 12, NULL, '2009-06-27', 'PEN Oudom'),
(640, 57, 47, NULL, '2013-02-11', 'HOUR Bunthoeun'),
(641, 58, 66, NULL, '2010-06-27', 'HOUR Bunthoeun'),
(642, 21, 49, NULL, '2012-04-08', 'HOUR Bunthoeun'),
(643, 39, 51, NULL, '2010-11-08', 'VEN Chanthy'),
(644, 5, 22, NULL, '2013-04-07', 'SAM Vuthy'),
(645, 32, 66, NULL, '2012-05-25', 'SAM Vuthy'),
(646, 1, 6, NULL, '2011-06-06', 'HENG Vongkol'),
(647, 56, 19, NULL, '2012-02-11', 'HOUR Bunthoeun'),
(648, 55, 64, NULL, '2009-09-05', 'PEN Thida'),
(649, 8, 58, NULL, '2012-08-25', 'HOUR Bunthoeun'),
(650, 24, 11, NULL, '2010-07-06', 'CHHAY Vandirichat'),
(651, 52, 1, NULL, '2011-06-05', 'CHHAY Vandirichat'),
(652, 41, 84, NULL, '2011-10-07', 'SAM Vuthy'),
(653, 22, 13, NULL, '2012-03-15', 'CHOEN Sochy'),
(654, 14, 33, NULL, '2009-07-17', 'CHHAY Vandirichat'),
(655, 7, 38, NULL, '2009-09-20', 'HOUR Bunthoeun'),
(656, 39, 7, NULL, '2013-04-24', 'PEN Oudom'),
(657, 3, 57, NULL, '2010-10-25', 'VOEURN Leakhna'),
(658, 26, 13, NULL, '2011-08-22', 'VEN Chanthy'),
(659, 30, 21, NULL, '2011-04-06', 'PEN Oudom'),
(660, 50, 31, NULL, '2012-02-17', 'PEN Thida'),
(661, 37, 36, NULL, '2009-06-14', 'UM Borey'),
(662, 60, 24, NULL, '2009-07-16', 'CHHAY Vandirichat'),
(663, 15, 33, NULL, '2010-03-25', 'UM Borey'),
(664, 62, 19, NULL, '2010-03-19', 'HENG Vongkol'),
(665, 4, 69, NULL, '2010-05-12', 'UM Borey'),
(666, 23, 19, NULL, '2010-07-06', 'VEN Chanthy'),
(667, 4, 71, NULL, '2012-07-06', 'VOEURN Leakhna'),
(668, 24, 85, NULL, '2013-06-15', 'VOEURN Leakhna'),
(669, 44, 60, NULL, '2011-06-22', 'HOUR Bunthoeun'),
(670, 37, 86, NULL, '2009-08-10', 'CHOEN Sochy'),
(671, 25, 60, NULL, '2012-06-27', 'CHHAY Vandirichat'),
(672, 5, 41, NULL, '2012-05-01', 'CHHAY Vandirichat'),
(673, 21, 64, NULL, '2010-10-04', 'HOUR Bunthoeun'),
(674, 36, 77, NULL, '2013-04-06', 'HENG Vongkol'),
(675, 20, 42, NULL, '2009-04-10', 'VOEURN Leakhna'),
(676, 44, 80, NULL, '2009-12-06', 'VEN Chanthy'),
(677, 56, 54, NULL, '2012-05-18', 'CHOEN Sochy'),
(678, 35, 46, NULL, '2012-05-23', 'CHHAY Vandirichat'),
(679, 54, 59, NULL, '2009-07-03', 'PEN Oudom'),
(680, 6, 46, NULL, '2009-02-21', 'PEN Oudom'),
(681, 20, 5, NULL, '2009-04-21', 'PEN Oudom'),
(682, 7, 24, NULL, '2011-02-17', 'HOUR Bunthoeun'),
(683, 34, 6, NULL, '2011-07-22', 'CHOEN Sochy'),
(684, 23, 23, NULL, '2012-09-21', 'VEN Chanthy'),
(685, 25, 97, NULL, '2013-08-12', 'SAM Vuthy'),
(686, 17, 53, NULL, '2012-01-05', 'CHOEN Sochy'),
(687, 53, 52, NULL, '2010-08-17', 'PEN Thida'),
(688, 43, 30, NULL, '2011-07-21', 'UM Borey'),
(689, 41, 77, NULL, '2010-12-07', 'PEN Thida'),
(690, 9, 56, NULL, '2009-02-22', 'PEN Oudom'),
(691, 46, 17, NULL, '2010-06-21', 'PEN Thida'),
(692, 21, 74, NULL, '2010-05-13', 'HOUR Bunthoeun'),
(693, 49, 41, NULL, '2010-09-13', 'PEN Thida'),
(694, 55, 83, NULL, '2013-05-17', 'PEN Oudom'),
(695, 38, 13, NULL, '2010-10-23', 'HENG Vongkol'),
(696, 15, 78, NULL, '2013-04-18', 'PEN Oudom'),
(697, 60, 59, NULL, '2012-02-02', 'CHHAY Vandirichat'),
(698, 44, 39, NULL, '2009-08-24', 'PEN Thida'),
(699, 7, 34, NULL, '2013-09-13', 'HOUR Bunthoeun'),
(700, 6, 90, NULL, '2012-07-10', 'HENG Vongkol'),
(701, 18, 44, NULL, '2010-07-10', 'CHHAY Vandirichat'),
(702, 24, 19, NULL, '2011-05-03', 'PEN Oudom'),
(703, 26, 6, NULL, '2011-08-01', 'VOEURN Leakhna'),
(704, 2, 28, NULL, '2012-04-14', 'SAM Vuthy'),
(705, 60, 80, NULL, '2013-06-25', 'PEN Thida'),
(706, 21, 17, NULL, '2013-03-12', 'HOUR Bunthoeun'),
(707, 42, 7, NULL, '2011-06-28', 'HENG Vongkol'),
(708, 39, 66, NULL, '2011-11-14', 'UM Borey'),
(709, 48, 45, NULL, '2013-07-25', 'CHOEN Sochy'),
(710, 52, 95, NULL, '2009-09-02', 'CHOEN Sochy'),
(711, 10, 79, NULL, '2013-01-15', 'CHOEN Sochy'),
(712, 13, 72, NULL, '2010-05-28', 'HENG Vongkol'),
(713, 50, 13, NULL, '2013-01-28', 'HOUR Bunthoeun'),
(714, 35, 43, NULL, '2013-09-07', 'PEN Thida'),
(715, 37, 80, NULL, '2013-08-17', 'VOEURN Leakhna'),
(716, 48, 42, NULL, '2010-06-03', 'HOUR Bunthoeun'),
(717, 16, 14, NULL, '2010-05-22', 'PEN Oudom'),
(718, 12, 76, NULL, '2012-02-19', 'PEN Oudom'),
(719, 17, 31, NULL, '2012-06-24', 'CHHAY Vandirichat'),
(720, 2, 12, NULL, '2013-02-11', 'PEN Oudom'),
(721, 56, 5, NULL, '2013-05-22', 'VEN Chanthy'),
(722, 38, 92, NULL, '2011-07-24', 'CHOEN Sochy'),
(723, 37, 30, NULL, '2011-04-01', 'UM Borey'),
(724, 10, 38, NULL, '2012-02-12', 'UM Borey'),
(725, 12, 41, NULL, '2011-12-23', 'VOEURN Leakhna'),
(726, 62, 81, NULL, '2013-09-11', 'VEN Chanthy'),
(727, 31, 37, NULL, '2012-02-26', 'CHOEN Sochy'),
(728, 52, 64, NULL, '2011-03-07', 'VOEURN Leakhna'),
(729, 63, 47, NULL, '2013-01-01', 'VOEURN Leakhna'),
(730, 53, 58, NULL, '2009-12-04', 'VOEURN Leakhna'),
(731, 47, 36, NULL, '2011-05-05', 'HENG Vongkol'),
(732, 12, 61, NULL, '2010-04-12', 'UM Borey'),
(733, 27, 59, NULL, '2011-03-07', 'HOUR Bunthoeun'),
(734, 18, 67, NULL, '2013-04-20', 'CHOEN Sochy'),
(735, 57, 50, NULL, '2009-10-21', 'SAM Vuthy'),
(736, 45, 78, NULL, '2010-10-02', 'PEN Thida'),
(737, 33, 31, NULL, '2011-03-27', 'PEN Thida'),
(738, 41, 80, NULL, '2012-09-26', 'CHOEN Sochy'),
(739, 60, 100, NULL, '2010-06-19', 'HOUR Bunthoeun'),
(740, 42, 62, NULL, '2013-12-13', 'UM Borey'),
(741, 14, 38, NULL, '2012-01-07', 'CHOEN Sochy'),
(742, 37, 90, NULL, '2013-11-11', 'PEN Thida'),
(743, 47, 15, NULL, '2013-01-25', 'HOUR Bunthoeun'),
(744, 31, 16, NULL, '2010-06-12', 'PEN Thida'),
(745, 24, 73, NULL, '2009-12-09', 'HOUR Bunthoeun'),
(746, 30, 13, NULL, '2011-10-09', 'VOEURN Leakhna'),
(747, 60, 98, NULL, '2012-08-03', 'HOUR Bunthoeun'),
(748, 54, 28, NULL, '2010-10-24', 'HOUR Bunthoeun'),
(749, 3, 2, NULL, '2012-11-26', 'SAM Vuthy'),
(750, 30, 100, NULL, '2011-02-21', 'VOEURN Leakhna'),
(751, 54, 53, NULL, '2010-12-26', 'VEN Chanthy'),
(752, 28, 30, NULL, '2011-08-07', 'HENG Vongkol'),
(753, 14, 60, NULL, '2013-12-03', 'HOUR Bunthoeun'),
(754, 47, 92, NULL, '2013-07-17', 'PEN Oudom'),
(755, 18, 89, NULL, '2010-04-16', 'HOUR Bunthoeun'),
(756, 38, 22, NULL, '2011-06-28', 'HENG Vongkol'),
(757, 51, 82, NULL, '2013-01-25', 'VOEURN Leakhna'),
(758, 3, 90, NULL, '2010-11-16', 'CHOEN Sochy'),
(759, 53, 60, NULL, '2011-07-16', 'SAM Vuthy'),
(760, 46, 14, NULL, '2011-07-27', 'UM Borey'),
(761, 32, 25, NULL, '2013-03-10', 'HENG Vongkol'),
(762, 42, 53, NULL, '2013-04-12', 'HOUR Bunthoeun'),
(763, 3, 12, NULL, '2010-05-26', 'VEN Chanthy'),
(764, 57, 55, NULL, '2010-09-02', 'CHOEN Sochy'),
(765, 24, 11, NULL, '2013-06-15', 'VOEURN Leakhna'),
(766, 42, 77, NULL, '2011-12-24', 'HOUR Bunthoeun'),
(767, 46, 44, NULL, '2013-06-12', 'UM Borey'),
(768, 15, 24, NULL, '2009-09-17', 'VOEURN Leakhna'),
(769, 15, 100, NULL, '2009-06-16', 'HOUR Bunthoeun'),
(770, 5, 50, NULL, '2009-03-02', 'SAM Vuthy'),
(771, 62, 20, NULL, '2009-04-19', 'UM Borey'),
(772, 49, 55, NULL, '2013-04-05', 'UM Borey'),
(773, 52, 59, NULL, '2013-11-22', 'SAM Vuthy'),
(774, 29, 96, NULL, '2012-06-05', 'HOUR Bunthoeun'),
(775, 5, 20, NULL, '2012-08-04', 'UM Borey'),
(776, 61, 84, NULL, '2009-07-22', 'CHHAY Vandirichat'),
(777, 19, 29, NULL, '2009-06-10', 'UM Borey'),
(778, 35, 50, NULL, '2012-11-11', 'SAM Vuthy'),
(779, 48, 23, NULL, '2010-04-22', 'CHHAY Vandirichat'),
(780, 39, 85, NULL, '2009-07-24', 'CHOEN Sochy'),
(781, 1, 56, NULL, '2012-03-13', 'UM Borey'),
(782, 11, 80, NULL, '2013-07-23', 'HENG Vongkol'),
(783, 29, 97, NULL, '2013-07-15', 'PEN Thida'),
(784, 53, 45, NULL, '2012-03-11', 'PEN Thida'),
(785, 43, 29, NULL, '2010-11-22', 'PEN Oudom'),
(786, 28, 20, NULL, '2009-04-03', 'PEN Thida'),
(787, 23, 45, NULL, '2013-12-17', 'CHHAY Vandirichat'),
(788, 39, 32, NULL, '2009-09-19', 'PEN Oudom'),
(789, 46, 29, NULL, '2011-07-28', 'VEN Chanthy'),
(790, 48, 49, NULL, '2013-10-22', 'UM Borey'),
(791, 46, 30, NULL, '2013-02-01', 'UM Borey'),
(792, 46, 71, NULL, '2011-03-20', 'CHOEN Sochy'),
(793, 32, 49, NULL, '2009-08-26', 'CHOEN Sochy'),
(794, 43, 52, NULL, '2009-04-09', 'VEN Chanthy'),
(795, 20, 25, NULL, '2011-08-12', 'PEN Thida'),
(796, 18, 83, NULL, '2010-05-07', 'CHHAY Vandirichat'),
(797, 10, 36, NULL, '2011-03-06', 'PEN Thida'),
(798, 37, 72, NULL, '2011-08-02', 'CHHAY Vandirichat'),
(799, 50, 55, NULL, '2012-09-25', 'CHHAY Vandirichat'),
(800, 10, 2, NULL, '2011-04-09', 'HENG Vongkol'),
(801, 56, 73, NULL, '2012-07-16', 'PEN Oudom'),
(802, 45, 26, NULL, '2009-07-02', 'PEN Thida'),
(803, 25, 80, NULL, '2009-01-14', 'CHOEN Sochy'),
(804, 41, 6, NULL, '2009-05-09', 'HOUR Bunthoeun'),
(805, 15, 63, NULL, '2012-06-01', 'VEN Chanthy'),
(806, 62, 66, NULL, '2010-02-19', 'PEN Oudom'),
(807, 32, 19, NULL, '2011-12-27', 'VOEURN Leakhna'),
(808, 33, 23, NULL, '2009-05-19', 'HENG Vongkol'),
(809, 1, 79, NULL, '2011-04-21', 'CHHAY Vandirichat'),
(810, 23, 63, NULL, '2009-06-07', 'HOUR Bunthoeun'),
(811, 25, 11, NULL, '2013-08-01', 'HENG Vongkol'),
(812, 29, 60, NULL, '2010-01-13', 'HENG Vongkol'),
(813, 39, 1, NULL, '2009-12-15', 'PEN Oudom'),
(814, 32, 47, NULL, '2009-04-15', 'PEN Thida'),
(815, 51, 46, NULL, '2010-05-05', 'VEN Chanthy'),
(816, 55, 55, NULL, '2010-09-02', 'SAM Vuthy'),
(817, 7, 82, NULL, '2009-06-03', 'PEN Thida'),
(818, 1, 39, NULL, '2012-01-15', 'VEN Chanthy'),
(819, 20, 64, NULL, '2009-08-07', 'CHOEN Sochy'),
(820, 26, 3, NULL, '2010-05-25', 'CHHAY Vandirichat'),
(821, 49, 18, NULL, '2011-07-24', 'PEN Oudom'),
(822, 49, 75, NULL, '2013-06-18', 'PEN Thida'),
(823, 49, 34, NULL, '2010-01-13', 'CHOEN Sochy'),
(824, 24, 36, NULL, '2010-06-09', 'VEN Chanthy'),
(825, 18, 43, NULL, '2013-04-06', 'UM Borey'),
(826, 34, 31, NULL, '2010-07-11', 'HOUR Bunthoeun'),
(827, 7, 97, NULL, '2013-04-28', 'UM Borey'),
(828, 56, 25, NULL, '2009-10-09', 'HOUR Bunthoeun'),
(829, 52, 15, NULL, '2012-10-06', 'CHHAY Vandirichat'),
(830, 57, 21, NULL, '2012-09-13', 'UM Borey'),
(831, 35, 45, NULL, '2011-02-21', 'PEN Oudom'),
(832, 1, 14, NULL, '2010-12-14', 'CHOEN Sochy'),
(833, 30, 86, NULL, '2013-01-10', 'SAM Vuthy'),
(834, 61, 71, NULL, '2010-09-24', 'UM Borey'),
(835, 42, 75, NULL, '2011-11-23', 'VOEURN Leakhna'),
(836, 14, 47, NULL, '2009-02-11', 'CHOEN Sochy'),
(837, 42, 61, NULL, '2009-01-23', 'VEN Chanthy'),
(838, 62, 37, NULL, '2010-08-12', 'SAM Vuthy'),
(839, 32, 27, NULL, '2009-02-19', 'HOUR Bunthoeun'),
(840, 24, 39, NULL, '2011-03-11', 'VOEURN Leakhna'),
(841, 12, 5, NULL, '2012-01-04', 'CHOEN Sochy'),
(842, 55, 23, NULL, '2009-08-14', 'VEN Chanthy'),
(843, 56, 18, NULL, '2011-04-06', 'CHHAY Vandirichat'),
(844, 39, 29, NULL, '2011-06-15', 'CHHAY Vandirichat'),
(845, 8, 9, NULL, '2012-11-28', 'VOEURN Leakhna'),
(846, 25, 52, NULL, '2009-09-10', 'PEN Oudom'),
(847, 54, 25, NULL, '2010-05-09', 'CHOEN Sochy'),
(848, 6, 83, NULL, '2011-12-01', 'HENG Vongkol'),
(849, 33, 58, NULL, '2012-02-10', 'SAM Vuthy'),
(850, 38, 76, NULL, '2012-02-07', 'HOUR Bunthoeun'),
(851, 6, 20, NULL, '2009-05-24', 'CHOEN Sochy'),
(852, 25, 80, NULL, '2013-11-12', 'PEN Thida'),
(853, 8, 80, NULL, '2009-06-17', 'SAM Vuthy'),
(854, 25, 1, NULL, '2009-08-27', 'PEN Oudom'),
(855, 25, 86, NULL, '2010-04-18', 'HENG Vongkol'),
(856, 57, 78, NULL, '2013-01-13', 'HOUR Bunthoeun'),
(857, 36, 86, NULL, '2009-05-22', 'UM Borey'),
(858, 24, 29, NULL, '2012-06-01', 'PEN Thida'),
(859, 17, 61, NULL, '2012-12-25', 'CHOEN Sochy'),
(860, 3, 58, NULL, '2011-01-05', 'HOUR Bunthoeun'),
(861, 43, 10, NULL, '2009-02-19', 'CHHAY Vandirichat'),
(862, 3, 60, NULL, '2009-01-21', 'SAM Vuthy'),
(863, 23, 77, NULL, '2012-05-18', 'HENG Vongkol'),
(864, 9, 69, NULL, '2011-04-18', 'SAM Vuthy'),
(865, 37, 65, NULL, '2012-01-03', 'CHHAY Vandirichat'),
(866, 29, 7, NULL, '2012-11-19', 'VOEURN Leakhna'),
(867, 11, 36, NULL, '2009-08-25', 'VOEURN Leakhna'),
(868, 12, 62, NULL, '2013-02-07', 'CHOEN Sochy'),
(869, 2, 75, NULL, '2009-12-05', 'CHOEN Sochy'),
(870, 37, 50, NULL, '2012-11-15', 'HENG Vongkol'),
(871, 20, 44, NULL, '2011-08-27', 'VEN Chanthy'),
(872, 46, 6, NULL, '2012-02-28', 'PEN Thida'),
(873, 21, 19, NULL, '2013-05-13', 'SAM Vuthy'),
(874, 38, 26, NULL, '2010-11-18', 'HOUR Bunthoeun'),
(875, 59, 35, NULL, '2012-01-27', 'SAM Vuthy'),
(876, 27, 57, NULL, '2011-03-26', 'PEN Oudom'),
(877, 4, 47, NULL, '2012-02-11', 'HENG Vongkol'),
(878, 38, 71, NULL, '2011-03-11', 'VOEURN Leakhna'),
(879, 24, 15, NULL, '2009-12-16', 'UM Borey'),
(880, 9, 55, NULL, '2012-09-06', 'VOEURN Leakhna'),
(881, 3, 72, NULL, '2010-10-13', 'CHOEN Sochy'),
(882, 19, 8, NULL, '2013-02-10', 'VOEURN Leakhna'),
(883, 38, 56, NULL, '2009-05-16', 'HENG Vongkol'),
(884, 28, 40, NULL, '2011-12-11', 'VOEURN Leakhna'),
(885, 17, 85, NULL, '2009-06-21', 'VOEURN Leakhna'),
(886, 38, 43, NULL, '2009-12-18', 'VEN Chanthy'),
(887, 21, 56, NULL, '2012-04-10', 'VOEURN Leakhna'),
(888, 2, 17, NULL, '2010-07-06', 'PEN Oudom'),
(889, 9, 100, NULL, '2011-11-19', 'UM Borey'),
(890, 49, 61, NULL, '2013-01-11', 'HENG Vongkol'),
(891, 28, 7, NULL, '2009-06-13', 'UM Borey'),
(892, 18, 89, NULL, '2010-11-05', 'CHOEN Sochy'),
(893, 6, 58, NULL, '2009-03-19', 'HOUR Bunthoeun'),
(894, 36, 1, NULL, '2010-02-07', 'VOEURN Leakhna'),
(895, 16, 20, NULL, '2013-04-18', 'CHOEN Sochy'),
(896, 4, 78, NULL, '2010-09-24', 'HOUR Bunthoeun'),
(897, 26, 53, NULL, '2013-07-01', 'SAM Vuthy'),
(898, 39, 72, NULL, '2011-08-05', 'VEN Chanthy'),
(899, 8, 93, NULL, '2011-06-01', 'HENG Vongkol'),
(900, 4, 75, NULL, '2010-12-20', 'CHHAY Vandirichat'),
(901, 24, 95, NULL, '2012-03-12', 'HENG Vongkol'),
(902, 31, 15, NULL, '2013-12-25', 'HOUR Bunthoeun'),
(903, 54, 18, NULL, '2011-01-15', 'CHOEN Sochy'),
(904, 46, 1, NULL, '2009-05-13', 'HOUR Bunthoeun'),
(905, 63, 34, NULL, '2012-11-14', 'SAM Vuthy'),
(906, 14, 18, NULL, '2011-08-06', 'VEN Chanthy'),
(907, 59, 67, NULL, '2013-01-06', 'PEN Oudom'),
(908, 35, 52, NULL, '2009-11-25', 'VOEURN Leakhna'),
(909, 24, 17, NULL, '2009-04-09', 'SAM Vuthy'),
(910, 43, 60, NULL, '2011-08-18', 'CHOEN Sochy'),
(911, 63, 63, NULL, '2012-06-12', 'SAM Vuthy'),
(912, 22, 33, NULL, '2012-06-27', 'HENG Vongkol'),
(913, 17, 39, NULL, '2012-09-24', 'PEN Oudom'),
(914, 34, 74, NULL, '2012-10-22', 'HOUR Bunthoeun'),
(915, 32, 36, NULL, '2010-08-25', 'PEN Oudom'),
(916, 56, 27, NULL, '2010-01-10', 'CHHAY Vandirichat'),
(917, 21, 30, NULL, '2013-04-14', 'CHHAY Vandirichat'),
(918, 37, 34, NULL, '2011-10-24', 'CHOEN Sochy'),
(919, 42, 40, NULL, '2011-02-10', 'VOEURN Leakhna'),
(920, 2, 20, NULL, '2010-12-17', 'HOUR Bunthoeun'),
(921, 9, 57, NULL, '2011-10-03', 'HENG Vongkol'),
(922, 8, 11, NULL, '2009-07-05', 'PEN Oudom'),
(923, 44, 20, NULL, '2012-12-23', 'SAM Vuthy'),
(924, 28, 61, NULL, '2013-11-03', 'UM Borey'),
(925, 8, 67, NULL, '2009-08-07', 'UM Borey'),
(926, 11, 44, NULL, '2012-10-18', 'HENG Vongkol'),
(927, 51, 53, NULL, '2013-01-16', 'VEN Chanthy'),
(928, 58, 78, NULL, '2011-03-08', 'VOEURN Leakhna'),
(929, 37, 91, NULL, '2011-09-22', 'VOEURN Leakhna'),
(930, 20, 96, NULL, '2012-10-27', 'SAM Vuthy'),
(931, 35, 27, NULL, '2010-01-28', 'HENG Vongkol'),
(932, 49, 7, NULL, '2012-08-17', 'SAM Vuthy'),
(933, 24, 22, NULL, '2009-08-23', 'CHOEN Sochy'),
(934, 6, 41, NULL, '2009-10-12', 'UM Borey'),
(935, 52, 72, NULL, '2011-02-04', 'UM Borey'),
(936, 25, 37, NULL, '2011-04-12', 'CHOEN Sochy'),
(937, 14, 32, NULL, '2011-04-10', 'CHOEN Sochy'),
(938, 42, 73, NULL, '2013-07-01', 'UM Borey'),
(939, 8, 23, NULL, '2012-05-17', 'VOEURN Leakhna'),
(940, 56, 37, NULL, '2011-11-14', 'VOEURN Leakhna'),
(941, 36, 3, NULL, '2009-10-17', 'UM Borey'),
(942, 25, 66, NULL, '2012-06-21', 'VEN Chanthy'),
(943, 44, 6, NULL, '2010-03-07', 'CHHAY Vandirichat'),
(944, 20, 36, NULL, '2012-12-16', 'HOUR Bunthoeun'),
(945, 6, 55, NULL, '2011-11-22', 'PEN Oudom'),
(946, 62, 52, NULL, '2009-11-09', 'SAM Vuthy'),
(947, 60, 96, NULL, '2010-10-10', 'VOEURN Leakhna'),
(948, 63, 4, NULL, '2011-02-15', 'HOUR Bunthoeun'),
(949, 28, 34, NULL, '2011-06-06', 'VOEURN Leakhna'),
(950, 1, 57, NULL, '2010-04-08', 'VOEURN Leakhna'),
(951, 35, 47, NULL, '2012-05-28', 'SAM Vuthy'),
(952, 34, 95, NULL, '2013-02-07', 'VOEURN Leakhna'),
(953, 24, 5, NULL, '2009-10-21', 'VEN Chanthy'),
(954, 9, 54, NULL, '2009-10-17', 'CHOEN Sochy'),
(955, 63, 32, NULL, '2010-08-16', 'VEN Chanthy'),
(956, 16, 20, NULL, '2013-02-14', 'HOUR Bunthoeun'),
(957, 29, 13, NULL, '2011-09-26', 'HENG Vongkol'),
(958, 30, 92, NULL, '2011-11-12', 'CHHAY Vandirichat'),
(959, 37, 31, NULL, '2013-07-17', 'PEN Thida'),
(960, 19, 91, NULL, '2013-07-06', 'SAM Vuthy'),
(961, 34, 47, NULL, '2011-06-02', 'SAM Vuthy'),
(962, 21, 41, NULL, '2012-08-24', 'PEN Thida'),
(963, 18, 58, NULL, '2009-05-18', 'VEN Chanthy'),
(964, 50, 59, NULL, '2013-04-14', 'UM Borey'),
(965, 6, 77, NULL, '2011-12-23', 'PEN Oudom'),
(966, 58, 10, NULL, '2013-06-13', 'UM Borey'),
(967, 49, 26, NULL, '2010-09-22', 'SAM Vuthy'),
(968, 40, 87, NULL, '2011-12-02', 'SAM Vuthy'),
(969, 52, 57, NULL, '2012-07-18', 'PEN Oudom'),
(970, 38, 77, NULL, '2012-05-10', 'SAM Vuthy'),
(971, 13, 31, NULL, '2012-10-13', 'SAM Vuthy'),
(972, 33, 66, NULL, '2012-08-15', 'VEN Chanthy'),
(973, 46, 72, NULL, '2013-09-28', 'CHHAY Vandirichat'),
(974, 15, 93, NULL, '2009-03-26', 'CHHAY Vandirichat'),
(975, 46, 87, NULL, '2010-07-05', 'PEN Oudom'),
(976, 53, 22, NULL, '2009-09-21', 'SAM Vuthy'),
(977, 14, 74, NULL, '2012-02-03', 'SAM Vuthy'),
(978, 15, 40, NULL, '2012-04-25', 'CHHAY Vandirichat'),
(979, 19, 2, NULL, '2013-03-04', 'HOUR Bunthoeun'),
(980, 9, 30, NULL, '2013-06-13', 'CHHAY Vandirichat'),
(981, 15, 13, NULL, '2011-03-11', 'UM Borey'),
(982, 57, 6, NULL, '2012-04-04', 'VOEURN Leakhna'),
(983, 12, 97, NULL, '2009-10-13', 'VOEURN Leakhna'),
(984, 55, 32, NULL, '2012-01-21', 'VEN Chanthy'),
(985, 21, 33, NULL, '2013-04-16', 'PEN Thida'),
(986, 35, 82, NULL, '2013-05-23', 'HOUR Bunthoeun'),
(987, 12, 34, NULL, '2011-04-15', 'PEN Thida'),
(988, 33, 94, NULL, '2009-12-08', 'VOEURN Leakhna'),
(989, 30, 71, NULL, '2010-04-26', 'CHOEN Sochy'),
(990, 17, 70, NULL, '2011-03-23', 'UM Borey'),
(991, 28, 88, NULL, '2011-10-16', 'CHOEN Sochy'),
(992, 63, 62, NULL, '2010-04-19', 'UM Borey'),
(993, 35, 34, NULL, '2010-02-21', 'UM Borey'),
(994, 22, 29, NULL, '2010-09-09', 'UM Borey'),
(995, 53, 44, NULL, '2011-02-04', 'PEN Oudom'),
(996, 48, 66, NULL, '2010-03-24', 'CHHAY Vandirichat'),
(997, 3, 13, NULL, '2011-08-06', 'VEN Chanthy'),
(998, 36, 76, NULL, '2011-08-07', 'PEN Oudom'),
(999, 15, 47, NULL, '2010-05-11', 'SAM Vuthy'),
(1000, 49, 53, NULL, '2009-05-16', 'VEN Chanthy'),
(1001, 67, 32, NULL, '2018-01-16', 'VEN Chanthy');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `storeid` int(11) NOT NULL,
  `storename` varchar(40) NOT NULL,
  `locationid` int(11) DEFAULT NULL,
  `description` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`storeid`, `storename`, `locationid`, `description`) VALUES
(1, 'Store A', 1, 'General Store'),
(2, 'Store B', 1, 'Drink store'),
(3, 'Store C', 2, 'Beer Store'),
(4, 'Store D', 2, 'Food Store');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `password`) VALUES
(1, 'Sam Oun', 'samoun', '123');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `khname` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `userscol` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `khname`, `userscol`) VALUES
(1, 'John', 'Chen', 'j@hotmail.com', 'ហេង វង្សកុល', NULL),
(2, 'Jan', 'Pillai', 'g@yahoo.com', 'សម វុធ្ធី', NULL),
(3, 'Ane', 'Pandit', 'a@gmail.com', NULL, NULL),
(4, 'Mary', 'Anchor', 'm@mail.com', NULL, NULL),
(5, 'Fred', 'King', 'f@net.com', NULL, NULL),
(6, 'John', 'Mac', 'j@hotmail.com', NULL, NULL),
(7, 'Arthur', 'Sam', 'e@yahoo.com', NULL, NULL),
(8, 'Alok', 'Nanda', 'a@yahoo.com', NULL, NULL),
(9, 'Susan', 'Ra', 'h@gmail.com', NULL, NULL),
(10, 'Paul', 'Simon', 'ps@gmail.com', NULL, NULL),
(11, 'Edward', 'Parhar', 'a@hotmail.com', NULL, NULL),
(12, 'Kim', 'Hunter', 'kim@coolmail.com', NULL, NULL),
(13, 'Roger', 'Lewis', 'roger@mail.com', NULL, NULL),
(14, 'Danny', 'Gibson', 'danny@hotmail.com', NULL, NULL),
(15, 'Mike', 'Harper', 'm@gmail.com', NULL, NULL),
(16, 'Mary', 'Sunday', 'monica@bigmail.com', NULL, NULL),
(17, 'Jack', 'Sim', 'hal@gmail.com', NULL, NULL),
(18, 'Joe', 'Irvine', 'joseph@hotmail.com', NULL, NULL),
(19, 'Henry', 'Ali', 'shahida@hotmail.com', NULL, NULL),
(21, 'HENG', 'Vongkol', 'hengvongkol@gmail.com', NULL, NULL),
(23, 'VEN', 'Chanthy', 'chanthy@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewdepartment`
-- (See below for the actual view)
--
CREATE TABLE `viewdepartment` (
`dname` varchar(45)
,`totalemp` decimal(32,0)
,`totalpaid` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewemployee`
-- (See below for the actual view)
--
CREATE TABLE `viewemployee` (
`id` int(11)
,`empname` varchar(40)
,`age` int(11)
,`salary` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewproduct`
-- (See below for the actual view)
--
CREATE TABLE `viewproduct` (
`pid` int(11)
,`pname` varchar(30)
,`catname` varchar(30)
,`subtotal` double(20,3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewproductamount`
-- (See below for the actual view)
--
CREATE TABLE `viewproductamount` (
`pid` int(11)
,`pname` varchar(30)
,`Amount` bigint(12)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_rithsalling`
-- (See below for the actual view)
--
CREATE TABLE `v_rithsalling` (
`pid` int(11)
,`total_quantity` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_salling_product`
-- (See below for the actual view)
--
CREATE TABLE `v_salling_product` (
`Product Name` varchar(30)
,`total_quantity` decimal(32,0)
,`Total` double(20,3)
);

-- --------------------------------------------------------

--
-- Structure for view `viewdepartment`
--
DROP TABLE IF EXISTS `viewdepartment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewdepartment`  AS  select `emp`.`departmentid` AS `dname`,sum(`emp`.`id`) AS `totalemp`,sum(`emp`.`salary`) AS `totalpaid` from `employee` `emp` group by `emp`.`departmentid` limit 10 ;

-- --------------------------------------------------------

--
-- Structure for view `viewemployee`
--
DROP TABLE IF EXISTS `viewemployee`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewemployee`  AS  select `emp`.`id` AS `id`,concat(`emp`.`firstname`,`emp`.`lastname`) AS `empname`,`emp`.`age` AS `age`,`emp`.`salary` AS `salary` from `employee` `emp` group by `emp`.`id` limit 10 ;

-- --------------------------------------------------------

--
-- Structure for view `viewproduct`
--
DROP TABLE IF EXISTS `viewproduct`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewproduct`  AS  select `pro`.`pid` AS `pid`,`pro`.`pname` AS `pname`,`cat`.`catname` AS `catname`,(sum(`pro`.`quantity`) * `pro`.`unitprice`) AS `subtotal` from (`product` `pro` join `category` `cat` on((`cat`.`catid` = `pro`.`catid`))) group by `pro`.`pid` limit 10 ;

-- --------------------------------------------------------

--
-- Structure for view `viewproductamount`
--
DROP TABLE IF EXISTS `viewproductamount`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewproductamount`  AS  select `pro`.`pid` AS `pid`,`pro`.`pname` AS `pname`,(`pro`.`quantity` - `sal`.`quantity`) AS `Amount` from (`product` `pro` join `sales` `sal` on((`pro`.`pid` = `sal`.`pid`))) group by `pro`.`pid` ;

-- --------------------------------------------------------

--
-- Structure for view `v_rithsalling`
--
DROP TABLE IF EXISTS `v_rithsalling`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_rithsalling`  AS  select `sal`.`pid` AS `pid`,sum(`sal`.`quantity`) AS `total_quantity` from `sales` `sal` group by `sal`.`pid` ;

-- --------------------------------------------------------

--
-- Structure for view `v_salling_product`
--
DROP TABLE IF EXISTS `v_salling_product`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_salling_product`  AS  select `pro`.`pname` AS `Product Name`,sum(`sal`.`quantity`) AS `total_quantity`,(sum(`sal`.`quantity`) * `pro`.`unitprice`) AS `Total` from (`sales` `sal` join `product` `pro` on((`pro`.`pid` = `sal`.`pid`))) group by `sal`.`pid` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`locationid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`salesid`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`storeid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
