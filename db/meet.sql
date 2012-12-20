-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 20, 2012 at 02:18 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=270 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` VALUES(42, 'Path started', '2012-12-15 02:12:34', '2012-12-18 14:21:05', NULL, NULL, 2, 1);
INSERT INTO `events` VALUES(44, '', '2012-12-15 13:06:37', '2012-12-15 13:09:40', NULL, 11, 3, 1);
INSERT INTO `events` VALUES(45, 'Path started', '2012-12-18 13:54:06', '0000-00-00 00:00:00', NULL, NULL, 6, 1);
INSERT INTO `events` VALUES(46, 'Path started', '2012-12-18 13:54:19', '0000-00-00 00:00:00', NULL, NULL, 6, 1);
INSERT INTO `events` VALUES(47, 'Path started', '2012-12-18 14:12:06', '0000-00-00 00:00:00', NULL, NULL, 6, 1);
INSERT INTO `events` VALUES(48, 'Path started', '2012-12-18 14:19:54', '0000-00-00 00:00:00', NULL, NULL, 6, 1);
INSERT INTO `events` VALUES(49, 'Path started', '2012-12-18 14:20:57', '0000-00-00 00:00:00', NULL, NULL, 6, 1);
INSERT INTO `events` VALUES(50, 'Path started', '2012-12-18 14:20:57', '0000-00-00 00:00:00', NULL, NULL, 6, 1);
INSERT INTO `events` VALUES(51, 'Path started', '2012-12-18 14:23:24', '0000-00-00 00:00:00', NULL, NULL, 7, 1);
INSERT INTO `events` VALUES(52, 'Path started', '2012-12-18 14:23:24', '0000-00-00 00:00:00', NULL, NULL, 7, 1);
INSERT INTO `events` VALUES(53, 'Path started', '2012-12-18 14:25:05', '0000-00-00 00:00:00', NULL, NULL, 8, 1);
INSERT INTO `events` VALUES(54, 'Path started', '2012-12-18 14:25:05', '0000-00-00 00:00:00', NULL, NULL, 8, 1);
INSERT INTO `events` VALUES(55, 'Path started', '2012-12-18 14:29:23', '0000-00-00 00:00:00', NULL, NULL, 9, 1);
INSERT INTO `events` VALUES(56, 'Path started', '2012-12-18 14:29:23', '0000-00-00 00:00:00', NULL, NULL, 9, 1);
INSERT INTO `events` VALUES(57, 'Path started', '2012-12-18 14:30:58', '0000-00-00 00:00:00', NULL, NULL, 10, 1);
INSERT INTO `events` VALUES(58, 'Path started', '2012-12-18 14:30:58', '0000-00-00 00:00:00', NULL, NULL, 10, 1);
INSERT INTO `events` VALUES(59, 'Path started', '2012-12-18 14:31:58', '0000-00-00 00:00:00', NULL, NULL, 11, 1);
INSERT INTO `events` VALUES(60, 'Path started', '2012-12-18 14:31:58', '0000-00-00 00:00:00', NULL, NULL, 11, 1);
INSERT INTO `events` VALUES(61, 'Path started', '2012-12-18 14:33:23', '0000-00-00 00:00:00', NULL, NULL, 12, 1);
INSERT INTO `events` VALUES(62, 'Path started', '2012-12-18 14:33:24', '0000-00-00 00:00:00', NULL, NULL, 12, 1);
INSERT INTO `events` VALUES(63, 'Path started', '2012-12-18 14:34:17', '0000-00-00 00:00:00', NULL, NULL, 13, 1);
INSERT INTO `events` VALUES(64, 'Path started', '2012-12-18 14:34:18', '0000-00-00 00:00:00', NULL, NULL, 13, 1);
INSERT INTO `events` VALUES(65, 'Path started', '2012-12-18 14:37:26', '0000-00-00 00:00:00', NULL, NULL, 14, 1);
INSERT INTO `events` VALUES(66, 'Path started', '2012-12-18 14:37:38', '0000-00-00 00:00:00', NULL, NULL, 14, 1);
INSERT INTO `events` VALUES(67, 'Path started', '2012-12-18 14:40:39', '0000-00-00 00:00:00', NULL, NULL, 15, 1);
INSERT INTO `events` VALUES(68, 'Path started', '2012-12-18 14:40:40', '0000-00-00 00:00:00', NULL, NULL, 15, 1);
INSERT INTO `events` VALUES(69, 'Path started', '2012-12-18 14:41:10', '0000-00-00 00:00:00', NULL, NULL, 16, 1);
INSERT INTO `events` VALUES(70, 'Path started', '2012-12-18 14:41:11', '0000-00-00 00:00:00', NULL, NULL, 16, 1);
INSERT INTO `events` VALUES(71, 'Path started', '2012-12-18 14:42:19', '0000-00-00 00:00:00', NULL, NULL, 17, 1);
INSERT INTO `events` VALUES(72, 'Path started', '2012-12-18 14:47:22', '0000-00-00 00:00:00', NULL, NULL, 18, 1);
INSERT INTO `events` VALUES(73, 'Path started', '2012-12-18 14:47:47', '0000-00-00 00:00:00', NULL, NULL, 19, 1);
INSERT INTO `events` VALUES(74, 'Path started', '2012-12-18 14:47:47', '0000-00-00 00:00:00', NULL, NULL, 19, 1);
INSERT INTO `events` VALUES(75, 'Path started', '2012-12-18 14:49:16', '0000-00-00 00:00:00', NULL, NULL, 20, 1);
INSERT INTO `events` VALUES(76, 'Path started', '2012-12-18 14:49:16', '0000-00-00 00:00:00', NULL, NULL, 20, 1);
INSERT INTO `events` VALUES(77, 'Path started', '2012-12-18 14:50:14', '0000-00-00 00:00:00', NULL, NULL, 21, 1);
INSERT INTO `events` VALUES(78, 'Path started', '2012-12-18 14:50:14', '0000-00-00 00:00:00', NULL, NULL, 21, 1);
INSERT INTO `events` VALUES(79, 'Path started', '2012-12-18 14:50:41', '0000-00-00 00:00:00', NULL, NULL, 22, 1);
INSERT INTO `events` VALUES(80, 'Path started', '2012-12-18 14:50:41', '0000-00-00 00:00:00', NULL, NULL, 22, 1);
INSERT INTO `events` VALUES(81, 'Path started', '2012-12-18 14:52:11', '0000-00-00 00:00:00', NULL, NULL, 23, 1);
INSERT INTO `events` VALUES(82, 'Path started', '2012-12-18 14:52:11', '0000-00-00 00:00:00', NULL, NULL, 23, 1);
INSERT INTO `events` VALUES(83, 'Path started', '2012-12-18 14:54:32', '0000-00-00 00:00:00', NULL, NULL, 24, 1);
INSERT INTO `events` VALUES(84, 'Path started', '2012-12-18 14:54:33', '0000-00-00 00:00:00', NULL, NULL, 24, 1);
INSERT INTO `events` VALUES(85, 'Path started', '2012-12-18 14:55:58', '0000-00-00 00:00:00', NULL, NULL, 25, 1);
INSERT INTO `events` VALUES(86, 'Path started', '2012-12-18 14:55:59', '0000-00-00 00:00:00', NULL, NULL, 25, 1);
INSERT INTO `events` VALUES(87, 'Path started', '2012-12-18 14:57:57', '0000-00-00 00:00:00', NULL, NULL, 26, 1);
INSERT INTO `events` VALUES(88, 'Path started', '2012-12-18 14:57:58', '0000-00-00 00:00:00', NULL, NULL, 26, 1);
INSERT INTO `events` VALUES(89, 'Path started', '2012-12-18 14:58:50', '0000-00-00 00:00:00', NULL, NULL, 27, 1);
INSERT INTO `events` VALUES(90, 'Path started', '2012-12-18 14:58:50', '0000-00-00 00:00:00', NULL, NULL, 27, 1);
INSERT INTO `events` VALUES(91, 'Path started', '2012-12-18 14:59:23', '0000-00-00 00:00:00', NULL, NULL, 28, 1);
INSERT INTO `events` VALUES(92, 'Path started', '2012-12-18 14:59:23', '0000-00-00 00:00:00', NULL, NULL, 28, 1);
INSERT INTO `events` VALUES(93, 'Path started', '2012-12-18 15:00:29', '0000-00-00 00:00:00', NULL, NULL, 29, 1);
INSERT INTO `events` VALUES(94, 'Path started', '2012-12-18 15:00:29', '0000-00-00 00:00:00', NULL, NULL, 29, 1);
INSERT INTO `events` VALUES(95, 'Path started', '2012-12-18 15:01:12', '0000-00-00 00:00:00', NULL, NULL, 30, 1);
INSERT INTO `events` VALUES(96, 'Path started', '2012-12-18 15:01:12', '0000-00-00 00:00:00', NULL, NULL, 30, 1);
INSERT INTO `events` VALUES(97, 'Path started', '2012-12-18 15:01:34', '0000-00-00 00:00:00', NULL, NULL, 31, 1);
INSERT INTO `events` VALUES(98, 'Path started', '2012-12-18 15:01:34', '0000-00-00 00:00:00', NULL, NULL, 31, 1);
INSERT INTO `events` VALUES(99, 'Path started', '2012-12-18 15:01:55', '0000-00-00 00:00:00', NULL, NULL, 32, 1);
INSERT INTO `events` VALUES(100, 'Path started', '2012-12-18 15:01:56', '0000-00-00 00:00:00', NULL, NULL, 32, 1);
INSERT INTO `events` VALUES(101, 'Path started', '2012-12-18 15:03:00', '0000-00-00 00:00:00', NULL, NULL, 33, 1);
INSERT INTO `events` VALUES(102, 'Path started', '2012-12-18 15:03:01', '0000-00-00 00:00:00', NULL, NULL, 33, 1);
INSERT INTO `events` VALUES(103, 'Path started', '2012-12-18 15:03:26', '0000-00-00 00:00:00', NULL, NULL, 34, 1);
INSERT INTO `events` VALUES(104, 'Path started', '2012-12-18 15:03:26', '0000-00-00 00:00:00', NULL, NULL, 34, 1);
INSERT INTO `events` VALUES(105, 'Path started', '2012-12-18 15:04:21', '0000-00-00 00:00:00', NULL, NULL, 35, 1);
INSERT INTO `events` VALUES(106, 'Path started', '2012-12-18 15:04:22', '0000-00-00 00:00:00', NULL, NULL, 35, 1);
INSERT INTO `events` VALUES(107, 'Path started', '2012-12-18 15:04:39', '0000-00-00 00:00:00', NULL, NULL, 36, 1);
INSERT INTO `events` VALUES(108, 'Path started', '2012-12-18 15:04:39', '0000-00-00 00:00:00', NULL, NULL, 36, 1);
INSERT INTO `events` VALUES(109, 'Path started', '2012-12-18 15:05:28', '0000-00-00 00:00:00', NULL, NULL, 37, 1);
INSERT INTO `events` VALUES(110, 'Path started', '2012-12-18 15:05:28', '0000-00-00 00:00:00', NULL, NULL, 37, 1);
INSERT INTO `events` VALUES(111, 'Path started', '2012-12-18 15:06:06', '0000-00-00 00:00:00', NULL, NULL, 38, 1);
INSERT INTO `events` VALUES(112, 'Path started', '2012-12-18 15:06:06', '0000-00-00 00:00:00', NULL, NULL, 38, 1);
INSERT INTO `events` VALUES(113, 'Path started', '2012-12-18 15:06:44', '0000-00-00 00:00:00', NULL, NULL, 39, 1);
INSERT INTO `events` VALUES(114, 'Path started', '2012-12-18 15:06:44', '0000-00-00 00:00:00', NULL, NULL, 39, 1);
INSERT INTO `events` VALUES(115, 'Path started', '2012-12-18 15:07:06', '0000-00-00 00:00:00', NULL, NULL, 40, 1);
INSERT INTO `events` VALUES(116, 'Path started', '2012-12-18 15:07:06', '0000-00-00 00:00:00', NULL, NULL, 40, 1);
INSERT INTO `events` VALUES(117, 'Path started', '2012-12-18 15:07:50', '0000-00-00 00:00:00', NULL, NULL, 41, 1);
INSERT INTO `events` VALUES(118, 'Path started', '2012-12-18 15:07:50', '0000-00-00 00:00:00', NULL, NULL, 41, 1);
INSERT INTO `events` VALUES(119, 'Path started', '2012-12-18 15:09:46', '0000-00-00 00:00:00', NULL, NULL, 42, 1);
INSERT INTO `events` VALUES(120, 'Path started', '2012-12-18 15:09:46', '0000-00-00 00:00:00', NULL, NULL, 42, 1);
INSERT INTO `events` VALUES(121, 'Path started', '2012-12-18 15:10:21', '0000-00-00 00:00:00', NULL, NULL, 42, 1);
INSERT INTO `events` VALUES(122, 'Path started', '2012-12-18 15:10:21', '0000-00-00 00:00:00', NULL, NULL, 42, 1);
INSERT INTO `events` VALUES(123, 'Path started', '2012-12-18 15:10:25', '0000-00-00 00:00:00', NULL, NULL, 43, 1);
INSERT INTO `events` VALUES(124, 'Path started', '2012-12-18 15:10:42', '0000-00-00 00:00:00', NULL, NULL, 43, 1);
INSERT INTO `events` VALUES(125, 'Path started', '2012-12-18 15:10:47', '0000-00-00 00:00:00', NULL, NULL, 44, 1);
INSERT INTO `events` VALUES(126, 'Path started', '2012-12-18 15:10:48', '0000-00-00 00:00:00', NULL, NULL, 44, 1);
INSERT INTO `events` VALUES(127, 'Path started', '2012-12-18 15:11:16', '0000-00-00 00:00:00', NULL, NULL, 45, 1);
INSERT INTO `events` VALUES(128, 'Path started', '2012-12-18 15:11:16', '0000-00-00 00:00:00', NULL, NULL, 45, 1);
INSERT INTO `events` VALUES(129, 'Path started', '2012-12-18 15:11:33', '0000-00-00 00:00:00', NULL, NULL, 45, 1);
INSERT INTO `events` VALUES(130, 'Path started', '2012-12-18 15:11:40', '0000-00-00 00:00:00', NULL, NULL, 46, 1);
INSERT INTO `events` VALUES(131, 'Path started', '2012-12-18 15:11:40', '0000-00-00 00:00:00', NULL, NULL, 46, 1);
INSERT INTO `events` VALUES(132, 'Path started', '2012-12-18 15:11:58', '0000-00-00 00:00:00', NULL, NULL, 46, 1);
INSERT INTO `events` VALUES(133, 'Path started', '2012-12-18 15:12:03', '0000-00-00 00:00:00', NULL, NULL, 47, 1);
INSERT INTO `events` VALUES(134, 'Path started', '2012-12-18 15:12:03', '0000-00-00 00:00:00', NULL, NULL, 47, 1);
INSERT INTO `events` VALUES(135, 'Path started', '2012-12-18 15:12:53', '0000-00-00 00:00:00', NULL, NULL, 47, 1);
INSERT INTO `events` VALUES(136, 'Path started', '2012-12-18 15:12:54', '0000-00-00 00:00:00', NULL, NULL, 47, 1);
INSERT INTO `events` VALUES(137, 'Path started', '2012-12-18 15:12:56', '0000-00-00 00:00:00', NULL, NULL, 48, 1);
INSERT INTO `events` VALUES(138, 'Path started', '2012-12-18 15:14:22', '0000-00-00 00:00:00', NULL, NULL, 49, 1);
INSERT INTO `events` VALUES(139, 'Path started', '2012-12-18 15:14:22', '0000-00-00 00:00:00', NULL, NULL, 49, 1);
INSERT INTO `events` VALUES(140, 'Path started', '2012-12-18 15:15:11', '0000-00-00 00:00:00', NULL, NULL, 49, 1);
INSERT INTO `events` VALUES(141, 'Path started', '2012-12-18 15:15:14', '0000-00-00 00:00:00', NULL, NULL, 50, 1);
INSERT INTO `events` VALUES(142, 'Path started', '2012-12-18 15:15:14', '0000-00-00 00:00:00', NULL, NULL, 50, 1);
INSERT INTO `events` VALUES(143, 'Path started', '2012-12-18 15:16:11', '0000-00-00 00:00:00', NULL, NULL, 50, 1);
INSERT INTO `events` VALUES(144, 'Path started', '2012-12-18 15:16:12', '0000-00-00 00:00:00', NULL, NULL, 50, 1);
INSERT INTO `events` VALUES(145, 'Path started', '2012-12-18 15:16:15', '0000-00-00 00:00:00', NULL, NULL, 51, 1);
INSERT INTO `events` VALUES(146, 'Path started', '2012-12-18 15:17:18', '0000-00-00 00:00:00', NULL, NULL, 52, 1);
INSERT INTO `events` VALUES(147, 'Path started', '2012-12-18 15:17:18', '0000-00-00 00:00:00', NULL, NULL, 52, 1);
INSERT INTO `events` VALUES(148, 'Path started', '2012-12-18 15:17:46', '0000-00-00 00:00:00', NULL, NULL, 53, 1);
INSERT INTO `events` VALUES(149, 'Path started', '2012-12-18 15:17:48', '0000-00-00 00:00:00', NULL, NULL, 53, 1);
INSERT INTO `events` VALUES(150, 'Path started', '2012-12-18 15:18:04', '0000-00-00 00:00:00', NULL, NULL, 53, 1);
INSERT INTO `events` VALUES(151, 'Path started', '2012-12-18 15:18:05', '0000-00-00 00:00:00', NULL, NULL, 53, 1);
INSERT INTO `events` VALUES(152, 'Path started', '2012-12-18 15:18:08', '0000-00-00 00:00:00', NULL, NULL, 54, 1);
INSERT INTO `events` VALUES(153, 'Path started', '2012-12-18 15:20:48', '0000-00-00 00:00:00', NULL, NULL, 54, 1);
INSERT INTO `events` VALUES(154, 'Path started', '2012-12-18 15:20:48', '0000-00-00 00:00:00', NULL, NULL, 54, 1);
INSERT INTO `events` VALUES(155, 'Path started', '2012-12-18 15:20:52', '0000-00-00 00:00:00', NULL, NULL, 55, 1);
INSERT INTO `events` VALUES(156, 'Path started', '2012-12-18 15:22:11', '0000-00-00 00:00:00', NULL, NULL, 56, 1);
INSERT INTO `events` VALUES(157, 'Path started', '2012-12-18 15:22:11', '0000-00-00 00:00:00', NULL, NULL, 56, 1);
INSERT INTO `events` VALUES(158, 'Path started', '2012-12-18 15:23:36', '0000-00-00 00:00:00', NULL, NULL, 57, 1);
INSERT INTO `events` VALUES(159, 'Path started', '2012-12-18 15:23:37', '0000-00-00 00:00:00', NULL, NULL, 57, 1);
INSERT INTO `events` VALUES(160, 'Path started', '2012-12-18 15:24:29', '0000-00-00 00:00:00', NULL, NULL, 58, 1);
INSERT INTO `events` VALUES(161, 'Path started', '2012-12-18 15:24:29', '0000-00-00 00:00:00', NULL, NULL, 58, 1);
INSERT INTO `events` VALUES(162, 'Path started', '2012-12-18 15:24:50', '0000-00-00 00:00:00', NULL, NULL, 58, 1);
INSERT INTO `events` VALUES(163, 'Path started', '2012-12-18 15:24:55', '0000-00-00 00:00:00', NULL, NULL, 59, 1);
INSERT INTO `events` VALUES(164, 'Path started', '2012-12-18 15:24:55', '0000-00-00 00:00:00', NULL, NULL, 59, 1);
INSERT INTO `events` VALUES(165, 'Path started', '2012-12-18 15:25:05', '0000-00-00 00:00:00', NULL, NULL, 59, 1);
INSERT INTO `events` VALUES(166, 'Path started', '2012-12-18 15:25:52', '0000-00-00 00:00:00', NULL, NULL, 59, 1);
INSERT INTO `events` VALUES(167, 'Path started', '2012-12-18 15:25:56', '0000-00-00 00:00:00', NULL, NULL, 60, 1);
INSERT INTO `events` VALUES(168, 'Path started', '2012-12-18 15:25:56', '0000-00-00 00:00:00', NULL, NULL, 60, 1);
INSERT INTO `events` VALUES(169, 'Path started', '2012-12-18 15:27:02', '0000-00-00 00:00:00', NULL, NULL, 61, 1);
INSERT INTO `events` VALUES(170, 'Path started', '2012-12-18 15:27:02', '0000-00-00 00:00:00', NULL, NULL, 61, 1);
INSERT INTO `events` VALUES(171, 'Path started', '2012-12-18 15:28:22', '0000-00-00 00:00:00', NULL, NULL, 62, 1);
INSERT INTO `events` VALUES(172, 'Path started', '2012-12-18 15:28:22', '0000-00-00 00:00:00', NULL, NULL, 62, 1);
INSERT INTO `events` VALUES(173, 'Path started', '2012-12-18 15:29:20', '0000-00-00 00:00:00', NULL, NULL, 62, 1);
INSERT INTO `events` VALUES(174, 'Path started', '2012-12-18 15:29:44', '0000-00-00 00:00:00', NULL, NULL, 63, 1);
INSERT INTO `events` VALUES(175, 'Path started', '2012-12-18 15:29:44', '0000-00-00 00:00:00', NULL, NULL, 63, 1);
INSERT INTO `events` VALUES(176, 'Path started', '2012-12-18 15:30:21', '0000-00-00 00:00:00', NULL, NULL, 64, 1);
INSERT INTO `events` VALUES(177, 'Path started', '2012-12-18 15:30:21', '0000-00-00 00:00:00', NULL, NULL, 64, 1);
INSERT INTO `events` VALUES(178, 'Path started', '2012-12-18 15:31:19', '0000-00-00 00:00:00', NULL, NULL, 65, 1);
INSERT INTO `events` VALUES(179, 'Path started', '2012-12-18 15:31:19', '0000-00-00 00:00:00', NULL, NULL, 65, 1);
INSERT INTO `events` VALUES(180, 'Path started', '2012-12-18 15:32:08', '0000-00-00 00:00:00', NULL, NULL, 66, 1);
INSERT INTO `events` VALUES(181, 'Path started', '2012-12-18 15:32:08', '0000-00-00 00:00:00', NULL, NULL, 66, 1);
INSERT INTO `events` VALUES(182, 'Path started', '2012-12-18 15:32:58', '0000-00-00 00:00:00', NULL, NULL, 67, 1);
INSERT INTO `events` VALUES(183, 'Path started', '2012-12-18 15:32:58', '0000-00-00 00:00:00', NULL, NULL, 67, 1);
INSERT INTO `events` VALUES(184, 'Path started', '2012-12-18 15:33:21', '0000-00-00 00:00:00', NULL, NULL, 67, 1);
INSERT INTO `events` VALUES(185, 'Path started', '2012-12-18 15:33:40', '0000-00-00 00:00:00', NULL, NULL, 68, 1);
INSERT INTO `events` VALUES(186, 'Path started', '2012-12-18 15:33:40', '0000-00-00 00:00:00', NULL, NULL, 68, 1);
INSERT INTO `events` VALUES(187, 'Path started', '2012-12-18 15:42:39', '0000-00-00 00:00:00', NULL, NULL, 69, 1);
INSERT INTO `events` VALUES(188, 'Path started', '2012-12-18 15:42:40', '0000-00-00 00:00:00', NULL, NULL, 69, 1);
INSERT INTO `events` VALUES(189, 'Path started', '2012-12-18 15:43:39', '0000-00-00 00:00:00', NULL, NULL, 70, 1);
INSERT INTO `events` VALUES(190, 'Path started', '2012-12-18 15:43:40', '0000-00-00 00:00:00', NULL, NULL, 70, 1);
INSERT INTO `events` VALUES(191, 'Path started', '2012-12-18 15:44:54', '0000-00-00 00:00:00', NULL, NULL, 70, 1);
INSERT INTO `events` VALUES(192, 'Path started', '2012-12-18 15:45:41', '0000-00-00 00:00:00', NULL, NULL, 70, 1);
INSERT INTO `events` VALUES(193, 'Path started', '2012-12-18 15:45:43', '0000-00-00 00:00:00', NULL, NULL, 70, 1);
INSERT INTO `events` VALUES(194, 'Path started', '2012-12-18 15:45:52', '0000-00-00 00:00:00', NULL, NULL, 70, 1);
INSERT INTO `events` VALUES(195, 'Path started', '2012-12-18 15:47:48', '0000-00-00 00:00:00', NULL, NULL, 70, 1);
INSERT INTO `events` VALUES(196, 'Path started', '2012-12-18 16:00:57', '0000-00-00 00:00:00', NULL, NULL, 70, 1);
INSERT INTO `events` VALUES(197, 'Path started', '2012-12-18 16:00:57', '0000-00-00 00:00:00', NULL, NULL, 70, 1);
INSERT INTO `events` VALUES(198, 'Path started', '2012-12-18 16:01:30', '0000-00-00 00:00:00', NULL, NULL, 70, 1);
INSERT INTO `events` VALUES(199, 'Path started', '2012-12-18 16:01:35', '0000-00-00 00:00:00', NULL, NULL, 71, 1);
INSERT INTO `events` VALUES(200, 'Path started', '2012-12-18 16:01:52', '0000-00-00 00:00:00', NULL, NULL, 72, 1);
INSERT INTO `events` VALUES(201, 'Path started', '2012-12-18 16:01:52', '0000-00-00 00:00:00', NULL, NULL, 72, 1);
INSERT INTO `events` VALUES(202, 'Path started', '2012-12-18 16:03:02', '0000-00-00 00:00:00', NULL, NULL, 73, 1);
INSERT INTO `events` VALUES(203, 'Path started', '2012-12-18 16:03:02', '0000-00-00 00:00:00', NULL, NULL, 73, 1);
INSERT INTO `events` VALUES(204, 'Path started', '2012-12-18 16:03:55', '0000-00-00 00:00:00', NULL, NULL, 74, 1);
INSERT INTO `events` VALUES(205, 'Path started', '2012-12-18 16:03:55', '0000-00-00 00:00:00', NULL, NULL, 74, 1);
INSERT INTO `events` VALUES(206, 'Path started', '2012-12-18 16:04:41', '0000-00-00 00:00:00', NULL, NULL, 75, 1);
INSERT INTO `events` VALUES(207, 'Path started', '2012-12-18 16:04:41', '0000-00-00 00:00:00', NULL, NULL, 75, 1);
INSERT INTO `events` VALUES(208, 'Path started', '2012-12-18 16:08:04', '0000-00-00 00:00:00', NULL, NULL, 76, 1);
INSERT INTO `events` VALUES(209, 'Path started', '2012-12-18 16:08:04', '0000-00-00 00:00:00', NULL, NULL, 76, 1);
INSERT INTO `events` VALUES(210, 'Path started', '2012-12-18 16:42:45', '0000-00-00 00:00:00', NULL, NULL, 77, 1);
INSERT INTO `events` VALUES(211, 'Path started', '2012-12-18 16:42:45', '0000-00-00 00:00:00', NULL, NULL, 77, 1);
INSERT INTO `events` VALUES(212, 'Path started', '2012-12-18 17:18:43', '0000-00-00 00:00:00', NULL, NULL, 78, 1);
INSERT INTO `events` VALUES(213, 'Path started', '2012-12-18 17:18:43', '0000-00-00 00:00:00', NULL, NULL, 78, 1);
INSERT INTO `events` VALUES(214, 'Path started', '2012-12-18 17:19:25', '0000-00-00 00:00:00', NULL, NULL, 78, 1);
INSERT INTO `events` VALUES(215, 'Path started', '2012-12-18 17:19:28', '0000-00-00 00:00:00', NULL, NULL, 79, 1);
INSERT INTO `events` VALUES(216, 'Path started', '2012-12-18 17:19:37', '0000-00-00 00:00:00', NULL, NULL, 79, 1);
INSERT INTO `events` VALUES(217, 'Path started', '2012-12-18 17:20:34', '0000-00-00 00:00:00', NULL, NULL, 80, 1);
INSERT INTO `events` VALUES(218, 'Path started', '2012-12-18 17:20:34', '0000-00-00 00:00:00', NULL, NULL, 80, 1);
INSERT INTO `events` VALUES(219, 'Path started', '2012-12-18 17:21:39', '0000-00-00 00:00:00', NULL, NULL, 81, 1);
INSERT INTO `events` VALUES(220, 'Path started', '2012-12-18 17:21:39', '0000-00-00 00:00:00', NULL, NULL, 81, 1);
INSERT INTO `events` VALUES(221, 'Path started', '2012-12-18 17:23:19', '0000-00-00 00:00:00', NULL, NULL, 82, 1);
INSERT INTO `events` VALUES(222, 'Path started', '2012-12-18 17:23:19', '0000-00-00 00:00:00', NULL, NULL, 82, 1);
INSERT INTO `events` VALUES(223, 'Path started', '2012-12-18 17:24:43', '0000-00-00 00:00:00', NULL, NULL, 83, 1);
INSERT INTO `events` VALUES(224, 'Path started', '2012-12-18 17:24:43', '0000-00-00 00:00:00', NULL, NULL, 83, 1);
INSERT INTO `events` VALUES(225, 'Path started', '2012-12-18 17:32:42', '0000-00-00 00:00:00', NULL, NULL, 84, 1);
INSERT INTO `events` VALUES(226, 'Path started', '2012-12-18 17:32:42', '0000-00-00 00:00:00', NULL, NULL, 84, 1);
INSERT INTO `events` VALUES(227, 'Path started', '2012-12-18 17:35:17', '0000-00-00 00:00:00', NULL, NULL, 85, 1);
INSERT INTO `events` VALUES(228, 'Path started', '2012-12-18 17:35:17', '0000-00-00 00:00:00', NULL, NULL, 85, 1);
INSERT INTO `events` VALUES(229, 'Path started', '2012-12-18 17:35:57', '0000-00-00 00:00:00', NULL, NULL, 85, 1);
INSERT INTO `events` VALUES(230, 'Path started', '2012-12-18 17:35:59', '0000-00-00 00:00:00', NULL, NULL, 85, 1);
INSERT INTO `events` VALUES(231, 'Path started', '2012-12-18 17:36:04', '0000-00-00 00:00:00', NULL, NULL, 86, 1);
INSERT INTO `events` VALUES(232, 'Path started', '2012-12-18 17:38:55', '0000-00-00 00:00:00', NULL, NULL, 87, 1);
INSERT INTO `events` VALUES(233, 'Path started', '2012-12-18 17:38:56', '0000-00-00 00:00:00', NULL, NULL, 87, 1);
INSERT INTO `events` VALUES(234, 'Path started', '2012-12-18 17:44:36', '0000-00-00 00:00:00', NULL, NULL, 88, 1);
INSERT INTO `events` VALUES(235, 'Path started', '2012-12-18 17:44:37', '0000-00-00 00:00:00', NULL, NULL, 88, 1);
INSERT INTO `events` VALUES(236, 'Path started', '2012-12-18 17:45:08', '0000-00-00 00:00:00', NULL, NULL, 89, 1);
INSERT INTO `events` VALUES(237, 'Path started', '2012-12-18 17:45:08', '0000-00-00 00:00:00', NULL, NULL, 89, 1);
INSERT INTO `events` VALUES(238, 'Path started', '2012-12-18 17:51:54', '0000-00-00 00:00:00', NULL, NULL, 90, 1);
INSERT INTO `events` VALUES(239, 'Path started', '2012-12-18 17:51:54', '0000-00-00 00:00:00', NULL, NULL, 90, 1);
INSERT INTO `events` VALUES(240, 'Path started', '2012-12-18 17:52:20', '0000-00-00 00:00:00', NULL, NULL, 91, 1);
INSERT INTO `events` VALUES(241, 'Path started', '2012-12-18 17:52:20', '0000-00-00 00:00:00', NULL, NULL, 91, 1);
INSERT INTO `events` VALUES(242, 'Path started', '2012-12-18 17:52:29', '0000-00-00 00:00:00', NULL, NULL, 92, 1);
INSERT INTO `events` VALUES(243, 'Path started', '2012-12-18 17:52:29', '0000-00-00 00:00:00', NULL, NULL, 92, 1);
INSERT INTO `events` VALUES(244, 'Path started', '2012-12-18 17:52:41', '0000-00-00 00:00:00', NULL, NULL, 93, 1);
INSERT INTO `events` VALUES(245, 'Path started', '2012-12-18 17:52:41', '0000-00-00 00:00:00', NULL, NULL, 93, 1);
INSERT INTO `events` VALUES(246, 'Path started', '2012-12-18 17:52:53', '0000-00-00 00:00:00', NULL, NULL, 94, 1);
INSERT INTO `events` VALUES(247, 'Path started', '2012-12-18 17:52:57', '0000-00-00 00:00:00', NULL, NULL, 94, 1);
INSERT INTO `events` VALUES(248, 'Path started', '2012-12-18 17:52:57', '0000-00-00 00:00:00', NULL, NULL, 94, 1);
INSERT INTO `events` VALUES(249, 'Path started', '2012-12-18 17:53:42', '0000-00-00 00:00:00', NULL, NULL, 95, 1);
INSERT INTO `events` VALUES(250, 'Path started', '2012-12-18 17:53:42', '0000-00-00 00:00:00', NULL, NULL, 95, 1);
INSERT INTO `events` VALUES(251, 'Path started', '2012-12-18 17:54:17', '0000-00-00 00:00:00', NULL, NULL, 96, 1);
INSERT INTO `events` VALUES(252, 'Path started', '2012-12-18 17:54:17', '0000-00-00 00:00:00', NULL, NULL, 96, 1);
INSERT INTO `events` VALUES(253, 'Path started', '2012-12-18 17:54:27', '0000-00-00 00:00:00', NULL, NULL, 97, 1);
INSERT INTO `events` VALUES(254, 'Path started', '2012-12-18 17:54:27', '0000-00-00 00:00:00', NULL, NULL, 97, 1);
INSERT INTO `events` VALUES(255, 'Path started', '2012-12-18 17:54:38', '0000-00-00 00:00:00', NULL, NULL, 98, 1);
INSERT INTO `events` VALUES(256, 'Path started', '2012-12-18 17:54:38', '0000-00-00 00:00:00', NULL, NULL, 98, 1);
INSERT INTO `events` VALUES(257, 'Path started', '2012-12-18 17:55:12', '0000-00-00 00:00:00', NULL, NULL, 99, 1);
INSERT INTO `events` VALUES(258, 'Path started', '2012-12-18 17:55:12', '0000-00-00 00:00:00', NULL, NULL, 99, 1);
INSERT INTO `events` VALUES(259, 'Path started', '2012-12-18 17:56:11', '0000-00-00 00:00:00', NULL, NULL, 100, 1);
INSERT INTO `events` VALUES(260, 'Path started', '2012-12-18 17:56:11', '0000-00-00 00:00:00', NULL, NULL, 100, 1);
INSERT INTO `events` VALUES(261, 'Path started', '2012-12-18 17:56:25', '0000-00-00 00:00:00', NULL, NULL, 101, 1);
INSERT INTO `events` VALUES(262, 'Path started', '2012-12-18 17:56:25', '0000-00-00 00:00:00', NULL, NULL, 101, 1);
INSERT INTO `events` VALUES(263, 'Path started', '2012-12-18 17:58:15', '0000-00-00 00:00:00', NULL, NULL, 102, 1);
INSERT INTO `events` VALUES(264, 'Path started', '2012-12-18 17:58:15', '0000-00-00 00:00:00', NULL, NULL, 102, 1);
INSERT INTO `events` VALUES(265, 'Path started', '2012-12-18 17:58:44', '0000-00-00 00:00:00', NULL, NULL, 102, 1);
INSERT INTO `events` VALUES(266, 'Path started', '2012-12-18 18:00:09', '0000-00-00 00:00:00', NULL, NULL, 103, 1);
INSERT INTO `events` VALUES(267, 'Path started', '2012-12-18 18:00:09', '0000-00-00 00:00:00', NULL, NULL, 103, 1);
INSERT INTO `events` VALUES(268, 'Path started', '2012-12-18 18:00:56', '0000-00-00 00:00:00', NULL, NULL, 104, 1);
INSERT INTO `events` VALUES(269, 'Path started', '2012-12-18 18:00:56', '0000-00-00 00:00:00', NULL, NULL, 104, 1);

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
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `big_pic` varchar(255) CHARACTER SET latin1 NOT NULL,
  `small_pic` varchar(255) CHARACTER SET latin1 NOT NULL,
  `path` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `formats` varchar(255) CHARACTER SET latin1 NOT NULL,
  `spicy_level` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=euckr AUTO_INCREMENT=43 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` VALUES(1, 'kamjatang', '감자탕', '$7.99', 'Pork bone & potato soup, rice', '01.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(2, 'bulgogi', '불고기', '$10.99', 'Stir-fried beef, some vegetables, noodles with sweet soy sauce on the sizzling plate, rice', '02.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(3, 'dolsot bibimbap', '돌솥비빔밥', '$9.99', 'Assorted vegetables, beef, fried egg and hot sauce on steamed rice in hot stone bowl', '03.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(4, 'l.a kalbi', 'LA갈비', '$14.99/$22.99', 'B.B.Q. L.A beef ribs on the sizzling plate, rice', '04.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(5, 'jeyuk bokeum', '제육볶음', '$12.99', 'Stir-fried marinated pork with spicy sauce on the sizzling plate, rice', '05.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(6, 'dakchulpan', '닭철판', '$11.99', 'Stir-fried spicy chicken on the sizzling plate, rice', '06.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(7, 'ojinguh bokeum', '오징어볶음', '$13.99', 'Stir-fried squid, vegetables with sweet and spicy sauce on the sizzling plate', '07.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(8, 'japchae', '잡채', '$9.99', 'Stir-fried beef, some vegetables, noodles with sweet soy sauce', '08.jpg', '', '', '', '', 0, 8);
INSERT INTO `items` VALUES(9, 'haemul pajeon', '해물파전', '$15.99', 'Korean style egg pan cake with assorted seafood and green onion', '09.jpg', '', '', '', '', 0, 8);
INSERT INTO `items` VALUES(10, 'kichi jeon', '김치전', '$10.99', 'Kimchi and egg with assorted vegetables', '10.jpg', '', '', '', '', 0, 8);
INSERT INTO `items` VALUES(11, 'kaeran malyi', '계란말이', '$10.99', 'Fried egg roll with green onion, carrot, ham, onion, and tuna', '11.jpg', '', '', '', '', 0, 8);
INSERT INTO `items` VALUES(12, 'gunmandu', '군만두', '$8.99', 'Deep-fried Korean dumplings', '12.jpg', '', '', '', '', 0, 8);
INSERT INTO `items` VALUES(13, 'jjinmandu', '찐만두', '$8.99', 'Steamed Korean dumplings', '13.jpg', '', '', '', '', 0, 8);
INSERT INTO `items` VALUES(14, 'royal ricecake', '궁중떡볶이', '$9.99', 'Rice cakes with seafood cakes and vegetables', '14.jpg', '', '', '', '', 0, 8);
INSERT INTO `items` VALUES(15, 'spicy ricecake', '떡볶이', '$9.99', 'Rice cakes with seafood cakes, vegetables in spicy sauce', '15.jpg', '', '', '', '', 0, 8);
INSERT INTO `items` VALUES(16, 'tofu kimchi', '두부김치', '$13.99', 'Stir-fried Kimchi and pork with tofu and rice', '16.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(17, 'tangsuyuk', '탕수육', '$12.99', 'Deep-fried pork with sour & sweet sauce', '17.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(18, 'khampunggi', '깐풍기', '$12.99', 'Deep-fried chicken with hot sour & sweet sauce', '18.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(19, 'jokbal', '족발', '$16.99', 'Steamed sliced pettitoes (pork hock) with fish sauce', '19.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(20, 'nakjibokeum somyun', '낙지볶음소면', '$18.99', 'Stir-fried octopus with noodles in spicy sauce', '20.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(21, 'cutlet(kasu)', '돈까스/새우까스', '$12.99', 'Deep-fried pork or shrimp cutlet with vegetable and rice', '21.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(22, 'samkeopsal omulet', '삼겹살오믈렛', '$10.99', 'Stir-fried pork omulet with special sauce', '22.jpg', '', '', '', '', 0, 8);
INSERT INTO `items` VALUES(23, 'bokeum salkugsu', '볶음살국수', '$10.99', 'Stir-fried rice noodle with assorted vegetables', '23.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(24, 'tuna or pork kimchi jjigae', '김치찌개', '$10.99', 'Tuna or Pork kimch stew, rice', '24.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(25, 'bulgogi busot jjigae', '불고기버섯찌개', '$11.99', 'Bulgogi and mushroom soup with sweet soy sauce, rice', '25.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(26, 'ojinguh busot jjigae', '오징어버섯찌개', '$13.99', 'Squid, mushroom with spicy broth, rice', '26.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(27, 'soon tofu', '순두부', '$9.99', 'Soft tofu stewed in hot-spicy broth, rice', '27.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(28, 'o-deng tang', '오뎅탕', '$9.99', 'Fishcake soup, rice', '28.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(29, 'kalbi tang', '갈비탕', '$11.99', 'Beef ribs soup with clear noodles, rice', '29.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(30, 'kamjatang jeongol', '감자탕전골', '$22.99', 'Large size Kamjatang with extra vegetables, rice cake, dumplings, 2 rice', '30.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(31, 'kimchijeongol', '김치전골', '$20.99', 'Kimchi stew with rice cakes, dumplings, pork, vegetables, 2 rice', '31.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(32, 'sang ramen', '생라면', '$10.99', 'Noodles with egg and assorted vegetables', '32.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(33, 'ramen', '라면', '$6.99', 'Instant noodle with rice cake, egg and assorted vegetables', '33.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(34, 'ddeokmandukuk', '떡만두국', '$9.99', 'Dumpling and sliced rice cake with beef in egg drop soup', '34.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(35, 'cold or spicy noodle', '냉면', '$9.99', 'Korean cold noodles with soup or with spicy sauce', '35.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(36, 'kimchi bokeumbap', '김치볶음밥', '$9.99', 'Stir-fried kimchi with rice, fried egg', '36.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(37, 'shrimp bokeumbap', '새우볶음밥', '$9.99', 'Stir-fried shrimp with vegetables & rice', '37.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(38, 'bulgogi bokeumbap', '불고기볶음밥', '$9.99', 'Stir-fried beef with vegetables & rice', '38.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(39, 'chicken bokeumbap', '닭고기볶음밥', '$9.99', 'Stir-fried chicken with vegetables & rice', '39.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(40, 'bulgogi bap', '불고기덮밥', '$9.99', 'Stir-fried beef with vegetables & fried egg on steamed rice', '40.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(41, 'chicken bap', '치킨덮밥', '$9.99', 'Stir-fried chicken with vegetables & fried egg on steamed rice', '41.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(42, 'japchae bap', '잡채덮밥', '$8.99', 'Stir-fried glass noodle with vegetables & fried egg on steamed rice', '42.jpg', '', '', '', '', 0, 4);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` VALUES(1, 'menu', 1, NULL);
INSERT INTO `modules` VALUES(2, 'video', 1, NULL);
INSERT INTO `modules` VALUES(3, 'game', 1, NULL);
INSERT INTO `modules` VALUES(4, 'dishes', 1, 1);
INSERT INTO `modules` VALUES(8, 'appetizers', 1, 1);
INSERT INTO `modules` VALUES(9, 'soup & noodle', 1, 1);
INSERT INTO `modules` VALUES(10, 'drinks', 1, 1);
INSERT INTO `modules` VALUES(11, 'beer', 1, 1);
INSERT INTO `modules` VALUES(12, 'combo a', 1, 1);
INSERT INTO `modules` VALUES(13, 'combo b', 1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `steps`
--

INSERT INTO `steps` VALUES(2, '2012-12-15 02:16:11', '2012-12-15 02:18:05', 42, 1);
INSERT INTO `steps` VALUES(3, '2012-12-15 14:31:15', '2012-12-15 14:41:15', 44, 2);
INSERT INTO `steps` VALUES(4, '2012-12-15 14:47:20', '2012-12-15 14:57:22', 42, 2);
INSERT INTO `steps` VALUES(5, '2012-12-15 14:47:35', '2012-12-15 14:49:38', 44, 3);
INSERT INTO `steps` VALUES(6, '2012-12-18 14:21:02', '2012-12-18 14:21:05', 42, 3);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES(2, 'Freddy', 1, 2, 1);
INSERT INTO `users` VALUES(3, 'Kevin', 1, 2, 2);
INSERT INTO `users` VALUES(6, '', 1, 2, NULL);
INSERT INTO `users` VALUES(7, '', 1, 2, NULL);
INSERT INTO `users` VALUES(8, '', 1, 2, NULL);
INSERT INTO `users` VALUES(9, '', 1, 2, NULL);
INSERT INTO `users` VALUES(10, '', 1, 2, NULL);
INSERT INTO `users` VALUES(11, '', 1, 2, NULL);
INSERT INTO `users` VALUES(12, '', 1, 2, NULL);
INSERT INTO `users` VALUES(13, '', 1, 2, NULL);
INSERT INTO `users` VALUES(14, '', 1, 2, NULL);
INSERT INTO `users` VALUES(15, '', 1, 2, NULL);
INSERT INTO `users` VALUES(16, '', 1, 2, NULL);
INSERT INTO `users` VALUES(17, '', 1, 2, NULL);
INSERT INTO `users` VALUES(18, '', 1, 2, NULL);
INSERT INTO `users` VALUES(19, '', 1, 2, NULL);
INSERT INTO `users` VALUES(20, '', 1, 2, NULL);
INSERT INTO `users` VALUES(21, '', 1, 2, NULL);
INSERT INTO `users` VALUES(22, '', 1, 2, NULL);
INSERT INTO `users` VALUES(23, '', 1, 2, NULL);
INSERT INTO `users` VALUES(24, '', 1, 2, NULL);
INSERT INTO `users` VALUES(25, '', 1, 2, NULL);
INSERT INTO `users` VALUES(26, '', 1, 2, NULL);
INSERT INTO `users` VALUES(27, '', 1, 2, NULL);
INSERT INTO `users` VALUES(28, '', 1, 2, NULL);
INSERT INTO `users` VALUES(29, '', 1, 2, NULL);
INSERT INTO `users` VALUES(30, '', 1, 2, NULL);
INSERT INTO `users` VALUES(31, '', 1, 2, NULL);
INSERT INTO `users` VALUES(32, '', 1, 2, NULL);
INSERT INTO `users` VALUES(33, '', 1, 2, NULL);
INSERT INTO `users` VALUES(34, '', 1, 2, NULL);
INSERT INTO `users` VALUES(35, '', 1, 2, NULL);
INSERT INTO `users` VALUES(36, '', 1, 2, NULL);
INSERT INTO `users` VALUES(37, '', 1, 2, NULL);
INSERT INTO `users` VALUES(38, '', 1, 2, NULL);
INSERT INTO `users` VALUES(39, '', 1, 2, NULL);
INSERT INTO `users` VALUES(40, '', 1, 2, NULL);
INSERT INTO `users` VALUES(41, '', 1, 2, NULL);
INSERT INTO `users` VALUES(42, '', 1, 2, NULL);
INSERT INTO `users` VALUES(43, '', 1, 2, NULL);
INSERT INTO `users` VALUES(44, '', 1, 2, NULL);
INSERT INTO `users` VALUES(45, '', 1, 2, NULL);
INSERT INTO `users` VALUES(46, '', 1, 2, NULL);
INSERT INTO `users` VALUES(47, '', 1, 2, NULL);
INSERT INTO `users` VALUES(48, '', 1, 2, NULL);
INSERT INTO `users` VALUES(49, '', 1, 2, NULL);
INSERT INTO `users` VALUES(50, '', 1, 2, NULL);
INSERT INTO `users` VALUES(51, '', 1, 2, NULL);
INSERT INTO `users` VALUES(52, '', 1, 2, NULL);
INSERT INTO `users` VALUES(53, '', 1, 2, NULL);
INSERT INTO `users` VALUES(54, '', 1, 2, NULL);
INSERT INTO `users` VALUES(55, '', 1, 2, NULL);
INSERT INTO `users` VALUES(56, '', 1, 2, NULL);
INSERT INTO `users` VALUES(57, '', 1, 2, NULL);
INSERT INTO `users` VALUES(58, '', 1, 2, NULL);
INSERT INTO `users` VALUES(59, '', 1, 2, NULL);
INSERT INTO `users` VALUES(60, '', 1, 2, NULL);
INSERT INTO `users` VALUES(61, '', 1, 2, NULL);
INSERT INTO `users` VALUES(62, '', 1, 2, NULL);
INSERT INTO `users` VALUES(63, '', 1, 2, NULL);
INSERT INTO `users` VALUES(64, '', 1, 2, NULL);
INSERT INTO `users` VALUES(65, '', 1, 2, NULL);
INSERT INTO `users` VALUES(66, '', 1, 2, NULL);
INSERT INTO `users` VALUES(67, '', 1, 2, NULL);
INSERT INTO `users` VALUES(68, '', 1, 2, NULL);
INSERT INTO `users` VALUES(69, '', 1, 2, NULL);
INSERT INTO `users` VALUES(70, '', 1, 2, NULL);
INSERT INTO `users` VALUES(71, '', 1, 2, NULL);
INSERT INTO `users` VALUES(72, '', 1, 2, NULL);
INSERT INTO `users` VALUES(73, '', 1, 2, NULL);
INSERT INTO `users` VALUES(74, '', 1, 2, NULL);
INSERT INTO `users` VALUES(75, '', 1, 2, NULL);
INSERT INTO `users` VALUES(76, '', 1, 2, NULL);
INSERT INTO `users` VALUES(77, '', 1, 2, NULL);
INSERT INTO `users` VALUES(78, '', 1, 2, NULL);
INSERT INTO `users` VALUES(79, '', 1, 2, NULL);
INSERT INTO `users` VALUES(80, '', 1, 2, NULL);
INSERT INTO `users` VALUES(81, '', 1, 2, NULL);
INSERT INTO `users` VALUES(82, '', 1, 2, NULL);
INSERT INTO `users` VALUES(83, '', 1, 2, NULL);
INSERT INTO `users` VALUES(84, '', 1, 2, NULL);
INSERT INTO `users` VALUES(85, '', 1, 2, NULL);
INSERT INTO `users` VALUES(86, '', 1, 2, NULL);
INSERT INTO `users` VALUES(87, '', 1, 2, NULL);
INSERT INTO `users` VALUES(88, '', 1, 2, NULL);
INSERT INTO `users` VALUES(89, '', 1, 2, NULL);
INSERT INTO `users` VALUES(90, '', 1, 2, NULL);
INSERT INTO `users` VALUES(91, '', 1, 2, NULL);
INSERT INTO `users` VALUES(92, '', 1, 2, NULL);
INSERT INTO `users` VALUES(93, '', 1, 2, NULL);
INSERT INTO `users` VALUES(94, '', 1, 2, NULL);
INSERT INTO `users` VALUES(95, '', 1, 2, NULL);
INSERT INTO `users` VALUES(96, '', 1, 2, NULL);
INSERT INTO `users` VALUES(97, '', 1, 2, NULL);
INSERT INTO `users` VALUES(98, '', 1, 2, NULL);
INSERT INTO `users` VALUES(99, '', 1, 2, NULL);
INSERT INTO `users` VALUES(100, '', 1, 2, NULL);
INSERT INTO `users` VALUES(101, '', 1, 2, NULL);
INSERT INTO `users` VALUES(102, '', 1, 2, NULL);
INSERT INTO `users` VALUES(103, '', 1, 2, NULL);
INSERT INTO `users` VALUES(104, '', 1, 2, NULL);

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
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`step_id`) REFERENCES `steps` (`id`);

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_ibfk_3` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `events` (`id`),
  ADD CONSTRAINT `events_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `events_ibfk_4` FOREIGN KEY (`eventcategory_id`) REFERENCES `event_categories` (`id`),
  ADD CONSTRAINT `events_ibfk_5` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`);

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
  ADD CONSTRAINT `section_modules_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`),
  ADD CONSTRAINT `section_modules_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`);

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
