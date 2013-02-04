-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 04, 2013 at 01:54 AM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `meet_frontrow`
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
  PRIMARY KEY (`id`),
  KEY `step_id` (`step_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=849 ;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` VALUES(1, 'clicked_promo_slide', '2013-01-23 22:07:32', '1969-12-31 19:00:00', 1, 1);
INSERT INTO `activities` VALUES(2, 'viewing_menu_item', '2013-01-23 22:07:32', '1969-12-31 19:00:00', 2, 2);
INSERT INTO `activities` VALUES(3, 'clicked_promo_slide', '2013-01-23 22:10:17', '1969-12-31 19:00:00', 3, 1);
INSERT INTO `activities` VALUES(4, 'viewing_menu_item', '2013-01-23 22:10:17', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `activities` VALUES(5, 'clicked_promo_slide', '2013-01-23 22:10:20', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `activities` VALUES(6, 'viewing_menu_item', '2013-01-23 22:10:20', '1969-12-31 19:00:00', 4, 2);
INSERT INTO `activities` VALUES(7, 'clicked_promo_slide', '2013-01-23 22:10:28', '1969-12-31 19:00:00', 5, 21);
INSERT INTO `activities` VALUES(8, 'viewing_menu_item', '2013-01-23 22:10:28', '1969-12-31 19:00:00', 5, 2);
INSERT INTO `activities` VALUES(9, 'clicked_promo_slide', '2013-01-23 22:10:31', '1969-12-31 19:00:00', 6, 1);
INSERT INTO `activities` VALUES(10, 'viewing_menu_item', '2013-01-23 22:10:31', '1969-12-31 19:00:00', 6, 2);
INSERT INTO `activities` VALUES(11, 'clicked_promo_slide', '2013-01-23 22:10:33', '1969-12-31 19:00:00', 7, 1);
INSERT INTO `activities` VALUES(12, 'first', '2013-01-23 22:10:34', '2013-01-23 22:10:34', 7, 2);
INSERT INTO `activities` VALUES(13, 'viewing_menu_item', '2013-01-23 22:10:34', '1969-12-31 19:00:00', 7, 3);
INSERT INTO `activities` VALUES(14, 'clicked_promo_slide', '2013-01-23 22:10:38', '1969-12-31 19:00:00', 8, 1);
INSERT INTO `activities` VALUES(15, 'viewing_menu_item', '2013-01-23 22:10:38', '1969-12-31 19:00:00', 8, 2);
INSERT INTO `activities` VALUES(16, 'clicked_promo_slide', '2013-01-23 22:10:47', '1969-12-31 19:00:00', 9, 21);
INSERT INTO `activities` VALUES(17, 'first', '2013-01-23 22:10:47', '2013-01-23 22:10:49', 9, 2);
INSERT INTO `activities` VALUES(18, 'clicked_promo_slide', '2013-01-23 22:10:52', '1969-12-31 19:00:00', 10, 1);
INSERT INTO `activities` VALUES(19, 'viewing_menu_item', '2013-01-23 22:10:52', '1969-12-31 19:00:00', 10, 2);
INSERT INTO `activities` VALUES(20, 'clicked_promo_slide', '2013-01-23 22:24:37', '1969-12-31 19:00:00', 11, 1);
INSERT INTO `activities` VALUES(21, 'viewing_menu_item', '2013-01-23 22:24:37', '1969-12-31 19:00:00', 11, 2);
INSERT INTO `activities` VALUES(22, 'clicked_promo_slide', '2013-01-23 22:24:42', '1969-12-31 19:00:00', 12, 1);
INSERT INTO `activities` VALUES(23, 'viewing_menu_item', '2013-01-23 22:24:42', '1969-12-31 19:00:00', 12, 2);
INSERT INTO `activities` VALUES(24, 'clicked_promo_slide', '2013-01-23 22:24:50', '1969-12-31 19:00:00', 13, 21);
INSERT INTO `activities` VALUES(25, 'viewing_menu_item', '2013-01-23 22:24:50', '1969-12-31 19:00:00', 13, 2);
INSERT INTO `activities` VALUES(26, 'clicked_promo_slide', '2013-01-23 22:24:55', '1969-12-31 19:00:00', 14, 1);
INSERT INTO `activities` VALUES(27, 'viewing_menu_item', '2013-01-23 22:24:55', '1969-12-31 19:00:00', 14, 2);
INSERT INTO `activities` VALUES(28, 'clicked_promo_slide', '2013-01-23 22:25:00', '1969-12-31 19:00:00', 15, 1);
INSERT INTO `activities` VALUES(29, 'viewing_menu_item', '2013-01-23 22:25:00', '1969-12-31 19:00:00', 15, 2);
INSERT INTO `activities` VALUES(30, 'clicked_promo_slide', '2013-01-23 22:25:03', '1969-12-31 19:00:00', 16, 1);
INSERT INTO `activities` VALUES(31, 'viewing_menu_item', '2013-01-23 22:25:03', '1969-12-31 19:00:00', 16, 2);
INSERT INTO `activities` VALUES(32, 'clicked_promo_slide', '2013-01-23 22:25:06', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `activities` VALUES(33, 'viewing_menu_item', '2013-01-23 22:25:06', '1969-12-31 19:00:00', 17, 2);
INSERT INTO `activities` VALUES(34, 'clicked_promo_slide', '2013-01-23 22:25:15', '1969-12-31 19:00:00', 18, 21);
INSERT INTO `activities` VALUES(35, 'viewing_menu_item', '2013-01-23 22:25:15', '1969-12-31 19:00:00', 18, 2);
INSERT INTO `activities` VALUES(36, 'clicked_promo_slide', '2013-01-23 22:25:18', '1969-12-31 19:00:00', 19, 1);
INSERT INTO `activities` VALUES(37, 'viewing_menu_item', '2013-01-23 22:25:18', '1969-12-31 19:00:00', 19, 2);
INSERT INTO `activities` VALUES(38, 'clicked_promo_slide', '2013-01-23 22:25:24', '1969-12-31 19:00:00', 20, 1);
INSERT INTO `activities` VALUES(39, 'viewing_menu_item', '2013-01-23 22:25:24', '1969-12-31 19:00:00', 20, 2);
INSERT INTO `activities` VALUES(40, 'clicked_promo_slide', '2013-01-23 22:25:32', '1969-12-31 19:00:00', 21, 21);
INSERT INTO `activities` VALUES(41, 'viewing_menu_item', '2013-01-23 22:25:32', '1969-12-31 19:00:00', 21, 2);
INSERT INTO `activities` VALUES(42, 'clicked_promo_slide', '2013-01-23 22:25:36', '1969-12-31 19:00:00', 22, 1);
INSERT INTO `activities` VALUES(43, 'viewing_menu_item', '2013-01-23 22:25:36', '1969-12-31 19:00:00', 22, 2);
INSERT INTO `activities` VALUES(44, 'viewing_menu_item', '2013-01-23 22:25:37', '1969-12-31 19:00:00', 22, 5);
INSERT INTO `activities` VALUES(45, 'clicked_promo_slide', '2013-01-23 22:26:25', '1969-12-31 19:00:00', 23, 1);
INSERT INTO `activities` VALUES(46, 'viewing_menu_item', '2013-01-23 22:26:25', '1969-12-31 19:00:00', 23, 2);
INSERT INTO `activities` VALUES(47, 'first', '2013-01-24 09:35:36', '2013-01-24 09:35:42', 24, 2);
INSERT INTO `activities` VALUES(48, 'viewing_menu_item', '2013-01-24 09:35:43', '1969-12-31 19:00:00', 25, 2);
INSERT INTO `activities` VALUES(49, 'first', '2013-01-24 09:36:08', '2013-01-24 09:36:13', 26, 2);
INSERT INTO `activities` VALUES(50, 'viewed_menu_item', '2013-01-24 09:36:13', '2013-01-24 09:36:15', 26, 4);
INSERT INTO `activities` VALUES(51, 'viewed_menu_item', '2013-01-24 09:36:15', '2013-01-24 09:36:18', 26, 5);
INSERT INTO `activities` VALUES(52, 'exit_while_viewing_menu_item', '2013-01-24 09:36:18', '2013-01-24 09:36:24', 26, 6);
INSERT INTO `activities` VALUES(53, 'first', '2013-01-24 09:36:27', '2013-01-24 09:36:27', 28, 2);
INSERT INTO `activities` VALUES(54, 'viewed_menu_item', '2013-01-24 09:36:27', '2013-01-24 09:36:28', 28, 4);
INSERT INTO `activities` VALUES(55, 'viewed_menu_item', '2013-01-24 09:36:28', '2013-01-24 09:36:28', 28, 1);
INSERT INTO `activities` VALUES(56, 'viewed_menu_item', '2013-01-24 09:36:28', '2013-01-24 09:36:28', 28, 53);
INSERT INTO `activities` VALUES(57, 'viewed_menu_item', '2013-01-24 09:36:28', '2013-01-24 09:36:29', 28, 59);
INSERT INTO `activities` VALUES(58, 'viewed_menu_item', '2013-01-24 09:36:29', '2013-01-24 09:36:29', 28, 65);
INSERT INTO `activities` VALUES(59, 'viewed_menu_item', '2013-01-24 09:36:29', '2013-01-24 09:36:30', 28, 1);
INSERT INTO `activities` VALUES(60, 'viewed_menu_item', '2013-01-24 09:36:30', '2013-01-24 09:36:30', 28, 8);
INSERT INTO `activities` VALUES(61, 'exit_while_viewing_menu_item', '2013-01-24 09:36:30', '2013-01-24 09:36:31', 28, 2);
INSERT INTO `activities` VALUES(62, 'first', '2013-01-24 09:36:32', '2013-01-24 09:36:33', 29, 78);
INSERT INTO `activities` VALUES(63, 'skipped_video', '2013-01-24 09:36:33', '2013-01-24 09:36:34', 29, 80);
INSERT INTO `activities` VALUES(64, 'exit_while_watching_video', '2013-01-24 09:36:34', '2013-01-24 09:36:35', 29, 75);
INSERT INTO `activities` VALUES(65, 'first', '2013-01-24 14:01:05', '2013-01-24 14:01:14', 32, 2);
INSERT INTO `activities` VALUES(66, 'started_watching_video', '2013-01-24 14:01:19', '1969-12-31 19:00:00', 34, 73);
INSERT INTO `activities` VALUES(67, 'started_watching_video', '2013-01-24 15:08:37', '1969-12-31 19:00:00', 36, 73);
INSERT INTO `activities` VALUES(68, 'first', '2013-01-24 15:13:01', '2013-01-24 15:13:19', 38, 72);
INSERT INTO `activities` VALUES(69, 'first', '2013-01-24 15:13:23', '2013-01-24 15:15:24', 39, 2);
INSERT INTO `activities` VALUES(70, 'first', '2013-01-24 15:28:11', '2013-01-24 15:28:12', 42, 2);
INSERT INTO `activities` VALUES(71, 'viewed_menu_item', '2013-01-24 15:28:12', '2013-01-24 15:28:12', 42, 3);
INSERT INTO `activities` VALUES(72, 'viewed_menu_item', '2013-01-24 15:28:12', '2013-01-24 15:28:13', 42, 4);
INSERT INTO `activities` VALUES(73, 'viewed_menu_item', '2013-01-24 15:28:13', '2013-01-24 15:28:14', 42, 5);
INSERT INTO `activities` VALUES(74, 'viewed_menu_item', '2013-01-24 15:28:14', '2013-01-24 15:28:14', 42, 8);
INSERT INTO `activities` VALUES(75, 'viewing_menu_item', '2013-01-24 15:28:14', '1969-12-31 19:00:00', 42, 1);
INSERT INTO `activities` VALUES(76, 'viewing_menu_item', '2013-01-24 15:32:19', '1969-12-31 19:00:00', 43, 2);
INSERT INTO `activities` VALUES(77, 'viewing_menu_item', '2013-01-24 15:32:32', '1969-12-31 19:00:00', 44, 2);
INSERT INTO `activities` VALUES(78, 'first', '2013-01-24 15:32:35', '2013-01-24 15:32:39', 45, 2);
INSERT INTO `activities` VALUES(79, 'viewed_menu_item', '2013-01-24 15:32:39', '2013-01-24 15:32:41', 45, 3);
INSERT INTO `activities` VALUES(80, 'viewing_menu_item', '2013-01-24 15:32:41', '1969-12-31 19:00:00', 45, 4);
INSERT INTO `activities` VALUES(81, 'first', '2013-01-24 15:32:52', '2013-01-24 15:32:54', 47, 2);
INSERT INTO `activities` VALUES(82, 'viewing_menu_item', '2013-01-24 15:32:54', '1969-12-31 19:00:00', 47, 4);
INSERT INTO `activities` VALUES(83, 'first', '2013-01-24 15:33:05', '2013-01-24 15:33:07', 48, 2);
INSERT INTO `activities` VALUES(84, 'viewed_menu_item', '2013-01-24 15:33:07', '2013-01-24 15:33:08', 48, 4);
INSERT INTO `activities` VALUES(85, 'viewed_menu_item', '2013-01-24 15:33:08', '2013-01-24 15:33:10', 48, 5);
INSERT INTO `activities` VALUES(86, 'viewed_menu_item', '2013-01-24 15:33:10', '2013-01-24 15:33:12', 48, 6);
INSERT INTO `activities` VALUES(87, 'exit_while_viewing_menu_item', '2013-01-24 15:33:12', '2013-01-24 15:33:18', 48, 3);
INSERT INTO `activities` VALUES(88, 'first', '2013-01-24 15:33:19', '2013-01-24 15:33:21', 49, 2);
INSERT INTO `activities` VALUES(89, 'first', '2013-01-24 15:33:22', '2013-01-24 15:33:24', 50, 2);
INSERT INTO `activities` VALUES(90, 'viewed_menu_item', '2013-01-24 15:33:24', '2013-01-24 15:33:25', 50, 3);
INSERT INTO `activities` VALUES(91, 'viewed_menu_item', '2013-01-24 15:33:25', '2013-01-24 15:33:27', 50, 4);
INSERT INTO `activities` VALUES(92, 'viewed_menu_item', '2013-01-24 15:33:27', '2013-01-24 15:33:30', 50, 5);
INSERT INTO `activities` VALUES(93, 'exit_while_viewing_menu_item', '2013-01-24 15:33:30', '2013-01-24 15:33:34', 50, 2);
INSERT INTO `activities` VALUES(94, 'first', '2013-01-24 15:33:35', '2013-01-24 15:34:46', 51, 2);
INSERT INTO `activities` VALUES(95, 'first', '2013-01-24 15:34:47', '2013-01-24 15:35:36', 52, 2);
INSERT INTO `activities` VALUES(96, 'first', '2013-01-24 15:35:37', '2013-01-24 15:35:40', 53, 2);
INSERT INTO `activities` VALUES(97, 'viewing_menu_item', '2013-01-24 15:35:41', '1969-12-31 19:00:00', 54, 2);
INSERT INTO `activities` VALUES(98, 'first', '2013-01-24 15:36:41', '2013-01-24 15:36:46', 55, 2);
INSERT INTO `activities` VALUES(99, 'first', '2013-01-24 15:36:47', '2013-01-24 15:36:49', 56, 2);
INSERT INTO `activities` VALUES(100, 'viewing_menu_item', '2013-01-24 15:36:50', '1969-12-31 19:00:00', 57, 2);
INSERT INTO `activities` VALUES(101, 'first', '2013-01-24 15:36:53', '2013-01-24 15:36:57', 58, 2);
INSERT INTO `activities` VALUES(102, 'viewed_menu_item', '2013-01-24 15:36:57', '2013-01-24 15:36:59', 58, 3);
INSERT INTO `activities` VALUES(103, 'viewed_menu_item', '2013-01-24 15:36:59', '2013-01-24 15:37:00', 58, 4);
INSERT INTO `activities` VALUES(104, 'exit_while_viewing_menu_item', '2013-01-24 15:37:00', '2013-01-24 15:37:06', 58, 5);
INSERT INTO `activities` VALUES(105, 'first', '2013-01-24 15:38:06', '2013-01-24 15:56:30', 59, 2);
INSERT INTO `activities` VALUES(106, 'first', '2013-01-24 17:01:51', '2013-01-24 17:01:54', 62, 2);
INSERT INTO `activities` VALUES(107, 'first', '2013-01-24 17:01:57', '2013-01-24 17:02:00', 63, 2);
INSERT INTO `activities` VALUES(108, 'first', '2013-01-24 17:02:01', '2013-01-24 17:02:04', 64, 2);
INSERT INTO `activities` VALUES(109, 'first', '2013-01-24 17:04:13', '2013-01-24 17:04:16', 65, 2);
INSERT INTO `activities` VALUES(110, 'first', '2013-01-24 17:04:19', '2013-01-24 17:04:22', 66, 2);
INSERT INTO `activities` VALUES(111, 'viewing_menu_item', '2013-01-24 17:04:23', '1969-12-31 19:00:00', 67, 2);
INSERT INTO `activities` VALUES(112, 'first', '2013-01-24 17:04:49', '2013-01-24 17:04:53', 68, 2);
INSERT INTO `activities` VALUES(113, 'first', '2013-01-24 17:05:08', '2013-01-24 17:05:10', 71, 2);
INSERT INTO `activities` VALUES(114, 'first', '2013-01-24 17:05:11', '2013-01-24 17:05:13', 72, 2);
INSERT INTO `activities` VALUES(115, 'first', '2013-01-24 17:05:16', '2013-01-24 17:05:20', 73, 2);
INSERT INTO `activities` VALUES(116, 'viewing_menu_item', '2013-01-24 17:05:21', '1969-12-31 19:00:00', 74, 2);
INSERT INTO `activities` VALUES(117, 'first', '2013-01-24 17:06:39', '2013-01-24 17:06:42', 75, 2);
INSERT INTO `activities` VALUES(118, 'first', '2013-01-24 17:06:45', '2013-01-24 17:06:48', 76, 2);
INSERT INTO `activities` VALUES(119, 'viewing_menu_item', '2013-01-24 17:06:49', '1969-12-31 19:00:00', 77, 2);
INSERT INTO `activities` VALUES(120, 'viewing_menu_item', '2013-01-24 17:07:02', '1969-12-31 19:00:00', 78, 2);
INSERT INTO `activities` VALUES(121, 'first', '2013-01-24 17:07:16', '2013-01-24 17:07:18', 79, 2);
INSERT INTO `activities` VALUES(122, 'first', '2013-01-24 17:07:22', '2013-01-24 17:07:25', 80, 2);
INSERT INTO `activities` VALUES(123, 'viewing_menu_item', '2013-01-24 17:07:26', '1969-12-31 19:00:00', 81, 2);
INSERT INTO `activities` VALUES(124, 'first', '2013-01-24 17:23:29', '2013-01-24 17:23:30', 83, 2);
INSERT INTO `activities` VALUES(125, 'exit_while_viewing_menu_item', '2013-01-24 17:23:30', '2013-01-24 17:23:33', 83, 3);
INSERT INTO `activities` VALUES(126, 'first', '2013-01-24 17:24:29', '2013-01-24 17:24:33', 85, 2);
INSERT INTO `activities` VALUES(127, 'first', '2013-01-24 17:24:37', '2013-01-24 17:24:42', 86, 2);
INSERT INTO `activities` VALUES(128, 'first', '2013-01-24 17:24:43', '2013-01-24 17:24:46', 87, 2);
INSERT INTO `activities` VALUES(129, 'exit_while_viewing_menu_item', '2013-01-24 17:24:46', '2013-01-24 17:24:48', 87, 3);
INSERT INTO `activities` VALUES(130, 'first', '2013-01-24 17:24:51', '2013-01-24 17:24:54', 88, 2);
INSERT INTO `activities` VALUES(131, 'first', '2013-01-24 17:24:55', '2013-01-24 17:24:58', 89, 2);
INSERT INTO `activities` VALUES(132, 'viewing_menu_item', '2013-01-25 10:51:40', '1969-12-31 19:00:00', 90, 2);
INSERT INTO `activities` VALUES(133, 'viewing_menu_item', '2013-01-25 10:51:50', '1969-12-31 19:00:00', 91, 2);
INSERT INTO `activities` VALUES(134, 'first', '2013-01-25 10:51:59', '2013-01-25 10:52:01', 92, 2);
INSERT INTO `activities` VALUES(135, 'first', '2013-01-25 10:52:04', '2013-01-25 10:52:08', 93, 2);
INSERT INTO `activities` VALUES(136, 'first', '2013-01-25 10:52:09', '2013-01-25 10:52:10', 94, 2);
INSERT INTO `activities` VALUES(137, 'first', '2013-01-25 10:52:11', '2013-01-25 10:52:17', 95, 2);
INSERT INTO `activities` VALUES(138, 'first', '2013-01-25 10:52:26', '2013-01-25 10:52:28', 96, 2);
INSERT INTO `activities` VALUES(139, 'viewed_menu_item', '2013-01-25 10:52:28', '2013-01-25 10:52:30', 96, 3);
INSERT INTO `activities` VALUES(140, 'viewed_menu_item', '2013-01-25 10:52:30', '2013-01-25 10:52:30', 96, 1);
INSERT INTO `activities` VALUES(141, 'viewed_menu_item', '2013-01-25 10:52:30', '2013-01-25 10:52:31', 96, 24);
INSERT INTO `activities` VALUES(142, 'exit_while_viewing_menu_item', '2013-01-25 10:52:31', '2013-01-25 10:52:33', 96, 24);
INSERT INTO `activities` VALUES(143, 'first', '2013-01-25 10:52:34', '2013-01-25 10:52:36', 97, 2);
INSERT INTO `activities` VALUES(144, 'first', '2013-01-25 10:52:37', '2013-01-25 10:52:40', 98, 2);
INSERT INTO `activities` VALUES(145, 'first', '2013-01-25 10:53:54', '2013-01-25 10:53:57', 99, 2);
INSERT INTO `activities` VALUES(146, 'exit_while_viewing_menu_item', '2013-01-25 10:53:57', '2013-01-25 10:54:01', 99, 4);
INSERT INTO `activities` VALUES(147, 'first', '2013-01-25 10:54:02', '2013-01-25 10:54:04', 100, 2);
INSERT INTO `activities` VALUES(148, 'first', '2013-01-25 10:54:05', '2013-01-25 10:54:21', 101, 2);
INSERT INTO `activities` VALUES(149, 'first', '2013-01-25 10:54:22', '2013-01-25 10:54:41', 102, 2);
INSERT INTO `activities` VALUES(150, 'first', '2013-01-25 10:54:43', '2013-01-25 10:54:46', 103, 2);
INSERT INTO `activities` VALUES(151, 'first', '2013-01-25 10:54:47', '2013-01-25 10:54:50', 104, 2);
INSERT INTO `activities` VALUES(152, 'first', '2013-01-25 10:54:51', '2013-01-25 10:57:01', 105, 2);
INSERT INTO `activities` VALUES(153, 'viewing_menu_item', '2013-01-24 15:38:30', '1969-12-31 19:00:00', 106, 2);
INSERT INTO `activities` VALUES(154, 'viewing_menu_item', '2013-01-24 15:40:04', '1969-12-31 19:00:00', 107, 2);
INSERT INTO `activities` VALUES(155, 'first', '2013-01-24 15:40:20', '2013-01-24 15:40:31', 108, 2);
INSERT INTO `activities` VALUES(156, 'viewed_menu_item', '2013-01-24 15:40:31', '2013-01-24 15:40:34', 108, 4);
INSERT INTO `activities` VALUES(157, 'viewed_menu_item', '2013-01-24 15:40:34', '2013-01-24 15:40:36', 108, 5);
INSERT INTO `activities` VALUES(158, 'viewed_menu_item', '2013-01-24 15:40:36', '2013-01-24 15:40:48', 108, 6);
INSERT INTO `activities` VALUES(159, 'viewing_menu_item', '2013-01-24 15:40:48', '1969-12-31 19:00:00', 108, 16);
INSERT INTO `activities` VALUES(160, 'first', '2013-01-24 15:43:44', '2013-01-24 15:44:49', 109, 2);
INSERT INTO `activities` VALUES(161, 'viewing_menu_item', '2013-01-24 15:44:49', '1969-12-31 19:00:00', 109, 4);
INSERT INTO `activities` VALUES(162, 'first', '2013-01-24 15:45:27', '2013-01-24 15:45:37', 110, 2);
INSERT INTO `activities` VALUES(163, 'viewed_menu_item', '2013-01-24 15:45:37', '2013-01-24 15:45:42', 110, 4);
INSERT INTO `activities` VALUES(164, 'exit_while_viewing_menu_item', '2013-01-24 15:45:42', '2013-01-24 15:46:47', 110, 2);
INSERT INTO `activities` VALUES(165, 'viewing_menu_item', '2013-01-24 15:46:49', '1969-12-31 19:00:00', 111, 2);
INSERT INTO `activities` VALUES(166, 'viewing_menu_item', '2013-01-25 14:06:25', '1969-12-31 19:00:00', 112, 2);
INSERT INTO `activities` VALUES(167, 'viewing_menu_item', '2013-01-25 14:07:36', '1969-12-31 19:00:00', 113, 2);
INSERT INTO `activities` VALUES(168, 'viewing_menu_item', '2013-01-25 14:10:38', '1969-12-31 19:00:00', 114, 2);
INSERT INTO `activities` VALUES(169, 'viewing_menu_item', '2013-01-25 14:10:44', '1969-12-31 19:00:00', 115, 2);
INSERT INTO `activities` VALUES(170, 'viewing_menu_item', '2013-01-25 14:26:12', '1969-12-31 19:00:00', 116, 2);
INSERT INTO `activities` VALUES(171, 'viewing_menu_item', '2013-01-25 14:27:18', '1969-12-31 19:00:00', 117, 2);
INSERT INTO `activities` VALUES(172, 'viewing_menu_item', '2013-01-25 14:29:31', '1969-12-31 19:00:00', 118, 2);
INSERT INTO `activities` VALUES(173, 'viewing_menu_item', '2013-01-25 14:29:35', '1969-12-31 19:00:00', 119, 2);
INSERT INTO `activities` VALUES(174, 'viewing_menu_item', '2013-01-25 14:30:06', '1969-12-31 19:00:00', 120, 2);
INSERT INTO `activities` VALUES(175, 'viewing_menu_item', '2013-01-25 14:32:34', '1969-12-31 19:00:00', 121, 2);
INSERT INTO `activities` VALUES(176, 'viewing_menu_item', '2013-01-25 18:54:02', '1969-12-31 19:00:00', 122, 2);
INSERT INTO `activities` VALUES(177, 'viewing_menu_item', '2013-01-25 18:58:20', '1969-12-31 19:00:00', 123, 2);
INSERT INTO `activities` VALUES(178, 'viewing_menu_item', '2013-01-25 18:58:25', '1969-12-31 19:00:00', 124, 2);
INSERT INTO `activities` VALUES(179, 'first', '2013-01-25 19:04:17', '2013-01-25 19:04:22', 125, 2);
INSERT INTO `activities` VALUES(180, 'first', '2013-01-25 19:16:00', '2013-01-25 19:16:02', 126, 2);
INSERT INTO `activities` VALUES(181, 'viewed_menu_item', '2013-01-25 19:16:02', '2013-01-25 19:16:06', 126, 3);
INSERT INTO `activities` VALUES(182, 'viewed_menu_item', '2013-01-25 19:16:06', '2013-01-25 19:16:20', 126, 4);
INSERT INTO `activities` VALUES(183, 'viewed_menu_item', '2013-01-25 19:16:20', '2013-01-25 19:16:22', 126, 5);
INSERT INTO `activities` VALUES(184, 'viewed_menu_item', '2013-01-25 19:16:22', '2013-01-25 19:16:28', 126, 6);
INSERT INTO `activities` VALUES(185, 'viewed_menu_item', '2013-01-25 19:16:28', '2013-01-25 19:16:30', 126, 7);
INSERT INTO `activities` VALUES(186, 'viewed_menu_item', '2013-01-25 19:16:30', '2013-01-25 19:16:31', 126, 16);
INSERT INTO `activities` VALUES(187, 'viewed_menu_item', '2013-01-25 19:16:31', '2013-01-25 19:16:32', 126, 17);
INSERT INTO `activities` VALUES(188, 'viewed_menu_item', '2013-01-25 19:16:32', '2013-01-25 19:16:34', 126, 18);
INSERT INTO `activities` VALUES(189, 'viewed_menu_item', '2013-01-25 19:16:34', '2013-01-25 19:16:35', 126, 19);
INSERT INTO `activities` VALUES(190, 'viewed_menu_item', '2013-01-25 19:16:35', '2013-01-25 19:16:36', 126, 21);
INSERT INTO `activities` VALUES(191, 'viewed_menu_item', '2013-01-25 19:16:36', '2013-01-25 19:16:42', 126, 23);
INSERT INTO `activities` VALUES(192, 'viewed_menu_item', '2013-01-25 19:16:42', '2013-01-25 19:16:47', 126, 36);
INSERT INTO `activities` VALUES(193, 'viewed_menu_item', '2013-01-25 19:16:47', '2013-01-25 19:16:51', 126, 37);
INSERT INTO `activities` VALUES(194, 'viewed_menu_item', '2013-01-25 19:16:51', '2013-01-25 19:16:59', 126, 38);
INSERT INTO `activities` VALUES(195, 'viewed_menu_item', '2013-01-25 19:16:59', '2013-01-25 19:17:02', 126, 40);
INSERT INTO `activities` VALUES(196, 'viewed_menu_item', '2013-01-25 19:17:02', '2013-01-25 19:17:02', 126, 38);
INSERT INTO `activities` VALUES(197, 'viewed_menu_item', '2013-01-25 19:17:02', '2013-01-25 19:17:13', 126, 40);
INSERT INTO `activities` VALUES(198, 'viewed_menu_item', '2013-01-25 19:17:13', '2013-01-25 19:17:14', 126, 41);
INSERT INTO `activities` VALUES(199, 'viewed_menu_item', '2013-01-25 19:17:14', '2013-01-25 19:17:16', 126, 40);
INSERT INTO `activities` VALUES(200, 'viewed_menu_item', '2013-01-25 19:17:16', '2013-01-25 19:17:17', 126, 8);
INSERT INTO `activities` VALUES(201, 'viewed_menu_item', '2013-01-25 19:17:17', '2013-01-25 19:17:18', 126, 1);
INSERT INTO `activities` VALUES(202, 'viewed_menu_item', '2013-01-25 19:17:18', '2013-01-25 19:17:19', 126, 8);
INSERT INTO `activities` VALUES(203, 'viewed_menu_item', '2013-01-25 19:17:19', '2013-01-25 19:17:21', 126, 9);
INSERT INTO `activities` VALUES(204, 'viewed_menu_item', '2013-01-25 19:17:21', '2013-01-25 19:17:21', 126, 13);
INSERT INTO `activities` VALUES(205, 'viewed_menu_item', '2013-01-25 19:17:21', '2013-01-25 19:17:22', 126, 14);
INSERT INTO `activities` VALUES(206, 'viewed_menu_item', '2013-01-25 19:17:22', '2013-01-25 19:17:23', 126, 15);
INSERT INTO `activities` VALUES(207, 'viewed_menu_item', '2013-01-25 19:17:23', '2013-01-25 19:17:25', 126, 12);
INSERT INTO `activities` VALUES(208, 'viewed_menu_item', '2013-01-25 19:17:25', '2013-01-25 19:17:26', 126, 9);
INSERT INTO `activities` VALUES(209, 'viewed_menu_item', '2013-01-25 19:17:26', '2013-01-25 19:17:29', 126, 10);
INSERT INTO `activities` VALUES(210, 'viewed_menu_item', '2013-01-25 19:17:29', '2013-01-25 19:17:31', 126, 8);
INSERT INTO `activities` VALUES(211, 'viewing_menu_item', '2013-01-25 19:17:31', '1969-12-31 19:00:00', 126, 2);
INSERT INTO `activities` VALUES(212, 'viewing_menu_item', '2013-01-25 19:19:56', '1969-12-31 19:00:00', 127, 2);
INSERT INTO `activities` VALUES(213, 'viewing_menu_item', '2013-01-25 19:21:14', '1969-12-31 19:00:00', 128, 2);
INSERT INTO `activities` VALUES(214, 'viewing_menu_item', '2013-01-25 19:24:56', '1969-12-31 19:00:00', 129, 2);
INSERT INTO `activities` VALUES(215, 'first', '2013-01-25 19:44:23', '2013-01-25 19:44:31', 130, 2);
INSERT INTO `activities` VALUES(216, 'viewing_menu_item', '2013-01-25 19:45:29', '1969-12-31 19:00:00', 131, 2);
INSERT INTO `activities` VALUES(217, 'viewing_menu_item', '2013-01-25 20:04:41', '1969-12-31 19:00:00', 132, 2);
INSERT INTO `activities` VALUES(218, 'viewing_menu_item', '2013-01-25 20:04:53', '1969-12-31 19:00:00', 133, 2);
INSERT INTO `activities` VALUES(219, 'viewing_menu_item', '2013-01-25 20:10:45', '1969-12-31 19:00:00', 134, 2);
INSERT INTO `activities` VALUES(220, 'viewing_menu_item', '2013-01-25 20:12:20', '1969-12-31 19:00:00', 135, 2);
INSERT INTO `activities` VALUES(221, 'viewing_menu_item', '2013-01-25 20:12:40', '1969-12-31 19:00:00', 136, 2);
INSERT INTO `activities` VALUES(222, 'viewing_menu_item', '2013-01-25 20:13:11', '1969-12-31 19:00:00', 137, 2);
INSERT INTO `activities` VALUES(223, 'viewing_menu_item', '2013-01-25 20:15:49', '1969-12-31 19:00:00', 138, 2);
INSERT INTO `activities` VALUES(224, 'viewing_menu_item', '2013-01-25 20:16:48', '1969-12-31 19:00:00', 139, 2);
INSERT INTO `activities` VALUES(225, 'viewing_menu_item', '2013-01-25 20:16:51', '1969-12-31 19:00:00', 140, 2);
INSERT INTO `activities` VALUES(226, 'viewing_menu_item', '2013-01-25 20:17:31', '1969-12-31 19:00:00', 141, 2);
INSERT INTO `activities` VALUES(227, 'viewing_menu_item', '2013-01-25 20:19:35', '1969-12-31 19:00:00', 142, 2);
INSERT INTO `activities` VALUES(228, 'viewing_menu_item', '2013-01-25 20:20:04', '1969-12-31 19:00:00', 143, 2);
INSERT INTO `activities` VALUES(229, 'viewing_menu_item', '2013-01-25 20:20:38', '1969-12-31 19:00:00', 144, 2);
INSERT INTO `activities` VALUES(230, 'viewing_menu_item', '2013-01-25 20:20:53', '1969-12-31 19:00:00', 145, 2);
INSERT INTO `activities` VALUES(231, 'viewing_menu_item', '2013-01-25 20:21:01', '1969-12-31 19:00:00', 146, 2);
INSERT INTO `activities` VALUES(232, 'viewing_menu_item', '2013-01-25 20:22:05', '1969-12-31 19:00:00', 147, 2);
INSERT INTO `activities` VALUES(233, 'viewing_menu_item', '2013-01-25 20:22:22', '1969-12-31 19:00:00', 148, 2);
INSERT INTO `activities` VALUES(234, 'viewing_menu_item', '2013-01-25 20:22:42', '1969-12-31 19:00:00', 149, 2);
INSERT INTO `activities` VALUES(235, 'viewing_menu_item', '2013-01-25 20:24:58', '1969-12-31 19:00:00', 150, 2);
INSERT INTO `activities` VALUES(236, 'viewing_menu_item', '2013-01-25 20:25:01', '1969-12-31 19:00:00', 151, 2);
INSERT INTO `activities` VALUES(237, 'viewing_menu_item', '2013-01-25 20:25:10', '1969-12-31 19:00:00', 152, 2);
INSERT INTO `activities` VALUES(238, 'viewing_menu_item', '2013-01-25 20:26:13', '1969-12-31 19:00:00', 153, 2);
INSERT INTO `activities` VALUES(239, 'viewing_menu_item', '2013-01-25 20:27:11', '1969-12-31 19:00:00', 154, 2);
INSERT INTO `activities` VALUES(240, 'viewing_menu_item', '2013-01-25 20:27:37', '1969-12-31 19:00:00', 155, 2);
INSERT INTO `activities` VALUES(241, 'viewing_menu_item', '2013-01-25 20:27:58', '1969-12-31 19:00:00', 157, 2);
INSERT INTO `activities` VALUES(242, 'viewing_menu_item', '2013-01-25 20:28:13', '1969-12-31 19:00:00', 158, 2);
INSERT INTO `activities` VALUES(243, 'viewing_menu_item', '2013-01-25 20:28:26', '1969-12-31 19:00:00', 159, 2);
INSERT INTO `activities` VALUES(244, 'viewing_menu_item', '2013-01-25 20:28:50', '1969-12-31 19:00:00', 160, 2);
INSERT INTO `activities` VALUES(245, 'viewing_menu_item', '2013-01-25 20:29:38', '1969-12-31 19:00:00', 161, 2);
INSERT INTO `activities` VALUES(246, 'viewing_menu_item', '2013-01-25 20:30:00', '1969-12-31 19:00:00', 162, 2);
INSERT INTO `activities` VALUES(247, 'viewing_menu_item', '2013-01-25 20:30:51', '1969-12-31 19:00:00', 163, 2);
INSERT INTO `activities` VALUES(248, 'viewing_menu_item', '2013-01-25 20:31:38', '1969-12-31 19:00:00', 164, 2);
INSERT INTO `activities` VALUES(249, 'viewing_menu_item', '2013-01-25 20:32:02', '1969-12-31 19:00:00', 165, 2);
INSERT INTO `activities` VALUES(250, 'viewing_menu_item', '2013-01-25 20:33:02', '1969-12-31 19:00:00', 166, 2);
INSERT INTO `activities` VALUES(251, 'viewing_menu_item', '2013-01-25 20:34:40', '1969-12-31 19:00:00', 167, 2);
INSERT INTO `activities` VALUES(252, 'viewing_menu_item', '2013-01-25 20:36:37', '1969-12-31 19:00:00', 168, 2);
INSERT INTO `activities` VALUES(253, 'viewing_menu_item', '2013-01-25 20:38:09', '1969-12-31 19:00:00', 169, 2);
INSERT INTO `activities` VALUES(254, 'viewing_menu_item', '2013-01-25 20:38:24', '1969-12-31 19:00:00', 170, 2);
INSERT INTO `activities` VALUES(255, 'viewing_menu_item', '2013-01-25 20:38:30', '1969-12-31 19:00:00', 171, 2);
INSERT INTO `activities` VALUES(256, 'viewing_menu_item', '2013-01-25 20:49:10', '1969-12-31 19:00:00', 172, 2);
INSERT INTO `activities` VALUES(257, 'viewing_menu_item', '2013-01-25 20:49:23', '1969-12-31 19:00:00', 173, 2);
INSERT INTO `activities` VALUES(258, 'viewing_menu_item', '2013-01-25 20:51:50', '1969-12-31 19:00:00', 174, 2);
INSERT INTO `activities` VALUES(259, 'viewing_menu_item', '2013-01-25 20:56:57', '1969-12-31 19:00:00', 175, 2);
INSERT INTO `activities` VALUES(260, 'viewing_menu_item', '2013-01-25 20:57:04', '1969-12-31 19:00:00', 176, 2);
INSERT INTO `activities` VALUES(261, 'viewing_menu_item', '2013-01-25 21:00:04', '1969-12-31 19:00:00', 177, 2);
INSERT INTO `activities` VALUES(262, 'viewing_menu_item', '2013-01-25 21:00:26', '1969-12-31 19:00:00', 178, 2);
INSERT INTO `activities` VALUES(263, 'viewing_menu_item', '2013-01-25 21:01:44', '1969-12-31 19:00:00', 179, 2);
INSERT INTO `activities` VALUES(264, 'viewing_menu_item', '2013-01-25 21:03:54', '1969-12-31 19:00:00', 180, 2);
INSERT INTO `activities` VALUES(265, 'viewing_menu_item', '2013-01-25 21:04:00', '1969-12-31 19:00:00', 181, 2);
INSERT INTO `activities` VALUES(266, 'viewing_menu_item', '2013-01-25 21:04:05', '1969-12-31 19:00:00', 182, 2);
INSERT INTO `activities` VALUES(267, 'viewing_menu_item', '2013-01-25 21:04:34', '1969-12-31 19:00:00', 183, 2);
INSERT INTO `activities` VALUES(268, 'viewing_menu_item', '2013-01-25 21:28:31', '1969-12-31 19:00:00', 184, 2);
INSERT INTO `activities` VALUES(269, 'viewing_menu_item', '2013-01-25 21:33:11', '1969-12-31 19:00:00', 185, 2);
INSERT INTO `activities` VALUES(270, 'viewing_menu_item', '2013-01-25 21:33:32', '1969-12-31 19:00:00', 186, 2);
INSERT INTO `activities` VALUES(271, 'viewing_menu_item', '2013-01-25 21:35:08', '1969-12-31 19:00:00', 187, 2);
INSERT INTO `activities` VALUES(272, 'viewing_menu_item', '2013-01-25 21:35:46', '1969-12-31 19:00:00', 188, 2);
INSERT INTO `activities` VALUES(273, 'viewing_menu_item', '2013-01-25 21:35:48', '1969-12-31 19:00:00', 189, 2);
INSERT INTO `activities` VALUES(274, 'viewing_menu_item', '2013-01-25 21:35:58', '1969-12-31 19:00:00', 190, 2);
INSERT INTO `activities` VALUES(275, 'viewing_menu_item', '2013-01-26 10:09:20', '1969-12-31 19:00:00', 191, 2);
INSERT INTO `activities` VALUES(276, 'viewing_menu_item', '2013-01-26 11:01:44', '1969-12-31 19:00:00', 192, 2);
INSERT INTO `activities` VALUES(277, 'viewing_menu_item', '2013-01-26 11:12:21', '1969-12-31 19:00:00', 193, 2);
INSERT INTO `activities` VALUES(278, 'viewing_menu_item', '2013-01-26 11:14:59', '1969-12-31 19:00:00', 194, 2);
INSERT INTO `activities` VALUES(279, 'viewing_menu_item', '2013-01-26 11:17:12', '1969-12-31 19:00:00', 195, 2);
INSERT INTO `activities` VALUES(280, 'viewing_menu_item', '2013-01-26 11:18:18', '1969-12-31 19:00:00', 196, 2);
INSERT INTO `activities` VALUES(281, 'viewing_menu_item', '2013-01-26 11:18:23', '1969-12-31 19:00:00', 197, 2);
INSERT INTO `activities` VALUES(282, 'viewing_menu_item', '2013-01-26 11:19:37', '1969-12-31 19:00:00', 198, 2);
INSERT INTO `activities` VALUES(283, 'viewing_menu_item', '2013-01-26 11:20:01', '1969-12-31 19:00:00', 199, 2);
INSERT INTO `activities` VALUES(284, 'viewing_menu_item', '2013-01-26 12:55:46', '1969-12-31 19:00:00', 200, 2);
INSERT INTO `activities` VALUES(285, 'first', '2013-01-26 13:08:17', '2013-01-26 13:08:18', 201, 2);
INSERT INTO `activities` VALUES(286, 'first', '2013-01-30 16:49:25', '2013-01-30 16:49:27', 202, 2);
INSERT INTO `activities` VALUES(287, 'first', '2013-01-30 16:52:16', '2013-01-30 16:52:19', 205, 2);
INSERT INTO `activities` VALUES(288, 'viewing_menu_item', '2013-02-02 15:29:39', '1969-12-31 19:00:00', 209, 2);
INSERT INTO `activities` VALUES(289, 'first', '2013-02-02 15:29:53', '2013-02-02 15:30:13', 210, 44);
INSERT INTO `activities` VALUES(290, 'viewed_menu_item', '2013-02-02 15:30:13', '2013-02-02 15:30:15', 210, 62);
INSERT INTO `activities` VALUES(291, 'viewed_menu_item', '2013-02-02 15:30:15', '2013-02-02 15:30:16', 210, 35);
INSERT INTO `activities` VALUES(292, 'viewing_menu_item', '2013-02-02 15:30:16', '1969-12-31 19:00:00', 210, 1);
INSERT INTO `activities` VALUES(293, 'first', '2013-02-02 15:31:02', '2013-02-02 15:31:11', 211, 44);
INSERT INTO `activities` VALUES(294, 'viewed_menu_item', '2013-02-02 15:31:11', '2013-02-02 15:31:22', 211, 62);
INSERT INTO `activities` VALUES(295, 'viewed_menu_item', '2013-02-02 15:31:22', '2013-02-02 15:31:27', 211, 68);
INSERT INTO `activities` VALUES(296, 'viewed_menu_item', '2013-02-02 15:31:27', '2013-02-02 15:31:29', 211, 35);
INSERT INTO `activities` VALUES(297, 'viewed_menu_item', '2013-02-02 15:31:29', '2013-02-02 15:31:45', 211, 1);
INSERT INTO `activities` VALUES(298, 'viewed_menu_item', '2013-02-02 15:31:45', '2013-02-02 15:31:48', 211, 81);
INSERT INTO `activities` VALUES(299, 'viewed_menu_item', '2013-02-02 15:31:48', '2013-02-02 15:31:57', 211, 23);
INSERT INTO `activities` VALUES(300, 'viewed_menu_item', '2013-02-02 15:31:57', '2013-02-02 15:33:01', 211, 44);
INSERT INTO `activities` VALUES(301, 'viewed_menu_item', '2013-02-02 15:33:01', '2013-02-02 15:33:03', 211, 45);
INSERT INTO `activities` VALUES(302, 'viewed_menu_item', '2013-02-02 15:33:03', '2013-02-02 15:33:04', 211, 45);
INSERT INTO `activities` VALUES(303, 'viewed_menu_item', '2013-02-02 15:33:04', '2013-02-02 15:33:05', 211, 46);
INSERT INTO `activities` VALUES(304, 'viewed_menu_item', '2013-02-02 15:33:05', '2013-02-02 15:33:07', 211, 47);
INSERT INTO `activities` VALUES(305, 'viewed_menu_item', '2013-02-02 15:33:07', '2013-02-02 15:33:09', 211, 48);
INSERT INTO `activities` VALUES(306, 'viewed_menu_item', '2013-02-02 15:33:09', '2013-02-02 15:33:12', 211, 49);
INSERT INTO `activities` VALUES(307, 'viewed_menu_item', '2013-02-02 15:33:12', '2013-02-02 15:33:14', 211, 62);
INSERT INTO `activities` VALUES(308, 'viewed_menu_item', '2013-02-02 15:33:14', '2013-02-02 15:33:16', 211, 63);
INSERT INTO `activities` VALUES(309, 'viewed_menu_item', '2013-02-02 15:33:16', '2013-02-02 15:33:17', 211, 64);
INSERT INTO `activities` VALUES(310, 'viewed_menu_item', '2013-02-02 15:33:17', '2013-02-02 15:33:18', 211, 35);
INSERT INTO `activities` VALUES(311, 'viewing_menu_item', '2013-02-02 15:33:18', '1969-12-31 19:00:00', 211, 36);
INSERT INTO `activities` VALUES(312, 'first', '2013-02-02 15:33:29', '2013-02-02 17:16:25', 212, 44);
INSERT INTO `activities` VALUES(313, 'viewed_menu_item', '2013-02-02 17:16:25', '2013-02-02 17:16:26', 212, 45);
INSERT INTO `activities` VALUES(314, 'viewed_menu_item', '2013-02-02 17:16:26', '2013-02-02 17:16:28', 212, 45);
INSERT INTO `activities` VALUES(315, 'viewed_menu_item', '2013-02-02 17:16:28', '2013-02-02 17:16:30', 212, 46);
INSERT INTO `activities` VALUES(316, 'viewed_menu_item', '2013-02-02 17:16:30', '2013-02-02 17:16:33', 212, 47);
INSERT INTO `activities` VALUES(317, 'viewed_menu_item', '2013-02-02 17:16:33', '2013-02-02 17:16:35', 212, 48);
INSERT INTO `activities` VALUES(318, 'viewed_menu_item', '2013-02-02 17:16:35', '2013-02-02 18:58:20', 212, 1);
INSERT INTO `activities` VALUES(319, 'viewed_menu_item', '2013-02-02 18:58:20', '2013-02-02 18:58:24', 212, 8);
INSERT INTO `activities` VALUES(320, 'viewed_menu_item', '2013-02-02 18:58:24', '2013-02-02 18:58:25', 212, 62);
INSERT INTO `activities` VALUES(321, 'viewed_menu_item', '2013-02-02 18:58:25', '2013-02-02 18:58:28', 212, 44);
INSERT INTO `activities` VALUES(322, 'viewing_menu_item', '2013-02-02 18:58:28', '1969-12-31 19:00:00', 212, 53);
INSERT INTO `activities` VALUES(323, 'first', '2013-02-02 19:00:40', '2013-02-02 19:00:41', 213, 44);
INSERT INTO `activities` VALUES(324, 'viewed_menu_item', '2013-02-02 19:00:41', '2013-02-02 19:00:42', 213, 45);
INSERT INTO `activities` VALUES(325, 'viewing_menu_item', '2013-02-02 19:00:42', '1969-12-31 19:00:00', 213, 62);
INSERT INTO `activities` VALUES(326, 'first', '2013-02-02 19:01:01', '2013-02-02 19:02:07', 214, 44);
INSERT INTO `activities` VALUES(327, 'viewed_menu_item', '2013-02-02 19:02:07', '2013-02-02 19:02:09', 214, 45);
INSERT INTO `activities` VALUES(328, 'viewed_menu_item', '2013-02-02 19:02:09', '2013-02-02 19:05:07', 214, 46);
INSERT INTO `activities` VALUES(329, 'viewed_menu_item', '2013-02-02 19:05:07', '2013-02-02 19:05:08', 214, 44);
INSERT INTO `activities` VALUES(330, 'viewing_menu_item', '2013-02-02 19:05:08', '1969-12-31 19:00:00', 214, 46);
INSERT INTO `activities` VALUES(331, 'first', '2013-02-02 19:06:38', '2013-02-02 19:06:39', 215, 44);
INSERT INTO `activities` VALUES(332, 'viewed_menu_item', '2013-02-02 19:06:39', '2013-02-02 19:06:42', 215, 45);
INSERT INTO `activities` VALUES(333, 'viewing_menu_item', '2013-02-02 19:06:42', '1969-12-31 19:00:00', 215, 35);
INSERT INTO `activities` VALUES(334, 'first', '2013-02-02 19:06:54', '2013-02-02 19:06:55', 216, 44);
INSERT INTO `activities` VALUES(335, 'viewing_menu_item', '2013-02-02 19:06:55', '1969-12-31 19:00:00', 216, 45);
INSERT INTO `activities` VALUES(336, 'viewing_menu_item', '2013-02-02 19:07:39', '1969-12-31 19:00:00', 218, 44);
INSERT INTO `activities` VALUES(337, 'first', '2013-02-02 19:07:53', '2013-02-02 19:07:55', 219, 44);
INSERT INTO `activities` VALUES(338, 'viewing_menu_item', '2013-02-02 19:07:55', '1969-12-31 19:00:00', 219, 45);
INSERT INTO `activities` VALUES(339, 'first', '2013-02-02 19:08:09', '2013-02-02 19:08:11', 220, 44);
INSERT INTO `activities` VALUES(340, 'viewing_menu_item', '2013-02-02 19:08:11', '1969-12-31 19:00:00', 220, 45);
INSERT INTO `activities` VALUES(341, 'first', '2013-02-02 19:08:37', '2013-02-02 19:08:39', 221, 44);
INSERT INTO `activities` VALUES(342, 'viewing_menu_item', '2013-02-02 19:08:39', '1969-12-31 19:00:00', 221, 45);
INSERT INTO `activities` VALUES(343, 'first', '2013-02-02 19:11:09', '2013-02-02 19:11:10', 222, 44);
INSERT INTO `activities` VALUES(344, 'viewing_menu_item', '2013-02-02 19:11:10', '1969-12-31 19:00:00', 222, 45);
INSERT INTO `activities` VALUES(345, 'first', '2013-02-02 19:11:50', '2013-02-02 19:11:54', 223, 44);
INSERT INTO `activities` VALUES(346, 'viewed_menu_item', '2013-02-02 19:11:54', '2013-02-02 19:11:55', 223, 45);
INSERT INTO `activities` VALUES(347, 'viewed_menu_item', '2013-02-02 19:11:55', '2013-02-02 19:11:57', 223, 46);
INSERT INTO `activities` VALUES(348, 'viewed_menu_item', '2013-02-02 19:11:57', '2013-02-02 19:11:58', 223, 44);
INSERT INTO `activities` VALUES(349, 'viewed_menu_item', '2013-02-02 19:11:58', '2013-02-02 19:11:59', 223, 45);
INSERT INTO `activities` VALUES(350, 'viewed_menu_item', '2013-02-02 19:11:59', '2013-02-02 19:12:00', 223, 46);
INSERT INTO `activities` VALUES(351, 'viewed_menu_item', '2013-02-02 19:12:00', '2013-02-02 19:12:03', 223, 49);
INSERT INTO `activities` VALUES(352, 'viewed_menu_item', '2013-02-02 19:12:03', '2013-02-02 19:12:06', 223, 50);
INSERT INTO `activities` VALUES(353, 'viewed_menu_item', '2013-02-02 19:12:06', '2013-02-02 19:12:09', 223, 53);
INSERT INTO `activities` VALUES(354, 'viewed_menu_item', '2013-02-02 19:12:09', '2013-02-02 19:12:10', 223, 52);
INSERT INTO `activities` VALUES(355, 'viewed_menu_item', '2013-02-02 19:12:10', '2013-02-02 19:12:12', 223, 53);
INSERT INTO `activities` VALUES(356, 'viewed_menu_item', '2013-02-02 19:12:12', '2013-02-02 19:12:17', 223, 54);
INSERT INTO `activities` VALUES(357, 'viewed_menu_item', '2013-02-02 19:12:17', '2013-02-02 19:12:18', 223, 55);
INSERT INTO `activities` VALUES(358, 'viewed_menu_item', '2013-02-02 19:12:18', '2013-02-02 19:12:20', 223, 56);
INSERT INTO `activities` VALUES(359, 'viewed_menu_item', '2013-02-02 19:12:20', '2013-02-02 19:12:22', 223, 57);
INSERT INTO `activities` VALUES(360, 'viewed_menu_item', '2013-02-02 19:12:22', '2013-02-02 19:12:24', 223, 59);
INSERT INTO `activities` VALUES(361, 'viewed_menu_item', '2013-02-02 19:12:24', '2013-02-02 19:12:27', 223, 58);
INSERT INTO `activities` VALUES(362, 'viewed_menu_item', '2013-02-02 19:12:27', '2013-02-02 19:12:29', 223, 60);
INSERT INTO `activities` VALUES(363, 'viewed_menu_item', '2013-02-02 19:12:29', '2013-02-02 19:12:32', 223, 61);
INSERT INTO `activities` VALUES(364, 'viewed_menu_item', '2013-02-02 19:12:32', '2013-02-02 19:12:34', 223, 55);
INSERT INTO `activities` VALUES(365, 'viewed_menu_item', '2013-02-02 19:12:34', '2013-02-02 19:12:36', 223, 62);
INSERT INTO `activities` VALUES(366, 'viewed_menu_item', '2013-02-02 19:12:36', '2013-02-02 19:12:39', 223, 63);
INSERT INTO `activities` VALUES(367, 'viewed_menu_item', '2013-02-02 19:12:39', '2013-02-02 19:12:42', 223, 64);
INSERT INTO `activities` VALUES(368, 'viewed_menu_item', '2013-02-02 19:12:42', '2013-02-02 19:12:47', 223, 65);
INSERT INTO `activities` VALUES(369, 'viewed_menu_item', '2013-02-02 19:12:47', '2013-02-02 19:12:48', 223, 66);
INSERT INTO `activities` VALUES(370, 'viewed_menu_item', '2013-02-02 19:12:48', '2013-02-02 19:12:51', 223, 68);
INSERT INTO `activities` VALUES(371, 'viewed_menu_item', '2013-02-02 19:12:51', '2013-02-02 19:12:53', 223, 69);
INSERT INTO `activities` VALUES(372, 'viewed_menu_item', '2013-02-02 19:12:53', '2013-02-02 19:14:55', 223, 71);
INSERT INTO `activities` VALUES(373, 'viewed_menu_item', '2013-02-02 19:14:55', '2013-02-02 19:14:56', 223, 72);
INSERT INTO `activities` VALUES(374, 'viewed_menu_item', '2013-02-02 19:14:56', '2013-02-02 19:14:57', 223, 35);
INSERT INTO `activities` VALUES(375, 'viewed_menu_item', '2013-02-02 19:14:57', '2013-02-02 19:14:58', 223, 1);
INSERT INTO `activities` VALUES(376, 'viewed_menu_item', '2013-02-02 19:14:58', '2013-02-02 19:15:21', 223, 35);
INSERT INTO `activities` VALUES(377, 'viewed_menu_item', '2013-02-02 19:15:21', '2013-02-02 19:15:22', 223, 62);
INSERT INTO `activities` VALUES(378, 'viewed_menu_item', '2013-02-02 19:15:22', '2013-02-02 19:15:22', 223, 35);
INSERT INTO `activities` VALUES(379, 'viewed_menu_item', '2013-02-02 19:15:22', '2013-02-02 19:15:23', 223, 1);
INSERT INTO `activities` VALUES(380, 'viewed_menu_item', '2013-02-02 19:15:23', '2013-02-02 19:15:23', 223, 81);
INSERT INTO `activities` VALUES(381, 'viewed_menu_item', '2013-02-02 19:15:23', '2013-02-02 19:15:24', 223, 23);
INSERT INTO `activities` VALUES(382, 'viewed_menu_item', '2013-02-02 19:15:24', '2013-02-02 19:15:25', 223, 35);
INSERT INTO `activities` VALUES(383, 'exit_while_viewing_menu_item', '2013-02-02 19:15:25', '2013-02-02 19:16:23', 223, 62);
INSERT INTO `activities` VALUES(384, 'first', '2013-02-02 19:16:36', '2013-02-02 19:16:43', 224, 2);
INSERT INTO `activities` VALUES(385, 'first', '2013-02-02 19:16:59', '2013-02-02 19:17:02', 225, 44);
INSERT INTO `activities` VALUES(386, 'viewed_menu_item', '2013-02-02 19:17:02', '2013-02-02 19:17:03', 225, 45);
INSERT INTO `activities` VALUES(387, 'viewed_menu_item', '2013-02-02 19:17:03', '2013-02-02 19:17:04', 225, 62);
INSERT INTO `activities` VALUES(388, 'viewed_menu_item', '2013-02-02 19:17:04', '2013-02-02 19:17:32', 225, 35);
INSERT INTO `activities` VALUES(389, 'viewed_menu_item', '2013-02-02 19:17:32', '2013-02-02 19:17:39', 225, 1);
INSERT INTO `activities` VALUES(390, 'viewing_menu_item', '2013-02-02 19:17:39', '1969-12-31 19:00:00', 225, 35);
INSERT INTO `activities` VALUES(391, 'first', '2013-02-02 19:17:46', '2013-02-02 19:17:57', 226, 44);
INSERT INTO `activities` VALUES(392, 'viewed_menu_item', '2013-02-02 19:17:57', '2013-02-02 19:19:23', 226, 35);
INSERT INTO `activities` VALUES(393, 'viewed_menu_item', '2013-02-02 19:19:23', '2013-02-02 19:19:24', 226, 35);
INSERT INTO `activities` VALUES(394, 'viewed_menu_item', '2013-02-02 19:19:24', '2013-02-02 19:19:25', 226, 62);
INSERT INTO `activities` VALUES(395, 'viewed_menu_item', '2013-02-02 19:19:25', '2013-02-02 19:19:28', 226, 35);
INSERT INTO `activities` VALUES(396, 'viewing_menu_item', '2013-02-02 19:19:28', '1969-12-31 19:00:00', 226, 62);
INSERT INTO `activities` VALUES(397, 'first', '2013-02-02 19:25:07', '2013-02-02 19:25:11', 227, 44);
INSERT INTO `activities` VALUES(398, 'viewed_menu_item', '2013-02-02 19:25:11', '2013-02-02 19:25:12', 227, 62);
INSERT INTO `activities` VALUES(399, 'viewed_menu_item', '2013-02-02 19:25:12', '2013-02-02 19:25:34', 227, 35);
INSERT INTO `activities` VALUES(400, 'viewed_menu_item', '2013-02-02 19:25:34', '2013-02-02 19:25:35', 227, 62);
INSERT INTO `activities` VALUES(401, 'viewed_menu_item', '2013-02-02 19:25:35', '2013-02-02 19:25:35', 227, 35);
INSERT INTO `activities` VALUES(402, 'viewed_menu_item', '2013-02-02 19:25:35', '2013-02-02 19:25:36', 227, 1);
INSERT INTO `activities` VALUES(403, 'viewed_menu_item', '2013-02-02 19:25:36', '2013-02-02 19:25:37', 227, 35);
INSERT INTO `activities` VALUES(404, 'viewed_menu_item', '2013-02-02 19:25:37', '2013-02-02 19:25:38', 227, 36);
INSERT INTO `activities` VALUES(405, 'viewed_menu_item', '2013-02-02 19:25:38', '2013-02-02 19:25:38', 227, 37);
INSERT INTO `activities` VALUES(406, 'viewed_menu_item', '2013-02-02 19:25:38', '2013-02-02 19:25:39', 227, 1);
INSERT INTO `activities` VALUES(407, 'viewed_menu_item', '2013-02-02 19:25:39', '2013-02-02 19:25:43', 227, 2);
INSERT INTO `activities` VALUES(408, 'viewed_menu_item', '2013-02-02 19:25:43', '2013-02-02 19:25:44', 227, 81);
INSERT INTO `activities` VALUES(409, 'viewed_menu_item', '2013-02-02 19:25:44', '2013-02-02 19:25:45', 227, 35);
INSERT INTO `activities` VALUES(410, 'viewed_menu_item', '2013-02-02 19:25:45', '2013-02-02 19:25:58', 227, 62);
INSERT INTO `activities` VALUES(411, 'viewing_menu_item', '2013-02-02 19:25:58', '1969-12-31 19:00:00', 227, 35);
INSERT INTO `activities` VALUES(412, 'first', '2013-02-02 19:26:58', '2013-02-02 19:26:59', 228, 44);
INSERT INTO `activities` VALUES(413, 'viewed_menu_item', '2013-02-02 19:26:59', '2013-02-02 19:27:00', 228, 35);
INSERT INTO `activities` VALUES(414, 'viewing_menu_item', '2013-02-02 19:27:00', '1969-12-31 19:00:00', 228, 36);
INSERT INTO `activities` VALUES(415, 'first', '2013-02-02 19:27:04', '2013-02-02 19:27:06', 229, 44);
INSERT INTO `activities` VALUES(416, 'viewed_menu_item', '2013-02-02 19:27:06', '2013-02-02 19:27:07', 229, 45);
INSERT INTO `activities` VALUES(417, 'viewed_menu_item', '2013-02-02 19:27:07', '2013-02-02 19:27:08', 229, 46);
INSERT INTO `activities` VALUES(418, 'viewed_menu_item', '2013-02-02 19:27:08', '2013-02-02 19:27:09', 229, 35);
INSERT INTO `activities` VALUES(419, 'viewed_menu_item', '2013-02-02 19:27:09', '2013-02-02 19:27:11', 229, 36);
INSERT INTO `activities` VALUES(420, 'viewed_menu_item', '2013-02-02 19:27:11', '2013-02-02 19:27:12', 229, 37);
INSERT INTO `activities` VALUES(421, 'viewed_menu_item', '2013-02-02 19:27:12', '2013-02-02 19:27:14', 229, 36);
INSERT INTO `activities` VALUES(422, 'viewed_menu_item', '2013-02-02 19:27:14', '2013-02-02 19:27:15', 229, 37);
INSERT INTO `activities` VALUES(423, 'viewed_menu_item', '2013-02-02 19:27:15', '2013-02-02 19:27:21', 229, 38);
INSERT INTO `activities` VALUES(424, 'viewed_menu_item', '2013-02-02 19:27:21', '2013-02-02 19:27:25', 229, 39);
INSERT INTO `activities` VALUES(425, 'viewed_menu_item', '2013-02-02 19:27:25', '2013-02-02 19:27:27', 229, 37);
INSERT INTO `activities` VALUES(426, 'viewed_menu_item', '2013-02-02 19:27:27', '2013-02-02 19:27:32', 229, 40);
INSERT INTO `activities` VALUES(427, 'viewed_menu_item', '2013-02-02 19:27:32', '2013-02-02 19:28:01', 229, 42);
INSERT INTO `activities` VALUES(428, 'viewed_menu_item', '2013-02-02 19:28:01', '2013-02-02 19:28:03', 229, 43);
INSERT INTO `activities` VALUES(429, 'viewed_menu_item', '2013-02-02 19:28:03', '2013-02-02 19:28:05', 229, 1);
INSERT INTO `activities` VALUES(430, 'viewed_menu_item', '2013-02-02 19:28:05', '2013-02-02 19:28:15', 229, 2);
INSERT INTO `activities` VALUES(431, 'viewed_menu_item', '2013-02-02 19:28:15', '2013-02-02 19:28:17', 229, 3);
INSERT INTO `activities` VALUES(432, 'viewed_menu_item', '2013-02-02 19:28:17', '2013-02-02 19:28:18', 229, 4);
INSERT INTO `activities` VALUES(433, 'viewed_menu_item', '2013-02-02 19:28:18', '2013-02-02 19:28:20', 229, 5);
INSERT INTO `activities` VALUES(434, 'viewed_menu_item', '2013-02-02 19:28:20', '2013-02-02 19:28:22', 229, 6);
INSERT INTO `activities` VALUES(435, 'viewed_menu_item', '2013-02-02 19:28:22', '2013-02-02 19:28:23', 229, 7);
INSERT INTO `activities` VALUES(436, 'viewed_menu_item', '2013-02-02 19:28:23', '2013-02-02 19:28:24', 229, 8);
INSERT INTO `activities` VALUES(437, 'viewed_menu_item', '2013-02-02 19:28:24', '2013-02-02 19:28:26', 229, 9);
INSERT INTO `activities` VALUES(438, 'viewed_menu_item', '2013-02-02 19:28:26', '2013-02-02 19:28:28', 229, 10);
INSERT INTO `activities` VALUES(439, 'viewed_menu_item', '2013-02-02 19:28:28', '2013-02-02 19:28:29', 229, 8);
INSERT INTO `activities` VALUES(440, 'viewed_menu_item', '2013-02-02 19:28:29', '2013-02-02 19:28:34', 229, 9);
INSERT INTO `activities` VALUES(441, 'viewed_menu_item', '2013-02-02 19:28:34', '2013-02-02 19:28:35', 229, 12);
INSERT INTO `activities` VALUES(442, 'viewed_menu_item', '2013-02-02 19:28:35', '2013-02-02 19:28:37', 229, 13);
INSERT INTO `activities` VALUES(443, 'viewed_menu_item', '2013-02-02 19:28:37', '2013-02-02 19:28:38', 229, 14);
INSERT INTO `activities` VALUES(444, 'viewed_menu_item', '2013-02-02 19:28:38', '2013-02-02 19:28:40', 229, 15);
INSERT INTO `activities` VALUES(445, 'viewed_menu_item', '2013-02-02 19:28:40', '2013-02-02 19:28:42', 229, 16);
INSERT INTO `activities` VALUES(446, 'viewed_menu_item', '2013-02-02 19:28:42', '2013-02-02 19:28:43', 229, 17);
INSERT INTO `activities` VALUES(447, 'viewed_menu_item', '2013-02-02 19:28:43', '2013-02-02 19:28:44', 229, 18);
INSERT INTO `activities` VALUES(448, 'viewed_menu_item', '2013-02-02 19:28:44', '2013-02-02 19:28:46', 229, 19);
INSERT INTO `activities` VALUES(449, 'viewed_menu_item', '2013-02-02 19:28:46', '2013-02-02 19:28:47', 229, 20);
INSERT INTO `activities` VALUES(450, 'viewed_menu_item', '2013-02-02 19:28:47', '2013-02-02 19:28:49', 229, 21);
INSERT INTO `activities` VALUES(451, 'viewed_menu_item', '2013-02-02 19:28:49', '2013-02-02 19:28:51', 229, 22);
INSERT INTO `activities` VALUES(452, 'viewed_menu_item', '2013-02-02 19:28:51', '2013-02-02 19:28:52', 229, 81);
INSERT INTO `activities` VALUES(453, 'viewed_menu_item', '2013-02-02 19:28:52', '2013-02-02 19:28:54', 229, 82);
INSERT INTO `activities` VALUES(454, 'viewed_menu_item', '2013-02-02 19:28:54', '2013-02-02 19:28:56', 229, 83);
INSERT INTO `activities` VALUES(455, 'viewed_menu_item', '2013-02-02 19:28:56', '2013-02-02 19:28:57', 229, 84);
INSERT INTO `activities` VALUES(456, 'viewed_menu_item', '2013-02-02 19:28:57', '2013-02-02 19:28:59', 229, 85);
INSERT INTO `activities` VALUES(457, 'viewed_menu_item', '2013-02-02 19:28:59', '2013-02-02 19:29:01', 229, 86);
INSERT INTO `activities` VALUES(458, 'viewed_menu_item', '2013-02-02 19:29:01', '2013-02-02 19:29:02', 229, 23);
INSERT INTO `activities` VALUES(459, 'viewed_menu_item', '2013-02-02 19:29:02', '2013-02-02 19:29:03', 229, 24);
INSERT INTO `activities` VALUES(460, 'viewed_menu_item', '2013-02-02 19:29:03', '2013-02-02 19:29:04', 229, 25);
INSERT INTO `activities` VALUES(461, 'viewed_menu_item', '2013-02-02 19:29:04', '2013-02-02 19:29:05', 229, 26);
INSERT INTO `activities` VALUES(462, 'viewed_menu_item', '2013-02-02 19:29:05', '2013-02-02 19:29:07', 229, 27);
INSERT INTO `activities` VALUES(463, 'viewed_menu_item', '2013-02-02 19:29:07', '2013-02-02 19:29:08', 229, 27);
INSERT INTO `activities` VALUES(464, 'viewed_menu_item', '2013-02-02 19:29:08', '2013-02-02 19:29:14', 229, 26);
INSERT INTO `activities` VALUES(465, 'viewed_menu_item', '2013-02-02 19:29:14', '2013-02-02 19:29:17', 229, 27);
INSERT INTO `activities` VALUES(466, 'viewed_menu_item', '2013-02-02 19:29:17', '2013-02-02 19:29:18', 229, 28);
INSERT INTO `activities` VALUES(467, 'viewed_menu_item', '2013-02-02 19:29:18', '2013-02-02 19:29:30', 229, 27);
INSERT INTO `activities` VALUES(468, 'viewed_menu_item', '2013-02-02 19:29:30', '2013-02-02 19:29:32', 229, 28);
INSERT INTO `activities` VALUES(469, 'viewed_menu_item', '2013-02-02 19:29:32', '2013-02-02 19:29:33', 229, 29);
INSERT INTO `activities` VALUES(470, 'viewed_menu_item', '2013-02-02 19:29:33', '2013-02-02 19:29:55', 229, 30);
INSERT INTO `activities` VALUES(471, 'viewed_menu_item', '2013-02-02 19:29:55', '2013-02-02 19:29:56', 229, 31);
INSERT INTO `activities` VALUES(472, 'viewed_menu_item', '2013-02-02 19:29:56', '2013-02-02 19:29:58', 229, 32);
INSERT INTO `activities` VALUES(473, 'viewed_menu_item', '2013-02-02 19:29:58', '2013-02-02 19:29:59', 229, 33);
INSERT INTO `activities` VALUES(474, 'viewed_menu_item', '2013-02-02 19:29:59', '2013-02-02 19:30:02', 229, 34);
INSERT INTO `activities` VALUES(475, 'viewed_menu_item', '2013-02-02 19:30:02', '2013-02-02 19:30:33', 229, 30);
INSERT INTO `activities` VALUES(476, 'viewed_menu_item', '2013-02-02 19:30:33', '2013-02-02 19:30:38', 229, 31);
INSERT INTO `activities` VALUES(477, 'viewed_menu_item', '2013-02-02 19:30:38', '2013-02-02 19:30:54', 229, 30);
INSERT INTO `activities` VALUES(478, 'viewing_menu_item', '2013-02-02 19:30:54', '1969-12-31 19:00:00', 229, 29);
INSERT INTO `activities` VALUES(479, 'first', '2013-02-02 19:31:13', '2013-02-02 19:31:16', 230, 44);
INSERT INTO `activities` VALUES(480, 'viewed_menu_item', '2013-02-02 19:31:16', '2013-02-02 19:31:18', 230, 23);
INSERT INTO `activities` VALUES(481, 'viewed_menu_item', '2013-02-02 19:31:18', '2013-02-02 19:31:19', 230, 33);
INSERT INTO `activities` VALUES(482, 'viewed_menu_item', '2013-02-02 19:31:19', '2013-02-02 19:31:21', 230, 32);
INSERT INTO `activities` VALUES(483, 'viewed_menu_item', '2013-02-02 19:31:21', '2013-02-02 19:31:23', 230, 34);
INSERT INTO `activities` VALUES(484, 'viewed_menu_item', '2013-02-02 19:31:23', '2013-02-02 19:31:23', 230, 31);
INSERT INTO `activities` VALUES(485, 'viewed_menu_item', '2013-02-02 19:31:23', '2013-02-02 19:31:24', 230, 32);
INSERT INTO `activities` VALUES(486, 'viewed_menu_item', '2013-02-02 19:31:24', '2013-02-02 19:31:25', 230, 29);
INSERT INTO `activities` VALUES(487, 'viewed_menu_item', '2013-02-02 19:31:25', '2013-02-02 19:31:26', 230, 29);
INSERT INTO `activities` VALUES(488, 'viewed_menu_item', '2013-02-02 19:31:26', '2013-02-02 19:31:27', 230, 28);
INSERT INTO `activities` VALUES(489, 'viewing_menu_item', '2013-02-02 19:31:27', '1969-12-31 19:00:00', 230, 27);
INSERT INTO `activities` VALUES(490, 'first', '2013-02-02 19:55:03', '2013-02-02 19:55:04', 231, 44);
INSERT INTO `activities` VALUES(491, 'viewed_menu_item', '2013-02-02 19:55:04', '2013-02-02 19:55:05', 231, 45);
INSERT INTO `activities` VALUES(492, 'viewed_menu_item', '2013-02-02 19:55:05', '2013-02-02 19:55:06', 231, 46);
INSERT INTO `activities` VALUES(493, 'viewed_menu_item', '2013-02-02 19:55:06', '2013-02-02 19:55:07', 231, 62);
INSERT INTO `activities` VALUES(494, 'viewed_menu_item', '2013-02-02 19:55:07', '2013-02-02 19:55:08', 231, 63);
INSERT INTO `activities` VALUES(495, 'viewed_menu_item', '2013-02-02 19:55:08', '2013-02-02 19:55:09', 231, 64);
INSERT INTO `activities` VALUES(496, 'viewed_menu_item', '2013-02-02 19:55:09', '2013-02-02 19:55:10', 231, 1);
INSERT INTO `activities` VALUES(497, 'viewed_menu_item', '2013-02-02 19:55:10', '2013-02-02 19:55:11', 231, 2);
INSERT INTO `activities` VALUES(498, 'viewed_menu_item', '2013-02-02 19:55:11', '2013-02-02 19:55:12', 231, 23);
INSERT INTO `activities` VALUES(499, 'viewed_menu_item', '2013-02-02 19:55:12', '2013-02-02 19:55:13', 231, 25);
INSERT INTO `activities` VALUES(500, 'viewed_menu_item', '2013-02-02 19:55:13', '2013-02-02 19:55:14', 231, 26);
INSERT INTO `activities` VALUES(501, 'viewed_menu_item', '2013-02-02 19:55:14', '2013-02-02 19:55:32', 231, 27);
INSERT INTO `activities` VALUES(502, 'viewed_menu_item', '2013-02-02 19:55:32', '2013-02-02 19:55:34', 231, 28);
INSERT INTO `activities` VALUES(503, 'viewed_menu_item', '2013-02-02 19:55:34', '2013-02-02 19:55:34', 231, 32);
INSERT INTO `activities` VALUES(504, 'viewed_menu_item', '2013-02-02 19:55:34', '2013-02-02 19:55:35', 231, 31);
INSERT INTO `activities` VALUES(505, 'viewed_menu_item', '2013-02-02 19:55:35', '2013-02-02 19:55:36', 231, 31);
INSERT INTO `activities` VALUES(506, 'viewed_menu_item', '2013-02-02 19:55:36', '2013-02-02 19:55:37', 231, 32);
INSERT INTO `activities` VALUES(507, 'viewed_menu_item', '2013-02-02 19:55:37', '2013-02-02 19:55:39', 231, 30);
INSERT INTO `activities` VALUES(508, 'viewed_menu_item', '2013-02-02 19:55:39', '2013-02-02 19:56:10', 231, 44);
INSERT INTO `activities` VALUES(509, 'viewed_menu_item', '2013-02-02 19:56:10', '2013-02-02 19:56:11', 231, 62);
INSERT INTO `activities` VALUES(510, 'viewed_menu_item', '2013-02-02 19:56:11', '2013-02-02 19:56:12', 231, 35);
INSERT INTO `activities` VALUES(511, 'viewed_menu_item', '2013-02-02 19:56:12', '2013-02-02 19:56:12', 231, 1);
INSERT INTO `activities` VALUES(512, 'viewed_menu_item', '2013-02-02 19:56:12', '2013-02-02 19:56:14', 231, 81);
INSERT INTO `activities` VALUES(513, 'viewed_menu_item', '2013-02-02 19:56:14', '2013-02-02 19:56:15', 231, 44);
INSERT INTO `activities` VALUES(514, 'viewed_menu_item', '2013-02-02 19:56:15', '2013-02-02 20:04:03', 231, 45);
INSERT INTO `activities` VALUES(515, 'viewed_menu_item', '2013-02-02 20:04:03', '2013-02-02 20:04:04', 231, 46);
INSERT INTO `activities` VALUES(516, 'viewed_menu_item', '2013-02-02 20:04:04', '2013-02-02 20:04:05', 231, 62);
INSERT INTO `activities` VALUES(517, 'viewed_menu_item', '2013-02-02 20:04:05', '2013-02-02 20:04:05', 231, 35);
INSERT INTO `activities` VALUES(518, 'viewed_menu_item', '2013-02-02 20:04:05', '2013-02-02 20:04:06', 231, 1);
INSERT INTO `activities` VALUES(519, 'viewed_menu_item', '2013-02-02 20:04:06', '2013-02-02 20:04:07', 231, 1);
INSERT INTO `activities` VALUES(520, 'viewed_menu_item', '2013-02-02 20:04:07', '2013-02-02 20:34:59', 231, 2);
INSERT INTO `activities` VALUES(521, 'viewed_menu_item', '2013-02-02 20:34:59', '2013-02-02 20:35:00', 231, 44);
INSERT INTO `activities` VALUES(522, 'viewed_menu_item', '2013-02-02 20:35:00', '2013-02-02 20:35:01', 231, 62);
INSERT INTO `activities` VALUES(523, 'viewed_menu_item', '2013-02-02 20:35:01', '2013-02-02 20:35:01', 231, 62);
INSERT INTO `activities` VALUES(524, 'viewed_menu_item', '2013-02-02 20:35:01', '2013-02-02 20:53:24', 231, 35);
INSERT INTO `activities` VALUES(525, 'viewed_menu_item', '2013-02-02 20:53:24', '2013-02-02 20:53:25', 231, 36);
INSERT INTO `activities` VALUES(526, 'viewed_menu_item', '2013-02-02 20:53:25', '2013-02-02 20:53:26', 231, 37);
INSERT INTO `activities` VALUES(527, 'viewed_menu_item', '2013-02-02 20:53:26', '2013-02-02 20:53:27', 231, 41);
INSERT INTO `activities` VALUES(528, 'viewed_menu_item', '2013-02-02 20:53:27', '2013-02-02 20:53:30', 231, 40);
INSERT INTO `activities` VALUES(529, 'viewing_menu_item', '2013-02-02 20:53:30', '1969-12-31 19:00:00', 231, 42);
INSERT INTO `activities` VALUES(530, 'first', '2013-02-02 20:54:21', '2013-02-02 20:54:24', 232, 44);
INSERT INTO `activities` VALUES(531, 'viewing_menu_item', '2013-02-02 20:54:25', '1969-12-31 19:00:00', 233, 44);
INSERT INTO `activities` VALUES(532, 'first', '2013-02-02 20:54:49', '2013-02-02 20:54:50', 234, 44);
INSERT INTO `activities` VALUES(533, 'viewed_menu_item', '2013-02-02 20:54:50', '2013-02-02 20:54:50', 234, 45);
INSERT INTO `activities` VALUES(534, 'viewed_menu_item', '2013-02-02 20:54:50', '2013-02-02 20:54:51', 234, 62);
INSERT INTO `activities` VALUES(535, 'exit_while_viewing_menu_item', '2013-02-02 20:54:51', '2013-02-02 20:54:52', 234, 44);
INSERT INTO `activities` VALUES(536, 'first', '2013-02-02 20:54:53', '2013-02-02 20:54:55', 235, 44);
INSERT INTO `activities` VALUES(537, 'viewed_menu_item', '2013-02-02 20:54:55', '2013-02-02 20:54:56', 235, 45);
INSERT INTO `activities` VALUES(538, 'viewed_menu_item', '2013-02-02 20:54:56', '2013-02-02 20:54:57', 235, 53);
INSERT INTO `activities` VALUES(539, 'viewing_menu_item', '2013-02-02 20:54:57', '1969-12-31 19:00:00', 235, 52);
INSERT INTO `activities` VALUES(540, 'first', '2013-02-02 20:58:05', '2013-02-02 20:58:06', 236, 44);
INSERT INTO `activities` VALUES(541, 'viewed_menu_item', '2013-02-02 20:58:06', '2013-02-02 20:58:07', 236, 45);
INSERT INTO `activities` VALUES(542, 'viewed_menu_item', '2013-02-02 20:58:07', '2013-02-02 20:58:08', 236, 46);
INSERT INTO `activities` VALUES(543, 'viewed_menu_item', '2013-02-02 20:58:08', '2013-02-02 20:58:09', 236, 50);
INSERT INTO `activities` VALUES(544, 'viewed_menu_item', '2013-02-02 20:58:09', '2013-02-02 20:58:11', 236, 56);
INSERT INTO `activities` VALUES(545, 'viewed_menu_item', '2013-02-02 20:58:11', '2013-02-02 20:58:13', 236, 62);
INSERT INTO `activities` VALUES(546, 'viewed_menu_item', '2013-02-02 20:58:13', '2013-02-02 20:58:14', 236, 35);
INSERT INTO `activities` VALUES(547, 'viewed_menu_item', '2013-02-02 20:58:14', '2013-02-02 20:58:28', 236, 35);
INSERT INTO `activities` VALUES(548, 'viewing_menu_item', '2013-02-02 20:58:28', '1969-12-31 19:00:00', 236, 36);
INSERT INTO `activities` VALUES(549, 'first', '2013-02-02 21:01:28', '2013-02-02 21:01:32', 237, 44);
INSERT INTO `activities` VALUES(550, 'viewed_menu_item', '2013-02-02 21:01:32', '2013-02-02 21:01:33', 237, 45);
INSERT INTO `activities` VALUES(551, 'viewed_menu_item', '2013-02-02 21:01:33', '2013-02-02 21:02:25', 237, 46);
INSERT INTO `activities` VALUES(552, 'viewed_menu_item', '2013-02-02 21:02:25', '2013-02-02 21:02:26', 237, 47);
INSERT INTO `activities` VALUES(553, 'viewed_menu_item', '2013-02-02 21:02:26', '2013-02-02 21:02:27', 237, 49);
INSERT INTO `activities` VALUES(554, 'viewing_menu_item', '2013-02-02 21:02:27', '1969-12-31 19:00:00', 237, 48);
INSERT INTO `activities` VALUES(555, 'first', '2013-02-02 21:02:59', '2013-02-02 21:03:28', 238, 44);
INSERT INTO `activities` VALUES(556, 'viewing_menu_item', '2013-02-02 21:03:28', '1969-12-31 19:00:00', 238, 45);
INSERT INTO `activities` VALUES(557, 'viewing_menu_item', '2013-02-02 21:12:26', '1969-12-31 19:00:00', 239, 44);
INSERT INTO `activities` VALUES(558, 'viewing_menu_item', '2013-02-02 21:23:13', '1969-12-31 19:00:00', 240, 44);
INSERT INTO `activities` VALUES(559, 'viewing_menu_item', '2013-02-02 21:24:28', '1969-12-31 19:00:00', 241, 44);
INSERT INTO `activities` VALUES(560, 'viewing_menu_item', '2013-02-02 21:25:08', '1969-12-31 19:00:00', 242, 44);
INSERT INTO `activities` VALUES(561, 'viewing_menu_item', '2013-02-02 21:25:50', '1969-12-31 19:00:00', 243, 44);
INSERT INTO `activities` VALUES(562, 'viewing_menu_item', '2013-02-02 21:26:33', '1969-12-31 19:00:00', 244, 44);
INSERT INTO `activities` VALUES(563, 'first', '2013-02-02 21:26:49', '2013-02-02 21:26:52', 245, 44);
INSERT INTO `activities` VALUES(564, 'viewing_menu_item', '2013-02-02 21:26:52', '1969-12-31 19:00:00', 245, 45);
INSERT INTO `activities` VALUES(565, 'first', '2013-02-02 21:28:28', '2013-02-02 21:28:30', 246, 44);
INSERT INTO `activities` VALUES(566, 'viewing_menu_item', '2013-02-02 21:28:30', '1969-12-31 19:00:00', 246, 45);
INSERT INTO `activities` VALUES(567, 'first', '2013-02-02 21:29:47', '2013-02-02 21:30:39', 247, 44);
INSERT INTO `activities` VALUES(568, 'viewed_menu_item', '2013-02-02 21:30:39', '2013-02-02 21:30:41', 247, 46);
INSERT INTO `activities` VALUES(569, 'viewed_menu_item', '2013-02-02 21:30:41', '2013-02-02 21:30:43', 247, 50);
INSERT INTO `activities` VALUES(570, 'viewed_menu_item', '2013-02-02 21:30:43', '2013-02-02 21:30:45', 247, 49);
INSERT INTO `activities` VALUES(571, 'viewed_menu_item', '2013-02-02 21:30:45', '2013-02-02 21:30:47', 247, 54);
INSERT INTO `activities` VALUES(572, 'viewed_menu_item', '2013-02-02 21:30:47', '2013-02-02 21:30:48', 247, 59);
INSERT INTO `activities` VALUES(573, 'viewed_menu_item', '2013-02-02 21:30:48', '2013-02-02 21:32:07', 247, 35);
INSERT INTO `activities` VALUES(574, 'viewed_menu_item', '2013-02-02 21:32:07', '2013-02-02 21:36:23', 247, 36);
INSERT INTO `activities` VALUES(575, 'viewed_menu_item', '2013-02-02 21:36:23', '2013-02-02 21:36:24', 247, 41);
INSERT INTO `activities` VALUES(576, 'viewed_menu_item', '2013-02-02 21:36:24', '2013-02-02 21:36:25', 247, 40);
INSERT INTO `activities` VALUES(577, 'viewed_menu_item', '2013-02-02 21:36:25', '2013-02-02 21:36:27', 247, 1);
INSERT INTO `activities` VALUES(578, 'viewing_menu_item', '2013-02-02 21:36:27', '1969-12-31 19:00:00', 247, 81);
INSERT INTO `activities` VALUES(579, 'first', '2013-02-02 21:38:32', '2013-02-02 21:38:35', 248, 44);
INSERT INTO `activities` VALUES(580, 'viewing_menu_item', '2013-02-02 21:38:35', '1969-12-31 19:00:00', 248, 45);
INSERT INTO `activities` VALUES(581, 'first', '2013-02-02 21:41:49', '2013-02-02 21:41:51', 249, 44);
INSERT INTO `activities` VALUES(582, 'viewing_menu_item', '2013-02-02 21:41:51', '1969-12-31 19:00:00', 249, 45);
INSERT INTO `activities` VALUES(583, 'first', '2013-02-02 21:43:06', '2013-02-02 21:43:07', 250, 44);
INSERT INTO `activities` VALUES(584, 'viewing_menu_item', '2013-02-02 21:43:07', '1969-12-31 19:00:00', 250, 45);
INSERT INTO `activities` VALUES(585, 'viewing_menu_item', '2013-02-02 21:45:32', '1969-12-31 19:00:00', 251, 44);
INSERT INTO `activities` VALUES(586, 'viewing_menu_item', '2013-02-03 09:43:43', '1969-12-31 19:00:00', 253, 44);
INSERT INTO `activities` VALUES(587, 'first', '2013-02-03 09:43:56', '2013-02-03 09:43:57', 254, 44);
INSERT INTO `activities` VALUES(588, 'viewing_menu_item', '2013-02-03 09:43:57', '1969-12-31 19:00:00', 254, 35);
INSERT INTO `activities` VALUES(589, 'viewing_menu_item', '2013-02-03 09:44:13', '1969-12-31 19:00:00', 255, 44);
INSERT INTO `activities` VALUES(590, 'viewing_menu_item', '2013-02-03 09:44:40', '1969-12-31 19:00:00', 256, 44);
INSERT INTO `activities` VALUES(591, 'first', '2013-02-03 09:44:55', '2013-02-03 09:44:57', 257, 44);
INSERT INTO `activities` VALUES(592, 'viewed_menu_item', '2013-02-03 09:44:57', '2013-02-03 09:44:58', 257, 35);
INSERT INTO `activities` VALUES(593, 'viewing_menu_item', '2013-02-03 09:44:58', '1969-12-31 19:00:00', 257, 62);
INSERT INTO `activities` VALUES(594, 'first', '2013-02-03 09:46:33', '2013-02-03 09:46:34', 258, 44);
INSERT INTO `activities` VALUES(595, 'viewed_menu_item', '2013-02-03 09:46:34', '2013-02-03 09:46:35', 258, 35);
INSERT INTO `activities` VALUES(596, 'viewed_menu_item', '2013-02-03 09:46:35', '2013-02-03 09:46:36', 258, 62);
INSERT INTO `activities` VALUES(597, 'viewed_menu_item', '2013-02-03 09:46:36', '2013-02-03 09:46:37', 258, 1);
INSERT INTO `activities` VALUES(598, 'viewed_menu_item', '2013-02-03 09:46:37', '2013-02-03 09:46:38', 258, 81);
INSERT INTO `activities` VALUES(599, 'viewed_menu_item', '2013-02-03 09:46:38', '2013-02-03 09:47:46', 258, 23);
INSERT INTO `activities` VALUES(600, 'viewed_menu_item', '2013-02-03 09:47:46', '2013-02-03 09:47:47', 258, 24);
INSERT INTO `activities` VALUES(601, 'viewed_menu_item', '2013-02-03 09:47:47', '2013-02-03 09:47:49', 258, 25);
INSERT INTO `activities` VALUES(602, 'viewed_menu_item', '2013-02-03 09:47:49', '2013-02-03 09:47:53', 258, 26);
INSERT INTO `activities` VALUES(603, 'viewed_menu_item', '2013-02-03 09:47:53', '2013-02-03 09:47:54', 258, 28);
INSERT INTO `activities` VALUES(604, 'viewed_menu_item', '2013-02-03 09:47:54', '2013-02-03 09:47:55', 258, 62);
INSERT INTO `activities` VALUES(605, 'viewed_menu_item', '2013-02-03 09:47:55', '2013-02-03 09:47:57', 258, 44);
INSERT INTO `activities` VALUES(606, 'viewed_menu_item', '2013-02-03 09:47:57', '2013-02-03 09:47:58', 258, 62);
INSERT INTO `activities` VALUES(607, 'viewed_menu_item', '2013-02-03 09:47:58', '2013-02-03 09:47:59', 258, 63);
INSERT INTO `activities` VALUES(608, 'viewed_menu_item', '2013-02-03 09:47:59', '2013-02-03 09:48:00', 258, 64);
INSERT INTO `activities` VALUES(609, 'viewed_menu_item', '2013-02-03 09:48:00', '2013-02-03 09:48:01', 258, 66);
INSERT INTO `activities` VALUES(610, 'viewed_menu_item', '2013-02-03 09:48:01', '2013-02-03 09:48:02', 258, 65);
INSERT INTO `activities` VALUES(611, 'viewed_menu_item', '2013-02-03 09:48:02', '2013-02-03 09:48:05', 258, 68);
INSERT INTO `activities` VALUES(612, 'viewed_menu_item', '2013-02-03 09:48:05', '2013-02-03 09:48:11', 258, 69);
INSERT INTO `activities` VALUES(613, 'viewed_menu_item', '2013-02-03 09:48:11', '2013-02-03 09:48:13', 258, 70);
INSERT INTO `activities` VALUES(614, 'viewed_menu_item', '2013-02-03 09:48:13', '2013-02-03 09:48:14', 258, 73);
INSERT INTO `activities` VALUES(615, 'viewed_menu_item', '2013-02-03 09:48:14', '2013-02-03 09:48:16', 258, 71);
INSERT INTO `activities` VALUES(616, 'viewed_menu_item', '2013-02-03 09:48:16', '2013-02-03 09:48:17', 258, 35);
INSERT INTO `activities` VALUES(617, 'viewed_menu_item', '2013-02-03 09:48:17', '2013-02-03 09:48:17', 258, 81);
INSERT INTO `activities` VALUES(618, 'viewed_menu_item', '2013-02-03 09:48:17', '2013-02-03 09:48:26', 258, 23);
INSERT INTO `activities` VALUES(619, 'viewed_menu_item', '2013-02-03 09:48:26', '2013-02-03 09:48:27', 258, 24);
INSERT INTO `activities` VALUES(620, 'viewed_menu_item', '2013-02-03 09:48:27', '2013-02-03 09:48:28', 258, 25);
INSERT INTO `activities` VALUES(621, 'viewed_menu_item', '2013-02-03 09:48:28', '2013-02-03 09:48:30', 258, 26);
INSERT INTO `activities` VALUES(622, 'viewed_menu_item', '2013-02-03 09:48:30', '2013-02-03 09:48:31', 258, 28);
INSERT INTO `activities` VALUES(623, 'viewed_menu_item', '2013-02-03 09:48:31', '2013-02-03 09:48:32', 258, 33);
INSERT INTO `activities` VALUES(624, 'viewed_menu_item', '2013-02-03 09:48:32', '2013-02-03 09:48:34', 258, 31);
INSERT INTO `activities` VALUES(625, 'viewing_menu_item', '2013-02-03 09:48:34', '1969-12-31 19:00:00', 258, 30);
INSERT INTO `activities` VALUES(626, 'first', '2013-02-03 09:53:48', '2013-02-03 09:53:54', 259, 44);
INSERT INTO `activities` VALUES(627, 'viewed_menu_item', '2013-02-03 09:53:54', '2013-02-03 09:54:32', 259, 45);
INSERT INTO `activities` VALUES(628, 'viewed_menu_item', '2013-02-03 09:54:32', '2013-02-03 09:54:35', 259, 46);
INSERT INTO `activities` VALUES(629, 'viewed_menu_item', '2013-02-03 09:54:35', '2013-02-03 09:54:36', 259, 45);
INSERT INTO `activities` VALUES(630, 'viewing_menu_item', '2013-02-03 09:54:36', '1969-12-31 19:00:00', 259, 44);
INSERT INTO `activities` VALUES(631, 'first', '2013-02-03 09:56:43', '2013-02-03 09:56:48', 260, 44);
INSERT INTO `activities` VALUES(632, 'viewing_menu_item', '2013-02-03 09:56:48', '1969-12-31 19:00:00', 260, 45);
INSERT INTO `activities` VALUES(633, 'first', '2013-02-03 09:57:25', '2013-02-03 09:57:26', 261, 44);
INSERT INTO `activities` VALUES(634, 'viewed_menu_item', '2013-02-03 09:57:26', '2013-02-03 09:57:28', 261, 45);
INSERT INTO `activities` VALUES(635, 'viewed_menu_item', '2013-02-03 09:57:28', '2013-02-03 09:57:31', 261, 46);
INSERT INTO `activities` VALUES(636, 'viewed_menu_item', '2013-02-03 09:57:31', '2013-02-03 09:57:34', 261, 50);
INSERT INTO `activities` VALUES(637, 'viewed_menu_item', '2013-02-03 09:57:34', '2013-02-03 09:57:36', 261, 62);
INSERT INTO `activities` VALUES(638, 'viewed_menu_item', '2013-02-03 09:57:36', '2013-02-03 09:57:37', 261, 63);
INSERT INTO `activities` VALUES(639, 'viewed_menu_item', '2013-02-03 09:57:37', '2013-02-03 09:57:39', 261, 64);
INSERT INTO `activities` VALUES(640, 'viewed_menu_item', '2013-02-03 09:57:39', '2013-02-03 09:57:42', 261, 1);
INSERT INTO `activities` VALUES(641, 'viewed_menu_item', '2013-02-03 09:57:42', '2013-02-03 09:57:43', 261, 2);
INSERT INTO `activities` VALUES(642, 'viewed_menu_item', '2013-02-03 09:57:43', '2013-02-03 09:57:47', 261, 81);
INSERT INTO `activities` VALUES(643, 'viewed_menu_item', '2013-02-03 09:57:47', '2013-02-03 09:57:54', 261, 83);
INSERT INTO `activities` VALUES(644, 'viewed_menu_item', '2013-02-03 09:57:54', '2013-02-03 09:57:57', 261, 84);
INSERT INTO `activities` VALUES(645, 'viewed_menu_item', '2013-02-03 09:57:57', '2013-02-03 09:57:58', 261, 23);
INSERT INTO `activities` VALUES(646, 'viewed_menu_item', '2013-02-03 09:57:58', '2013-02-03 09:58:00', 261, 24);
INSERT INTO `activities` VALUES(647, 'viewed_menu_item', '2013-02-03 09:58:00', '2013-02-03 10:01:22', 261, 26);
INSERT INTO `activities` VALUES(648, 'viewed_menu_item', '2013-02-03 10:01:22', '2013-02-03 10:01:23', 261, 35);
INSERT INTO `activities` VALUES(649, 'exit_while_viewing_menu_item', '2013-02-03 10:01:23', '2013-02-03 10:01:24', 261, 44);
INSERT INTO `activities` VALUES(650, 'first', '2013-02-03 10:01:27', '2013-02-03 10:01:43', 262, 44);
INSERT INTO `activities` VALUES(651, 'viewed_menu_item', '2013-02-03 10:01:43', '2013-02-03 10:01:44', 262, 56);
INSERT INTO `activities` VALUES(652, 'viewed_menu_item', '2013-02-03 10:01:44', '2013-02-03 10:01:50', 262, 55);
INSERT INTO `activities` VALUES(653, 'viewed_menu_item', '2013-02-03 10:01:50', '2013-02-03 10:01:52', 262, 54);
INSERT INTO `activities` VALUES(654, 'viewed_menu_item', '2013-02-03 10:01:52', '2013-02-03 10:01:53', 262, 62);
INSERT INTO `activities` VALUES(655, 'viewing_menu_item', '2013-02-03 10:01:53', '1969-12-31 19:00:00', 262, 63);
INSERT INTO `activities` VALUES(656, 'viewing_menu_item', '2013-02-03 10:06:44', '1969-12-31 19:00:00', 263, 44);
INSERT INTO `activities` VALUES(657, 'first', '2013-02-03 10:07:36', '2013-02-03 10:07:40', 264, 44);
INSERT INTO `activities` VALUES(658, 'viewed_menu_item', '2013-02-03 10:07:40', '2013-02-03 10:07:42', 264, 46);
INSERT INTO `activities` VALUES(659, 'viewed_menu_item', '2013-02-03 10:07:42', '2013-02-03 10:07:45', 264, 47);
INSERT INTO `activities` VALUES(660, 'viewed_menu_item', '2013-02-03 10:07:45', '2013-02-03 10:08:04', 264, 35);
INSERT INTO `activities` VALUES(661, 'viewing_menu_item', '2013-02-03 10:08:04', '1969-12-31 19:00:00', 264, 36);
INSERT INTO `activities` VALUES(662, 'first', '2013-02-03 10:08:37', '2013-02-03 10:08:41', 265, 44);
INSERT INTO `activities` VALUES(663, 'viewed_menu_item', '2013-02-03 10:08:41', '2013-02-03 10:08:42', 265, 62);
INSERT INTO `activities` VALUES(664, 'viewed_menu_item', '2013-02-03 10:08:42', '2013-02-03 10:08:43', 265, 63);
INSERT INTO `activities` VALUES(665, 'viewing_menu_item', '2013-02-03 10:08:43', '1969-12-31 19:00:00', 265, 35);
INSERT INTO `activities` VALUES(666, 'first', '2013-02-03 10:09:19', '2013-02-03 10:09:20', 266, 44);
INSERT INTO `activities` VALUES(667, 'viewed_menu_item', '2013-02-03 10:09:20', '2013-02-03 10:09:21', 266, 35);
INSERT INTO `activities` VALUES(668, 'viewing_menu_item', '2013-02-03 10:09:21', '1969-12-31 19:00:00', 266, 35);
INSERT INTO `activities` VALUES(669, 'first', '2013-02-03 10:10:26', '2013-02-03 10:10:28', 267, 44);
INSERT INTO `activities` VALUES(670, 'exit_while_viewing_menu_item', '2013-02-03 10:10:28', '2013-02-03 10:10:31', 267, 45);
INSERT INTO `activities` VALUES(671, 'first', '2013-02-03 10:10:33', '2013-02-03 10:10:37', 268, 44);
INSERT INTO `activities` VALUES(672, 'first', '2013-02-03 10:10:38', '2013-02-03 10:10:42', 269, 44);
INSERT INTO `activities` VALUES(673, 'exit_while_viewing_menu_item', '2013-02-03 10:10:42', '2013-02-03 10:10:44', 269, 46);
INSERT INTO `activities` VALUES(674, 'first', '2013-02-03 10:10:45', '2013-02-03 10:10:52', 270, 44);
INSERT INTO `activities` VALUES(675, 'viewed_menu_item', '2013-02-03 10:10:52', '2013-02-03 10:10:58', 270, 35);
INSERT INTO `activities` VALUES(676, 'viewed_menu_item', '2013-02-03 10:10:58', '2013-02-03 10:11:05', 270, 37);
INSERT INTO `activities` VALUES(677, 'viewed_menu_item', '2013-02-03 10:11:05', '2013-02-03 10:11:09', 270, 38);
INSERT INTO `activities` VALUES(678, 'viewing_menu_item', '2013-02-03 10:11:09', '1969-12-31 19:00:00', 270, 39);
INSERT INTO `activities` VALUES(679, 'first', '2013-02-03 10:12:05', '2013-02-03 10:12:09', 271, 44);
INSERT INTO `activities` VALUES(680, 'viewed_menu_item', '2013-02-03 10:12:09', '2013-02-03 10:12:13', 271, 45);
INSERT INTO `activities` VALUES(681, 'viewed_menu_item', '2013-02-03 10:12:13', '2013-02-03 10:12:17', 271, 46);
INSERT INTO `activities` VALUES(682, 'viewed_menu_item', '2013-02-03 10:12:17', '2013-02-03 10:13:41', 271, 35);
INSERT INTO `activities` VALUES(683, 'viewing_menu_item', '2013-02-03 10:13:41', '1969-12-31 19:00:00', 271, 36);
INSERT INTO `activities` VALUES(684, 'first', '2013-02-03 10:15:02', '2013-02-03 10:15:05', 272, 44);
INSERT INTO `activities` VALUES(685, 'viewed_menu_item', '2013-02-03 10:15:05', '2013-02-03 10:15:07', 272, 45);
INSERT INTO `activities` VALUES(686, 'viewed_menu_item', '2013-02-03 10:15:07', '2013-02-03 10:15:10', 272, 46);
INSERT INTO `activities` VALUES(687, 'viewed_menu_item', '2013-02-03 10:15:10', '2013-02-03 10:15:11', 272, 47);
INSERT INTO `activities` VALUES(688, 'viewed_menu_item', '2013-02-03 10:15:11', '2013-02-03 10:15:13', 272, 35);
INSERT INTO `activities` VALUES(689, 'viewed_menu_item', '2013-02-03 10:15:13', '2013-02-03 10:15:16', 272, 36);
INSERT INTO `activities` VALUES(690, 'viewed_menu_item', '2013-02-03 10:15:16', '2013-02-03 10:15:21', 272, 41);
INSERT INTO `activities` VALUES(691, 'viewed_menu_item', '2013-02-03 10:15:21', '2013-02-03 10:15:24', 272, 1);
INSERT INTO `activities` VALUES(692, 'viewed_menu_item', '2013-02-03 10:15:24', '2013-02-03 10:15:28', 272, 35);
INSERT INTO `activities` VALUES(693, 'viewed_menu_item', '2013-02-03 10:15:28', '2013-02-03 10:15:31', 272, 62);
INSERT INTO `activities` VALUES(694, 'exit_while_viewing_menu_item', '2013-02-03 10:15:31', '2013-02-03 10:23:18', 272, 68);
INSERT INTO `activities` VALUES(695, 'viewing_menu_item', '2013-02-03 10:23:20', '1969-12-31 19:00:00', 273, 44);
INSERT INTO `activities` VALUES(696, 'viewing_menu_item', '2013-02-03 10:26:43', '1969-12-31 19:00:00', 274, 44);
INSERT INTO `activities` VALUES(697, 'first', '2013-02-03 10:26:46', '2013-02-03 10:26:47', 275, 44);
INSERT INTO `activities` VALUES(698, 'exit_while_viewing_menu_item', '2013-02-03 10:26:47', '2013-02-03 10:26:54', 275, 46);
INSERT INTO `activities` VALUES(699, 'first', '2013-02-03 10:26:55', '2013-02-03 10:26:59', 276, 44);
INSERT INTO `activities` VALUES(700, 'first', '2013-02-03 10:27:00', '2013-02-03 10:27:05', 277, 44);
INSERT INTO `activities` VALUES(701, 'viewed_menu_item', '2013-02-03 10:27:05', '2013-02-03 10:27:07', 277, 46);
INSERT INTO `activities` VALUES(702, 'viewed_menu_item', '2013-02-03 10:27:07', '2013-02-03 10:27:09', 277, 49);
INSERT INTO `activities` VALUES(703, 'exit_while_viewing_menu_item', '2013-02-03 10:27:09', '2013-02-03 10:27:12', 277, 50);
INSERT INTO `activities` VALUES(704, 'first', '2013-02-03 10:27:14', '2013-02-03 10:27:19', 278, 44);
INSERT INTO `activities` VALUES(705, 'viewed_menu_item', '2013-02-03 10:27:19', '2013-02-03 10:27:23', 278, 50);
INSERT INTO `activities` VALUES(706, 'viewed_menu_item', '2013-02-03 10:27:23', '2013-02-03 10:27:24', 278, 1);
INSERT INTO `activities` VALUES(707, 'exit_while_viewing_menu_item', '2013-02-03 10:27:24', '2013-02-03 10:27:27', 278, 2);
INSERT INTO `activities` VALUES(708, 'first', '2013-02-03 10:27:29', '2013-02-03 10:27:36', 279, 44);
INSERT INTO `activities` VALUES(709, 'first', '2013-02-03 10:27:38', '2013-02-03 10:27:46', 280, 44);
INSERT INTO `activities` VALUES(710, 'viewed_menu_item', '2013-02-03 10:27:46', '2013-02-03 10:27:47', 280, 47);
INSERT INTO `activities` VALUES(711, 'viewed_menu_item', '2013-02-03 10:27:47', '2013-02-03 10:27:48', 280, 1);
INSERT INTO `activities` VALUES(712, 'viewing_menu_item', '2013-02-03 10:27:48', '1969-12-31 19:00:00', 280, 3);
INSERT INTO `activities` VALUES(713, 'viewing_menu_item', '2013-02-03 10:32:42', '1969-12-31 19:00:00', 281, 44);
INSERT INTO `activities` VALUES(714, 'viewing_menu_item', '2013-02-03 10:34:36', '1969-12-31 19:00:00', 282, 44);
INSERT INTO `activities` VALUES(715, 'viewing_menu_item', '2013-02-03 10:35:26', '1969-12-31 19:00:00', 283, 44);
INSERT INTO `activities` VALUES(716, 'viewing_menu_item', '2013-02-03 10:35:56', '1969-12-31 19:00:00', 284, 44);
INSERT INTO `activities` VALUES(717, 'first', '2013-02-03 10:36:22', '2013-02-03 10:36:41', 285, 44);
INSERT INTO `activities` VALUES(718, 'first', '2013-02-03 10:36:54', '2013-02-03 10:36:57', 286, 2);
INSERT INTO `activities` VALUES(719, 'viewed_menu_item', '2013-02-03 10:36:57', '2013-02-03 10:36:59', 286, 4);
INSERT INTO `activities` VALUES(720, 'viewed_menu_item', '2013-02-03 10:36:59', '2013-02-03 10:37:01', 286, 5);
INSERT INTO `activities` VALUES(721, 'viewed_menu_item', '2013-02-03 10:37:01', '2013-02-03 10:37:02', 286, 1);
INSERT INTO `activities` VALUES(722, 'viewed_menu_item', '2013-02-03 10:37:02', '2013-02-03 10:37:02', 286, 24);
INSERT INTO `activities` VALUES(723, 'viewed_menu_item', '2013-02-03 10:37:02', '2013-02-03 10:37:03', 286, 24);
INSERT INTO `activities` VALUES(724, 'exit_while_viewing_menu_item', '2013-02-03 10:37:03', '2013-02-03 10:37:07', 286, 25);
INSERT INTO `activities` VALUES(725, 'first', '2013-02-03 10:37:08', '2013-02-03 10:37:22', 287, 2);
INSERT INTO `activities` VALUES(726, 'first', '2013-02-03 10:37:23', '2013-02-03 10:37:29', 288, 2);
INSERT INTO `activities` VALUES(727, 'exit_while_viewing_menu_item', '2013-02-03 10:37:29', '2013-02-03 10:39:17', 288, 4);
INSERT INTO `activities` VALUES(728, 'first', '2013-02-03 10:39:25', '2013-02-03 10:39:26', 289, 44);
INSERT INTO `activities` VALUES(729, 'viewed_menu_item', '2013-02-03 10:39:26', '2013-02-03 10:39:27', 289, 45);
INSERT INTO `activities` VALUES(730, 'viewed_menu_item', '2013-02-03 10:39:27', '2013-02-03 10:39:41', 289, 46);
INSERT INTO `activities` VALUES(731, 'viewing_menu_item', '2013-02-03 10:39:41', '1969-12-31 19:00:00', 289, 47);
INSERT INTO `activities` VALUES(732, 'first', '2013-02-03 10:41:33', '2013-02-03 10:41:36', 290, 44);
INSERT INTO `activities` VALUES(733, 'exit_while_viewing_menu_item', '2013-02-03 10:41:36', '2013-02-03 10:41:38', 290, 46);
INSERT INTO `activities` VALUES(734, 'first', '2013-02-03 10:44:40', '2013-02-03 10:44:41', 292, 44);
INSERT INTO `activities` VALUES(735, 'first', '2013-02-03 11:32:55', '2013-02-03 11:32:58', 294, 44);
INSERT INTO `activities` VALUES(736, 'first', '2013-02-03 11:33:06', '2013-02-03 11:33:09', 295, 2);
INSERT INTO `activities` VALUES(737, 'viewing_menu_item', '2013-02-03 11:45:13', '1969-12-31 19:00:00', 297, 44);
INSERT INTO `activities` VALUES(738, 'first', '2013-02-03 12:00:32', '2013-02-03 12:00:34', 298, 44);
INSERT INTO `activities` VALUES(739, 'viewing_menu_item', '2013-02-03 12:01:06', '1969-12-31 19:00:00', 299, 2);
INSERT INTO `activities` VALUES(740, 'first', '2013-02-03 19:33:50', '2013-02-03 19:53:41', 300, 44);
INSERT INTO `activities` VALUES(741, 'first', '2013-02-03 19:53:43', '2013-02-03 19:53:45', 301, 88);
INSERT INTO `activities` VALUES(742, 'skipped_video', '2013-02-03 19:53:45', '2013-02-03 19:53:47', 301, 95);
INSERT INTO `activities` VALUES(743, 'exit_while_watching_video', '2013-02-03 19:53:47', '2013-02-03 19:53:49', 301, 91);
INSERT INTO `activities` VALUES(744, 'first', '2013-02-03 19:57:50', '2013-02-03 19:57:51', 302, 92);
INSERT INTO `activities` VALUES(745, 'skipped_video', '2013-02-03 19:57:51', '2013-02-03 19:57:52', 302, 90);
INSERT INTO `activities` VALUES(746, 'skipped_video', '2013-02-03 19:57:52', '2013-02-03 19:57:52', 302, 94);
INSERT INTO `activities` VALUES(747, 'skipped_video', '2013-02-03 19:57:52', '2013-02-03 19:57:53', 302, 88);
INSERT INTO `activities` VALUES(748, 'skipped_video', '2013-02-03 19:57:53', '2013-02-03 19:57:53', 302, 91);
INSERT INTO `activities` VALUES(749, 'skipped_video', '2013-02-03 19:57:53', '2013-02-03 19:57:54', 302, 95);
INSERT INTO `activities` VALUES(750, 'skipped_video', '2013-02-03 19:57:54', '2013-02-03 19:57:54', 302, 89);
INSERT INTO `activities` VALUES(751, 'skipped_video', '2013-02-03 19:57:54', '2013-02-03 19:57:55', 302, 92);
INSERT INTO `activities` VALUES(752, 'skipped_video', '2013-02-03 19:57:55', '2013-02-03 19:57:55', 302, 93);
INSERT INTO `activities` VALUES(753, 'skipped_video', '2013-02-03 19:57:55', '2013-02-03 19:57:56', 302, 87);
INSERT INTO `activities` VALUES(754, 'skipped_video', '2013-02-03 19:57:56', '2013-02-03 19:57:56', 302, 91);
INSERT INTO `activities` VALUES(755, 'skipped_video', '2013-02-03 19:57:56', '2013-02-03 19:57:57', 302, 88);
INSERT INTO `activities` VALUES(756, 'skipped_video', '2013-02-03 19:57:57', '2013-02-03 19:57:57', 302, 95);
INSERT INTO `activities` VALUES(757, 'skipped_video', '2013-02-03 19:57:57', '2013-02-03 19:57:58', 302, 89);
INSERT INTO `activities` VALUES(758, 'skipped_video', '2013-02-03 19:57:58', '2013-02-03 19:57:58', 302, 92);
INSERT INTO `activities` VALUES(759, 'skipped_video', '2013-02-03 19:57:58', '2013-02-03 19:57:59', 302, 87);
INSERT INTO `activities` VALUES(760, 'skipped_video', '2013-02-03 19:57:59', '2013-02-03 19:57:59', 302, 90);
INSERT INTO `activities` VALUES(761, 'skipped_video', '2013-02-03 19:57:59', '2013-02-03 19:57:59', 302, 88);
INSERT INTO `activities` VALUES(762, 'skipped_video', '2013-02-03 19:57:59', '2013-02-03 19:58:00', 302, 94);
INSERT INTO `activities` VALUES(763, 'skipped_video', '2013-02-03 19:58:00', '2013-02-03 19:58:00', 302, 89);
INSERT INTO `activities` VALUES(764, 'exit_while_watching_video', '2013-02-03 19:58:00', '2013-02-03 19:58:01', 302, 93);
INSERT INTO `activities` VALUES(765, 'viewing_menu_item', '2013-02-03 22:48:14', '1969-12-31 19:00:00', 303, 2);
INSERT INTO `activities` VALUES(766, 'first', '2013-02-03 22:48:58', '2013-02-03 22:48:59', 305, 2);
INSERT INTO `activities` VALUES(767, 'first', '2013-02-03 22:57:04', '2013-02-03 22:57:05', 307, 2);
INSERT INTO `activities` VALUES(768, 'exit_while_viewing_menu_item', '2013-02-03 22:57:05', '2013-02-03 22:57:07', 307, 3);
INSERT INTO `activities` VALUES(769, 'first', '2013-02-03 22:57:34', '2013-02-03 22:57:37', 308, 2);
INSERT INTO `activities` VALUES(770, 'viewed_menu_item', '2013-02-03 22:57:37', '2013-02-03 22:57:38', 308, 8);
INSERT INTO `activities` VALUES(771, 'viewed_menu_item', '2013-02-03 22:57:38', '2013-02-03 22:57:39', 308, 1);
INSERT INTO `activities` VALUES(772, 'exit_while_viewing_menu_item', '2013-02-03 22:57:39', '2013-02-03 22:57:42', 308, 25);
INSERT INTO `activities` VALUES(773, 'first', '2013-02-03 22:58:51', '2013-02-03 22:58:52', 309, 44);
INSERT INTO `activities` VALUES(774, 'first', '2013-02-03 23:16:01', '2013-02-03 23:16:04', 310, 2);
INSERT INTO `activities` VALUES(775, 'first', '2013-02-03 23:24:58', '2013-02-03 23:25:00', 311, 2);
INSERT INTO `activities` VALUES(776, 'first', '2013-02-03 23:26:06', '2013-02-03 23:26:38', 312, 2);
INSERT INTO `activities` VALUES(777, 'first', '2013-02-03 23:34:03', '2013-02-03 23:34:05', 314, 44);
INSERT INTO `activities` VALUES(778, 'viewed_menu_item', '2013-02-03 23:34:05', '2013-02-03 23:34:06', 314, 45);
INSERT INTO `activities` VALUES(779, 'viewed_menu_item', '2013-02-03 23:34:06', '2013-02-03 23:34:07', 314, 46);
INSERT INTO `activities` VALUES(780, 'viewed_menu_item', '2013-02-03 23:34:07', '2013-02-03 23:34:07', 314, 62);
INSERT INTO `activities` VALUES(781, 'viewed_menu_item', '2013-02-03 23:34:07', '2013-02-03 23:34:08', 314, 35);
INSERT INTO `activities` VALUES(782, 'exit_while_viewing_menu_item', '2013-02-03 23:34:08', '2013-02-03 23:34:09', 314, 1);
INSERT INTO `activities` VALUES(783, 'first', '2013-02-03 23:34:18', '2013-02-03 23:34:19', 315, 44);
INSERT INTO `activities` VALUES(784, 'first', '2013-02-03 23:34:24', '2013-02-03 23:34:25', 317, 44);
INSERT INTO `activities` VALUES(785, 'first', '2013-02-03 23:34:33', '2013-02-03 23:34:34', 318, 44);
INSERT INTO `activities` VALUES(786, 'first', '2013-02-03 23:35:20', '2013-02-03 23:35:22', 319, 44);
INSERT INTO `activities` VALUES(787, 'first', '2013-02-03 23:35:36', '2013-02-03 23:35:37', 320, 44);
INSERT INTO `activities` VALUES(788, 'first', '2013-02-03 23:35:50', '2013-02-03 23:35:52', 321, 44);
INSERT INTO `activities` VALUES(789, 'first', '2013-02-03 23:36:18', '2013-02-03 23:36:32', 324, 44);
INSERT INTO `activities` VALUES(790, 'first', '2013-02-03 23:37:24', '2013-02-03 23:37:25', 325, 44);
INSERT INTO `activities` VALUES(791, 'viewed_menu_item', '2013-02-03 23:37:25', '2013-02-03 23:37:26', 325, 45);
INSERT INTO `activities` VALUES(792, 'viewed_menu_item', '2013-02-03 23:37:26', '2013-02-03 23:37:26', 325, 46);
INSERT INTO `activities` VALUES(793, 'viewed_menu_item', '2013-02-03 23:37:26', '2013-02-03 23:37:27', 325, 35);
INSERT INTO `activities` VALUES(794, 'viewed_menu_item', '2013-02-03 23:37:27', '2013-02-03 23:37:30', 325, 1);
INSERT INTO `activities` VALUES(795, 'exit_while_viewing_menu_item', '2013-02-03 23:37:30', '2013-02-03 23:37:32', 325, 44);
INSERT INTO `activities` VALUES(796, 'first', '2013-02-04 00:52:20', '2013-02-04 00:52:24', 327, 44);
INSERT INTO `activities` VALUES(797, 'viewed_menu_item', '2013-02-04 00:52:24', '2013-02-04 00:52:25', 327, 45);
INSERT INTO `activities` VALUES(798, 'viewed_menu_item', '2013-02-04 00:52:25', '2013-02-04 00:52:25', 327, 45);
INSERT INTO `activities` VALUES(799, 'viewed_menu_item', '2013-02-04 00:52:25', '2013-02-04 00:52:33', 327, 46);
INSERT INTO `activities` VALUES(800, 'viewed_menu_item', '2013-02-04 00:52:33', '2013-02-04 00:52:37', 327, 50);
INSERT INTO `activities` VALUES(801, 'viewing_menu_item', '2013-02-04 00:52:37', '1969-12-31 19:00:00', 327, 54);
INSERT INTO `activities` VALUES(802, 'first', '2013-02-04 00:56:05', '2013-02-04 00:56:07', 328, 97);
INSERT INTO `activities` VALUES(803, 'first', '2013-02-04 00:56:08', '2013-02-04 00:56:10', 329, 44);
INSERT INTO `activities` VALUES(804, 'viewed_menu_item', '2013-02-04 00:56:10', '2013-02-04 00:56:12', 329, 46);
INSERT INTO `activities` VALUES(805, 'viewed_menu_item', '2013-02-04 00:56:12', '2013-02-04 00:56:16', 329, 49);
INSERT INTO `activities` VALUES(806, 'viewed_menu_item', '2013-02-04 00:56:16', '2013-02-04 00:56:17', 329, 48);
INSERT INTO `activities` VALUES(807, 'viewed_menu_item', '2013-02-04 00:56:17', '2013-02-04 00:56:18', 329, 47);
INSERT INTO `activities` VALUES(808, 'viewing_menu_item', '2013-02-04 00:56:18', '1969-12-31 19:00:00', 329, 54);
INSERT INTO `activities` VALUES(809, 'first', '2013-02-04 00:59:55', '2013-02-04 00:59:56', 330, 88);
INSERT INTO `activities` VALUES(810, 'first', '2013-02-04 01:00:44', '2013-02-04 01:00:47', 331, 44);
INSERT INTO `activities` VALUES(811, 'viewed_menu_item', '2013-02-04 01:00:47', '2013-02-04 01:00:49', 331, 50);
INSERT INTO `activities` VALUES(812, 'viewed_menu_item', '2013-02-04 01:00:49', '2013-02-04 01:00:50', 331, 53);
INSERT INTO `activities` VALUES(813, 'viewed_menu_item', '2013-02-04 01:00:50', '2013-02-04 01:00:57', 331, 51);
INSERT INTO `activities` VALUES(814, 'viewed_menu_item', '2013-02-04 01:00:57', '2013-02-04 01:00:58', 331, 55);
INSERT INTO `activities` VALUES(815, 'viewed_menu_item', '2013-02-04 01:00:58', '2013-02-04 01:01:01', 331, 58);
INSERT INTO `activities` VALUES(816, 'viewing_menu_item', '2013-02-04 01:01:01', '1969-12-31 19:00:00', 331, 61);
INSERT INTO `activities` VALUES(817, 'viewing_menu_item', '2013-02-04 01:05:41', '1969-12-31 19:00:00', 332, 44);
INSERT INTO `activities` VALUES(818, 'first', '2013-02-04 01:06:26', '2013-02-04 01:06:44', 333, 44);
INSERT INTO `activities` VALUES(819, 'viewed_menu_item', '2013-02-04 01:06:44', '2013-02-04 01:06:45', 333, 35);
INSERT INTO `activities` VALUES(820, 'viewing_menu_item', '2013-02-04 01:06:45', '1969-12-31 19:00:00', 333, 36);
INSERT INTO `activities` VALUES(821, 'first', '2013-02-04 01:11:02', '2013-02-04 01:11:04', 334, 44);
INSERT INTO `activities` VALUES(822, 'viewed_menu_item', '2013-02-04 01:11:04', '2013-02-04 01:11:05', 334, 46);
INSERT INTO `activities` VALUES(823, 'viewed_menu_item', '2013-02-04 01:11:05', '2013-02-04 01:11:05', 334, 49);
INSERT INTO `activities` VALUES(824, 'viewed_menu_item', '2013-02-04 01:11:05', '2013-02-04 01:11:07', 334, 48);
INSERT INTO `activities` VALUES(825, 'viewed_menu_item', '2013-02-04 01:11:07', '2013-02-04 01:11:08', 334, 50);
INSERT INTO `activities` VALUES(826, 'viewed_menu_item', '2013-02-04 01:11:08', '2013-02-04 01:11:10', 334, 52);
INSERT INTO `activities` VALUES(827, 'viewed_menu_item', '2013-02-04 01:11:10', '2013-02-04 01:11:12', 334, 55);
INSERT INTO `activities` VALUES(828, 'viewing_menu_item', '2013-02-04 01:11:12', '1969-12-31 19:00:00', 334, 54);
INSERT INTO `activities` VALUES(829, 'first', '2013-02-04 01:11:29', '2013-02-04 01:11:32', 335, 44);
INSERT INTO `activities` VALUES(830, 'viewing_menu_item', '2013-02-04 01:11:32', '1969-12-31 19:00:00', 335, 35);
INSERT INTO `activities` VALUES(831, 'first', '2013-02-04 01:12:53', '2013-02-04 01:12:59', 336, 44);
INSERT INTO `activities` VALUES(832, 'viewing_menu_item', '2013-02-04 01:12:59', '1969-12-31 19:00:00', 336, 35);
INSERT INTO `activities` VALUES(833, 'viewing_menu_item', '2013-02-04 01:13:58', '1969-12-31 19:00:00', 337, 44);
INSERT INTO `activities` VALUES(834, 'viewing_menu_item', '2013-02-04 01:15:31', '1969-12-31 19:00:00', 338, 44);
INSERT INTO `activities` VALUES(835, 'first', '2013-02-04 01:16:54', '2013-02-04 01:17:09', 339, 44);
INSERT INTO `activities` VALUES(836, 'viewing_menu_item', '2013-02-04 01:17:09', '1969-12-31 19:00:00', 339, 35);
INSERT INTO `activities` VALUES(837, 'first', '2013-02-04 01:18:59', '2013-02-04 01:19:14', 340, 44);
INSERT INTO `activities` VALUES(838, 'viewing_menu_item', '2013-02-04 01:19:14', '1969-12-31 19:00:00', 340, 35);
INSERT INTO `activities` VALUES(839, 'first', '2013-02-04 01:20:14', '2013-02-04 01:20:16', 341, 44);
INSERT INTO `activities` VALUES(840, 'viewing_menu_item', '2013-02-04 01:20:16', '1969-12-31 19:00:00', 341, 35);
INSERT INTO `activities` VALUES(841, 'first', '2013-02-04 01:20:25', '2013-02-04 01:20:28', 342, 44);
INSERT INTO `activities` VALUES(842, 'viewing_menu_item', '2013-02-04 01:20:28', '1969-12-31 19:00:00', 342, 35);
INSERT INTO `activities` VALUES(843, 'first', '2013-02-04 01:20:52', '2013-02-04 01:20:54', 343, 44);
INSERT INTO `activities` VALUES(844, 'viewing_menu_item', '2013-02-04 01:20:54', '1969-12-31 19:00:00', 343, 35);
INSERT INTO `activities` VALUES(845, 'first', '2013-02-04 01:21:18', '2013-02-04 01:21:20', 344, 44);
INSERT INTO `activities` VALUES(846, 'exit_while_viewing_menu_item', '2013-02-04 01:21:20', '2013-02-04 01:21:26', 344, 35);
INSERT INTO `activities` VALUES(847, 'first', '2013-02-04 01:21:27', '2013-02-04 01:21:29', 345, 44);
INSERT INTO `activities` VALUES(848, 'viewing_menu_item', '2013-02-04 01:21:29', '1969-12-31 19:00:00', 345, 35);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` VALUES(1, '2013-01-25 10:57:01', 2, 16);
INSERT INTO `carts` VALUES(2, '2013-01-25 19:44:31', 2, 17);

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

INSERT INTO `cart_items` VALUES(1, 1, 2);
INSERT INTO `cart_items` VALUES(2, 1, 2);
INSERT INTO `cart_items` VALUES(3, 2, 2);
INSERT INTO `cart_items` VALUES(4, 2, 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` VALUES(1, 'Path started', '2013-02-03 10:41:57', '2013-02-03 10:44:44', NULL, NULL, 30, 1);
INSERT INTO `events` VALUES(2, 'Path started', '2013-02-03 10:45:24', '2013-02-03 10:45:28', NULL, NULL, 31, 1);
INSERT INTO `events` VALUES(3, 'Path started', '2013-02-03 10:58:39', '2013-02-03 11:33:00', NULL, NULL, 32, 1);
INSERT INTO `events` VALUES(4, 'Path started', '2013-02-03 11:33:04', '2013-02-03 20:00:01', NULL, NULL, 33, 1);
INSERT INTO `events` VALUES(5, 'Path started', '2013-02-03 22:42:10', '2013-02-03 23:06:06', NULL, NULL, 34, 1);
INSERT INTO `events` VALUES(6, 'Path started', '2013-02-03 23:15:54', '2013-02-03 23:16:06', NULL, NULL, 35, 1);
INSERT INTO `events` VALUES(7, 'Path started', '2013-02-03 23:16:14', '2013-02-03 23:17:18', NULL, NULL, 36, 1);
INSERT INTO `events` VALUES(8, 'Path started', '2013-02-03 23:17:22', '2013-02-03 23:17:45', NULL, NULL, 37, 1);
INSERT INTO `events` VALUES(9, 'Path started', '2013-02-03 23:17:51', '2013-02-03 23:18:23', NULL, NULL, 38, 1);
INSERT INTO `events` VALUES(10, 'Path started', '2013-02-03 23:24:41', '2013-02-03 23:25:06', NULL, NULL, 39, 1);
INSERT INTO `events` VALUES(11, 'Path started', '2013-02-03 23:25:13', '2013-02-03 23:25:47', NULL, NULL, 40, 1);
INSERT INTO `events` VALUES(12, 'Path started', '2013-02-03 23:25:59', '2013-02-03 23:26:40', NULL, NULL, 41, 1);
INSERT INTO `events` VALUES(13, 'Path started', '2013-02-03 23:29:52', '2013-02-03 23:30:46', NULL, NULL, 42, 1);
INSERT INTO `events` VALUES(14, 'Path started', '2013-02-03 23:31:00', '2013-02-03 23:31:25', NULL, NULL, 43, 1);
INSERT INTO `events` VALUES(15, 'Path started', '2013-02-03 23:32:37', '2013-02-03 23:33:04', NULL, NULL, 44, 1);
INSERT INTO `events` VALUES(16, 'Path started', '2013-02-03 23:33:43', '2013-02-03 23:33:46', NULL, NULL, 45, 1);
INSERT INTO `events` VALUES(17, 'Path started', '2013-02-03 23:33:59', '2013-02-03 23:36:34', NULL, NULL, 46, 1);
INSERT INTO `events` VALUES(18, 'Path started', '2013-02-03 23:37:22', '2013-02-03 23:37:34', NULL, NULL, 47, 1);
INSERT INTO `events` VALUES(19, 'Path started', '2013-02-04 00:32:57', '2013-02-04 00:33:03', NULL, NULL, 48, 1);
INSERT INTO `events` VALUES(20, 'Path started', '2013-02-04 00:46:34', '2013-02-04 00:46:35', NULL, NULL, 49, 1);
INSERT INTO `events` VALUES(21, 'Path started', '2013-02-04 00:51:55', '2013-02-04 01:24:27', NULL, NULL, 50, 1);
INSERT INTO `events` VALUES(22, 'Path started', '2013-02-04 01:25:43', '2013-02-04 01:27:12', NULL, NULL, 51, 1);
INSERT INTO `events` VALUES(23, 'Path started', '2013-02-04 01:27:25', '2013-02-04 01:27:27', NULL, NULL, 52, 1);
INSERT INTO `events` VALUES(24, 'Path started', '2013-02-04 01:27:29', '2013-02-04 01:27:41', NULL, NULL, 53, 1);
INSERT INTO `events` VALUES(25, 'Path started', '2013-02-04 01:27:48', '2013-02-04 01:27:49', NULL, NULL, 54, 1);
INSERT INTO `events` VALUES(26, 'Path started', '2013-02-04 01:28:35', '2013-02-04 01:28:37', NULL, NULL, 55, 1);
INSERT INTO `events` VALUES(27, 'Path started', '2013-02-04 01:28:40', '2013-02-04 01:28:51', NULL, NULL, 56, 1);
INSERT INTO `events` VALUES(28, 'Path started', '2013-02-04 01:29:05', '2013-02-04 01:29:06', NULL, NULL, 57, 1);
INSERT INTO `events` VALUES(29, 'Path started', '2013-02-04 01:38:14', '2013-02-04 01:41:47', NULL, NULL, 58, 1);
INSERT INTO `events` VALUES(30, 'Path started', '2013-02-04 01:42:20', '2013-02-04 01:42:22', NULL, NULL, 59, 1);
INSERT INTO `events` VALUES(31, 'Path started', '2013-02-04 01:48:20', '2013-02-04 01:48:22', NULL, NULL, 60, 1);

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
  `price` varchar(255) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `big_pic` varchar(255) CHARACTER SET latin1 NOT NULL,
  `path` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=euckr AUTO_INCREMENT=98 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` VALUES(1, 'White Peach Sangria', '$20.99 (5oz.)', 'White Zinfandel with Peach Schnapps, pineapple & cranberry juice finished with a splash of sweet soda and floating fresh citrus.', '60.jpg', '', '', 10);
INSERT INTO `items` VALUES(2, 'Pink Lemonade', '$20.99 (5oz)', 'Absolute Raspberry Vodka & Raspberry Sour Puss with Lemonade and fresh rasberries.', '61.jpg', '', '', 10);
INSERT INTO `items` VALUES(3, 'Long Island Iced Tea', '$20.99 (5oz)', 'An exotic mix of White Rum, Vodka, Gin, Tequila and Triple Sec with lime juice & cola.', '62.jpg', '', '', 10);
INSERT INTO `items` VALUES(4, 'Classic Daiquiris', '$6.99 (1.5oz)', 'Your choice of Strawberry or Mango served frozen with Lamb''s White Rum.', '77.jpg', '', '', 10);
INSERT INTO `items` VALUES(5, 'True Blue Margarita', '$6.99 (1.5oz)', 'Tequila, Blue Curacao and Triple Sec blended with Lime juice and crushed ice.', '78.jpg', '', '', 10);
INSERT INTO `items` VALUES(6, 'Fresh Fruit Piña Colada', '$6.99 (1.5oz)', 'Parrot Bay Coconut rum blended with ice, pineapple, juice, fresh cream & mango chunks.', '79.jpg', '', '', 10);
INSERT INTO `items` VALUES(7, 'McGinnis Mai Tai', '$6.99 (1.5oz)', 'White Rum, Dark Rum and Triple Sec shaken over ice with fresh mint, lemon juice, grenadine and a hint of almond extract.', '80.jpg', '', '', 10);
INSERT INTO `items` VALUES(8, 'The Headless Barman', '$6.99 (1.5oz)', 'Raspberry Sour Puss & Polar Ice Vodka mixed with Red Bull, lemonade & a splash of pineapple juice.', '81.jpg', '', '', 10);
INSERT INTO `items` VALUES(9, 'Mojitos', '$5.99 (1oz)', 'Your choice of White Rum, Absolute Raspberry or Mango Vodka with fresh muddled mint, sugar syrup and lime juice.', '53.jpg', '', '', 10);
INSERT INTO `items` VALUES(10, 'McGinnis Ceasar', '$5.99 (1oz)', 'Your choice of Vodka, Gin, or Clamato Juice seasoned with Tabasco, Worcestershire and served with our signature spicy bean.', '54.jpg', '', '', 10);
INSERT INTO `items` VALUES(11, 'Lemoncello Fizz', '$5.99 (1oz)', 'Polar Ice Vodka & Lemoncello with fresh springs of mint, lemon juice, sugar syrup and fizzy tonic water a - G&T drinkers delight!', '55.jpg', '', '', 10);
INSERT INTO `items` VALUES(12, 'Spiked Arnold Palmer', '$5.99 (1oz)', 'Our take on the classic - an even mix of Ice Tea & Lemonade with Polar Ice Vodka.', '56.jpg', '', '', 10);
INSERT INTO `items` VALUES(13, 'Serenissima Pinot Grigio (Italy)', '', '7.5 (6oz) | 10.5 (9oz) | 29 (bottle)', '70.jpg', '', '', 10);
INSERT INTO `items` VALUES(14, 'Lailey Chardonnay (Niagara - Ontario)', '', '8 (6oz)| 11 (9oz) | 32 (bottle)', '71.jpg', '', '', 10);
INSERT INTO `items` VALUES(15, 'Erraruiz Sauvignon Blanc (Chile)', '', '8 (6oz)| 11 (9oz) | 32 (bottle)', '72.jpg', '', '', 10);
INSERT INTO `items` VALUES(16, 'Terra Nuove Syrah (Italy)', '', '7.5 (6oz) | 10.5 (9oz) | 29 (bottle)', '73.jpg', '', '', 10);
INSERT INTO `items` VALUES(17, 'Errazurir Merot (Chile)', '', '8 (6oz)| 11 (9oz) | 32 (bottle)', '74.jpg', '', '', 10);
INSERT INTO `items` VALUES(18, 'Wonambi Shiraz (Australia)', '', '8 (6oz)| 11 (9oz) | 32 (bottle)', '75.jpg', '', '', 10);
INSERT INTO `items` VALUES(19, 'Michael Sullberg Cabernet Sauvignon (California)', '', '9.5 (6oz)| 13.5 (9oz) | 37 (bottle)', '76.jpg', '', '', 10);
INSERT INTO `items` VALUES(20, 'Black & Gold Coffee', '$5.99 (1oz)', 'A perfect blend of Amaretto, Baileys Irish Cream, Frangelico Cinnamon Schnapps with Hot Coffee tapped with whipped cream & almond silvers. *Even better at 1.5oz for $6.99', '57.jpg', '', '', 10);
INSERT INTO `items` VALUES(21, 'Caffe Grande', '$5.99 (1oz)', 'Kaluah, Triple Sec and Crème de Cacao with Hot Coffee topped with whipped cream & almond silvers.', '58.jpg', '', '', 10);
INSERT INTO `items` VALUES(22, 'Mounds Bar', '$5.99 (1oz)', 'Parrot Bay Coconut Rum with Hot Chocolate topped with whipped cream & almond slivers.', '59.jpg', '', '', 10);
INSERT INTO `items` VALUES(23, 'Domestic bottle', '$4.49', '', '63.jpg', '', '', 13);
INSERT INTO `items` VALUES(24, 'Import bottle', '$5.40', '', '64.jpg', '', '', 13);
INSERT INTO `items` VALUES(25, 'Domestic Pint', '$5.55', '', '65.jpg', '', '', 13);
INSERT INTO `items` VALUES(26, 'Domestic Pitcher', '$14.95', '', '66.jpg', '', '', 13);
INSERT INTO `items` VALUES(27, 'Draft Premium Pint', '$5.76', '', '67.jpg', '', '', 13);
INSERT INTO `items` VALUES(28, 'Draft Premium Pitcher', '$15.04', '', '68.jpg', '', '', 13);
INSERT INTO `items` VALUES(29, 'Guiness Pint', '$7.05', '', '69.jpg', '', '', 13);
INSERT INTO `items` VALUES(30, 'Crown Float', '$6.99 (1oz + beer)', 'Guiness Stout & Strongbow Cider.', '82.jpg', '', '', 13);
INSERT INTO `items` VALUES(31, 'Long Island Lemonade', '$6.99 (1oz + beer)', 'Rickards White with Long Island Liquor, Absolute Mandarin Vodka and Lemonade.', '83.jpg', '', '', 13);
INSERT INTO `items` VALUES(32, 'The Fearless Jedi', '$6.99 (1oz + beer)', 'Molson Lager with Polar Ice Vodka , Red Bull & lemonade.', '84.jpg', '', '', 13);
INSERT INTO `items` VALUES(33, 'Beer Mojito', '$4.09', '8oz. Light Lager with fresh mint, sugar syrup and lime juice.', '85.jpg', '', '', 13);
INSERT INTO `items` VALUES(34, 'Shandy Gaff', '$4.09', '8oz. Molson Lager with Gingerale.', '86.jpg', '', '', 13);
INSERT INTO `items` VALUES(35, 'The Double Fisted Bacon Cheeseburger', '$12.99', 'Indulge in this delicious prime rib burger with our spice rub, bacon, melted cheddar cheese, sundried tomato mayo, lettuce, tomato, red onion and pickle. Served with fries on a fresh organic Grainharvest Breadhouse Farmer bun. Add any of the following for', '34.jpg', '', '', 9);
INSERT INTO `items` VALUES(36, 'The New Yorker', '$13.99', 'Our 1/2 pound of fresh prime rib burger served on a toasted bun topped with beer battered onion rings, roasted garlic aioli, red pepper relish, aged white cheddar as well as fresh lettuce and fresh cut fries. Add any of the following for 1.49 each, aged c', '35.jpg', '', '', 9);
INSERT INTO `items` VALUES(37, 'Gourmet Veggie Burger', '$10.99', 'Our veggie burger is topped with chunky avocado salsa, lettuce, tomato, fresh onion ring and melted cheddar on our breadhouse farmer bun. Add any of the following for 1.49 each, aged cheddar cheese, applewood smoked bacon, sautéed mushrooms.', '36.jpg', '', '', 9);
INSERT INTO `items` VALUES(38, 'The Gourmet Prime Rib Burger', '$13.99', 'Our delicious ground prime rib beef grilled and topped with Swiss cheese, applewood smoked bacon, BBQ sauce, onion straws, pea sprouts, lettuce, beefsteak tomato on a fresh organic Grainharvest Breadhouse Farmer bun. Served with sweet potato fries. Add an', '37.jpg', '', '', 9);
INSERT INTO `items` VALUES(39, 'The Prime Rib Burger', '$10.99', 'Fresh ground prime rib grilled to perfection making this the juiciest, burger you have ever tasted. Served on a fresh organic Grainharvest Breadhouse Farmer bun with fresh crisp lettuce, tomato, pickle and Bermuda onion. Served with fresh cut fries.);\r\nIN', '38.jpg', '', '', 9);
INSERT INTO `items` VALUES(40, 'Crunchy Thai Stir Fry', '$17.49', 'Our #1 best seller. Strips of fresh chicken breast dusted on our Thai breading atop eleven different vegetables in a spicy Thai sauce and steamed chow mein noodles. We offer brown rice noodle as an alternative for gluten free diets.', '39.jpg', '', '', 9);
INSERT INTO `items` VALUES(41, 'Cajun Chicken Alfredo', '$13.99', 'Spicy grilled chicken tossed in a our Cajun cream sauce and bowtie pasta. Served with garlic toast. We offer brown rice noodle as an alternative for gluten free diets.', '40.jpg', '', '', 9);
INSERT INTO `items` VALUES(42, 'Vegetable Stir Fry', '$13.29', 'Eleven fresh vegetables including mixed peppers, bok choy, carrots, zucchini, mushrooms and Bermuda onion to name a few. Stir fried together in your choice of sweet chili sauce, teriyaki or spicy Thai sauce and served over a bed of chow mein noodles. We o', '41.jpg', '', '', 9);
INSERT INTO `items` VALUES(43, 'Baked Penne + Meatballs', '$15.29', 'Penne noodles, homemade meatballs that we cut up, with our fresh housemade tomato sauce and fresh mozzarella then baked in our pizza oven. Served with garlic toast. We offer brown rice noodle as an alternative for gluten free diets.', '42.jpg', '', '', 9);
INSERT INTO `items` VALUES(44, 'Soup of the Day', '$4.59', 'Each day Erin, our chef offers a fresh soup made here just for you.', '19.jpg', '', '', 4);
INSERT INTO `items` VALUES(45, 'French Onion Soup', '$5.99', 'Hearty broth with lots of sautéed onions, sherry and a focaccia toast topped with lotsa mozza cheese.', '20.jpg', '', '', 4);
INSERT INTO `items` VALUES(46, 'Sczechuan Chicken Salad', '$10.99', 'Fresh lettuce, Asian slaw consisting of carrots, onions, pea sprouts as well as cilantro, Mandarin oranges and lightly battered chicken tossed in a sweet chili sauce, sesame seeds and peanuts.', '21.jpg', '', '', 4);
INSERT INTO `items` VALUES(47, 'Simple Green Salad', '$6.99', 'Fresh mixed greens, cherry tomatoes, cucumbers and radishes. Tossed with a honey balsamic dressing.', '22.jpg', '', '', 4);
INSERT INTO `items` VALUES(48, 'Cobb Salad', '$12.99', 'Char-grilled chicken breast, smoked ham, boiled egg, black olives, cucumber, tomato, red onion, jack and cheddar cheese on fresh greens.', '23.jpg', '', '', 4);
INSERT INTO `items` VALUES(49, 'Roasted Garlic Caesar Salad', 'Small $6.99 | Large $8.99', 'Fresh roasted garlic, crisp romaine, shaved parmesan, fresh bacon all tossed in our signature Caesar dressing.', '24.jpg', '', '', 4);
INSERT INTO `items` VALUES(50, 'Steak and Goat Cheese Salad', '$13.99', 'Marinated sirloin steak, goat cheese and tomatoes on fresh greens. Served with sundried tomato dressing, topped with Bermuda onion.', '25.jpg', '', '', 4);
INSERT INTO `items` VALUES(51, 'Fresh Veggie Spring Roll', '$6.99', 'Fresh Asian slaw as well as cilantro in a rice noodle wrap. We serve the 2 spring rolls with a Thai peanut sauce', '1.jpg', '', '', 4);
INSERT INTO `items` VALUES(52, 'Pickle Spears', '$7.99', 'Lightly breaded and cooked until golden. Served with a ranch dip', '2.jpg', '', '', 4);
INSERT INTO `items` VALUES(53, 'One for the Team', '$24.99', 'Chicken wings, antijitos and fresh cut fries', '3.jpg', '', '', 4);
INSERT INTO `items` VALUES(54, 'Bacon Cheeseburger Spring Rolls', '$7.99', 'A classic case of East meeting West but you have to try it to believe it. Bacon, cheese, lean ground beef wrapped in a spring roll. Served with two dips: a jalapeño honey mustard and a sweet chili ketchup. Load them up with sour cream, bacon bits and gree', '4.jpg', '', '', 4);
INSERT INTO `items` VALUES(55, 'Spicy Popcorn Chicken', '$8.99', 'Breaded bite size chicken served with your choice of the following sauces: Mild, medium, hot, suicide, honey garlic, Cajun, sweet heat or fiery Thai.', '5.jpg', '', '', 4);
INSERT INTO `items` VALUES(56, 'Gourmet Potato Skins', '$8.99', 'Freshly baked potato skins scooped and filled with cheddar cheese, diced tomatoes, green onion and bacon. Served with sour cream for dipping.', '6.jpg', '', '', 4);
INSERT INTO `items` VALUES(57, 'Crispy Yam Fries', '$7.99', 'Tasty yam fries served with our own special garlic aioli dip.', '7.jpg', '', '', 4);
INSERT INTO `items` VALUES(58, 'Cheesy Cheddar Garlic Bread', '$7.99', 'Garlic butter, mozzarella, jack and cheddar cheese all served on toasted ciabatta bread.', '8.jpg', '', '', 4);
INSERT INTO `items` VALUES(59, 'Front Row Wings', '1lb $12.99 | 2lb $21.99', 'They made us famous. Your choice of suicide, hot, medium, mild, honey garlic, Cajun, sweet heat and our all new fiery Thai sauce, sweet chilli sauce and Rickard’s dark maple chipotle sauce.', '9.jpg', '', '', 4);
INSERT INTO `items` VALUES(60, 'Antijitos', '$8.99', 'Sundried tomato tortilla filled with our special spicy blend of cream cheese and diced jalapeño, baked in the oven till soft, hot and golden. Served with a spicy sweet chili dip.', '10.jpg', '', '', 4);
INSERT INTO `items` VALUES(61, 'Ultimate Front Row Nachos', '$13.99', 'Crispy tortilla chips with lots of melted jack and cheddar cheese, chopped tomatoes, onions, peppers topped with vegetarian bean chili make this Waterloo’s pick for the city’s best nachos. Add chicken or beef for 3.99', '11.jpg', '', '', 4);
INSERT INTO `items` VALUES(62, 'Spicy Sausage Poutine', '$7.99', 'Our fresh fries topped with cheese curds, delicious rich homemade gravy, chorizo sausage and Cajun ranch.', '12.jpg', '', '', 8);
INSERT INTO `items` VALUES(63, 'The Piggy Back Poutine', '$7.99', 'Fresh cut fries topped with cheese curds, BBQ pulled pork and a BBQ gravy.', '13.jpg', '', '', 8);
INSERT INTO `items` VALUES(64, 'CBT Poutine', '$8.79', 'Fresh cut fries loaded with chicken, bacon, tomato, cheese curds and our rich gravy.', '14.jpg', '', '', 8);
INSERT INTO `items` VALUES(65, 'The Routine Poutine', '$7.49', 'Fresh cut fries, cheese curds and our rich homemade gravy.', '15.jpg', '', '', 8);
INSERT INTO `items` VALUES(66, 'Goat Cheese Poutine', '$7.99', 'Fresh fries topped with creamy goat cheese and then our delicious gravy, as well as cracked pepper and garnished with a touch of basil oil.', '16.jpg', '', '', 8);
INSERT INTO `items` VALUES(67, 'Roasted Cheese Quesadilla', '$10.49', 'Chipotle flavoured tortillas filled with Tex-Mex jalapeño cheese, corn, diced green onion and tomato. Served with sour cream, fresh salsa and side salad.', '17.jpg', '', '', 8);
INSERT INTO `items` VALUES(68, 'Roasted Chicken + Cheese Quesadilla', '$13.49', 'Slices of spicy marinated chicken, tomatoes, green onions, corn, jack and cheddar cheese grilled in chipotle flavoured tortillas. Served with salsa, sour cream and side salad.', '18.jpg', '', '', 8);
INSERT INTO `items` VALUES(69, 'English Style Fish + Chips', '$13.49', 'Two pieces of tempura battered haddock cooked until golden and delicious. Served with fries and our tangy cole slaw.', '49.jpg', '', '', 8);
INSERT INTO `items` VALUES(70, 'Fresh Chicken Tenders', '$12.89', 'We take strips of fresh chicken breast and dip them into buttermilk, special seasonings and then cook until golden. Served with plum sauce and fries because anything else wouldn’t be right.', '50.jpg', '', '', 8);
INSERT INTO `items` VALUES(71, 'Steak Sandwich', '$12.99', '6 oz. steak grilled the way you liked it and served on a grilled baguette with garlic butter then topped with sautéed mushrooms and onions.', '51.jpg', '', '', 8);
INSERT INTO `items` VALUES(72, 'Chicken Stir Fry', '$15.99', 'Marinated grilled breast of chicken served over our delicious eleven vegetable stir fry. Tossed with your choice of sweet chili sauce, teriyaki or spicy Thai sauce. Served on a bed of steamed chow mein noodles.', '52.jpg', '', '', 8);
INSERT INTO `items` VALUES(73, 'California Chicken Sandwich', '$11.89', 'Grilled breast of chicken basted while cooking with a BBQ sauce then topped with avocado salsa and pea sprout salad then served on an artisan bun topped with sun dried tomato mayo. Served with a choice of fresh cut fries or a side salad or chunky avocado ', '26.jpg', '', '', 8);
INSERT INTO `items` VALUES(74, 'Buffalo Chicken Sandwich', '$10.75', 'Breaded chicken breast tossed in mild, medium, hot, honey garlic or super hot sauce and served on a fresh grilled organic bun with pickle, onion, lettuce and tomato. Served with a choice of fresh cut fries or a side salad or chunky avocado salsa.', '27.jpg', '', '', 8);
INSERT INTO `items` VALUES(75, 'Rickard’s Red Pulled Pork Sandwich', '$9.49', 'Slow roasted with Rickard’s red and other goodies until very tender. Then we toss in our special BBQ sauce, put it on an organic artisan bun with caramelized onion and finish with a tangy slaw. Served with a choice of fresh cut fries or a side salad or ch', '28.jpg', '', '', 8);
INSERT INTO `items` VALUES(76, 'Buffalo Chicken Wrap', '$9.99', 'Breaded boneless chicken breast tossed in your choice of BBQ sauce, wrapped in a fresh warm tortilla with shredded lettuce and tomato. Served with a choice of fresh cut fries or a side salad or chunky avocado salsa.', '29.jpg', '', '', 8);
INSERT INTO `items` VALUES(77, 'Philly Cheese Steak Sandwich', '$11.99', 'Thinly sliced roast beef with sauteed onions, and peppers topped with melted mozzarella cheese on a toasted artisan bun. Served with a choice of fresh cut fries or a side salad or chunky avocado salsa.', '30.jpg', '', '', 8);
INSERT INTO `items` VALUES(78, 'The Traditional Club', '$11.99', 'A hearty triple decker sandwich filled with bacon, cheddar cheese, fresh grilled breast of chicken, tomato, lettuce and mayo. Served with a choice of fresh cut fries or a side salad or chunky avocado salsa.', '31.jpg', '', '', 8);
INSERT INTO `items` VALUES(79, 'Crispy Chicken Club Wrap', '$11.49', 'Whole wheat tortilla filled with crispy breaded chicken breast, crisp applewood smoked bacon, tomato, lettuce and chipotle ranch dressing. Served with a choice of fresh cut fries or a side salad or chunky avocado salsa.', '32.jpg', '', '', 8);
INSERT INTO `items` VALUES(80, 'Steak Sandwich', '$12.99', '6 oz. steak grilled the way you liked it and served on a grilled artisan bun then topped with sautéed mushrooms and onions. Served with a choice of fresh cut fries or a side salad or chunky avocado salsa.', '33.jpg', '', '', 8);
INSERT INTO `items` VALUES(81, 'Hot Fudge Brownie Sundae', '$5.99', 'Our fresh baked brownie topped with French vanilla ice cream and hot fudge. Whip cream upon request.', '43.jpg', '', '', 11);
INSERT INTO `items` VALUES(82, 'Chocolate Lava Cake', '$6.99', 'A delicious warm chocolate soufflé, oozing with hot fudge and served with French vanilla ice cream.', '44.jpg', '', '', 11);
INSERT INTO `items` VALUES(83, 'Sundaes', '$4.99', 'Your choice of a simple sundae in chocolate or caramel flavours.', '45.jpg', '', '', 11);
INSERT INTO `items` VALUES(84, 'Crunch Monkey Shooter', '$3 ea. / $3 for $7', 'Banana, vanilla ice cream, graham crackers, peanuts and peanut butter.', '46.jpg', '', '', 11);
INSERT INTO `items` VALUES(85, 'Cherry Cheesecake Shooter', '$3 ea. / $3 for $7', 'Cherries, graham crackers, cream cheese whipped cream.', '47.jpg', '', '', 11);
INSERT INTO `items` VALUES(86, 'Chocolate Kiss Bliss Shooter', '$3 ea. / $3 for $7', 'Chocolate syrup, crumbled Oreo cookies as well as chocolate pudding. Topped with whipped cream.', '48.jpg', '', '', 11);
INSERT INTO `items` VALUES(87, '8 Year Old Girl Practicing', '', '', '', '1.mp4', 'Boxing', 2);
INSERT INTO `items` VALUES(88, 'January Blooper', '', '', '', '2.mp4', 'NBA TV', 2);
INSERT INTO `items` VALUES(89, 'Pacific Rim 2013', '', '', '', '3.mp4', 'Movie Trailer', 2);
INSERT INTO `items` VALUES(90, 'Gangnam Style', '', '', '', '4.mp4', 'Psy', 2);
INSERT INTO `items` VALUES(91, 'Table Slide Fail', '', '', '', '5.mp4', 'Fail Blog', 2);
INSERT INTO `items` VALUES(92, 'Spring Breakers 2013', '', '', '', '6.mp4', 'Movie Trailer', 2);
INSERT INTO `items` VALUES(93, 'This Too Shall Pass', '', '', '', '7.mp4', 'Ok Go', 2);
INSERT INTO `items` VALUES(94, 'Suburban Zombies', '', '', '', '8.mp4', 'Key and Peele', 2);
INSERT INTO `items` VALUES(95, 'Insane Ping Pong', '', '', '', '9.mp4', 'Comedy Sports', 2);
INSERT INTO `items` VALUES(96, 'Amazing Illusion', '', '', '', '10.mp4', 'America''s Got Talent', 2);
INSERT INTO `items` VALUES(97, 'Beer Chase', '', '', '', '11.mp4', 'Carlton Draught', 2);

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
INSERT INTO `modules` VALUES(4, 'appetizers', 1, 1);
INSERT INTO `modules` VALUES(8, 'dishes', 1, 1);
INSERT INTO `modules` VALUES(9, 'burgers + pasta', 1, 1);
INSERT INTO `modules` VALUES(10, 'drinks', 1, 1);
INSERT INTO `modules` VALUES(11, 'desserts', 1, 1);
INSERT INTO `modules` VALUES(13, 'beer', 1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=euckr AUTO_INCREMENT=2 ;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` VALUES(1, '2013-01-22 12:24:06', 1);

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
INSERT INTO `sections` VALUES(2, 'module');
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
) ENGINE=InnoDB  DEFAULT CHARSET=euckr AUTO_INCREMENT=19 ;

--
-- Dumping data for table `section_modules`
--

INSERT INTO `section_modules` VALUES(10, 1, NULL);
INSERT INTO `section_modules` VALUES(11, 2, NULL);
INSERT INTO `section_modules` VALUES(12, 3, NULL);
INSERT INTO `section_modules` VALUES(13, 2, 1);
INSERT INTO `section_modules` VALUES(14, 3, 1);
INSERT INTO `section_modules` VALUES(15, 2, 2);
INSERT INTO `section_modules` VALUES(16, 3, 2);
INSERT INTO `section_modules` VALUES(17, 2, 3);
INSERT INTO `section_modules` VALUES(18, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `snapshots`
--

CREATE TABLE `snapshots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `duration` double(11,2) NOT NULL,
  `engagement` double(11,2) NOT NULL,
  `popularity` varchar(255) CHARACTER SET latin1 NOT NULL,
  `sectionmodule_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sectionmodule_id` (`sectionmodule_id`),
  KEY `report_id` (`report_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=euckr AUTO_INCREMENT=10 ;

--
-- Dumping data for table `snapshots`
--

INSERT INTO `snapshots` VALUES(1, 1577.75, 0.00, '', 10, 1);
INSERT INTO `snapshots` VALUES(2, -1677187.10, 0.50, '', 11, 1);
INSERT INTO `snapshots` VALUES(3, -1290144.15, 0.50, '', 12, 1);
INSERT INTO `snapshots` VALUES(4, -3354375.80, 0.75, '', 13, 1);
INSERT INTO `snapshots` VALUES(5, -1863542.11, 1.00, '', 14, 1);
INSERT INTO `snapshots` VALUES(6, 2.50, 0.50, '', 15, 1);
INSERT INTO `snapshots` VALUES(7, 1.25, 0.50, '', 16, 1);
INSERT INTO `snapshots` VALUES(8, 1.00, 0.50, '', 17, 1);
INSERT INTO `snapshots` VALUES(9, 0.00, 0.00, '', 18, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=346 ;

--
-- Dumping data for table `steps`
--

INSERT INTO `steps` VALUES(1, '2013-01-23 22:07:28', '2013-01-23 22:07:29', 3, 3);
INSERT INTO `steps` VALUES(2, '2013-01-23 22:07:32', '1969-12-31 19:00:00', 3, 1);
INSERT INTO `steps` VALUES(3, '2013-01-23 22:10:17', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(4, '2013-01-23 22:10:20', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(5, '2013-01-23 22:10:28', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(6, '2013-01-23 22:10:31', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(7, '2013-01-23 22:10:33', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(8, '2013-01-23 22:10:38', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(9, '2013-01-23 22:10:47', '2013-01-23 22:10:49', 4, 1);
INSERT INTO `steps` VALUES(10, '2013-01-23 22:10:52', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(11, '2013-01-23 22:24:37', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(12, '2013-01-23 22:24:42', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(13, '2013-01-23 22:24:50', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(14, '2013-01-23 22:24:55', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(15, '2013-01-23 22:25:00', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(16, '2013-01-23 22:25:03', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(17, '2013-01-23 22:25:06', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(18, '2013-01-23 22:25:15', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(19, '2013-01-23 22:25:18', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(20, '2013-01-23 22:25:24', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(21, '2013-01-23 22:25:32', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(22, '2013-01-23 22:25:36', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(23, '2013-01-23 22:26:25', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(24, '2013-01-24 09:35:36', '2013-01-24 09:35:42', 4, 1);
INSERT INTO `steps` VALUES(25, '2013-01-24 09:35:43', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(26, '2013-01-24 09:36:08', '2013-01-24 09:36:24', 4, 1);
INSERT INTO `steps` VALUES(27, '2013-01-24 09:36:25', '2013-01-24 09:36:26', 4, 3);
INSERT INTO `steps` VALUES(28, '2013-01-24 09:36:26', '2013-01-24 09:36:31', 4, 1);
INSERT INTO `steps` VALUES(29, '2013-01-24 09:36:32', '2013-01-24 09:36:35', 4, 2);
INSERT INTO `steps` VALUES(30, '2013-01-24 09:36:36', '2013-01-24 09:36:37', 4, 3);
INSERT INTO `steps` VALUES(31, '2013-01-24 09:36:41', '2013-01-24 09:36:42', 5, 3);
INSERT INTO `steps` VALUES(32, '2013-01-24 14:01:05', '2013-01-24 14:01:14', 6, 1);
INSERT INTO `steps` VALUES(33, '2013-01-24 14:01:15', '2013-01-24 14:01:18', 6, 3);
INSERT INTO `steps` VALUES(34, '2013-01-24 14:01:19', '1969-12-31 19:00:00', 6, 2);
INSERT INTO `steps` VALUES(35, '2013-01-24 15:08:27', '2013-01-24 15:08:35', 6, 3);
INSERT INTO `steps` VALUES(36, '2013-01-24 15:08:37', '1969-12-31 19:00:00', 6, 2);
INSERT INTO `steps` VALUES(37, '2013-01-24 15:12:47', '2013-01-24 15:13:00', 6, 3);
INSERT INTO `steps` VALUES(38, '2013-01-24 15:13:01', '2013-01-24 15:13:19', 6, 2);
INSERT INTO `steps` VALUES(39, '2013-01-24 15:13:23', '2013-01-24 15:15:24', 6, 1);
INSERT INTO `steps` VALUES(40, '2013-01-24 15:15:25', '1969-12-31 19:00:00', 6, 3);
INSERT INTO `steps` VALUES(41, '2013-01-24 15:28:09', '2013-01-24 15:28:10', 6, 3);
INSERT INTO `steps` VALUES(42, '2013-01-24 15:28:11', '1969-12-31 19:00:00', 6, 1);
INSERT INTO `steps` VALUES(43, '2013-01-24 15:32:19', '1969-12-31 19:00:00', 6, 1);
INSERT INTO `steps` VALUES(44, '2013-01-24 15:32:32', '1969-12-31 19:00:00', 6, 1);
INSERT INTO `steps` VALUES(45, '2013-01-24 15:32:35', '1969-12-31 19:00:00', 6, 1);
INSERT INTO `steps` VALUES(46, '2013-01-24 15:32:50', '2013-01-24 15:32:51', 6, 3);
INSERT INTO `steps` VALUES(47, '2013-01-24 15:32:52', '1969-12-31 19:00:00', 6, 1);
INSERT INTO `steps` VALUES(48, '2013-01-24 15:33:04', '2013-01-24 15:33:18', 6, 1);
INSERT INTO `steps` VALUES(49, '2013-01-24 15:33:19', '2013-01-24 15:33:21', 6, 1);
INSERT INTO `steps` VALUES(50, '2013-01-24 15:33:22', '2013-01-24 15:33:34', 6, 1);
INSERT INTO `steps` VALUES(51, '2013-01-24 15:33:35', '2013-01-24 15:34:46', 6, 1);
INSERT INTO `steps` VALUES(52, '2013-01-24 15:34:47', '2013-01-24 15:35:36', 6, 1);
INSERT INTO `steps` VALUES(53, '2013-01-24 15:35:37', '2013-01-24 15:35:40', 6, 1);
INSERT INTO `steps` VALUES(54, '2013-01-24 15:35:41', '1969-12-31 19:00:00', 6, 1);
INSERT INTO `steps` VALUES(55, '2013-01-24 15:36:41', '2013-01-24 15:36:46', 6, 1);
INSERT INTO `steps` VALUES(56, '2013-01-24 15:36:47', '2013-01-24 15:36:49', 6, 1);
INSERT INTO `steps` VALUES(57, '2013-01-24 15:36:50', '1969-12-31 19:00:00', 6, 1);
INSERT INTO `steps` VALUES(58, '2013-01-24 15:36:53', '2013-01-24 15:37:06', 6, 1);
INSERT INTO `steps` VALUES(59, '2013-01-24 15:38:06', '2013-01-24 15:56:30', 6, 1);
INSERT INTO `steps` VALUES(60, '2013-01-24 15:56:31', '2013-01-24 15:56:32', 6, 3);
INSERT INTO `steps` VALUES(61, '2013-01-24 15:56:33', '2013-01-24 15:56:34', 6, 3);
INSERT INTO `steps` VALUES(62, '2013-01-24 17:01:50', '2013-01-24 17:01:54', 6, 1);
INSERT INTO `steps` VALUES(63, '2013-01-24 17:01:57', '2013-01-24 17:02:00', 7, 1);
INSERT INTO `steps` VALUES(64, '2013-01-24 17:02:01', '2013-01-24 17:02:04', 7, 1);
INSERT INTO `steps` VALUES(65, '2013-01-24 17:04:13', '2013-01-24 17:04:16', 7, 1);
INSERT INTO `steps` VALUES(66, '2013-01-24 17:04:19', '2013-01-24 17:04:22', 8, 1);
INSERT INTO `steps` VALUES(67, '2013-01-24 17:04:22', '1969-12-31 19:00:00', 8, 1);
INSERT INTO `steps` VALUES(68, '2013-01-24 17:04:48', '2013-01-24 17:04:53', 8, 1);
INSERT INTO `steps` VALUES(69, '2013-01-24 17:04:57', '2013-01-24 17:04:58', 8, 3);
INSERT INTO `steps` VALUES(70, '2013-01-24 17:05:01', '2013-01-24 17:05:02', 8, 3);
INSERT INTO `steps` VALUES(71, '2013-01-24 17:05:07', '2013-01-24 17:05:10', 9, 1);
INSERT INTO `steps` VALUES(72, '2013-01-24 17:05:11', '2013-01-24 17:05:13', 9, 1);
INSERT INTO `steps` VALUES(73, '2013-01-24 17:05:16', '2013-01-24 17:05:20', 10, 1);
INSERT INTO `steps` VALUES(74, '2013-01-24 17:05:21', '1969-12-31 19:00:00', 10, 1);
INSERT INTO `steps` VALUES(75, '2013-01-24 17:06:38', '2013-01-24 17:06:42', 10, 1);
INSERT INTO `steps` VALUES(76, '2013-01-24 17:06:45', '2013-01-24 17:06:48', 11, 1);
INSERT INTO `steps` VALUES(77, '2013-01-24 17:06:49', '1969-12-31 19:00:00', 11, 1);
INSERT INTO `steps` VALUES(78, '2013-01-24 17:07:02', '1969-12-31 19:00:00', 11, 1);
INSERT INTO `steps` VALUES(79, '2013-01-24 17:07:16', '2013-01-24 17:07:18', 11, 1);
INSERT INTO `steps` VALUES(80, '2013-01-24 17:07:22', '2013-01-24 17:07:25', 12, 1);
INSERT INTO `steps` VALUES(81, '2013-01-24 17:07:26', '1969-12-31 19:00:00', 12, 1);
INSERT INTO `steps` VALUES(82, '2013-01-24 17:18:53', '1969-12-31 19:00:00', 12, 1);
INSERT INTO `steps` VALUES(83, '2013-01-24 17:23:29', '2013-01-24 17:23:33', 12, 1);
INSERT INTO `steps` VALUES(84, '2013-01-24 17:23:38', '1969-12-31 19:00:00', 13, 1);
INSERT INTO `steps` VALUES(85, '2013-01-24 17:24:29', '2013-01-24 17:24:33', 13, 1);
INSERT INTO `steps` VALUES(86, '2013-01-24 17:24:37', '2013-01-24 17:24:42', 14, 1);
INSERT INTO `steps` VALUES(87, '2013-01-24 17:24:43', '2013-01-24 17:24:48', 14, 1);
INSERT INTO `steps` VALUES(88, '2013-01-24 17:24:51', '2013-01-24 17:24:54', 15, 1);
INSERT INTO `steps` VALUES(89, '2013-01-24 17:24:55', '2013-01-24 17:24:58', 15, 1);
INSERT INTO `steps` VALUES(90, '2013-01-25 10:51:40', '1969-12-31 19:00:00', 15, 1);
INSERT INTO `steps` VALUES(91, '2013-01-25 10:51:50', '1969-12-31 19:00:00', 15, 1);
INSERT INTO `steps` VALUES(92, '2013-01-25 10:51:59', '2013-01-25 10:52:01', 15, 1);
INSERT INTO `steps` VALUES(93, '2013-01-25 10:52:04', '2013-01-25 10:52:08', 16, 1);
INSERT INTO `steps` VALUES(94, '2013-01-25 10:52:09', '2013-01-25 10:52:10', 16, 1);
INSERT INTO `steps` VALUES(95, '2013-01-25 10:52:11', '2013-01-25 10:52:17', 16, 1);
INSERT INTO `steps` VALUES(96, '2013-01-25 10:52:26', '2013-01-25 10:52:33', 16, 1);
INSERT INTO `steps` VALUES(97, '2013-01-25 10:52:34', '2013-01-25 10:52:36', 16, 1);
INSERT INTO `steps` VALUES(98, '2013-01-25 10:52:37', '2013-01-25 10:52:40', 16, 1);
INSERT INTO `steps` VALUES(99, '2013-01-25 10:53:54', '2013-01-25 10:54:01', 16, 1);
INSERT INTO `steps` VALUES(100, '2013-01-25 10:54:02', '2013-01-25 10:54:04', 16, 1);
INSERT INTO `steps` VALUES(101, '2013-01-25 10:54:05', '2013-01-25 10:54:21', 16, 1);
INSERT INTO `steps` VALUES(102, '2013-01-25 10:54:22', '2013-01-25 10:54:41', 16, 1);
INSERT INTO `steps` VALUES(103, '2013-01-25 10:54:43', '2013-01-25 10:54:46', 16, 1);
INSERT INTO `steps` VALUES(104, '2013-01-25 10:54:46', '2013-01-25 10:54:50', 16, 1);
INSERT INTO `steps` VALUES(105, '2013-01-25 10:54:51', '2013-01-25 10:57:01', 16, 1);
INSERT INTO `steps` VALUES(106, '2013-01-24 15:38:30', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(107, '2013-01-24 15:40:03', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(108, '2013-01-24 15:40:20', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(109, '2013-01-24 15:43:44', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(110, '2013-01-24 15:45:27', '2013-01-24 15:46:47', 17, 1);
INSERT INTO `steps` VALUES(111, '2013-01-24 15:46:48', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(112, '2013-01-25 14:06:24', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(113, '2013-01-25 14:07:36', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(114, '2013-01-25 14:10:38', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(115, '2013-01-25 14:10:44', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(116, '2013-01-25 14:26:11', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(117, '2013-01-25 14:27:17', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(118, '2013-01-25 14:29:30', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(119, '2013-01-25 14:29:34', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(120, '2013-01-25 14:30:06', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(121, '2013-01-25 14:32:34', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(122, '2013-01-25 18:54:01', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(123, '2013-01-25 18:58:20', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(124, '2013-01-25 18:58:25', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(125, '2013-01-25 19:04:17', '2013-01-25 19:04:22', 17, 1);
INSERT INTO `steps` VALUES(126, '2013-01-25 19:16:00', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(127, '2013-01-25 19:19:55', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(128, '2013-01-25 19:21:13', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(129, '2013-01-25 19:24:55', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(130, '2013-01-25 19:44:22', '2013-01-25 19:44:31', 17, 1);
INSERT INTO `steps` VALUES(131, '2013-01-25 19:45:28', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(132, '2013-01-25 20:04:41', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(133, '2013-01-25 20:04:53', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(134, '2013-01-25 20:10:45', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(135, '2013-01-25 20:12:20', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(136, '2013-01-25 20:12:39', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(137, '2013-01-25 20:13:11', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(138, '2013-01-25 20:15:48', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(139, '2013-01-25 20:16:48', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(140, '2013-01-25 20:16:51', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(141, '2013-01-25 20:17:31', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(142, '2013-01-25 20:19:35', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(143, '2013-01-25 20:20:03', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(144, '2013-01-25 20:20:37', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(145, '2013-01-25 20:20:53', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(146, '2013-01-25 20:21:00', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(147, '2013-01-25 20:22:04', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(148, '2013-01-25 20:22:22', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(149, '2013-01-25 20:22:42', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(150, '2013-01-25 20:24:58', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(151, '2013-01-25 20:25:01', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(152, '2013-01-25 20:25:10', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(153, '2013-01-25 20:26:13', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(154, '2013-01-25 20:27:11', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(155, '2013-01-25 20:27:36', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(156, '2013-01-25 20:27:56', '2013-01-25 20:27:57', 17, 3);
INSERT INTO `steps` VALUES(157, '2013-01-25 20:27:58', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(158, '2013-01-25 20:28:12', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(159, '2013-01-25 20:28:26', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(160, '2013-01-25 20:28:50', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(161, '2013-01-25 20:29:38', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(162, '2013-01-25 20:29:59', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(163, '2013-01-25 20:30:51', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(164, '2013-01-25 20:31:37', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(165, '2013-01-25 20:32:02', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(166, '2013-01-25 20:33:01', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(167, '2013-01-25 20:34:40', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(168, '2013-01-25 20:36:37', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(169, '2013-01-25 20:38:09', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(170, '2013-01-25 20:38:23', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(171, '2013-01-25 20:38:30', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(172, '2013-01-25 20:49:09', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(173, '2013-01-25 20:49:23', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(174, '2013-01-25 20:51:49', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(175, '2013-01-25 20:56:56', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(176, '2013-01-25 20:57:04', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(177, '2013-01-25 21:00:04', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(178, '2013-01-25 21:00:25', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(179, '2013-01-25 21:01:44', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(180, '2013-01-25 21:03:54', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(181, '2013-01-25 21:04:00', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(182, '2013-01-25 21:04:05', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(183, '2013-01-25 21:04:34', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(184, '2013-01-25 21:28:31', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(185, '2013-01-25 21:33:11', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(186, '2013-01-25 21:33:31', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(187, '2013-01-25 21:35:08', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(188, '2013-01-25 21:35:45', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(189, '2013-01-25 21:35:48', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(190, '2013-01-25 21:35:57', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(191, '2013-01-26 10:09:19', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(192, '2013-01-26 11:01:43', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(193, '2013-01-26 11:12:20', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(194, '2013-01-26 11:14:59', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(195, '2013-01-26 11:17:11', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(196, '2013-01-26 11:18:18', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(197, '2013-01-26 11:18:23', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(198, '2013-01-26 11:19:36', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(199, '2013-01-26 11:20:00', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(200, '2013-01-26 12:55:46', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(201, '2013-01-26 13:08:17', '2013-01-26 13:08:18', 18, 1);
INSERT INTO `steps` VALUES(202, '2013-01-30 16:49:24', '2013-01-30 16:49:27', 20, 1);
INSERT INTO `steps` VALUES(203, '2013-01-30 16:49:29', '1969-12-31 19:00:00', 20, 3);
INSERT INTO `steps` VALUES(204, '2013-01-30 16:52:09', '2013-01-30 16:52:10', 20, 3);
INSERT INTO `steps` VALUES(205, '2013-01-30 16:52:16', '2013-01-30 16:52:19', 21, 1);
INSERT INTO `steps` VALUES(206, '2013-01-30 17:58:37', '2013-01-30 17:58:38', 21, 3);
INSERT INTO `steps` VALUES(207, '2013-01-30 17:58:44', '2013-01-30 17:58:45', 22, 3);
INSERT INTO `steps` VALUES(208, '2013-01-30 17:58:48', '2013-01-30 17:58:49', 22, 3);
INSERT INTO `steps` VALUES(209, '2013-02-02 15:29:39', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(210, '2013-02-02 15:29:53', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(211, '2013-02-02 15:31:02', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(212, '2013-02-02 15:33:29', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(213, '2013-02-02 19:00:39', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(214, '2013-02-02 19:01:01', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(215, '2013-02-02 19:06:38', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(216, '2013-02-02 19:06:53', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(217, '2013-02-02 19:07:15', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(218, '2013-02-02 19:07:38', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(219, '2013-02-02 19:07:52', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(220, '2013-02-02 19:08:08', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(221, '2013-02-02 19:08:35', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(222, '2013-02-02 19:11:09', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(223, '2013-02-02 19:11:50', '2013-02-02 19:16:23', 27, 1);
INSERT INTO `steps` VALUES(224, '2013-02-02 19:16:35', '2013-02-02 19:16:43', 27, 1);
INSERT INTO `steps` VALUES(225, '2013-02-02 19:16:58', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(226, '2013-02-02 19:17:46', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(227, '2013-02-02 19:25:07', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(228, '2013-02-02 19:26:57', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(229, '2013-02-02 19:27:04', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(230, '2013-02-02 19:31:13', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(231, '2013-02-02 19:55:02', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(232, '2013-02-02 20:54:21', '2013-02-02 20:54:24', 27, 1);
INSERT INTO `steps` VALUES(233, '2013-02-02 20:54:25', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(234, '2013-02-02 20:54:48', '2013-02-02 20:54:52', 27, 1);
INSERT INTO `steps` VALUES(235, '2013-02-02 20:54:53', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(236, '2013-02-02 20:58:05', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(237, '2013-02-02 21:01:28', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(238, '2013-02-02 21:02:59', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(239, '2013-02-02 21:12:26', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(240, '2013-02-02 21:23:13', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(241, '2013-02-02 21:24:28', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(242, '2013-02-02 21:25:07', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(243, '2013-02-02 21:25:49', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(244, '2013-02-02 21:26:33', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(245, '2013-02-02 21:26:49', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(246, '2013-02-02 21:28:28', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(247, '2013-02-02 21:29:46', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(248, '2013-02-02 21:38:31', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(249, '2013-02-02 21:41:48', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(250, '2013-02-02 21:43:05', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(251, '2013-02-02 21:45:32', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(252, '2013-02-03 09:43:16', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(253, '2013-02-03 09:43:43', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(254, '2013-02-03 09:43:56', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(255, '2013-02-03 09:44:13', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(256, '2013-02-03 09:44:40', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(257, '2013-02-03 09:44:55', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(258, '2013-02-03 09:46:32', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(259, '2013-02-03 09:53:48', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(260, '2013-02-03 09:56:42', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(261, '2013-02-03 09:57:25', '2013-02-03 10:01:24', 27, 1);
INSERT INTO `steps` VALUES(262, '2013-02-03 10:01:26', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(263, '2013-02-03 10:06:44', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(264, '2013-02-03 10:07:36', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(265, '2013-02-03 10:08:36', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(266, '2013-02-03 10:09:18', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(267, '2013-02-03 10:10:25', '2013-02-03 10:10:31', 27, 1);
INSERT INTO `steps` VALUES(268, '2013-02-03 10:10:33', '2013-02-03 10:10:37', 27, 1);
INSERT INTO `steps` VALUES(269, '2013-02-03 10:10:38', '2013-02-03 10:10:44', 27, 1);
INSERT INTO `steps` VALUES(270, '2013-02-03 10:10:45', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(271, '2013-02-03 10:12:05', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(272, '2013-02-03 10:15:01', '2013-02-03 10:23:18', 27, 1);
INSERT INTO `steps` VALUES(273, '2013-02-03 10:23:19', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(274, '2013-02-03 10:24:18', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(275, '2013-02-03 10:26:46', '2013-02-03 10:26:54', 27, 1);
INSERT INTO `steps` VALUES(276, '2013-02-03 10:26:55', '2013-02-03 10:26:59', 27, 1);
INSERT INTO `steps` VALUES(277, '2013-02-03 10:27:00', '2013-02-03 10:27:12', 27, 1);
INSERT INTO `steps` VALUES(278, '2013-02-03 10:27:14', '2013-02-03 10:27:28', 27, 1);
INSERT INTO `steps` VALUES(279, '2013-02-03 10:27:29', '2013-02-03 10:27:36', 27, 1);
INSERT INTO `steps` VALUES(280, '2013-02-03 10:27:37', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(281, '2013-02-03 10:32:42', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(282, '2013-02-03 10:34:35', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(283, '2013-02-03 10:35:26', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(284, '2013-02-03 10:35:56', '1969-12-31 19:00:00', 27, 1);
INSERT INTO `steps` VALUES(285, '2013-02-03 10:36:22', '2013-02-03 10:36:41', 27, 1);
INSERT INTO `steps` VALUES(286, '2013-02-03 10:36:54', '2013-02-03 10:37:07', 28, 1);
INSERT INTO `steps` VALUES(287, '2013-02-03 10:37:07', '2013-02-03 10:37:22', 28, 1);
INSERT INTO `steps` VALUES(288, '2013-02-03 10:37:23', '2013-02-03 10:39:17', 28, 1);
INSERT INTO `steps` VALUES(289, '2013-02-03 10:39:25', '1969-12-31 19:00:00', 28, 1);
INSERT INTO `steps` VALUES(290, '2013-02-03 10:41:32', '2013-02-03 10:41:38', 29, 1);
INSERT INTO `steps` VALUES(291, '2013-02-03 10:44:38', '2013-02-03 10:44:39', 1, 3);
INSERT INTO `steps` VALUES(292, '2013-02-03 10:44:40', '2013-02-03 10:44:41', 1, 1);
INSERT INTO `steps` VALUES(293, '2013-02-03 10:45:25', '2013-02-03 10:45:26', 2, 3);
INSERT INTO `steps` VALUES(294, '2013-02-03 11:32:54', '2013-02-03 11:32:58', 3, 1);
INSERT INTO `steps` VALUES(295, '2013-02-03 11:33:06', '2013-02-03 11:33:09', 4, 1);
INSERT INTO `steps` VALUES(296, '2013-02-03 11:42:47', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(297, '2013-02-03 11:45:13', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(298, '2013-02-03 12:00:32', '2013-02-03 12:00:34', 4, 1);
INSERT INTO `steps` VALUES(299, '2013-02-03 12:01:05', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(300, '2013-02-03 19:33:49', '2013-02-03 19:53:41', 4, 1);
INSERT INTO `steps` VALUES(301, '2013-02-03 19:53:43', '2013-02-03 19:53:49', 4, 2);
INSERT INTO `steps` VALUES(302, '2013-02-03 19:57:50', '2013-02-03 19:58:01', 4, 2);
INSERT INTO `steps` VALUES(303, '2013-02-03 22:48:14', '1969-12-31 19:00:00', 5, 1);
INSERT INTO `steps` VALUES(304, '2013-02-03 22:48:54', '2013-02-03 22:48:56', 5, 3);
INSERT INTO `steps` VALUES(305, '2013-02-03 22:48:58', '2013-02-03 22:48:59', 5, 1);
INSERT INTO `steps` VALUES(306, '2013-02-03 22:52:34', '1969-12-31 19:00:00', 5, 1);
INSERT INTO `steps` VALUES(307, '2013-02-03 22:57:04', '2013-02-03 22:57:07', 5, 1);
INSERT INTO `steps` VALUES(308, '2013-02-03 22:57:34', '2013-02-03 22:57:42', 5, 1);
INSERT INTO `steps` VALUES(309, '2013-02-03 22:58:51', '2013-02-03 22:58:52', 5, 1);
INSERT INTO `steps` VALUES(310, '2013-02-03 23:16:01', '2013-02-03 23:16:04', 6, 1);
INSERT INTO `steps` VALUES(311, '2013-02-03 23:24:58', '2013-02-03 23:25:00', 10, 1);
INSERT INTO `steps` VALUES(312, '2013-02-03 23:26:06', '2013-02-03 23:26:38', 12, 1);
INSERT INTO `steps` VALUES(313, '2013-02-03 23:29:58', '1969-12-31 19:00:00', 13, 1);
INSERT INTO `steps` VALUES(314, '2013-02-03 23:34:03', '2013-02-03 23:34:09', 17, 1);
INSERT INTO `steps` VALUES(315, '2013-02-03 23:34:18', '2013-02-03 23:34:19', 17, 1);
INSERT INTO `steps` VALUES(316, '2013-02-03 23:34:21', '2013-02-03 23:34:22', 17, 3);
INSERT INTO `steps` VALUES(317, '2013-02-03 23:34:23', '2013-02-03 23:34:25', 17, 1);
INSERT INTO `steps` VALUES(318, '2013-02-03 23:34:32', '2013-02-03 23:34:34', 17, 1);
INSERT INTO `steps` VALUES(319, '2013-02-03 23:35:20', '2013-02-03 23:35:22', 17, 1);
INSERT INTO `steps` VALUES(320, '2013-02-03 23:35:35', '2013-02-03 23:35:37', 17, 1);
INSERT INTO `steps` VALUES(321, '2013-02-03 23:35:50', '2013-02-03 23:35:52', 17, 1);
INSERT INTO `steps` VALUES(322, '2013-02-03 23:35:53', '2013-02-03 23:35:54', 17, 3);
INSERT INTO `steps` VALUES(323, '2013-02-03 23:36:08', '1969-12-31 19:00:00', 17, 1);
INSERT INTO `steps` VALUES(324, '2013-02-03 23:36:17', '2013-02-03 23:36:32', 17, 1);
INSERT INTO `steps` VALUES(325, '2013-02-03 23:37:24', '2013-02-03 23:37:32', 18, 1);
INSERT INTO `steps` VALUES(326, '2013-02-04 00:51:57', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(327, '2013-02-04 00:52:19', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(328, '2013-02-04 00:56:05', '2013-02-04 00:56:07', 21, 2);
INSERT INTO `steps` VALUES(329, '2013-02-04 00:56:08', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(330, '2013-02-04 00:59:55', '2013-02-04 00:59:56', 21, 2);
INSERT INTO `steps` VALUES(331, '2013-02-04 01:00:44', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(332, '2013-02-04 01:05:40', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(333, '2013-02-04 01:06:26', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(334, '2013-02-04 01:11:01', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(335, '2013-02-04 01:11:29', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(336, '2013-02-04 01:12:53', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(337, '2013-02-04 01:13:58', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(338, '2013-02-04 01:15:31', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(339, '2013-02-04 01:16:53', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(340, '2013-02-04 01:18:59', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(341, '2013-02-04 01:20:14', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(342, '2013-02-04 01:20:25', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(343, '2013-02-04 01:20:52', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(344, '2013-02-04 01:21:18', '2013-02-04 01:21:26', 21, 1);
INSERT INTO `steps` VALUES(345, '2013-02-04 01:21:27', '1969-12-31 19:00:00', 21, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

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
INSERT INTO `users` VALUES(54, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(55, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(56, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(57, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(58, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(59, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(60, 'JohnJane', 1, 2, NULL);

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
-- Constraints for table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `modules_ibfk_3` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`id`),
  ADD CONSTRAINT `modules_ibfk_4` FOREIGN KEY (`parent_id`) REFERENCES `modules` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`id`),
  ADD CONSTRAINT `users_ibfk_5` FOREIGN KEY (`usertype_id`) REFERENCES `user_types` (`id`),
  ADD CONSTRAINT `users_ibfk_6` FOREIGN KEY (`tablet_id`) REFERENCES `tablets` (`id`);
