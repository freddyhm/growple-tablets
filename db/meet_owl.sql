-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 14, 2013 at 03:18 PM
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
  `test_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `step_id` (`step_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=169 ;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` VALUES(1, 'viewing_menu_item', '2013-03-09 21:35:19', '1969-12-31 19:00:00', 10, 2, 0);
INSERT INTO `activities` VALUES(2, 'first', '2013-03-09 21:36:05', '2013-03-09 21:36:06', 11, 2, 0);
INSERT INTO `activities` VALUES(3, 'first', '2013-03-09 21:36:15', '2013-03-09 21:36:17', 13, 72, 0);
INSERT INTO `activities` VALUES(4, 'first', '2013-03-09 21:36:23', '2013-03-09 21:36:25', 14, 44, 0);
INSERT INTO `activities` VALUES(5, 'first', '2013-03-09 21:36:28', '2013-03-09 21:36:29', 16, 88, 0);
INSERT INTO `activities` VALUES(6, 'first', '2013-03-09 21:37:48', '2013-03-09 21:37:50', 17, 44, 0);
INSERT INTO `activities` VALUES(7, 'first', '2013-03-09 21:37:57', '2013-03-09 21:37:58', 19, 2, 0);
INSERT INTO `activities` VALUES(8, 'first', '2013-03-10 01:44:07', '2013-03-10 01:44:09', 34, 44, 0);
INSERT INTO `activities` VALUES(9, 'first', '2013-03-10 01:44:14', '2013-03-10 01:44:15', 35, 2, 0);
INSERT INTO `activities` VALUES(10, 'first', '2013-03-10 03:32:19', '2013-03-10 03:32:21', 37, 2, 0);
INSERT INTO `activities` VALUES(11, 'first', '2013-03-10 15:18:54', '2013-03-10 15:18:55', 40, 2, 0);
INSERT INTO `activities` VALUES(12, 'first', '2013-03-11 19:24:04', '2013-03-11 19:24:05', 41, 2, 0);
INSERT INTO `activities` VALUES(13, 'started_watching_video', '2013-03-12 20:47:53', '1969-12-31 19:00:00', 41, 6, 0);
INSERT INTO `activities` VALUES(14, 'clicked_promo_slide', '2013-03-12 20:48:08', '2013-03-12 20:48:08', 42, 1, 0);
INSERT INTO `activities` VALUES(15, 'viewing_menu_item', '2013-03-12 20:48:08', '2013-03-12 20:48:11', 42, 15, 0);
INSERT INTO `activities` VALUES(16, 'started_watching_video', '2013-03-12 20:48:11', '2013-03-12 20:48:29', 42, 7, 0);
INSERT INTO `activities` VALUES(17, 'first', '2013-03-12 20:48:29', '2013-03-12 20:48:31', 42, 14, 0);
INSERT INTO `activities` VALUES(18, 'skipped_video', '2013-03-12 20:48:31', '2013-03-12 20:48:32', 42, 7, 0);
INSERT INTO `activities` VALUES(19, 'started_watching_video', '2013-03-12 20:48:32', '2013-03-12 20:50:15', 42, 6, 0);
INSERT INTO `activities` VALUES(20, 'started_watching_video', '2013-03-12 20:50:15', '2013-03-12 20:50:25', 42, 8, 0);
INSERT INTO `activities` VALUES(21, 'started_watching_video', '2013-03-12 20:50:25', '2013-03-12 20:52:32', 42, 8, 0);
INSERT INTO `activities` VALUES(22, 'first', '2013-03-12 20:52:32', '2013-03-12 20:52:33', 42, 11, 0);
INSERT INTO `activities` VALUES(23, 'skipped_video', '2013-03-12 20:52:33', '2013-03-12 20:52:35', 42, 8, 0);
INSERT INTO `activities` VALUES(24, 'skipped_video', '2013-03-12 20:52:35', '2013-03-12 20:52:41', 42, 7, 0);
INSERT INTO `activities` VALUES(25, 'started_watching_video', '2013-03-12 20:52:41', '2013-03-12 20:53:32', 42, 6, 0);
INSERT INTO `activities` VALUES(26, 'started_watching_video', '2013-03-12 20:53:32', '2013-03-12 20:53:59', 42, 7, 0);
INSERT INTO `activities` VALUES(27, 'first', '2013-03-12 20:53:59', '2013-03-12 20:54:01', 42, 6, 0);
INSERT INTO `activities` VALUES(28, 'started_watching_video', '2013-03-12 20:54:01', '2013-03-12 20:54:51', 42, 9, 0);
INSERT INTO `activities` VALUES(29, 'first', '2013-03-12 20:54:51', '2013-03-12 20:54:54', 42, 8, 0);
INSERT INTO `activities` VALUES(30, 'first', '2013-03-12 20:54:54', '2013-03-12 20:56:10', 42, 6, 0);
INSERT INTO `activities` VALUES(31, 'first', '2013-03-12 20:57:55', '2013-03-12 20:57:55', 42, 11, 0);
INSERT INTO `activities` VALUES(32, 'skipped_video', '2013-03-12 20:57:58', '2013-03-12 20:57:58', 42, 10, 0);
INSERT INTO `activities` VALUES(33, 'skipped_video', '2013-03-12 20:57:59', '2013-03-12 20:57:59', 42, 12, 0);
INSERT INTO `activities` VALUES(34, 'skipped_video', '2013-03-12 20:58:01', '2013-03-12 20:58:01', 42, 7, 0);
INSERT INTO `activities` VALUES(35, 'first', '2013-03-12 21:05:38', '2013-03-12 21:05:38', 42, 13, 0);
INSERT INTO `activities` VALUES(36, 'skipped_video', '2013-03-12 21:05:39', '2013-03-12 21:05:39', 42, 7, 0);
INSERT INTO `activities` VALUES(37, 'skipped_video', '2013-03-12 21:05:39', '2013-03-12 21:05:39', 42, 6, 0);
INSERT INTO `activities` VALUES(38, 'first', '2013-03-12 21:10:10', '2013-03-12 21:10:10', 42, 8, 0);
INSERT INTO `activities` VALUES(39, 'skipped_video', '2013-03-12 21:10:12', '2013-03-12 21:10:12', 42, 9, 0);
INSERT INTO `activities` VALUES(40, 'first', '2013-03-12 21:10:42', '2013-03-12 21:10:42', 42, 6, 0);
INSERT INTO `activities` VALUES(41, 'skipped_video', '2013-03-12 21:10:43', '2013-03-12 21:10:43', 42, 7, 0);
INSERT INTO `activities` VALUES(42, 'skipped_video', '2013-03-12 21:10:46', '2013-03-12 21:10:46', 42, 8, 0);
INSERT INTO `activities` VALUES(43, 'skipped_video', '2013-03-12 21:10:48', '2013-03-12 21:10:48', 42, 11, 0);
INSERT INTO `activities` VALUES(44, 'skipped_video', '2013-03-12 21:10:48', '2013-03-12 21:10:48', 42, 14, 0);
INSERT INTO `activities` VALUES(45, 'skipped_video', '2013-03-12 21:10:49', '2013-03-12 21:10:49', 42, 5, 0);
INSERT INTO `activities` VALUES(46, 'skipped_video', '2013-03-12 21:10:50', '2013-03-12 21:10:50', 42, 12, 0);
INSERT INTO `activities` VALUES(47, 'skipped_video', '2013-03-12 21:10:54', '2013-03-12 21:10:54', 42, 6, 0);
INSERT INTO `activities` VALUES(48, 'skipped_video', '2013-03-12 21:11:00', '2013-03-12 21:11:00', 42, 10, 0);
INSERT INTO `activities` VALUES(49, 'skipped_video', '2013-03-12 21:11:03', '2013-03-12 21:11:03', 42, 9, 0);
INSERT INTO `activities` VALUES(50, 'skipped_video', '2013-03-12 21:11:06', '2013-03-12 21:11:06', 42, 14, 0);
INSERT INTO `activities` VALUES(51, 'skipped_video', '2013-03-12 21:11:08', '2013-03-12 21:11:08', 42, 11, 0);
INSERT INTO `activities` VALUES(52, 'skipped_video', '2013-03-12 21:11:26', '2013-03-12 21:11:26', 42, 13, 0);
INSERT INTO `activities` VALUES(53, 'skipped_video', '2013-03-12 21:11:34', '2013-03-12 21:11:34', 42, 8, 0);
INSERT INTO `activities` VALUES(54, 'skipped_video', '2013-03-12 21:11:41', '2013-03-12 21:11:41', 42, 6, 0);
INSERT INTO `activities` VALUES(55, 'skipped_video', '2013-03-12 21:11:42', '2013-03-12 21:11:42', 42, 5, 0);
INSERT INTO `activities` VALUES(56, 'skipped_video', '2013-03-12 21:11:44', '2013-03-12 21:11:44', 42, 9, 0);
INSERT INTO `activities` VALUES(57, 'skipped_video', '2013-03-12 21:11:45', '2013-03-12 21:11:45', 42, 12, 0);
INSERT INTO `activities` VALUES(58, 'skipped_video', '2013-03-12 21:11:46', '2013-03-12 21:11:46', 42, 11, 0);
INSERT INTO `activities` VALUES(59, 'skipped_video', '2013-03-12 21:11:47', '2013-03-12 21:11:47', 42, 10, 0);
INSERT INTO `activities` VALUES(60, 'skipped_video', '2013-03-12 21:11:48', '2013-03-12 21:11:48', 42, 6, 0);
INSERT INTO `activities` VALUES(61, 'skipped_video', '2013-03-12 21:11:50', '2013-03-12 21:11:50', 42, 5, 0);
INSERT INTO `activities` VALUES(62, 'skipped_video', '2013-03-12 21:11:51', '2013-03-12 21:11:51', 42, 7, 0);
INSERT INTO `activities` VALUES(63, 'skipped_video', '2013-03-12 21:11:52', '2013-03-12 21:11:52', 42, 13, 0);
INSERT INTO `activities` VALUES(64, 'first', '2013-03-12 21:12:33', '2013-03-12 21:12:33', 42, 9, 0);
INSERT INTO `activities` VALUES(65, 'skipped_video', '2013-03-12 21:12:34', '2013-03-12 21:12:34', 42, 10, 0);
INSERT INTO `activities` VALUES(66, 'skipped_video', '2013-03-12 21:12:35', '2013-03-12 21:12:35', 42, 7, 0);
INSERT INTO `activities` VALUES(67, 'skipped_video', '2013-03-12 21:12:36', '2013-03-12 21:12:36', 42, 6, 0);
INSERT INTO `activities` VALUES(68, 'skipped_video', '2013-03-12 21:12:37', '2013-03-12 21:12:37', 42, 13, 0);
INSERT INTO `activities` VALUES(69, 'skipped_video', '2013-03-12 21:12:39', '2013-03-12 21:12:39', 42, 11, 0);
INSERT INTO `activities` VALUES(70, 'skipped_video', '2013-03-12 21:12:40', '2013-03-12 21:12:40', 42, 12, 0);
INSERT INTO `activities` VALUES(71, 'skipped_video', '2013-03-12 21:12:43', '2013-03-12 21:12:43', 42, 14, 0);
INSERT INTO `activities` VALUES(72, 'skipped_video', '2013-03-12 21:12:44', '2013-03-12 21:12:44', 42, 5, 0);
INSERT INTO `activities` VALUES(73, 'skipped_video', '2013-03-12 21:12:47', '2013-03-12 21:12:47', 42, 6, 0);
INSERT INTO `activities` VALUES(74, 'skipped_video', '2013-03-12 21:12:49', '2013-03-12 21:12:49', 42, 10, 0);
INSERT INTO `activities` VALUES(75, 'skipped_video', '2013-03-12 21:12:50', '2013-03-12 21:12:50', 42, 7, 0);
INSERT INTO `activities` VALUES(76, 'skipped_video', '2013-03-12 21:12:51', '2013-03-12 21:12:51', 42, 13, 0);
INSERT INTO `activities` VALUES(77, 'skipped_video', '2013-03-12 21:12:52', '2013-03-12 21:12:52', 42, 14, 0);
INSERT INTO `activities` VALUES(78, 'skipped_video', '2013-03-12 21:12:53', '2013-03-12 21:12:53', 42, 11, 0);
INSERT INTO `activities` VALUES(79, 'skipped_video', '2013-03-12 21:13:08', '2013-03-12 21:13:08', 42, 5, 0);
INSERT INTO `activities` VALUES(80, 'skipped_video', '2013-03-12 21:13:10', '2013-03-12 21:13:10', 42, 10, 0);
INSERT INTO `activities` VALUES(81, 'skipped_video', '2013-03-12 21:13:11', '2013-03-12 21:13:11', 42, 6, 0);
INSERT INTO `activities` VALUES(82, 'skipped_video', '2013-03-12 21:13:13', '2013-03-12 21:13:13', 42, 9, 0);
INSERT INTO `activities` VALUES(83, 'skipped_video', '2013-03-12 21:14:58', '2013-03-12 21:14:58', 42, 14, 0);
INSERT INTO `activities` VALUES(84, 'skipped_video', '2013-03-12 21:15:07', '2013-03-12 21:15:07', 42, 8, 0);
INSERT INTO `activities` VALUES(85, 'first', '2013-03-12 21:27:27', '2013-03-12 21:27:27', 42, 14, 0);
INSERT INTO `activities` VALUES(86, 'first', '2013-03-12 22:08:07', '2013-03-12 22:08:07', 42, 9, 0);
INSERT INTO `activities` VALUES(87, 'skipped_video', '2013-03-12 22:08:09', '2013-03-12 22:08:09', 42, 10, 0);
INSERT INTO `activities` VALUES(88, 'skipped_video', '2013-03-12 22:08:10', '2013-03-12 22:08:10', 42, 11, 0);
INSERT INTO `activities` VALUES(89, 'skipped_video', '2013-03-12 22:08:11', '2013-03-12 22:08:11', 42, 14, 0);
INSERT INTO `activities` VALUES(90, 'skipped_video', '2013-03-12 22:08:12', '2013-03-12 22:08:12', 42, 7, 0);
INSERT INTO `activities` VALUES(91, 'skipped_video', '2013-03-12 22:08:13', '2013-03-12 22:08:13', 42, 12, 0);
INSERT INTO `activities` VALUES(92, 'skipped_video', '2013-03-12 22:08:14', '2013-03-12 22:08:14', 42, 13, 0);
INSERT INTO `activities` VALUES(93, 'skipped_video', '2013-03-12 22:08:15', '2013-03-12 22:08:15', 42, 8, 0);
INSERT INTO `activities` VALUES(94, 'skipped_video', '2013-03-12 22:08:16', '2013-03-12 22:08:16', 42, 6, 0);
INSERT INTO `activities` VALUES(95, 'skipped_video', '2013-03-12 22:08:17', '2013-03-12 22:08:17', 42, 11, 0);
INSERT INTO `activities` VALUES(96, 'skipped_video', '2013-03-12 22:08:18', '2013-03-12 22:08:18', 42, 10, 0);
INSERT INTO `activities` VALUES(97, 'skipped_video', '2013-03-12 22:08:19', '2013-03-12 22:08:19', 42, 7, 0);
INSERT INTO `activities` VALUES(98, 'skipped_video', '2013-03-12 22:08:21', '2013-03-12 22:08:21', 42, 5, 0);
INSERT INTO `activities` VALUES(99, 'skipped_video', '2013-03-12 22:08:22', '2013-03-12 22:08:22', 42, 9, 0);
INSERT INTO `activities` VALUES(100, 'skipped_video', '2013-03-12 22:08:23', '2013-03-12 22:08:23', 42, 8, 0);
INSERT INTO `activities` VALUES(101, 'skipped_video', '2013-03-12 22:08:25', '2013-03-12 22:08:25', 42, 12, 0);
INSERT INTO `activities` VALUES(102, 'skipped_video', '2013-03-12 22:08:26', '2013-03-12 22:08:26', 42, 14, 0);
INSERT INTO `activities` VALUES(103, 'skipped_video', '2013-03-12 22:08:27', '2013-03-12 22:08:27', 42, 13, 0);
INSERT INTO `activities` VALUES(104, 'skipped_video', '2013-03-12 22:08:28', '2013-03-12 22:08:28', 42, 11, 0);
INSERT INTO `activities` VALUES(105, 'skipped_video', '2013-03-12 22:08:29', '2013-03-12 22:08:29', 42, 5, 0);
INSERT INTO `activities` VALUES(106, 'skipped_video', '2013-03-12 22:08:30', '2013-03-12 22:08:30', 42, 10, 0);
INSERT INTO `activities` VALUES(107, 'skipped_video', '2013-03-12 22:08:31', '2013-03-12 22:08:31', 42, 12, 0);
INSERT INTO `activities` VALUES(108, 'skipped_video', '2013-03-12 22:08:32', '2013-03-12 22:08:32', 42, 14, 0);
INSERT INTO `activities` VALUES(109, 'skipped_video', '2013-03-12 22:08:44', '2013-03-12 22:08:44', 42, 8, 0);
INSERT INTO `activities` VALUES(110, 'skipped_video', '2013-03-12 22:08:45', '2013-03-12 22:08:45', 42, 7, 0);
INSERT INTO `activities` VALUES(111, 'skipped_video', '2013-03-12 22:08:46', '2013-03-12 22:08:46', 42, 13, 0);
INSERT INTO `activities` VALUES(112, 'skipped_video', '2013-03-12 22:08:46', '2013-03-12 22:08:46', 42, 6, 0);
INSERT INTO `activities` VALUES(113, 'first', '2013-03-12 22:19:30', '2013-03-12 22:19:30', 43, 15, 0);
INSERT INTO `activities` VALUES(114, 'pressed_grab_it', '2013-03-12 22:19:30', '2013-03-12 22:19:30', 43, 0, 2);
INSERT INTO `activities` VALUES(115, 'viewed_menu_item', '2013-03-12 22:19:32', '2013-03-12 22:19:32', 43, 15, 0);
INSERT INTO `activities` VALUES(116, 'viewed_menu_item', '2013-03-12 22:19:32', '2013-03-12 22:19:33', 43, 17, 0);
INSERT INTO `activities` VALUES(117, 'viewing_menu_item', '2013-03-12 22:19:33', '2013-03-12 22:19:34', 43, 1, 0);
INSERT INTO `activities` VALUES(118, 'touched_ribbon', '2013-03-12 22:19:34', '2013-03-12 22:19:34', 43, 0, 1);
INSERT INTO `activities` VALUES(119, 'touched_ribbon', '2013-03-12 22:19:36', '2013-03-12 22:19:36', 43, 0, 1);
INSERT INTO `activities` VALUES(120, 'exit_while_viewing_menu_item', '2013-03-12 22:19:42', '2013-03-12 22:19:42', 43, 1, 0);
INSERT INTO `activities` VALUES(121, 'exit_while_viewing_menu_item', '2013-03-12 22:19:42', '2013-03-12 22:19:42', 43, 0, 0);
INSERT INTO `activities` VALUES(122, 'started_watching_video', '2013-03-13 12:31:38', '2013-03-13 12:31:41', 44, 9, 0);
INSERT INTO `activities` VALUES(123, 'started_watching_video', '2013-03-13 12:31:41', '2013-03-13 12:32:49', 44, 9, 0);
INSERT INTO `activities` VALUES(124, 'started_watching_video', '2013-03-13 12:32:49', '2013-03-13 12:44:32', 44, 12, 0);
INSERT INTO `activities` VALUES(125, 'started_watching_video', '2013-03-13 12:44:32', '2013-03-13 12:44:48', 44, 8, 0);
INSERT INTO `activities` VALUES(126, 'started_watching_video', '2013-03-13 12:44:48', '2013-03-13 12:48:04', 44, 12, 0);
INSERT INTO `activities` VALUES(127, 'started_watching_video', '2013-03-13 12:48:04', '2013-03-13 12:49:27', 44, 12, 0);
INSERT INTO `activities` VALUES(128, 'started_watching_video', '2013-03-13 12:49:27', '2013-03-13 12:50:37', 44, 7, 0);
INSERT INTO `activities` VALUES(129, 'started_watching_video', '2013-03-13 12:50:37', '2013-03-13 12:51:23', 44, 6, 0);
INSERT INTO `activities` VALUES(130, 'started_watching_video', '2013-03-13 12:51:23', '2013-03-13 13:04:45', 44, 10, 0);
INSERT INTO `activities` VALUES(131, 'started_watching_video', '2013-03-13 13:04:45', '2013-03-13 13:05:12', 44, 10, 0);
INSERT INTO `activities` VALUES(132, 'started_watching_video', '2013-03-13 13:05:12', '2013-03-13 13:13:53', 44, 13, 0);
INSERT INTO `activities` VALUES(133, 'started_watching_video', '2013-03-13 13:13:53', '2013-03-13 13:13:56', 44, 13, 0);
INSERT INTO `activities` VALUES(134, 'started_watching_video', '2013-03-13 13:13:56', '2013-03-13 13:15:22', 44, 8, 0);
INSERT INTO `activities` VALUES(135, 'started_watching_video', '2013-03-13 13:15:22', '2013-03-13 13:15:35', 44, 11, 0);
INSERT INTO `activities` VALUES(136, 'started_watching_video', '2013-03-13 13:15:35', '2013-03-13 13:17:09', 44, 14, 0);
INSERT INTO `activities` VALUES(137, 'started_watching_video', '2013-03-13 13:17:09', '2013-03-13 13:17:11', 44, 6, 0);
INSERT INTO `activities` VALUES(138, 'started_watching_video', '2013-03-13 13:17:11', '2013-03-13 13:17:13', 44, 12, 0);
INSERT INTO `activities` VALUES(139, 'started_watching_video', '2013-03-13 13:17:13', '2013-03-13 13:19:31', 44, 9, 0);
INSERT INTO `activities` VALUES(140, 'started_watching_video', '2013-03-13 13:19:31', '2013-03-13 13:19:33', 44, 13, 0);
INSERT INTO `activities` VALUES(141, 'started_watching_video', '2013-03-13 13:19:33', '2013-03-13 13:19:50', 44, 7, 0);
INSERT INTO `activities` VALUES(142, 'started_watching_video', '2013-03-13 13:19:50', '2013-03-13 13:21:18', 44, 7, 0);
INSERT INTO `activities` VALUES(143, 'started_watching_video', '2013-03-13 13:21:18', '2013-03-13 13:21:19', 44, 7, 0);
INSERT INTO `activities` VALUES(144, 'started_watching_video', '2013-03-13 13:21:19', '2013-03-13 13:22:19', 44, 9, 0);
INSERT INTO `activities` VALUES(145, 'started_watching_video', '2013-03-13 13:22:19', '2013-03-13 13:22:21', 44, 6, 0);
INSERT INTO `activities` VALUES(146, 'first', '2013-03-13 13:22:21', '2013-03-13 13:22:22', 44, 8, 0);
INSERT INTO `activities` VALUES(147, 'skipped_video', '2013-03-13 13:22:22', '2013-03-13 13:22:23', 44, 7, 0);
INSERT INTO `activities` VALUES(148, 'skipped_video', '2013-03-13 13:22:23', '2013-03-13 13:22:24', 44, 13, 0);
INSERT INTO `activities` VALUES(149, 'skipped_video', '2013-03-13 13:22:24', '2013-03-13 13:22:25', 44, 9, 0);
INSERT INTO `activities` VALUES(150, 'skipped_video', '2013-03-13 13:22:25', '2013-03-13 13:22:27', 44, 11, 0);
INSERT INTO `activities` VALUES(151, 'skipped_video', '2013-03-13 13:22:27', '2013-03-13 13:22:29', 44, 12, 0);
INSERT INTO `activities` VALUES(152, 'skipped_video', '2013-03-13 13:22:29', '2013-03-13 13:22:30', 44, 10, 0);
INSERT INTO `activities` VALUES(153, 'skipped_video', '2013-03-13 13:22:30', '2013-03-13 13:22:32', 44, 6, 0);
INSERT INTO `activities` VALUES(154, 'skipped_video', '2013-03-13 13:22:32', '2013-03-13 13:22:32', 44, 14, 0);
INSERT INTO `activities` VALUES(155, 'skipped_video', '2013-03-13 13:22:32', '2013-03-13 13:22:34', 44, 13, 0);
INSERT INTO `activities` VALUES(156, 'started_watching_video', '2013-03-13 13:22:34', '2013-03-13 13:22:37', 44, 9, 0);
INSERT INTO `activities` VALUES(157, 'started_watching_video', '2013-03-13 13:22:37', '2013-03-13 13:22:39', 44, 12, 0);
INSERT INTO `activities` VALUES(158, 'started_watching_video', '2013-03-13 13:22:39', '2013-03-13 13:22:40', 44, 14, 0);
INSERT INTO `activities` VALUES(159, 'started_watching_video', '2013-03-13 13:22:40', '2013-03-13 13:22:42', 44, 11, 0);
INSERT INTO `activities` VALUES(160, 'started_watching_video', '2013-03-13 13:22:42', '2013-03-13 13:23:42', 44, 11, 0);
INSERT INTO `activities` VALUES(161, 'first', '2013-03-13 13:23:42', '2013-03-13 13:23:44', 44, 13, 0);
INSERT INTO `activities` VALUES(162, 'skipped_video', '2013-03-13 13:23:44', '2013-03-13 13:23:44', 44, 14, 0);
INSERT INTO `activities` VALUES(163, 'skipped_video', '2013-03-13 13:23:44', '2013-03-13 13:23:45', 44, 7, 0);
INSERT INTO `activities` VALUES(164, 'skipped_video', '2013-03-13 13:23:45', '2013-03-13 13:23:46', 44, 6, 0);
INSERT INTO `activities` VALUES(165, 'skipped_video', '2013-03-13 13:23:46', '2013-03-13 13:23:47', 44, 12, 0);
INSERT INTO `activities` VALUES(166, 'skipped_video', '2013-03-13 13:23:47', '2013-03-13 13:23:47', 44, 9, 0);
INSERT INTO `activities` VALUES(167, 'started_watching_video', '2013-03-13 13:23:47', '2013-03-13 14:13:15', 44, 10, 0);
INSERT INTO `activities` VALUES(168, 'started_watching_video', '2013-03-13 14:13:15', '1969-12-31 19:00:00', 44, 6, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` VALUES(1, 'Path started', '2013-03-09 18:34:38', '2013-03-09 18:34:41', NULL, NULL, 1, 1);
INSERT INTO `events` VALUES(2, 'Path started', '2013-03-09 18:34:53', '2013-03-09 18:34:55', NULL, NULL, 2, 1);
INSERT INTO `events` VALUES(3, 'Path started', '2013-03-09 18:47:42', '2013-03-09 18:48:18', NULL, NULL, 3, 1);
INSERT INTO `events` VALUES(4, 'Path started', '2013-03-09 18:48:21', '2013-03-09 18:48:23', NULL, NULL, 4, 1);
INSERT INTO `events` VALUES(5, 'Path started', '2013-03-09 18:48:31', '2013-03-09 18:48:33', NULL, NULL, 5, 1);
INSERT INTO `events` VALUES(6, 'Path started', '2013-03-09 20:05:27', '2013-03-09 21:41:44', NULL, NULL, 6, 1);
INSERT INTO `events` VALUES(7, 'Path started', '2013-03-10 00:30:22', '2013-03-10 00:30:28', NULL, NULL, 7, 1);
INSERT INTO `events` VALUES(8, 'Path started', '2013-03-10 01:34:56', '2013-03-10 01:34:58', NULL, NULL, 14, 1);
INSERT INTO `events` VALUES(9, 'Path started', '2013-03-10 01:35:25', '2013-03-10 01:35:28', NULL, NULL, 15, 1);
INSERT INTO `events` VALUES(10, 'Path started', '2013-03-10 01:35:39', '2013-03-10 01:35:54', NULL, NULL, 16, 1);
INSERT INTO `events` VALUES(11, 'Path started', '2013-03-10 01:37:19', '2013-03-10 01:37:32', NULL, NULL, 17, 1);
INSERT INTO `events` VALUES(12, 'Path started', '2013-03-10 01:37:37', '2013-03-10 01:37:39', NULL, NULL, 18, 1);
INSERT INTO `events` VALUES(13, 'Path started', '2013-03-10 01:38:50', '2013-03-10 01:44:22', NULL, NULL, 19, 1);
INSERT INTO `events` VALUES(14, 'Path started', '2013-03-10 03:32:11', '2013-03-10 15:18:59', NULL, NULL, 20, 1);
INSERT INTO `events` VALUES(15, 'Path started', '2013-03-10 15:19:03', '2013-03-13 14:47:37', NULL, NULL, 21, 1);
INSERT INTO `events` VALUES(16, 'Path started', '2013-03-14 11:24:12', '2013-03-14 14:15:54', NULL, NULL, 22, 1);
INSERT INTO `events` VALUES(17, 'Path started', '2013-03-14 14:16:12', '2013-03-14 14:16:15', NULL, NULL, 23, 1);

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
  `small_pic` varchar(255) DEFAULT NULL,
  `big_pic` varchar(255) CHARACTER SET latin1 NOT NULL,
  `path` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=euckr AUTO_INCREMENT=18 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` VALUES(1, 'kamjatang', '감자탕', '7.99', 'Pork bone & potato soup, rice', 'chef-kamjatang-small.png', 'chef-kamjatang-big.png', '', '', 6);
INSERT INTO `items` VALUES(2, 'bulgogi', '불고기', '10.99', 'Stir-fried beef, some vegetables, noodles with sweet soy sauce on the sizzling plate, rice', 'bulgogi-small.png', 'bulgogi-big.png', '', '', 3);
INSERT INTO `items` VALUES(3, 'cutlet(kasu)', '돈까스/새우까스', '12.99', 'Deep-fried pork or shrimp cutlet with vegetable and rice', 'cutlet-small.png', 'cutlet-big.png', '`', '', 3);
INSERT INTO `items` VALUES(4, 'japchae', '잡채', '9.99', 'Stir-fried beef, some vegetables, noodles with sweet soy sauce', 'japchae-small.png', 'japchae-big.png', '', '', 3);
INSERT INTO `items` VALUES(5, 'UFC Best KO 2011 - 2012', '', '', '', NULL, '', '1.mp4', 'StrikeForce', 2);
INSERT INTO `items` VALUES(6, 'Blake Griffin 3 Pt Fail', '', '', '', NULL, '', '2.mp4', 'NBA', 2);
INSERT INTO `items` VALUES(7, 'Cheating Boss Prank', '', '', '', NULL, '', '3.mp4', 'Just for Laughs', 2);
INSERT INTO `items` VALUES(8, 'Embarrassing Urinal Prank', '', '', '', NULL, '', '4.mp4', 'Just for Laughs', 2);
INSERT INTO `items` VALUES(9, 'I Got A Boy', '', '', '', NULL, '', '5.mp4', 'Girls Generation', 2);
INSERT INTO `items` VALUES(10, 'League of Legends Top 5 Plays (Wk. 113)', '', '', '', NULL, '', '6.mp4', 'LOLKing', 2);
INSERT INTO `items` VALUES(11, 'Lionel Messi Humiliates Great Players', '', '', '', NULL, '', '7.mp4', 'FuteBol', 2);
INSERT INTO `items` VALUES(12, 'Gangnam Style', '', '', '', NULL, '', '8.mp4', 'Psy', 2);
INSERT INTO `items` VALUES(13, 'Into Darkness Trailer ', '', '', '', NULL, '', '9.mp4', 'Star Trek', 2);
INSERT INTO `items` VALUES(14, 'White Couple Black Baby', '', '', '', NULL, '', '10.mp4', 'Just for Laughs', 2);
INSERT INTO `items` VALUES(15, 'free appetizer', '', '', '', NULL, '', '', '', 4);
INSERT INTO `items` VALUES(16, 'Growple! Tablets', '', '', '', 'notice-growple-small.png', 'notice-growple-big.png', '', '', 7);
INSERT INTO `items` VALUES(17, 'The Owl of Minerva', '', '', '', 'about-owl-small.png', 'about-owl-big.png', '', '', 5);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` VALUES(1, 'discover', 1, NULL);
INSERT INTO `modules` VALUES(2, 'play', 1, NULL);
INSERT INTO `modules` VALUES(3, 'hot', 1, 1);
INSERT INTO `modules` VALUES(4, 'event', 1, 1);
INSERT INTO `modules` VALUES(5, 'about', 1, 1);
INSERT INTO `modules` VALUES(6, 'chef''s pick', 1, 1);
INSERT INTO `modules` VALUES(7, 'notice', 1, 1);
INSERT INTO `modules` VALUES(8, 'special', 1, 1);
INSERT INTO `modules` VALUES(9, 'promo', 1, 1);
INSERT INTO `modules` VALUES(10, 'new', 1, 1);
INSERT INTO `modules` VALUES(11, 'videos', 1, 2);
INSERT INTO `modules` VALUES(12, 'games', 1, 2);

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
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr AUTO_INCREMENT=1 ;

--
-- Dumping data for table `reports`
--


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
  `name` varchar(255) NOT NULL,
  `section_id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`),
  KEY `section_id` (`section_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=euckr AUTO_INCREMENT=31 ;

--
-- Dumping data for table `section_modules`
--

INSERT INTO `section_modules` VALUES(10, '', 1, NULL);
INSERT INTO `section_modules` VALUES(11, '', 2, NULL);
INSERT INTO `section_modules` VALUES(12, '', 3, NULL);
INSERT INTO `section_modules` VALUES(13, '', 2, 1);
INSERT INTO `section_modules` VALUES(14, '', 3, 1);
INSERT INTO `section_modules` VALUES(15, '', 2, 2);
INSERT INTO `section_modules` VALUES(16, '', 3, 2);
INSERT INTO `section_modules` VALUES(17, '', 2, 3);
INSERT INTO `section_modules` VALUES(18, '', 3, 3);
INSERT INTO `section_modules` VALUES(19, '', 2, 4);
INSERT INTO `section_modules` VALUES(20, '', 3, 4);
INSERT INTO `section_modules` VALUES(21, '', 2, 8);
INSERT INTO `section_modules` VALUES(22, '', 3, 8);
INSERT INTO `section_modules` VALUES(23, '', 2, 9);
INSERT INTO `section_modules` VALUES(24, '', 3, 9);
INSERT INTO `section_modules` VALUES(25, '', 2, 10);
INSERT INTO `section_modules` VALUES(26, '', 3, 10);
INSERT INTO `section_modules` VALUES(27, '', 2, 11);
INSERT INTO `section_modules` VALUES(28, '', 3, 11);
INSERT INTO `section_modules` VALUES(29, '', 2, 12);
INSERT INTO `section_modules` VALUES(30, '', 3, 12);

-- --------------------------------------------------------

--
-- Table structure for table `snapshots`
--

CREATE TABLE `snapshots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotions` varchar(10000) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `duration` double(11,2) NOT NULL,
  `sales` varchar(10000) CHARACTER SET latin1 NOT NULL,
  `popularity` varchar(10000) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `sectionmodule_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sectionmodule_id` (`sectionmodule_id`),
  KEY `report_id` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr AUTO_INCREMENT=1 ;

--
-- Dumping data for table `snapshots`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `steps`
--

INSERT INTO `steps` VALUES(1, '2013-03-14 14:16:13', '1969-12-31 19:00:00', 17, 1);

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
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` VALUES(1, 'ribbon');
INSERT INTO `tests` VALUES(2, 'touch this');
INSERT INTO `tests` VALUES(3, 'promo_slides');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

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
