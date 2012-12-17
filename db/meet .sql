-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 17, 2012 at 06:26 PM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `meet`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `step_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `step_id` (`step_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` VALUES(1, 'watched a video', '2012-12-15 02:16:11', '2012-12-15 02:17:34', 2, 3);
INSERT INTO `activities` VALUES(2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 1);
INSERT INTO `activities` VALUES(3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 1);
INSERT INTO `activities` VALUES(4, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 3);
INSERT INTO `activities` VALUES(5, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `size` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carts`
--


-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) DEFAULT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` VALUES(1, NULL, 3);
INSERT INTO `cart_items` VALUES(2, NULL, 1);
INSERT INTO `cart_items` VALUES(3, NULL, 1);
INSERT INTO `cart_items` VALUES(4, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `eventcategory_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `module_id` (`module_id`),
  KEY `user_id` (`user_id`),
  KEY `eventcategory_id` (`eventcategory_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` VALUES(42, 'Path started', '2012-12-15 02:12:34', '2012-12-15 02:29:13', NULL, NULL, 2, 1);
INSERT INTO `events` VALUES(44, '', '2012-12-15 13:06:37', '2012-12-15 13:09:40', NULL, 11, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `event_categories`
--

CREATE TABLE `event_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `event_categories`
--

INSERT INTO `event_categories` VALUES(1, 'Guest Path');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `korean_name` varchar(255) NOT NULL,
  `price` double(11,2) NOT NULL,
  `desc` varchar(255) CHARACTER SET latin1 NOT NULL,
  `big_pic` varchar(255) CHARACTER SET latin1 NOT NULL,
  `small_pic` varchar(255) CHARACTER SET latin1 NOT NULL,
  `path` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `formats` varchar(255) CHARACTER SET latin1 NOT NULL,
  `spicy_level` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=euckr AUTO_INCREMENT=12 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` VALUES(1, 'Budweiser', '', 4.99, 'Fresh and subtle fruit notes, a delicate malt sweetness and balanced bitterness for a clean, snappy finish', '', '', '', '', 'Bottle', 0, 4);
INSERT INTO `items` VALUES(2, 'Original Sleeman', '', 5.99, 'Brewed using all-natural ingredients, and the same time-honoured recipes and family brewing', '', '', '', '', 'Bottle', 0, 4);
INSERT INTO `items` VALUES(3, 'Soju', '', 13.99, 'Distilled, vodka-like, rice liquor with high potency ', '', '', '', '', 'Bottle', 0, 4);
INSERT INTO `items` VALUES(5, '', '온라인 티켓 판매처:', 0.00, '', '', '', '', '', '', 0, 12);
INSERT INTO `items` VALUES(8, 'I said bitch', '', 0.00, '', '', '', '5LGEiIL1__s', 'Key & Peele', '', 0, 2);
INSERT INTO `items` VALUES(9, 'Yo Mama Has Health Problems', '', 0.00, '', '', '', 'KzelrlH_pjQ', 'Key & Peele', '', 0, 2);
INSERT INTO `items` VALUES(10, 'Magician Cop', '', 0.00, '', '', '', '52br8-y0ONU', 'Key & Peele', '', 0, 2);
INSERT INTO `items` VALUES(11, 'Obama Raps', '', 0.00, '', '', '', '6X9tuwH9I5Q', 'Key & Peele', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `venue_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `venue_id` (`venue_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` VALUES(1, 'menu', 1, NULL);
INSERT INTO `modules` VALUES(2, 'video', 1, NULL);
INSERT INTO `modules` VALUES(3, 'game', 1, NULL);
INSERT INTO `modules` VALUES(4, 'specials', 1, 1);
INSERT INTO `modules` VALUES(8, 'dishes', 1, 1);
INSERT INTO `modules` VALUES(9, 'drinks', 1, 1);
INSERT INTO `modules` VALUES(10, 'beer', 1, 1);
INSERT INTO `modules` VALUES(11, 'pop', 1, 1);
INSERT INTO `modules` VALUES(12, 'combo A', 1, 1);
INSERT INTO `modules` VALUES(13, 'combo B', 1, 1);
INSERT INTO `modules` VALUES(15, 'domestic', 1, 12);
INSERT INTO `modules` VALUES(16, 'import', 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `reporttype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reporttype_id` (`reporttype_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=euckr AUTO_INCREMENT=26 ;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` VALUES(1, '2012-12-16 10:15:00', 1);
INSERT INTO `reports` VALUES(2, '2012-12-16 10:16:13', 1);
INSERT INTO `reports` VALUES(3, '2012-12-16 10:17:40', 2);
INSERT INTO `reports` VALUES(4, '2012-12-16 10:17:40', 2);
INSERT INTO `reports` VALUES(5, '2012-12-16 10:17:40', 2);
INSERT INTO `reports` VALUES(6, '2012-12-16 10:17:40', 2);
INSERT INTO `reports` VALUES(7, '2012-12-16 10:17:40', 2);
INSERT INTO `reports` VALUES(8, '2012-12-16 10:17:40', 2);
INSERT INTO `reports` VALUES(9, '2012-12-16 10:17:40', 2);
INSERT INTO `reports` VALUES(10, '2012-12-16 10:17:40', 2);
INSERT INTO `reports` VALUES(11, '2012-12-16 10:17:41', 2);
INSERT INTO `reports` VALUES(12, '2012-12-16 10:17:41', 2);
INSERT INTO `reports` VALUES(13, '2012-12-16 10:17:41', 2);
INSERT INTO `reports` VALUES(14, '2012-12-16 10:17:41', 2);
INSERT INTO `reports` VALUES(15, '2012-12-16 10:17:41', 2);
INSERT INTO `reports` VALUES(16, '2012-12-16 10:17:41', 2);
INSERT INTO `reports` VALUES(17, '2012-12-16 10:17:41', 2);
INSERT INTO `reports` VALUES(18, '2012-12-16 10:17:41', 2);
INSERT INTO `reports` VALUES(19, '2012-12-16 10:17:41', 2);
INSERT INTO `reports` VALUES(20, '2012-12-16 10:17:41', 2);
INSERT INTO `reports` VALUES(21, '2012-12-16 10:17:41', 2);
INSERT INTO `reports` VALUES(22, '2012-12-16 10:17:41', 2);
INSERT INTO `reports` VALUES(23, '2012-12-16 10:17:42', 2);
INSERT INTO `reports` VALUES(24, '2012-12-16 10:17:42', 2);
INSERT INTO `reports` VALUES(25, '2012-12-16 10:17:42', 2);

-- --------------------------------------------------------

--
-- Table structure for table `report_types`
--

CREATE TABLE `report_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=euckr AUTO_INCREMENT=3 ;

--
-- Dumping data for table `report_types`
--

INSERT INTO `report_types` VALUES(1, 'internal');
INSERT INTO `report_types` VALUES(2, 'venue');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=euckr AUTO_INCREMENT=4 ;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` VALUES(1, 'app');
INSERT INTO `sections` VALUES(2, 'overview');
INSERT INTO `sections` VALUES(3, 'activity');

-- --------------------------------------------------------

--
-- Table structure for table `section_modules`
--

CREATE TABLE `section_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`),
  KEY `section_id` (`section_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=euckr AUTO_INCREMENT=11 ;

--
-- Dumping data for table `section_modules`
--

INSERT INTO `section_modules` VALUES(2, 1, NULL);
INSERT INTO `section_modules` VALUES(3, 2, 1);
INSERT INTO `section_modules` VALUES(4, 2, 2);
INSERT INTO `section_modules` VALUES(5, 2, 3);
INSERT INTO `section_modules` VALUES(6, 3, 1);
INSERT INTO `section_modules` VALUES(7, 3, 2);
INSERT INTO `section_modules` VALUES(8, 3, 3);
INSERT INTO `section_modules` VALUES(9, 2, NULL);
INSERT INTO `section_modules` VALUES(10, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `snapshots`
--

CREATE TABLE `snapshots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `duration` time NOT NULL,
  `engagement` double(11,2) NOT NULL,
  `popularity` varchar(255) CHARACTER SET latin1 NOT NULL,
  `sectionmodule_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sectionmodule_id` (`sectionmodule_id`),
  KEY `report_id` (`report_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=euckr AUTO_INCREMENT=208 ;

--
-- Dumping data for table `snapshots`
--

INSERT INTO `snapshots` VALUES(1, '00:00:00', 0.00, '', 2, 3);
INSERT INTO `snapshots` VALUES(2, '00:00:00', 0.00, '', 3, 3);
INSERT INTO `snapshots` VALUES(3, '00:00:00', 0.00, '', 4, 3);
INSERT INTO `snapshots` VALUES(4, '00:00:00', 0.00, '', 5, 3);
INSERT INTO `snapshots` VALUES(5, '00:00:00', 0.00, '', 6, 3);
INSERT INTO `snapshots` VALUES(6, '00:00:00', 0.00, '', 7, 3);
INSERT INTO `snapshots` VALUES(7, '00:00:00', 0.00, '', 8, 3);
INSERT INTO `snapshots` VALUES(8, '00:00:00', 0.00, '', 9, 3);
INSERT INTO `snapshots` VALUES(9, '00:00:00', 0.00, '', 10, 3);
INSERT INTO `snapshots` VALUES(10, '00:00:00', 0.00, '', 2, 4);
INSERT INTO `snapshots` VALUES(11, '00:00:00', 0.00, '', 3, 4);
INSERT INTO `snapshots` VALUES(12, '00:00:00', 0.00, '', 4, 4);
INSERT INTO `snapshots` VALUES(13, '00:00:00', 0.00, '', 5, 4);
INSERT INTO `snapshots` VALUES(14, '00:00:00', 0.00, '', 6, 4);
INSERT INTO `snapshots` VALUES(15, '00:00:00', 0.00, '', 7, 4);
INSERT INTO `snapshots` VALUES(16, '00:00:00', 0.00, '', 8, 4);
INSERT INTO `snapshots` VALUES(17, '00:00:00', 0.00, '', 9, 4);
INSERT INTO `snapshots` VALUES(18, '00:00:00', 0.00, '', 10, 4);
INSERT INTO `snapshots` VALUES(19, '00:00:00', 0.00, '', 2, 5);
INSERT INTO `snapshots` VALUES(20, '00:00:00', 0.00, '', 3, 5);
INSERT INTO `snapshots` VALUES(21, '00:00:00', 0.00, '', 4, 5);
INSERT INTO `snapshots` VALUES(22, '00:00:00', 0.00, '', 5, 5);
INSERT INTO `snapshots` VALUES(23, '00:00:00', 0.00, '', 6, 5);
INSERT INTO `snapshots` VALUES(24, '00:00:00', 0.00, '', 7, 5);
INSERT INTO `snapshots` VALUES(25, '00:00:00', 0.00, '', 8, 5);
INSERT INTO `snapshots` VALUES(26, '00:00:00', 0.00, '', 2, 6);
INSERT INTO `snapshots` VALUES(27, '00:00:00', 0.00, '', 2, 7);
INSERT INTO `snapshots` VALUES(28, '00:00:00', 0.00, '', 2, 8);
INSERT INTO `snapshots` VALUES(29, '00:00:00', 0.00, '', 3, 8);
INSERT INTO `snapshots` VALUES(30, '00:00:00', 0.00, '', 3, 7);
INSERT INTO `snapshots` VALUES(31, '00:00:00', 0.00, '', 4, 8);
INSERT INTO `snapshots` VALUES(32, '00:00:00', 0.00, '', 5, 8);
INSERT INTO `snapshots` VALUES(33, '00:00:00', 0.00, '', 4, 7);
INSERT INTO `snapshots` VALUES(34, '00:00:00', 0.00, '', 6, 8);
INSERT INTO `snapshots` VALUES(35, '00:00:00', 0.00, '', 5, 7);
INSERT INTO `snapshots` VALUES(36, '00:00:00', 0.00, '', 7, 8);
INSERT INTO `snapshots` VALUES(37, '00:00:00', 0.00, '', 2, 9);
INSERT INTO `snapshots` VALUES(38, '00:00:00', 0.00, '', 6, 7);
INSERT INTO `snapshots` VALUES(39, '00:00:00', 0.00, '', 8, 8);
INSERT INTO `snapshots` VALUES(40, '00:00:00', 0.00, '', 7, 7);
INSERT INTO `snapshots` VALUES(41, '00:00:00', 0.00, '', 3, 6);
INSERT INTO `snapshots` VALUES(42, '00:00:00', 0.00, '', 9, 8);
INSERT INTO `snapshots` VALUES(43, '00:00:00', 0.00, '', 3, 9);
INSERT INTO `snapshots` VALUES(44, '00:00:00', 0.00, '', 8, 7);
INSERT INTO `snapshots` VALUES(45, '00:00:00', 0.00, '', 9, 5);
INSERT INTO `snapshots` VALUES(46, '00:00:00', 0.00, '', 9, 7);
INSERT INTO `snapshots` VALUES(47, '00:00:00', 0.00, '', 10, 7);
INSERT INTO `snapshots` VALUES(48, '00:00:00', 0.00, '', 4, 6);
INSERT INTO `snapshots` VALUES(49, '00:00:00', 0.00, '', 10, 5);
INSERT INTO `snapshots` VALUES(50, '00:00:00', 0.00, '', 4, 9);
INSERT INTO `snapshots` VALUES(51, '00:00:00', 0.00, '', 5, 6);
INSERT INTO `snapshots` VALUES(52, '00:00:00', 0.00, '', 2, 10);
INSERT INTO `snapshots` VALUES(53, '00:00:00', 0.00, '', 6, 6);
INSERT INTO `snapshots` VALUES(54, '00:00:00', 0.00, '', 10, 8);
INSERT INTO `snapshots` VALUES(55, '00:00:00', 0.00, '', 3, 10);
INSERT INTO `snapshots` VALUES(56, '00:00:00', 0.00, '', 7, 6);
INSERT INTO `snapshots` VALUES(57, '00:00:00', 0.00, '', 5, 9);
INSERT INTO `snapshots` VALUES(58, '00:00:00', 0.00, '', 8, 6);
INSERT INTO `snapshots` VALUES(59, '00:00:00', 0.00, '', 9, 6);
INSERT INTO `snapshots` VALUES(60, '00:00:00', 0.00, '', 4, 10);
INSERT INTO `snapshots` VALUES(61, '00:00:00', 0.00, '', 10, 6);
INSERT INTO `snapshots` VALUES(62, '00:00:00', 0.00, '', 5, 10);
INSERT INTO `snapshots` VALUES(63, '00:00:00', 0.00, '', 6, 9);
INSERT INTO `snapshots` VALUES(64, '00:00:00', 0.00, '', 6, 10);
INSERT INTO `snapshots` VALUES(65, '00:00:00', 0.00, '', 7, 10);
INSERT INTO `snapshots` VALUES(66, '00:00:00', 0.00, '', 7, 9);
INSERT INTO `snapshots` VALUES(67, '00:00:00', 0.00, '', 8, 10);
INSERT INTO `snapshots` VALUES(68, '00:00:00', 0.00, '', 8, 9);
INSERT INTO `snapshots` VALUES(69, '00:00:00', 0.00, '', 9, 10);
INSERT INTO `snapshots` VALUES(70, '00:00:00', 0.00, '', 9, 9);
INSERT INTO `snapshots` VALUES(71, '00:00:00', 0.00, '', 10, 10);
INSERT INTO `snapshots` VALUES(72, '00:00:00', 0.00, '', 10, 9);
INSERT INTO `snapshots` VALUES(73, '00:00:00', 0.00, '', 2, 11);
INSERT INTO `snapshots` VALUES(74, '00:00:00', 0.00, '', 3, 11);
INSERT INTO `snapshots` VALUES(75, '00:00:00', 0.00, '', 2, 13);
INSERT INTO `snapshots` VALUES(76, '00:00:00', 0.00, '', 3, 13);
INSERT INTO `snapshots` VALUES(77, '00:00:00', 0.00, '', 4, 13);
INSERT INTO `snapshots` VALUES(78, '00:00:00', 0.00, '', 4, 11);
INSERT INTO `snapshots` VALUES(79, '00:00:00', 0.00, '', 5, 13);
INSERT INTO `snapshots` VALUES(80, '00:00:00', 0.00, '', 6, 13);
INSERT INTO `snapshots` VALUES(81, '00:00:00', 0.00, '', 7, 13);
INSERT INTO `snapshots` VALUES(82, '00:00:00', 0.00, '', 8, 13);
INSERT INTO `snapshots` VALUES(83, '00:00:00', 0.00, '', 9, 13);
INSERT INTO `snapshots` VALUES(84, '00:00:00', 0.00, '', 10, 13);
INSERT INTO `snapshots` VALUES(85, '00:00:00', 0.00, '', 5, 11);
INSERT INTO `snapshots` VALUES(86, '00:00:00', 0.00, '', 2, 12);
INSERT INTO `snapshots` VALUES(87, '00:00:00', 0.00, '', 2, 14);
INSERT INTO `snapshots` VALUES(88, '00:00:00', 0.00, '', 6, 11);
INSERT INTO `snapshots` VALUES(89, '00:00:00', 0.00, '', 3, 12);
INSERT INTO `snapshots` VALUES(90, '00:00:00', 0.00, '', 3, 14);
INSERT INTO `snapshots` VALUES(91, '00:00:00', 0.00, '', 4, 14);
INSERT INTO `snapshots` VALUES(92, '00:00:00', 0.00, '', 4, 12);
INSERT INTO `snapshots` VALUES(93, '00:00:00', 0.00, '', 7, 11);
INSERT INTO `snapshots` VALUES(94, '00:00:00', 0.00, '', 5, 14);
INSERT INTO `snapshots` VALUES(95, '00:00:00', 0.00, '', 5, 12);
INSERT INTO `snapshots` VALUES(96, '00:00:00', 0.00, '', 8, 11);
INSERT INTO `snapshots` VALUES(97, '00:00:00', 0.00, '', 6, 14);
INSERT INTO `snapshots` VALUES(98, '00:00:00', 0.00, '', 6, 12);
INSERT INTO `snapshots` VALUES(99, '00:00:00', 0.00, '', 7, 12);
INSERT INTO `snapshots` VALUES(100, '00:00:00', 0.00, '', 9, 11);
INSERT INTO `snapshots` VALUES(101, '00:00:00', 0.00, '', 7, 14);
INSERT INTO `snapshots` VALUES(102, '00:00:00', 0.00, '', 8, 12);
INSERT INTO `snapshots` VALUES(103, '00:00:00', 0.00, '', 10, 11);
INSERT INTO `snapshots` VALUES(104, '00:00:00', 0.00, '', 8, 14);
INSERT INTO `snapshots` VALUES(105, '00:00:00', 0.00, '', 9, 12);
INSERT INTO `snapshots` VALUES(106, '00:00:00', 0.00, '', 9, 14);
INSERT INTO `snapshots` VALUES(107, '00:00:00', 0.00, '', 10, 14);
INSERT INTO `snapshots` VALUES(108, '00:00:00', 0.00, '', 10, 12);
INSERT INTO `snapshots` VALUES(109, '00:00:00', 0.00, '', 2, 15);
INSERT INTO `snapshots` VALUES(110, '00:00:00', 0.00, '', 3, 15);
INSERT INTO `snapshots` VALUES(111, '00:00:00', 0.00, '', 4, 15);
INSERT INTO `snapshots` VALUES(112, '00:00:00', 0.00, '', 5, 15);
INSERT INTO `snapshots` VALUES(113, '00:00:00', 0.00, '', 2, 16);
INSERT INTO `snapshots` VALUES(114, '00:00:00', 0.00, '', 6, 15);
INSERT INTO `snapshots` VALUES(115, '00:00:00', 0.00, '', 3, 16);
INSERT INTO `snapshots` VALUES(116, '00:00:00', 0.00, '', 7, 15);
INSERT INTO `snapshots` VALUES(117, '00:00:00', 0.00, '', 4, 16);
INSERT INTO `snapshots` VALUES(118, '00:00:00', 0.00, '', 8, 15);
INSERT INTO `snapshots` VALUES(119, '00:00:00', 0.00, '', 9, 15);
INSERT INTO `snapshots` VALUES(120, '00:00:00', 0.00, '', 5, 16);
INSERT INTO `snapshots` VALUES(121, '00:00:00', 0.00, '', 10, 15);
INSERT INTO `snapshots` VALUES(122, '00:00:00', 0.00, '', 6, 16);
INSERT INTO `snapshots` VALUES(123, '00:00:00', 0.00, '', 7, 16);
INSERT INTO `snapshots` VALUES(124, '00:00:00', 0.00, '', 8, 16);
INSERT INTO `snapshots` VALUES(125, '00:00:00', 0.00, '', 9, 16);
INSERT INTO `snapshots` VALUES(126, '00:00:00', 0.00, '', 2, 17);
INSERT INTO `snapshots` VALUES(127, '00:00:00', 0.00, '', 10, 16);
INSERT INTO `snapshots` VALUES(128, '00:00:00', 0.00, '', 2, 18);
INSERT INTO `snapshots` VALUES(129, '00:00:00', 0.00, '', 3, 17);
INSERT INTO `snapshots` VALUES(130, '00:00:00', 0.00, '', 4, 17);
INSERT INTO `snapshots` VALUES(131, '00:00:00', 0.00, '', 3, 18);
INSERT INTO `snapshots` VALUES(132, '00:00:00', 0.00, '', 4, 18);
INSERT INTO `snapshots` VALUES(133, '00:00:00', 0.00, '', 5, 17);
INSERT INTO `snapshots` VALUES(134, '00:00:00', 0.00, '', 5, 18);
INSERT INTO `snapshots` VALUES(135, '00:00:00', 0.00, '', 2, 19);
INSERT INTO `snapshots` VALUES(136, '00:00:00', 0.00, '', 3, 19);
INSERT INTO `snapshots` VALUES(137, '00:00:00', 0.00, '', 4, 19);
INSERT INTO `snapshots` VALUES(138, '00:00:00', 0.00, '', 5, 19);
INSERT INTO `snapshots` VALUES(139, '00:00:00', 0.00, '', 6, 19);
INSERT INTO `snapshots` VALUES(140, '00:00:00', 0.00, '', 7, 19);
INSERT INTO `snapshots` VALUES(141, '00:00:00', 0.00, '', 8, 19);
INSERT INTO `snapshots` VALUES(142, '00:00:00', 0.00, '', 9, 19);
INSERT INTO `snapshots` VALUES(143, '00:00:00', 0.00, '', 10, 19);
INSERT INTO `snapshots` VALUES(144, '00:00:00', 0.00, '', 2, 20);
INSERT INTO `snapshots` VALUES(145, '00:00:00', 0.00, '', 2, 21);
INSERT INTO `snapshots` VALUES(146, '00:00:00', 0.00, '', 3, 20);
INSERT INTO `snapshots` VALUES(147, '00:00:00', 0.00, '', 3, 21);
INSERT INTO `snapshots` VALUES(148, '00:00:00', 0.00, '', 6, 17);
INSERT INTO `snapshots` VALUES(149, '00:00:00', 0.00, '', 6, 18);
INSERT INTO `snapshots` VALUES(150, '00:00:00', 0.00, '', 4, 20);
INSERT INTO `snapshots` VALUES(151, '00:00:00', 0.00, '', 7, 17);
INSERT INTO `snapshots` VALUES(152, '00:00:00', 0.00, '', 7, 18);
INSERT INTO `snapshots` VALUES(153, '00:00:00', 0.00, '', 8, 17);
INSERT INTO `snapshots` VALUES(154, '00:00:00', 0.00, '', 5, 20);
INSERT INTO `snapshots` VALUES(155, '00:00:00', 0.00, '', 9, 17);
INSERT INTO `snapshots` VALUES(156, '00:00:00', 0.00, '', 6, 20);
INSERT INTO `snapshots` VALUES(157, '00:00:00', 0.00, '', 8, 18);
INSERT INTO `snapshots` VALUES(158, '00:00:00', 0.00, '', 10, 17);
INSERT INTO `snapshots` VALUES(159, '00:00:00', 0.00, '', 9, 18);
INSERT INTO `snapshots` VALUES(160, '00:00:00', 0.00, '', 10, 18);
INSERT INTO `snapshots` VALUES(161, '00:00:00', 0.00, '', 7, 20);
INSERT INTO `snapshots` VALUES(162, '00:00:00', 0.00, '', 8, 20);
INSERT INTO `snapshots` VALUES(163, '00:00:00', 0.00, '', 9, 20);
INSERT INTO `snapshots` VALUES(164, '00:00:00', 0.00, '', 2, 22);
INSERT INTO `snapshots` VALUES(165, '00:00:00', 0.00, '', 4, 21);
INSERT INTO `snapshots` VALUES(166, '00:00:00', 0.00, '', 10, 20);
INSERT INTO `snapshots` VALUES(167, '00:00:00', 0.00, '', 3, 22);
INSERT INTO `snapshots` VALUES(168, '00:00:00', 0.00, '', 4, 22);
INSERT INTO `snapshots` VALUES(169, '00:00:00', 0.00, '', 5, 21);
INSERT INTO `snapshots` VALUES(170, '00:00:00', 0.00, '', 5, 22);
INSERT INTO `snapshots` VALUES(171, '00:00:00', 0.00, '', 6, 21);
INSERT INTO `snapshots` VALUES(172, '00:00:00', 0.00, '', 6, 22);
INSERT INTO `snapshots` VALUES(173, '00:00:00', 0.00, '', 2, 24);
INSERT INTO `snapshots` VALUES(174, '00:00:00', 0.00, '', 3, 24);
INSERT INTO `snapshots` VALUES(175, '00:00:00', 0.00, '', 4, 24);
INSERT INTO `snapshots` VALUES(176, '00:00:00', 0.00, '', 7, 22);
INSERT INTO `snapshots` VALUES(177, '00:00:00', 0.00, '', 5, 24);
INSERT INTO `snapshots` VALUES(178, '00:00:00', 0.00, '', 7, 21);
INSERT INTO `snapshots` VALUES(179, '00:00:00', 0.00, '', 8, 22);
INSERT INTO `snapshots` VALUES(180, '00:00:00', 0.00, '', 6, 24);
INSERT INTO `snapshots` VALUES(181, '00:00:00', 0.00, '', 7, 24);
INSERT INTO `snapshots` VALUES(182, '00:00:00', 0.00, '', 8, 21);
INSERT INTO `snapshots` VALUES(183, '00:00:00', 0.00, '', 8, 24);
INSERT INTO `snapshots` VALUES(184, '00:00:00', 0.00, '', 9, 22);
INSERT INTO `snapshots` VALUES(185, '00:00:00', 0.00, '', 9, 24);
INSERT INTO `snapshots` VALUES(186, '00:00:00', 0.00, '', 9, 21);
INSERT INTO `snapshots` VALUES(187, '00:00:00', 0.00, '', 10, 24);
INSERT INTO `snapshots` VALUES(188, '00:00:00', 0.00, '', 10, 21);
INSERT INTO `snapshots` VALUES(189, '00:00:00', 0.00, '', 10, 22);
INSERT INTO `snapshots` VALUES(190, '00:00:00', 0.00, '', 2, 23);
INSERT INTO `snapshots` VALUES(191, '00:00:00', 0.00, '', 3, 23);
INSERT INTO `snapshots` VALUES(192, '00:00:00', 0.00, '', 4, 23);
INSERT INTO `snapshots` VALUES(193, '00:00:00', 0.00, '', 2, 25);
INSERT INTO `snapshots` VALUES(194, '00:00:00', 0.00, '', 5, 23);
INSERT INTO `snapshots` VALUES(195, '00:00:00', 0.00, '', 3, 25);
INSERT INTO `snapshots` VALUES(196, '00:00:00', 0.00, '', 6, 23);
INSERT INTO `snapshots` VALUES(197, '00:00:00', 0.00, '', 4, 25);
INSERT INTO `snapshots` VALUES(198, '00:00:00', 0.00, '', 5, 25);
INSERT INTO `snapshots` VALUES(199, '00:00:00', 0.00, '', 7, 23);
INSERT INTO `snapshots` VALUES(200, '00:00:00', 0.00, '', 6, 25);
INSERT INTO `snapshots` VALUES(201, '00:00:00', 0.00, '', 8, 23);
INSERT INTO `snapshots` VALUES(202, '00:00:00', 0.00, '', 9, 23);
INSERT INTO `snapshots` VALUES(203, '00:00:00', 0.00, '', 7, 25);
INSERT INTO `snapshots` VALUES(204, '00:00:00', 0.00, '', 10, 23);
INSERT INTO `snapshots` VALUES(205, '00:00:00', 0.00, '', 8, 25);
INSERT INTO `snapshots` VALUES(206, '00:00:00', 0.00, '', 9, 25);
INSERT INTO `snapshots` VALUES(207, '00:00:00', 0.00, '', 10, 25);

-- --------------------------------------------------------

--
-- Table structure for table `steps`
--

CREATE TABLE `steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `event_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  KEY `module_id` (`module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `steps`
--

INSERT INTO `steps` VALUES(2, '2012-12-15 02:16:11', '2012-12-15 02:18:05', 42, 1);
INSERT INTO `steps` VALUES(3, '2012-12-15 14:31:15', '2012-12-15 14:41:15', 44, 2);
INSERT INTO `steps` VALUES(4, '2012-12-15 14:47:20', '2012-12-15 14:57:22', 42, 2);
INSERT INTO `steps` VALUES(5, '2012-12-15 14:47:35', '2012-12-15 14:49:38', 44, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tablets`
--

CREATE TABLE `tablets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tablets`
--

INSERT INTO `tablets` VALUES(1, 'Han');
INSERT INTO `tablets` VALUES(2, 'Chewie');
INSERT INTO `tablets` VALUES(3, 'Luke');
INSERT INTO `tablets` VALUES(4, 'Leia ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `venue_id` int(11) NOT NULL,
  `usertype_id` int(11) NOT NULL,
  `tablet_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `venue_id` (`venue_id`),
  KEY `usertype_id` (`usertype_id`),
  KEY `tablet_id` (`tablet_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES(2, 'Freddy', 1, 2, 1);
INSERT INTO `users` VALUES(3, 'Kevin', 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` VALUES(1, 'admin');
INSERT INTO `user_types` VALUES(2, 'guests');
INSERT INTO `user_types` VALUES(3, 'venue');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` VALUES(1, 'The Owl Of Minerva');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`step_id`) REFERENCES `steps` (`id`),
  ADD CONSTRAINT `activities_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_ibfk_3` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `cart_items_ibfk_4` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `events` (`id`),
  ADD CONSTRAINT `events_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `events_ibfk_4` FOREIGN KEY (`eventcategory_id`) REFERENCES `event_categories` (`id`),
  ADD CONSTRAINT `events_ibfk_5` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`);

--
-- Constraints for table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `modules_ibfk_3` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`id`),
  ADD CONSTRAINT `modules_ibfk_4` FOREIGN KEY (`parent_id`) REFERENCES `modules` (`id`);

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`reporttype_id`) REFERENCES `report_types` (`id`);

--
-- Constraints for table `section_modules`
--
ALTER TABLE `section_modules`
  ADD CONSTRAINT `section_modules_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `section_modules_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`);

--
-- Constraints for table `snapshots`
--
ALTER TABLE `snapshots`
  ADD CONSTRAINT `snapshots_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `reports` (`id`),
  ADD CONSTRAINT `snapshots_ibfk_2` FOREIGN KEY (`sectionmodule_id`) REFERENCES `section_modules` (`id`);

--
-- Constraints for table `steps`
--
ALTER TABLE `steps`
  ADD CONSTRAINT `steps_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`),
  ADD CONSTRAINT `steps_ibfk_2` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`id`),
  ADD CONSTRAINT `users_ibfk_5` FOREIGN KEY (`usertype_id`) REFERENCES `user_types` (`id`),
  ADD CONSTRAINT `users_ibfk_6` FOREIGN KEY (`tablet_id`) REFERENCES `tablets` (`id`);
