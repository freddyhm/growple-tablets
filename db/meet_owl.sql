-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 04, 2013 at 06:27 PM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `meet_owl`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `step_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `metric_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `step_id` (`step_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` VALUES(1, 'loved_item', '2013-04-04 14:53:43', '2013-04-04 14:53:43', 8, 1, NULL);
INSERT INTO `activities` VALUES(2, 'started_watching_video', '2013-04-04 14:53:45', '2013-04-04 14:53:52', 9, 14, NULL);
INSERT INTO `activities` VALUES(3, 'unloved_commented_item', '2013-04-04 14:54:07', '2013-04-04 14:54:07', 10, 1, NULL);
INSERT INTO `activities` VALUES(4, 'unloved_commented_item', '2013-04-04 14:54:07', '2013-04-04 14:54:07', 10, 1, NULL);
INSERT INTO `activities` VALUES(5, 'loved_item', '2013-04-04 14:54:10', '2013-04-04 14:54:10', 10, 18, NULL);
INSERT INTO `activities` VALUES(6, 'loved_item', '2013-04-04 14:54:10', '2013-04-04 14:54:10', 10, 18, NULL);
INSERT INTO `activities` VALUES(7, 'loved_item', '2013-04-04 14:54:14', '2013-04-04 14:54:14', 10, 16, NULL);
INSERT INTO `activities` VALUES(8, 'loved_item', '2013-04-04 14:54:14', '2013-04-04 14:54:14', 10, 16, NULL);
INSERT INTO `activities` VALUES(9, 'loved_item', '2013-04-04 14:54:16', '2013-04-04 14:54:16', 10, 16, NULL);
INSERT INTO `activities` VALUES(10, 'loved_item', '2013-04-04 14:54:16', '2013-04-04 14:54:16', 10, 16, NULL);
INSERT INTO `activities` VALUES(11, 'loved_item', '2013-04-04 14:54:18', '2013-04-04 14:54:18', 10, 16, NULL);
INSERT INTO `activities` VALUES(12, 'loved_item', '2013-04-04 14:54:18', '2013-04-04 14:54:18', 10, 16, NULL);
INSERT INTO `activities` VALUES(13, 'loved_item', '2013-04-04 14:54:20', '2013-04-04 14:54:20', 10, 16, NULL);
INSERT INTO `activities` VALUES(14, 'loved_item', '2013-04-04 14:54:20', '2013-04-04 14:54:20', 10, 16, NULL);
INSERT INTO `activities` VALUES(15, 'started_watching_video', '2013-04-04 14:54:23', '2013-04-04 14:54:30', 11, 13, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `promo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cart_items`
--


-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `commenttype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` VALUES(1, 'Too salty and/or spicy', 2);
INSERT INTO `comments` VALUES(2, 'Not enough, expecting more food', 2);
INSERT INTO `comments` VALUES(3, 'Too expensive', 2);

-- --------------------------------------------------------

--
-- Table structure for table `comment_items`
--

CREATE TABLE `comment_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `comment_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=205 ;

--
-- Dumping data for table `comment_items`
--

INSERT INTO `comment_items` VALUES(1, '2013-03-22 15:11:24', 1, 3);
INSERT INTO `comment_items` VALUES(2, '2013-03-22 15:16:48', 2, 1);
INSERT INTO `comment_items` VALUES(3, '2013-03-24 15:07:22', 1, 3);
INSERT INTO `comment_items` VALUES(4, '2013-03-24 15:09:12', 1, 3);
INSERT INTO `comment_items` VALUES(5, '2013-03-26 09:46:27', 2, 3);
INSERT INTO `comment_items` VALUES(6, '2013-03-26 09:46:54', 3, 4);
INSERT INTO `comment_items` VALUES(7, '2013-03-26 09:47:00', 3, 4);
INSERT INTO `comment_items` VALUES(8, '2013-03-26 09:53:24', 3, 3);
INSERT INTO `comment_items` VALUES(9, '2013-03-26 09:53:41', 3, 3);
INSERT INTO `comment_items` VALUES(10, '2013-03-26 09:53:43', 3, 3);
INSERT INTO `comment_items` VALUES(11, '2013-03-26 09:57:31', 0, 3);
INSERT INTO `comment_items` VALUES(12, '2013-03-26 09:58:24', 3, 3);
INSERT INTO `comment_items` VALUES(13, '2013-03-26 09:58:28', 3, 3);
INSERT INTO `comment_items` VALUES(14, '2013-03-26 09:58:31', 3, 3);
INSERT INTO `comment_items` VALUES(15, '2013-03-26 09:58:33', 2, 3);
INSERT INTO `comment_items` VALUES(16, '2013-03-26 09:58:35', 3, 3);
INSERT INTO `comment_items` VALUES(17, '2013-03-26 09:59:25', 3, 3);
INSERT INTO `comment_items` VALUES(18, '2013-03-26 09:59:28', 3, 3);
INSERT INTO `comment_items` VALUES(19, '2013-03-26 09:59:31', 3, 3);
INSERT INTO `comment_items` VALUES(20, '2013-03-26 09:59:42', 3, 3);
INSERT INTO `comment_items` VALUES(21, '2013-03-26 10:01:14', 3, 3);
INSERT INTO `comment_items` VALUES(22, '2013-03-26 10:01:25', 3, 3);
INSERT INTO `comment_items` VALUES(23, '2013-03-26 10:01:40', 3, 3);
INSERT INTO `comment_items` VALUES(24, '2013-03-26 10:01:50', 3, 3);
INSERT INTO `comment_items` VALUES(25, '2013-03-26 10:01:56', 3, 3);
INSERT INTO `comment_items` VALUES(26, '2013-03-26 10:02:05', 3, 1);
INSERT INTO `comment_items` VALUES(27, '2013-03-26 10:02:13', 3, 1);
INSERT INTO `comment_items` VALUES(28, '2013-03-26 10:02:35', 3, 1);
INSERT INTO `comment_items` VALUES(29, '2013-03-26 10:55:14', 3, 1);
INSERT INTO `comment_items` VALUES(30, '2013-03-26 10:55:20', 2, 1);
INSERT INTO `comment_items` VALUES(31, '2013-03-26 10:55:27', 2, 3);
INSERT INTO `comment_items` VALUES(32, '2013-03-26 10:55:48', 3, 3);
INSERT INTO `comment_items` VALUES(33, '2013-03-26 10:55:51', 3, 3);
INSERT INTO `comment_items` VALUES(34, '2013-03-26 10:55:54', 3, 3);
INSERT INTO `comment_items` VALUES(35, '2013-03-26 10:55:56', 3, 3);
INSERT INTO `comment_items` VALUES(36, '2013-03-26 10:56:00', 3, 3);
INSERT INTO `comment_items` VALUES(37, '2013-03-26 10:58:16', 3, 3);
INSERT INTO `comment_items` VALUES(38, '2013-03-26 10:58:23', 3, 3);
INSERT INTO `comment_items` VALUES(39, '2013-03-26 10:58:26', 3, 3);
INSERT INTO `comment_items` VALUES(40, '2013-03-26 10:58:31', 3, 3);
INSERT INTO `comment_items` VALUES(41, '2013-03-26 10:59:55', 3, 3);
INSERT INTO `comment_items` VALUES(42, '2013-03-26 11:00:03', 3, 3);
INSERT INTO `comment_items` VALUES(43, '2013-03-26 11:00:16', 3, 3);
INSERT INTO `comment_items` VALUES(44, '2013-03-26 11:01:05', 3, 3);
INSERT INTO `comment_items` VALUES(45, '2013-03-26 11:01:13', 3, 3);
INSERT INTO `comment_items` VALUES(46, '2013-03-26 11:01:21', 3, 3);
INSERT INTO `comment_items` VALUES(47, '2013-03-26 11:02:09', 2, 3);
INSERT INTO `comment_items` VALUES(48, '2013-03-26 11:02:19', 3, 3);
INSERT INTO `comment_items` VALUES(49, '2013-03-26 11:02:30', 3, 3);
INSERT INTO `comment_items` VALUES(50, '2013-03-26 11:02:41', 3, 3);
INSERT INTO `comment_items` VALUES(51, '2013-03-26 11:02:51', 3, 3);
INSERT INTO `comment_items` VALUES(52, '2013-03-26 11:05:06', 2, 3);
INSERT INTO `comment_items` VALUES(53, '2013-03-26 11:05:13', 2, 3);
INSERT INTO `comment_items` VALUES(54, '2013-03-26 11:05:32', 3, 3);
INSERT INTO `comment_items` VALUES(55, '2013-03-26 11:05:36', 3, 3);
INSERT INTO `comment_items` VALUES(56, '2013-03-26 11:05:47', 3, 3);
INSERT INTO `comment_items` VALUES(57, '2013-03-26 11:20:50', 1, 3);
INSERT INTO `comment_items` VALUES(58, '2013-03-26 11:30:49', 3, 3);
INSERT INTO `comment_items` VALUES(59, '2013-03-26 11:30:55', 1, 3);
INSERT INTO `comment_items` VALUES(60, '2013-03-26 11:31:34', 3, 3);
INSERT INTO `comment_items` VALUES(61, '2013-03-26 13:04:24', 3, 3);
INSERT INTO `comment_items` VALUES(62, '2013-03-26 13:05:34', 3, 3);
INSERT INTO `comment_items` VALUES(63, '2013-03-26 13:06:48', 3, 3);
INSERT INTO `comment_items` VALUES(64, '2013-03-27 08:44:34', 3, 4);
INSERT INTO `comment_items` VALUES(65, '2013-03-27 08:44:40', 1, 4);
INSERT INTO `comment_items` VALUES(66, '2013-03-29 22:34:08', 3, 3);
INSERT INTO `comment_items` VALUES(67, '2013-04-04 10:28:41', 3, 1);
INSERT INTO `comment_items` VALUES(68, '2013-04-04 10:28:41', 3, 1);
INSERT INTO `comment_items` VALUES(69, '2013-04-04 10:28:54', 1, 1);
INSERT INTO `comment_items` VALUES(70, '2013-04-04 10:31:08', 3, 1);
INSERT INTO `comment_items` VALUES(71, '2013-04-04 10:31:12', 3, 1);
INSERT INTO `comment_items` VALUES(72, '2013-04-04 10:31:12', 3, 1);
INSERT INTO `comment_items` VALUES(73, '2013-04-04 10:31:36', 3, 1);
INSERT INTO `comment_items` VALUES(74, '2013-04-04 10:31:46', 3, 1);
INSERT INTO `comment_items` VALUES(75, '2013-04-04 10:31:55', 3, 1);
INSERT INTO `comment_items` VALUES(76, '2013-04-04 10:31:55', 3, 1);
INSERT INTO `comment_items` VALUES(77, '2013-04-04 10:31:58', 1, 1);
INSERT INTO `comment_items` VALUES(78, '2013-04-04 10:31:58', 1, 1);
INSERT INTO `comment_items` VALUES(79, '2013-04-04 10:31:58', 1, 1);
INSERT INTO `comment_items` VALUES(80, '2013-04-04 10:32:02', 3, 1);
INSERT INTO `comment_items` VALUES(81, '2013-04-04 10:32:02', 3, 1);
INSERT INTO `comment_items` VALUES(82, '2013-04-04 10:32:02', 3, 1);
INSERT INTO `comment_items` VALUES(83, '2013-04-04 10:32:02', 3, 1);
INSERT INTO `comment_items` VALUES(84, '2013-04-04 10:32:05', 3, 1);
INSERT INTO `comment_items` VALUES(85, '2013-04-04 10:32:05', 3, 1);
INSERT INTO `comment_items` VALUES(86, '2013-04-04 10:32:05', 3, 1);
INSERT INTO `comment_items` VALUES(87, '2013-04-04 10:32:06', 3, 1);
INSERT INTO `comment_items` VALUES(88, '2013-04-04 10:32:06', 3, 1);
INSERT INTO `comment_items` VALUES(89, '2013-04-04 10:32:34', 3, 1);
INSERT INTO `comment_items` VALUES(90, '2013-04-04 10:32:52', 3, 1);
INSERT INTO `comment_items` VALUES(91, '2013-04-04 10:33:28', 2, 1);
INSERT INTO `comment_items` VALUES(92, '2013-04-04 10:33:30', 3, 1);
INSERT INTO `comment_items` VALUES(93, '2013-04-04 10:33:30', 3, 1);
INSERT INTO `comment_items` VALUES(94, '2013-04-04 10:33:47', 3, 1);
INSERT INTO `comment_items` VALUES(95, '2013-04-04 10:33:47', 3, 1);
INSERT INTO `comment_items` VALUES(96, '2013-04-04 10:33:47', 3, 1);
INSERT INTO `comment_items` VALUES(97, '2013-04-04 10:35:37', 3, 1);
INSERT INTO `comment_items` VALUES(98, '2013-04-04 10:35:40', 3, 1);
INSERT INTO `comment_items` VALUES(99, '2013-04-04 10:35:40', 3, 1);
INSERT INTO `comment_items` VALUES(100, '2013-04-04 10:36:22', 2, 1);
INSERT INTO `comment_items` VALUES(101, '2013-04-04 10:36:22', 2, 1);
INSERT INTO `comment_items` VALUES(102, '2013-04-04 10:44:27', 3, 1);
INSERT INTO `comment_items` VALUES(103, '2013-04-04 10:44:27', 3, 1);
INSERT INTO `comment_items` VALUES(104, '2013-04-04 10:48:18', 3, 1);
INSERT INTO `comment_items` VALUES(105, '2013-04-04 10:48:18', 3, 1);
INSERT INTO `comment_items` VALUES(106, '2013-04-04 10:48:18', 3, 1);
INSERT INTO `comment_items` VALUES(107, '2013-04-04 10:48:25', 3, 1);
INSERT INTO `comment_items` VALUES(108, '2013-04-04 10:48:25', 3, 1);
INSERT INTO `comment_items` VALUES(109, '2013-04-04 10:48:25', 3, 1);
INSERT INTO `comment_items` VALUES(110, '2013-04-04 10:48:25', 3, 1);
INSERT INTO `comment_items` VALUES(111, '2013-04-04 10:50:39', 3, 1);
INSERT INTO `comment_items` VALUES(112, '2013-04-04 10:50:49', 3, 1);
INSERT INTO `comment_items` VALUES(113, '2013-04-04 10:50:49', 3, 1);
INSERT INTO `comment_items` VALUES(114, '2013-04-04 10:50:49', 3, 1);
INSERT INTO `comment_items` VALUES(115, '2013-04-04 10:50:57', 3, 1);
INSERT INTO `comment_items` VALUES(116, '2013-04-04 10:50:57', 3, 1);
INSERT INTO `comment_items` VALUES(117, '2013-04-04 10:50:57', 3, 1);
INSERT INTO `comment_items` VALUES(118, '2013-04-04 10:50:57', 3, 1);
INSERT INTO `comment_items` VALUES(119, '2013-04-04 10:52:08', 3, 1);
INSERT INTO `comment_items` VALUES(120, '2013-04-04 10:52:20', 3, 1);
INSERT INTO `comment_items` VALUES(121, '2013-04-04 10:52:20', 3, 1);
INSERT INTO `comment_items` VALUES(122, '2013-04-04 10:52:21', 3, 1);
INSERT INTO `comment_items` VALUES(123, '2013-04-04 10:53:20', 3, 1);
INSERT INTO `comment_items` VALUES(124, '2013-04-04 10:53:41', 3, 1);
INSERT INTO `comment_items` VALUES(125, '2013-04-04 10:53:53', 1, 1);
INSERT INTO `comment_items` VALUES(126, '2013-04-04 10:53:53', 1, 1);
INSERT INTO `comment_items` VALUES(127, '2013-04-04 10:55:42', 3, 1);
INSERT INTO `comment_items` VALUES(128, '2013-04-04 10:56:50', 3, 16);
INSERT INTO `comment_items` VALUES(129, '2013-04-04 10:57:27', 3, 1);
INSERT INTO `comment_items` VALUES(130, '2013-04-04 10:57:36', 3, 1);
INSERT INTO `comment_items` VALUES(131, '2013-04-04 10:57:36', 3, 1);
INSERT INTO `comment_items` VALUES(132, '2013-04-04 10:59:26', 3, 1);
INSERT INTO `comment_items` VALUES(133, '2013-04-04 10:59:34', 3, 1);
INSERT INTO `comment_items` VALUES(134, '2013-04-04 10:59:34', 3, 1);
INSERT INTO `comment_items` VALUES(135, '2013-04-04 11:00:46', 3, 1);
INSERT INTO `comment_items` VALUES(136, '2013-04-04 11:01:01', 3, 1);
INSERT INTO `comment_items` VALUES(137, '2013-04-04 11:01:01', 3, 1);
INSERT INTO `comment_items` VALUES(138, '2013-04-04 11:01:01', 3, 1);
INSERT INTO `comment_items` VALUES(139, '2013-04-04 11:01:08', 3, 1);
INSERT INTO `comment_items` VALUES(140, '2013-04-04 11:01:08', 3, 1);
INSERT INTO `comment_items` VALUES(141, '2013-04-04 11:01:08', 3, 1);
INSERT INTO `comment_items` VALUES(142, '2013-04-04 11:01:08', 3, 1);
INSERT INTO `comment_items` VALUES(143, '2013-04-04 11:01:23', 3, 1);
INSERT INTO `comment_items` VALUES(144, '2013-04-04 11:01:23', 3, 1);
INSERT INTO `comment_items` VALUES(145, '2013-04-04 11:01:23', 3, 1);
INSERT INTO `comment_items` VALUES(146, '2013-04-04 11:01:23', 3, 1);
INSERT INTO `comment_items` VALUES(147, '2013-04-04 11:01:23', 3, 1);
INSERT INTO `comment_items` VALUES(148, '2013-04-04 11:01:23', 3, 1);
INSERT INTO `comment_items` VALUES(149, '2013-04-04 11:01:26', 3, 1);
INSERT INTO `comment_items` VALUES(150, '2013-04-04 11:01:26', 3, 1);
INSERT INTO `comment_items` VALUES(151, '2013-04-04 11:01:26', 3, 1);
INSERT INTO `comment_items` VALUES(152, '2013-04-04 11:01:26', 3, 1);
INSERT INTO `comment_items` VALUES(153, '2013-04-04 11:01:26', 3, 1);
INSERT INTO `comment_items` VALUES(154, '2013-04-04 11:01:26', 3, 1);
INSERT INTO `comment_items` VALUES(155, '2013-04-04 11:01:26', 3, 1);
INSERT INTO `comment_items` VALUES(156, '2013-04-04 11:01:59', 3, 1);
INSERT INTO `comment_items` VALUES(157, '2013-04-04 11:02:02', 3, 1);
INSERT INTO `comment_items` VALUES(158, '2013-04-04 11:02:02', 3, 1);
INSERT INTO `comment_items` VALUES(159, '2013-04-04 11:02:09', 3, 1);
INSERT INTO `comment_items` VALUES(160, '2013-04-04 11:02:09', 3, 1);
INSERT INTO `comment_items` VALUES(161, '2013-04-04 11:02:10', 3, 1);
INSERT INTO `comment_items` VALUES(162, '2013-04-04 11:02:20', 3, 1);
INSERT INTO `comment_items` VALUES(163, '2013-04-04 11:02:20', 3, 1);
INSERT INTO `comment_items` VALUES(164, '2013-04-04 11:02:20', 3, 1);
INSERT INTO `comment_items` VALUES(165, '2013-04-04 11:02:20', 3, 1);
INSERT INTO `comment_items` VALUES(166, '2013-04-04 11:02:22', 3, 1);
INSERT INTO `comment_items` VALUES(167, '2013-04-04 11:02:22', 3, 1);
INSERT INTO `comment_items` VALUES(168, '2013-04-04 11:02:22', 3, 1);
INSERT INTO `comment_items` VALUES(169, '2013-04-04 11:02:22', 3, 1);
INSERT INTO `comment_items` VALUES(170, '2013-04-04 11:02:22', 3, 1);
INSERT INTO `comment_items` VALUES(171, '2013-04-04 14:39:18', 3, 18);
INSERT INTO `comment_items` VALUES(172, '2013-04-04 14:39:18', 3, 18);
INSERT INTO `comment_items` VALUES(173, '2013-04-04 14:40:09', 3, 1);
INSERT INTO `comment_items` VALUES(174, '2013-04-04 14:40:09', 3, 1);
INSERT INTO `comment_items` VALUES(175, '2013-04-04 14:40:09', 3, 1);
INSERT INTO `comment_items` VALUES(176, '2013-04-04 14:54:07', 3, 1);
INSERT INTO `comment_items` VALUES(177, '2013-04-04 14:54:08', 3, 1);
INSERT INTO `comment_items` VALUES(178, '2013-04-04 15:11:03', 3, 1);
INSERT INTO `comment_items` VALUES(179, '2013-04-04 15:11:03', 3, 1);
INSERT INTO `comment_items` VALUES(180, '2013-04-04 15:11:10', 1, 1);
INSERT INTO `comment_items` VALUES(181, '2013-04-04 15:11:11', 1, 1);
INSERT INTO `comment_items` VALUES(182, '2013-04-04 15:11:11', 1, 1);
INSERT INTO `comment_items` VALUES(183, '2013-04-04 15:12:49', 2, 18);
INSERT INTO `comment_items` VALUES(184, '2013-04-04 15:12:49', 2, 18);
INSERT INTO `comment_items` VALUES(185, '2013-04-04 15:14:26', 3, 1);
INSERT INTO `comment_items` VALUES(186, '2013-04-04 15:14:36', 1, 1);
INSERT INTO `comment_items` VALUES(187, '2013-04-04 15:14:36', 1, 1);
INSERT INTO `comment_items` VALUES(188, '2013-04-04 15:15:42', 3, 1);
INSERT INTO `comment_items` VALUES(189, '2013-04-04 15:15:52', 1, 1);
INSERT INTO `comment_items` VALUES(190, '2013-04-04 15:15:53', 1, 1);
INSERT INTO `comment_items` VALUES(191, '2013-04-04 15:16:09', 3, 1);
INSERT INTO `comment_items` VALUES(192, '2013-04-04 15:16:14', 2, 1);
INSERT INTO `comment_items` VALUES(193, '2013-04-04 15:16:16', 2, 1);
INSERT INTO `comment_items` VALUES(194, '2013-04-04 15:21:00', 0, 1);
INSERT INTO `comment_items` VALUES(195, '2013-04-04 15:27:13', 0, 1);
INSERT INTO `comment_items` VALUES(196, '2013-04-04 15:27:17', 0, 1);
INSERT INTO `comment_items` VALUES(197, '2013-04-04 15:27:17', 0, 1);
INSERT INTO `comment_items` VALUES(198, '2013-04-04 15:27:25', 0, 1);
INSERT INTO `comment_items` VALUES(199, '2013-04-04 15:27:25', 0, 1);
INSERT INTO `comment_items` VALUES(200, '2013-04-04 15:27:25', 0, 1);
INSERT INTO `comment_items` VALUES(201, '2013-04-04 15:27:32', 0, 1);
INSERT INTO `comment_items` VALUES(202, '2013-04-04 15:27:32', 0, 1);
INSERT INTO `comment_items` VALUES(203, '2013-04-04 15:27:32', 0, 1);
INSERT INTO `comment_items` VALUES(204, '2013-04-04 15:27:32', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment_types`
--

CREATE TABLE `comment_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `comment_types`
--

INSERT INTO `comment_types` VALUES(1, 'love');
INSERT INTO `comment_types` VALUES(2, 'unlove');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `eventcategory_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `module_id` (`module_id`),
  KEY `user_id` (`user_id`),
  KEY `eventcategory_id` (`eventcategory_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` VALUES(1, 'Path started', '2013-04-04 14:39:28', '2013-04-04 14:40:23', NULL, NULL, 45, 1);
INSERT INTO `events` VALUES(2, 'Path started', '2013-04-04 14:42:27', '2013-04-04 14:44:43', NULL, NULL, 46, 1);
INSERT INTO `events` VALUES(3, 'Path started', '2013-04-04 14:44:49', '2013-04-04 14:44:54', NULL, NULL, 47, 1);
INSERT INTO `events` VALUES(4, 'Path started', '2013-04-04 14:45:16', '2013-04-04 14:45:56', NULL, NULL, 48, 1);
INSERT INTO `events` VALUES(5, 'Path started', '2013-04-04 14:46:09', '2013-04-04 14:46:51', NULL, NULL, 49, 1);
INSERT INTO `events` VALUES(6, 'Path started', '2013-04-04 14:47:42', '2013-04-04 14:47:52', NULL, NULL, 50, 1);
INSERT INTO `events` VALUES(7, 'Path started', '2013-04-04 14:52:59', '2013-04-04 14:53:17', NULL, NULL, 51, 1);
INSERT INTO `events` VALUES(8, 'Path started', '2013-04-04 14:53:41', '2013-04-04 14:53:52', NULL, NULL, 52, 1);
INSERT INTO `events` VALUES(9, 'Path started', '2013-04-04 14:54:04', '2013-04-04 14:54:30', NULL, NULL, 53, 1);

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
  `price` varchar(255) NOT NULL,
  `description` varchar(1000) CHARACTER SET latin1 NOT NULL,
  `small_pic` varchar(255) DEFAULT NULL,
  `big_pic` varchar(255) CHARACTER SET latin1 NOT NULL,
  `path` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `love` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=euckr AUTO_INCREMENT=19 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` VALUES(1, 'kamjatang', '감자탕', '7.99', 'Spicy soup made with pork bone, vegetables, green onion, hot peppers and ground wild sesame seeds', 'chef-kamjatang-small.png', 'kamjatang-big.png', '', '', 212, 5);
INSERT INTO `items` VALUES(2, 'bulgogi', '불고기', '10.99', 'Sweet marinated & grilled beef with vegetables, it was voted 23rd for world''s most delicious food', 'bulgogi-small.png', 'bulgogi-big.png', '', '', 7, 5);
INSERT INTO `items` VALUES(3, 'cutlet(kasu)', '돈까스/새우까스', '12.99', 'Popular dish that consists of breaded, deep-fried pork cutlet & sliced into bite-sized pieces', 'cutlet-small.png', 'cutlet-big.png', '', '', 6, 5);
INSERT INTO `items` VALUES(4, 'japchae', '잡채', '9.99', 'Famous dish made from sweet potato noodles, beef and stir fried in sesame oil with various vegetables', 'japchae-small.png', 'japchae-big.png', '', '', 2, 5);
INSERT INTO `items` VALUES(5, 'UFC Best KO 2011 - 2012', '', '', '', NULL, '', '1.mp4', 'StrikeForce', 0, 2);
INSERT INTO `items` VALUES(6, 'Blake Griffin 3 Pt Fail', '', '', '', NULL, '', '2.mp4', 'NBA', 0, 2);
INSERT INTO `items` VALUES(7, 'Cheating Boss Prank', '', '', '', NULL, '', '3.mp4', 'Just for Laughs', 0, 2);
INSERT INTO `items` VALUES(8, 'Embarrassing Urinal Prank', '', '', '', NULL, '', '4.mp4', 'Just for Laughs', 0, 2);
INSERT INTO `items` VALUES(9, 'I Got A Boy', '', '', '', NULL, '', '5.mp4', 'Girls Generation', 0, 2);
INSERT INTO `items` VALUES(10, 'League of Legends Top 5 Plays (Wk. 113)', '', '', '', NULL, '', '6.mp4', 'LOLKing', 0, 2);
INSERT INTO `items` VALUES(11, 'Lionel Messi Humiliates Great Players', '', '', '', NULL, '', '7.mp4', 'FuteBol', 0, 2);
INSERT INTO `items` VALUES(12, 'Gangnam Style', '', '', '', NULL, '', '8.mp4', 'Psy', 0, 2);
INSERT INTO `items` VALUES(13, 'Into Darkness Trailer ', '', '', '', NULL, '', '9.mp4', 'Star Trek', 0, 2);
INSERT INTO `items` VALUES(14, 'White Couple Black Baby', '', '', '', NULL, '', '10.mp4', 'Just for Laughs', 0, 2);
INSERT INTO `items` VALUES(16, 'Growple! Tablets', '', '', 'Growple''s a fun discovery tool that connects you with places you love. Find out more at growple.com', 'notice-growple-small.png', 'growple-big.png', '', '', 13, 7);
INSERT INTO `items` VALUES(17, 'The Owl of Minerva', '', '', 'Rated top among T.O''s best restaurants, we strive to offer the best in korean cuisine. Enjoy!', 'about-owl-small.png', 'owl-big.png', '', '', 0, 7);
INSERT INTO `items` VALUES(18, 'Coming Soon!', '', '', '', NULL, 'comingsoon-big.png', '', '', 22, 8);

-- --------------------------------------------------------

--
-- Table structure for table `metrics`
--

CREATE TABLE `metrics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `metrics`
--

INSERT INTO `metrics` VALUES(1, 'exposure');
INSERT INTO `metrics` VALUES(2, 'engagement');
INSERT INTO `metrics` VALUES(3, 'love');
INSERT INTO `metrics` VALUES(4, 'unlove');
INSERT INTO `metrics` VALUES(5, 'unlove_comments');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` VALUES(1, 'discover', 1, NULL);
INSERT INTO `modules` VALUES(2, 'play', 1, NULL);
INSERT INTO `modules` VALUES(5, 'hot', 1, 1);
INSERT INTO `modules` VALUES(7, 'info', 1, 1);
INSERT INTO `modules` VALUES(8, 'specials', 1, 1);
INSERT INTO `modules` VALUES(13, 'videos', 1, 2);
INSERT INTO `modules` VALUES(14, 'games', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `promos`
--

CREATE TABLE `promos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double(11,2) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `promotype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `promos`
--

INSERT INTO `promos` VALUES(1, '1#kamjatang#9#dishes#01.jpg#1', 9.99, 'slide6.jpg', 1);
INSERT INTO `promos` VALUES(2, '21#cutlet(kasu)#4#dishes#21.jpg#2', 18.99, 'slide7.jpg', 1);
INSERT INTO `promos` VALUES(3, '1#kamjatang#9#dishes#01.jpg#3', 9.99, 'randomboxgame.gif', 2);

-- --------------------------------------------------------

--
-- Table structure for table `promo_types`
--

CREATE TABLE `promo_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `promo_types`
--

INSERT INTO `promo_types` VALUES(1, 'slides');
INSERT INTO `promo_types` VALUES(2, 'randombox');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `before` double(11,2) NOT NULL,
  `after` double(11,2) NOT NULL,
  `difference` double(11,2) NOT NULL,
  `goal` double(11,2) NOT NULL,
  `outcome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `release_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `results`
--


-- --------------------------------------------------------

--
-- Table structure for table `steps`
--

CREATE TABLE `steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `event_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  KEY `module_id` (`module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `steps`
--

INSERT INTO `steps` VALUES(1, '2013-04-04 14:39:28', '2013-04-04 14:40:11', 1, 1);
INSERT INTO `steps` VALUES(2, '2013-04-04 14:42:27', '2013-04-04 14:44:41', 2, 1);
INSERT INTO `steps` VALUES(3, '2013-04-04 14:44:49', '2013-04-04 14:44:51', 3, 1);
INSERT INTO `steps` VALUES(4, '2013-04-04 14:45:16', '2013-04-04 14:45:54', 4, 1);
INSERT INTO `steps` VALUES(5, '2013-04-04 14:46:09', '2013-04-04 14:46:43', 5, 1);
INSERT INTO `steps` VALUES(6, '2013-04-04 14:47:42', '2013-04-04 14:47:44', 6, 1);
INSERT INTO `steps` VALUES(7, '2013-04-04 14:52:59', '2013-04-04 14:53:08', 7, 1);
INSERT INTO `steps` VALUES(8, '2013-04-04 14:53:41', '2013-04-04 14:53:44', 8, 1);
INSERT INTO `steps` VALUES(9, '2013-04-04 14:53:44', '2013-04-04 14:53:52', 8, 2);
INSERT INTO `steps` VALUES(10, '2013-04-04 14:54:04', '2013-04-04 14:54:22', 9, 1);
INSERT INTO `steps` VALUES(11, '2013-04-04 14:54:22', '2013-04-04 14:54:30', 9, 2);

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

INSERT INTO `tablets` VALUES(1, 'Solo');
INSERT INTO `tablets` VALUES(2, 'Chewie');
INSERT INTO `tablets` VALUES(3, 'Vader');
INSERT INTO `tablets` VALUES(4, 'Yoda');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES(1, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(2, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(3, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(4, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(5, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(6, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(7, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(8, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(9, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(10, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(11, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(12, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(13, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(14, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(15, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(16, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(17, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(18, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(19, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(20, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(21, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(22, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(23, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(24, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(25, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(26, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(27, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(28, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(29, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(30, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(31, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(32, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(33, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(34, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(35, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(36, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(37, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(38, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(39, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(40, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(41, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(42, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(43, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(44, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(45, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(46, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(47, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(48, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(49, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(50, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(51, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(52, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(53, 'JohnJane', 1, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`id`),
  ADD CONSTRAINT `users_ibfk_5` FOREIGN KEY (`usertype_id`) REFERENCES `user_types` (`id`),
  ADD CONSTRAINT `users_ibfk_6` FOREIGN KEY (`tablet_id`) REFERENCES `tablets` (`id`);
