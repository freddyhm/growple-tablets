-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 26, 2013 at 05:21 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` VALUES(1, 'answered_question', '2013-04-26 14:02:59', '2013-04-26 14:02:59', 74, 0, NULL);
INSERT INTO `activities` VALUES(2, 'viewed_item', '2013-04-26 14:03:02', '2013-04-26 14:03:02', 74, 3, NULL);
INSERT INTO `activities` VALUES(3, 'unloved_item', '2013-04-26 14:03:03', '2013-04-26 14:03:03', 74, 3, NULL);
INSERT INTO `activities` VALUES(4, 'answered_question', '2013-04-26 14:03:04', '2013-04-26 14:03:04', 74, 0, NULL);
INSERT INTO `activities` VALUES(5, 'unloved_commented_item', '2013-04-26 14:03:06', '2013-04-26 14:03:06', 74, 3, NULL);
INSERT INTO `activities` VALUES(6, 'answered_question', '2013-04-26 14:03:59', '2013-04-26 14:03:59', 75, 0, NULL);
INSERT INTO `activities` VALUES(7, 'viewed_item', '2013-04-26 14:04:02', '2013-04-26 14:04:02', 75, 2, NULL);
INSERT INTO `activities` VALUES(8, 'unloved_item', '2013-04-26 14:04:03', '2013-04-26 14:04:03', 75, 2, NULL);
INSERT INTO `activities` VALUES(9, 'unloved_commented_item', '2013-04-26 14:04:04', '2013-04-26 14:04:04', 75, 2, NULL);
INSERT INTO `activities` VALUES(10, 'answered_question', '2013-04-26 14:04:07', '2013-04-26 14:04:07', 75, 0, NULL);
INSERT INTO `activities` VALUES(11, 'viewed_item', '2013-04-26 14:04:14', '2013-04-26 14:04:14', 75, 2, NULL);
INSERT INTO `activities` VALUES(12, 'unloved_item', '2013-04-26 14:04:15', '2013-04-26 14:04:15', 75, 2, NULL);
INSERT INTO `activities` VALUES(13, 'unloved_commented_item', '2013-04-26 14:04:16', '2013-04-26 14:04:16', 75, 2, NULL);
INSERT INTO `activities` VALUES(14, 'unloved_item', '2013-04-26 14:04:22', '2013-04-26 14:04:22', 75, 2, NULL);
INSERT INTO `activities` VALUES(15, 'unloved_commented_item', '2013-04-26 14:04:23', '2013-04-26 14:04:23', 75, 2, NULL);
INSERT INTO `activities` VALUES(16, 'viewed_item', '2013-04-26 14:04:35', '2013-04-26 14:04:35', 75, 3, NULL);
INSERT INTO `activities` VALUES(17, 'unloved_item', '2013-04-26 14:04:35', '2013-04-26 14:04:35', 75, 3, NULL);
INSERT INTO `activities` VALUES(18, 'unloved_item', '2013-04-26 14:04:37', '2013-04-26 14:04:37', 75, 3, NULL);
INSERT INTO `activities` VALUES(19, 'unloved_commented_item', '2013-04-26 14:04:38', '2013-04-26 14:04:38', 75, 3, NULL);
INSERT INTO `activities` VALUES(20, 'viewed_item', '2013-04-26 14:05:19', '2013-04-26 14:05:19', 75, 3, NULL);
INSERT INTO `activities` VALUES(21, 'unloved_item', '2013-04-26 14:05:19', '2013-04-26 14:05:19', 75, 3, NULL);
INSERT INTO `activities` VALUES(22, 'unloved_commented_item', '2013-04-26 14:05:20', '2013-04-26 14:05:20', 75, 3, NULL);
INSERT INTO `activities` VALUES(23, 'viewed_item', '2013-04-26 14:05:27', '2013-04-26 14:05:27', 75, 2, NULL);
INSERT INTO `activities` VALUES(24, 'unloved_item', '2013-04-26 14:05:27', '2013-04-26 14:05:27', 75, 2, NULL);
INSERT INTO `activities` VALUES(25, 'unloved_commented_item', '2013-04-26 14:05:28', '2013-04-26 14:05:28', 75, 2, NULL);
INSERT INTO `activities` VALUES(26, 'answered_question', '2013-04-26 14:05:39', '2013-04-26 14:05:39', 75, 0, NULL);
INSERT INTO `activities` VALUES(27, 'unloved_item', '2013-04-26 14:05:42', '2013-04-26 14:05:42', 75, 2, NULL);
INSERT INTO `activities` VALUES(28, 'answered_question', '2013-04-26 14:08:41', '2013-04-26 14:08:41', 75, 0, NULL);
INSERT INTO `activities` VALUES(29, 'answered_question', '2013-04-26 14:09:07', '2013-04-26 14:09:07', 75, 0, NULL);
INSERT INTO `activities` VALUES(30, 'answered_question', '2013-04-26 14:10:05', '2013-04-26 14:10:05', 75, 0, NULL);
INSERT INTO `activities` VALUES(31, 'unloved_commented_item', '2013-04-26 14:11:18', '2013-04-26 14:11:18', 75, 2, NULL);
INSERT INTO `activities` VALUES(32, 'unloved_item', '2013-04-26 14:11:21', '2013-04-26 14:11:21', 75, 2, NULL);
INSERT INTO `activities` VALUES(33, 'viewed_item', '2013-04-26 14:14:07', '2013-04-26 14:14:07', 75, 3, NULL);
INSERT INTO `activities` VALUES(34, 'unloved_item', '2013-04-26 14:14:08', '2013-04-26 14:14:08', 75, 3, NULL);
INSERT INTO `activities` VALUES(35, 'unloved_item', '2013-04-26 14:14:12', '2013-04-26 14:14:12', 75, 3, NULL);
INSERT INTO `activities` VALUES(36, 'answered_question', '2013-04-26 14:14:18', '2013-04-26 14:14:18', 75, 0, NULL);
INSERT INTO `activities` VALUES(37, 'unloved_item', '2013-04-26 14:14:25', '2013-04-26 14:14:25', 75, 3, NULL);
INSERT INTO `activities` VALUES(38, 'unloved_item', '2013-04-26 14:14:30', '2013-04-26 14:14:30', 75, 3, NULL);
INSERT INTO `activities` VALUES(39, 'answered_question', '2013-04-26 14:14:33', '2013-04-26 14:14:33', 75, 0, NULL);
INSERT INTO `activities` VALUES(40, 'answered_question', '2013-04-26 14:14:38', '2013-04-26 14:14:38', 75, 0, NULL);
INSERT INTO `activities` VALUES(41, 'answered_question', '2013-04-26 14:14:48', '2013-04-26 14:14:48', 75, 0, NULL);
INSERT INTO `activities` VALUES(42, 'unloved_commented_item', '2013-04-26 14:14:51', '2013-04-26 14:14:51', 75, 3, NULL);
INSERT INTO `activities` VALUES(43, 'unloved_item', '2013-04-26 14:14:54', '2013-04-26 14:14:54', 75, 3, NULL);
INSERT INTO `activities` VALUES(44, 'unloved_item', '2013-04-26 14:14:59', '2013-04-26 14:14:59', 75, 3, NULL);
INSERT INTO `activities` VALUES(45, 'unloved_commented_item', '2013-04-26 14:15:04', '2013-04-26 14:15:04', 75, 3, NULL);
INSERT INTO `activities` VALUES(46, 'unloved_item', '2013-04-26 14:15:07', '2013-04-26 14:15:07', 75, 3, NULL);
INSERT INTO `activities` VALUES(47, 'answered_question', '2013-04-26 14:17:25', '2013-04-26 14:17:25', 75, 0, NULL);
INSERT INTO `activities` VALUES(48, 'viewed_item', '2013-04-26 14:17:26', '2013-04-26 14:17:26', 75, 3, NULL);
INSERT INTO `activities` VALUES(49, 'unloved_item', '2013-04-26 14:17:27', '2013-04-26 14:17:27', 75, 3, NULL);
INSERT INTO `activities` VALUES(50, 'answered_question', '2013-04-26 14:17:29', '2013-04-26 14:17:29', 75, 0, NULL);
INSERT INTO `activities` VALUES(51, 'answered_question', '2013-04-26 14:17:30', '2013-04-26 14:17:30', 75, 0, NULL);
INSERT INTO `activities` VALUES(52, 'unloved_item', '2013-04-26 14:17:33', '2013-04-26 14:17:33', 75, 3, NULL);
INSERT INTO `activities` VALUES(53, 'answered_question', '2013-04-26 14:17:34', '2013-04-26 14:17:34', 75, 0, NULL);
INSERT INTO `activities` VALUES(54, 'answered_question', '2013-04-26 14:17:44', '2013-04-26 14:17:44', 75, 0, NULL);
INSERT INTO `activities` VALUES(55, 'unloved_commented_item', '2013-04-26 14:17:46', '2013-04-26 14:17:46', 75, 3, NULL);
INSERT INTO `activities` VALUES(56, 'unloved_item', '2013-04-26 14:17:49', '2013-04-26 14:17:49', 75, 3, NULL);
INSERT INTO `activities` VALUES(57, 'unloved_item', '2013-04-26 14:18:02', '2013-04-26 14:18:02', 75, 3, NULL);
INSERT INTO `activities` VALUES(58, 'unloved_commented_item', '2013-04-26 14:18:03', '2013-04-26 14:18:04', 75, 3, NULL);
INSERT INTO `activities` VALUES(59, 'answered_question', '2013-04-26 14:18:07', '2013-04-26 14:18:07', 75, 0, NULL);
INSERT INTO `activities` VALUES(60, 'answered_question', '2013-04-26 14:18:12', '2013-04-26 14:18:12', 75, 0, NULL);
INSERT INTO `activities` VALUES(61, 'viewed_item', '2013-04-26 14:18:23', '2013-04-26 14:18:23', 75, 3, NULL);
INSERT INTO `activities` VALUES(62, 'unloved_item', '2013-04-26 14:18:24', '2013-04-26 14:18:24', 75, 3, NULL);
INSERT INTO `activities` VALUES(63, 'answered_question', '2013-04-26 14:18:33', '2013-04-26 14:18:33', 75, 0, NULL);
INSERT INTO `activities` VALUES(64, 'unloved_commented_item', '2013-04-26 14:18:35', '2013-04-26 14:18:35', 75, 3, NULL);
INSERT INTO `activities` VALUES(65, 'unloved_item', '2013-04-26 14:18:38', '2013-04-26 14:18:38', 75, 3, NULL);
INSERT INTO `activities` VALUES(66, 'unloved_item', '2013-04-26 14:18:40', '2013-04-26 14:18:40', 75, 3, NULL);
INSERT INTO `activities` VALUES(67, 'unloved_item', '2013-04-26 14:18:41', '2013-04-26 14:18:41', 75, 3, NULL);
INSERT INTO `activities` VALUES(68, 'answered_question', '2013-04-26 14:18:45', '2013-04-26 14:18:45', 75, 0, NULL);
INSERT INTO `activities` VALUES(69, 'unloved_item', '2013-04-26 14:18:49', '2013-04-26 14:18:49', 75, 3, NULL);
INSERT INTO `activities` VALUES(70, 'unloved_commented_item', '2013-04-26 14:18:52', '2013-04-26 14:18:52', 75, 3, NULL);
INSERT INTO `activities` VALUES(71, 'unloved_item', '2013-04-26 14:18:56', '2013-04-26 14:18:56', 75, 3, NULL);
INSERT INTO `activities` VALUES(72, 'answered_question', '2013-04-26 14:19:06', '2013-04-26 14:19:06', 75, 0, NULL);
INSERT INTO `activities` VALUES(73, 'unloved_item', '2013-04-26 14:19:11', '2013-04-26 14:19:11', 75, 3, NULL);
INSERT INTO `activities` VALUES(74, 'answered_question', '2013-04-26 14:19:16', '2013-04-26 14:19:16', 75, 0, NULL);
INSERT INTO `activities` VALUES(75, 'answered_question', '2013-04-26 14:19:35', '2013-04-26 14:19:35', 75, 0, NULL);
INSERT INTO `activities` VALUES(76, 'answered_question', '2013-04-26 14:19:59', '2013-04-26 14:19:59', 75, 0, NULL);
INSERT INTO `activities` VALUES(77, 'unloved_item', '2013-04-26 14:20:04', '2013-04-26 14:20:04', 75, 3, NULL);
INSERT INTO `activities` VALUES(78, 'answered_question', '2013-04-26 14:20:06', '2013-04-26 14:20:06', 75, 0, NULL);
INSERT INTO `activities` VALUES(79, 'unloved_item', '2013-04-26 14:24:07', '2013-04-26 14:24:07', 75, 3, NULL);
INSERT INTO `activities` VALUES(80, 'unloved_commented_item', '2013-04-26 14:24:08', '2013-04-26 14:24:08', 75, 3, NULL);
INSERT INTO `activities` VALUES(81, 'unloved_item', '2013-04-26 14:24:12', '2013-04-26 14:24:12', 75, 3, NULL);
INSERT INTO `activities` VALUES(82, 'started_watching_video', '2013-04-26 14:25:13', '2013-04-26 14:25:44', 76, 11, NULL);
INSERT INTO `activities` VALUES(83, 'started_watching_video', '2013-04-26 14:25:22', '2013-04-26 14:25:44', 78, 20, NULL);
INSERT INTO `activities` VALUES(84, 'answered_question', '2013-04-26 14:25:36', '2013-04-26 14:25:36', 79, 0, NULL);

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
  `question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` VALUES(1, 'Too salty and/or spicy', 2, NULL);
INSERT INTO `comments` VALUES(2, 'Not enough, expecting more food', 2, NULL);
INSERT INTO `comments` VALUES(3, 'Too expensive', 2, NULL);
INSERT INTO `comments` VALUES(4, 'First time here', 3, 1);
INSERT INTO `comments` VALUES(5, '1-2 times a month', 3, 1);
INSERT INTO `comments` VALUES(6, '2+ times a month', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment_sources`
--

CREATE TABLE `comment_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `comment_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

--
-- Dumping data for table `comment_sources`
--

INSERT INTO `comment_sources` VALUES(1, '2013-04-26 14:02:59', 4, 0);
INSERT INTO `comment_sources` VALUES(2, '2013-04-26 14:03:04', 5, 0);
INSERT INTO `comment_sources` VALUES(3, '2013-04-26 14:03:06', 3, 3);
INSERT INTO `comment_sources` VALUES(4, '2013-04-26 14:03:59', 4, 0);
INSERT INTO `comment_sources` VALUES(5, '2013-04-26 14:04:04', 3, 2);
INSERT INTO `comment_sources` VALUES(6, '2013-04-26 14:04:07', 5, 0);
INSERT INTO `comment_sources` VALUES(7, '2013-04-26 14:04:16', 3, 2);
INSERT INTO `comment_sources` VALUES(8, '2013-04-26 14:04:23', 3, 2);
INSERT INTO `comment_sources` VALUES(9, '2013-04-26 14:04:38', 2, 3);
INSERT INTO `comment_sources` VALUES(10, '2013-04-26 14:05:20', 3, 3);
INSERT INTO `comment_sources` VALUES(11, '2013-04-26 14:05:28', 2, 2);
INSERT INTO `comment_sources` VALUES(12, '2013-04-26 14:05:39', 4, 0);
INSERT INTO `comment_sources` VALUES(13, '2013-04-26 14:08:41', 5, 0);
INSERT INTO `comment_sources` VALUES(14, '2013-04-26 14:09:07', 6, 0);
INSERT INTO `comment_sources` VALUES(15, '2013-04-26 14:10:05', 4, 0);
INSERT INTO `comment_sources` VALUES(16, '2013-04-26 14:11:18', 3, 2);
INSERT INTO `comment_sources` VALUES(17, '2013-04-26 14:14:18', 4, 0);
INSERT INTO `comment_sources` VALUES(18, '2013-04-26 14:14:33', 6, 0);
INSERT INTO `comment_sources` VALUES(19, '2013-04-26 14:14:38', 5, 0);
INSERT INTO `comment_sources` VALUES(20, '2013-04-26 14:14:48', 6, 0);
INSERT INTO `comment_sources` VALUES(21, '2013-04-26 14:14:51', 3, 3);
INSERT INTO `comment_sources` VALUES(22, '2013-04-26 14:15:04', 3, 3);
INSERT INTO `comment_sources` VALUES(23, '2013-04-26 14:17:25', 6, 0);
INSERT INTO `comment_sources` VALUES(24, '2013-04-26 14:17:29', 6, 0);
INSERT INTO `comment_sources` VALUES(25, '2013-04-26 14:17:30', 4, 0);
INSERT INTO `comment_sources` VALUES(26, '2013-04-26 14:17:35', 5, 0);
INSERT INTO `comment_sources` VALUES(27, '2013-04-26 14:17:44', 6, 0);
INSERT INTO `comment_sources` VALUES(28, '2013-04-26 14:17:46', 3, 3);
INSERT INTO `comment_sources` VALUES(29, '2013-04-26 14:18:04', 3, 3);
INSERT INTO `comment_sources` VALUES(30, '2013-04-26 14:18:07', 5, 0);
INSERT INTO `comment_sources` VALUES(31, '2013-04-26 14:18:12', 6, 0);
INSERT INTO `comment_sources` VALUES(32, '2013-04-26 14:18:33', 5, 0);
INSERT INTO `comment_sources` VALUES(33, '2013-04-26 14:18:35', 3, 3);
INSERT INTO `comment_sources` VALUES(34, '2013-04-26 14:18:45', 6, 0);
INSERT INTO `comment_sources` VALUES(35, '2013-04-26 14:18:52', 2, 3);
INSERT INTO `comment_sources` VALUES(36, '2013-04-26 14:19:06', 5, 0);
INSERT INTO `comment_sources` VALUES(37, '2013-04-26 14:19:16', 6, 0);
INSERT INTO `comment_sources` VALUES(38, '2013-04-26 14:19:35', 6, 0);
INSERT INTO `comment_sources` VALUES(39, '2013-04-26 14:19:59', 6, 0);
INSERT INTO `comment_sources` VALUES(40, '2013-04-26 14:20:06', 6, 0);
INSERT INTO `comment_sources` VALUES(41, '2013-04-26 14:24:08', 3, 3);
INSERT INTO `comment_sources` VALUES(42, '2013-04-26 14:25:36', 6, 0);
INSERT INTO `comment_sources` VALUES(43, '2013-04-26 14:27:05', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comment_types`
--

CREATE TABLE `comment_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `comment_types`
--

INSERT INTO `comment_types` VALUES(1, 'love');
INSERT INTO `comment_types` VALUES(2, 'unlove');
INSERT INTO `comment_types` VALUES(3, 'qna');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

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
INSERT INTO `events` VALUES(10, 'Path started', '2013-04-04 14:55:50', '2013-04-06 14:23:29', NULL, NULL, 54, 1);
INSERT INTO `events` VALUES(11, 'Path started', '2013-04-06 14:23:32', '2013-04-06 14:23:48', NULL, NULL, 55, 1);
INSERT INTO `events` VALUES(12, 'Path started', '2013-04-06 14:23:49', '2013-04-06 14:23:52', NULL, NULL, 56, 1);
INSERT INTO `events` VALUES(13, 'Path started', '2013-04-06 14:23:57', '2013-04-06 14:24:04', NULL, NULL, 57, 1);
INSERT INTO `events` VALUES(14, 'Path started', '2013-04-06 14:24:04', '2013-04-06 14:24:20', NULL, NULL, 58, 1);
INSERT INTO `events` VALUES(15, 'Path started', '2013-04-06 14:24:21', '2013-04-08 15:17:32', NULL, NULL, 59, 1);
INSERT INTO `events` VALUES(16, 'Path started', '2013-04-08 15:19:38', '2013-04-08 15:19:45', NULL, NULL, 60, 1);
INSERT INTO `events` VALUES(17, 'Path started', '2013-04-08 15:19:58', '2013-04-08 15:20:03', NULL, NULL, 61, 1);
INSERT INTO `events` VALUES(18, 'Path started', '2013-04-08 15:20:22', '2013-04-08 15:20:39', NULL, NULL, 62, 1);
INSERT INTO `events` VALUES(19, 'Path started', '2013-04-13 17:12:55', '2013-04-25 15:51:54', NULL, NULL, 63, 1);
INSERT INTO `events` VALUES(20, 'Path started', '2013-04-26 13:51:27', '2013-04-26 13:52:20', NULL, NULL, 64, 1);
INSERT INTO `events` VALUES(21, 'Path started', '2013-04-26 13:52:46', '2013-04-26 13:52:49', NULL, NULL, 65, 1);
INSERT INTO `events` VALUES(22, 'Path started', '2013-04-26 13:52:50', '2013-04-26 13:53:13', NULL, NULL, 66, 1);
INSERT INTO `events` VALUES(23, 'Path started', '2013-04-26 13:53:14', '2013-04-26 13:53:23', NULL, NULL, 67, 1);
INSERT INTO `events` VALUES(24, 'Path started', '2013-04-26 13:53:34', '2013-04-26 13:53:50', NULL, NULL, 68, 1);
INSERT INTO `events` VALUES(25, 'Path started', '2013-04-26 13:54:01', '2013-04-26 13:54:15', NULL, NULL, 69, 1);
INSERT INTO `events` VALUES(26, 'Path started', '2013-04-26 13:54:20', '2013-04-26 13:54:36', NULL, NULL, 70, 1);
INSERT INTO `events` VALUES(27, 'Path started', '2013-04-26 13:54:40', '2013-04-26 13:54:48', NULL, NULL, 71, 1);
INSERT INTO `events` VALUES(28, 'Path started', '2013-04-26 13:55:33', '2013-04-26 14:01:26', NULL, NULL, 72, 1);
INSERT INTO `events` VALUES(29, 'Path started', '2013-04-26 14:02:54', '2013-04-26 14:03:35', NULL, NULL, 73, 1);
INSERT INTO `events` VALUES(30, 'Path started', '2013-04-26 14:03:48', '2013-04-26 14:25:43', NULL, NULL, 74, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=euckr AUTO_INCREMENT=31 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` VALUES(1, 'kamjatang', '감자탕', '7.99', 'Spicy soup made with pork bone, vegetables, green onion, hot peppers and ground wild sesame seeds', 'chef-kamjatang-small.png', 'chef-kamjatang-big.jpg', '', '', 22, 8);
INSERT INTO `items` VALUES(2, 'bulgogi', '불고기', '10.99', 'Sweet marinated & grilled beef with vegetables, it was voted 23rd for world''s most delicious food', 'bulgogi-small.png', 'bulgogi-big.jpg', '', '', 7, 5);
INSERT INTO `items` VALUES(3, 'cutlet(kasu)', '돈까스/새우까스', '12.99', 'Popular dish that consists of breaded, deep-fried pork cutlet & sliced into bite-sized pieces', 'cutlet-small.png', 'cutlet-big.jpg', '`', '', 47, 5);
INSERT INTO `items` VALUES(4, 'japchae', '잡채', '9.99', 'Famous dish made from sweet potato noodles, beef and stir fried in sesame oil with various vegetables', 'japchae-small.png', 'japchae-big.jpg', '', '', 5, 5);
INSERT INTO `items` VALUES(5, 'After Earth Trailer', '', '', '', NULL, '', 'after-earth.mp4', 'Upcoming Movies', 0, 2);
INSERT INTO `items` VALUES(6, 'Dora The Explorer', '', '', '', NULL, '', 'dora-explorer.mp4', 'Movie Trailer', 0, 2);
INSERT INTO `items` VALUES(7, 'Cheating Boss Prank', '', '', '', NULL, '', 'cheat-wife.mp4', 'Just for Laughs', 0, 2);
INSERT INTO `items` VALUES(8, 'Embarrassing Urinal Prank', '', '', '', NULL, '', 'small-dick.mp4', 'Just for Laughs', 0, 2);
INSERT INTO `items` VALUES(9, 'Monsters University Trailer', '', '', '', NULL, '', 'monsters-uni.mp4', 'Upcoming Movies', 0, 2);
INSERT INTO `items` VALUES(10, 'Flamingos', '', '', '', NULL, '', 'rollin-safari-flamingos.mp4', 'Rollin'' Safari - FMX 2013', 0, 2);
INSERT INTO `items` VALUES(11, 'Telekenesis', '', '', '', NULL, '', 'teleken-prank.mp4', 'Just For Laughs', 0, 2);
INSERT INTO `items` VALUES(12, 'Gangnam Style', '', '', '', NULL, '', 'gang-style.mp4', 'Psy', 0, 2);
INSERT INTO `items` VALUES(13, 'Into Darkness Trailer ', '', '', '', NULL, '', 'start-trek.mp4', 'Star Trek', 0, 2);
INSERT INTO `items` VALUES(14, 'White Couple Black Baby', '', '', '', NULL, '', 'black-baby.mp4', 'Just for Laughs', 0, 2);
INSERT INTO `items` VALUES(16, 'Growple! Tablets', '', '', 'Growple''s a fun discovery tool that connects you with places you love. Find out more at growple.com', 'notice-growple-small.png', 'notice-growple-big.jpg', '', '', 35, 9);
INSERT INTO `items` VALUES(17, 'The Owl of Minerva', '', '', 'Rated top among T.O''s best restaurants, we strive to offer the best in korean cuisine. Enjoy!', 'about-owl-small.png', 'about-owl-big.jpg', '', '', 9, 7);
INSERT INTO `items` VALUES(18, 'Wrong Side', '', '', '', NULL, '', 'wrong-side.mp4', 'Just For Laughs', 0, 2);
INSERT INTO `items` VALUES(19, 'The Hangover 3', '', '', '', NULL, '', 'hangover-3.mp4', 'Upcoming Movies', 0, 2);
INSERT INTO `items` VALUES(20, 'Beer Chase', '', '', '', NULL, '', 'beer-chase.mp4', 'Carlton Draught', 0, 2);
INSERT INTO `items` VALUES(21, 'Pacific Rim', '', '', '', NULL, '', 'pacific-rim.mp4', 'Upcoming Movies', 0, 2);
INSERT INTO `items` VALUES(22, 'Table Side Fail', '', '', '', NULL, '', 'table-fail.mp4', 'Fail Blog', 0, 2);
INSERT INTO `items` VALUES(23, 'This Too Shall Pass', '', '', '', NULL, '', 'ok-go.mp4', 'OK Go', 0, 2);
INSERT INTO `items` VALUES(24, 'Suburban Zombies', '', '', '', NULL, '', 'zombie-attack.mp4', 'Key & Peele', 0, 2);
INSERT INTO `items` VALUES(25, 'Amazing Illusion', '', '', '', NULL, '', 'magic-cut.mp4', 'America''s Got Talent', 0, 2);
INSERT INTO `items` VALUES(26, 'Trapped with Gorilla', '', '', '', NULL, '', 'trapped-gorilla.mp4', 'Just For Laughs', 0, 2);
INSERT INTO `items` VALUES(27, 'Deer Poop', '', '', '', NULL, '', 'deer-poop.mp4', 'Just For Laughs', 0, 2);
INSERT INTO `items` VALUES(28, 'Scary Movie 5 Trailer', '', '', '', NULL, '', 'scary-movie5.mp4', 'Upcoming Movies', 0, 2);
INSERT INTO `items` VALUES(29, 'The Chase', '', '', '', NULL, '', 'rollin-safari-chase.mp4', 'Rollin'' Safari - FMX 2013', 0, 2);
INSERT INTO `items` VALUES(30, 'Oblivion Trailer', '', '', '', NULL, '', 'oblivion.mp4', 'Upcoming Movies', 0, 2);

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
INSERT INTO `modules` VALUES(3, 'spotlight', 1, 1);
INSERT INTO `modules` VALUES(4, 'feature', 1, 1);
INSERT INTO `modules` VALUES(5, 'hot', 1, 4);
INSERT INTO `modules` VALUES(6, 'event', 1, 3);
INSERT INTO `modules` VALUES(7, 'about', 1, 3);
INSERT INTO `modules` VALUES(8, 'chef''s pick', 1, 3);
INSERT INTO `modules` VALUES(9, 'notice', 1, 3);
INSERT INTO `modules` VALUES(10, 'special', 1, 3);
INSERT INTO `modules` VALUES(11, 'promo', 1, 3);
INSERT INTO `modules` VALUES(12, 'new', 1, 3);
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
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` VALUES(1, 'How often do you come to Owl?');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=80 ;

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
INSERT INTO `steps` VALUES(12, '2013-04-04 14:55:50', '2013-04-04 14:57:59', 10, 1);
INSERT INTO `steps` VALUES(13, '2013-04-04 14:57:59', '2013-04-04 14:58:00', 10, 2);
INSERT INTO `steps` VALUES(14, '2013-04-04 14:58:00', '2013-04-04 14:58:10', 10, 1);
INSERT INTO `steps` VALUES(15, '2013-04-04 14:58:10', '2013-04-04 14:58:11', 10, 2);
INSERT INTO `steps` VALUES(16, '2013-04-04 14:58:11', '2013-04-04 14:58:19', 10, 1);
INSERT INTO `steps` VALUES(17, '2013-04-04 14:58:19', '2013-04-04 14:58:20', 10, 2);
INSERT INTO `steps` VALUES(18, '2013-04-04 14:58:20', '2013-04-04 14:58:26', 10, 1);
INSERT INTO `steps` VALUES(19, '2013-04-04 14:58:26', '2013-04-04 14:58:27', 10, 2);
INSERT INTO `steps` VALUES(20, '2013-04-04 14:58:27', '2013-04-04 14:59:33', 10, 1);
INSERT INTO `steps` VALUES(21, '2013-04-04 14:59:33', '2013-04-04 14:59:34', 10, 2);
INSERT INTO `steps` VALUES(22, '2013-04-04 14:59:34', '2013-04-04 14:59:40', 10, 1);
INSERT INTO `steps` VALUES(23, '2013-04-04 14:59:40', '2013-04-04 14:59:42', 10, 2);
INSERT INTO `steps` VALUES(24, '2013-04-04 14:59:42', '2013-04-04 19:33:17', 10, 1);
INSERT INTO `steps` VALUES(25, '2013-04-04 19:33:17', '2013-04-04 19:33:39', 10, 2);
INSERT INTO `steps` VALUES(26, '2013-04-04 19:33:39', '2013-04-04 19:33:41', 10, 1);
INSERT INTO `steps` VALUES(27, '2013-04-04 19:33:41', '2013-04-04 19:33:43', 10, 2);
INSERT INTO `steps` VALUES(28, '2013-04-04 19:33:43', '2013-04-04 19:33:45', 10, 1);
INSERT INTO `steps` VALUES(29, '2013-04-04 19:33:45', '2013-04-04 19:34:03', 10, 2);
INSERT INTO `steps` VALUES(30, '2013-04-04 19:34:03', '2013-04-04 19:37:10', 10, 2);
INSERT INTO `steps` VALUES(31, '2013-04-04 19:37:11', '2013-04-05 17:44:13', 10, 1);
INSERT INTO `steps` VALUES(32, '2013-04-05 17:44:13', '2013-04-05 17:45:18', 10, 2);
INSERT INTO `steps` VALUES(33, '2013-04-05 17:45:18', '2013-04-05 17:45:19', 10, 1);
INSERT INTO `steps` VALUES(34, '2013-04-05 17:45:19', '2013-04-05 17:45:20', 10, 2);
INSERT INTO `steps` VALUES(35, '2013-04-05 17:45:20', '2013-04-05 17:45:21', 10, 1);
INSERT INTO `steps` VALUES(36, '2013-04-05 17:45:21', '2013-04-05 17:45:22', 10, 2);
INSERT INTO `steps` VALUES(37, '2013-04-05 17:45:22', '2013-04-05 17:45:22', 10, 1);
INSERT INTO `steps` VALUES(38, '2013-04-05 17:45:22', '2013-04-05 17:45:23', 10, 2);
INSERT INTO `steps` VALUES(39, '2013-04-05 17:45:23', '2013-04-06 14:07:50', 10, 1);
INSERT INTO `steps` VALUES(40, '2013-04-06 14:07:50', '2013-04-06 14:07:51', 10, 2);
INSERT INTO `steps` VALUES(41, '2013-04-06 14:07:51', '2013-04-06 14:07:52', 10, 1);
INSERT INTO `steps` VALUES(42, '2013-04-06 14:07:52', '2013-04-06 14:07:53', 10, 2);
INSERT INTO `steps` VALUES(43, '2013-04-06 14:07:53', '2013-04-06 14:23:29', 10, 1);
INSERT INTO `steps` VALUES(44, '2013-04-06 14:23:32', '2013-04-06 14:23:48', 11, 1);
INSERT INTO `steps` VALUES(45, '2013-04-06 14:23:49', '2013-04-06 14:23:52', 12, 1);
INSERT INTO `steps` VALUES(46, '2013-04-06 14:23:57', '2013-04-06 14:24:04', 13, 1);
INSERT INTO `steps` VALUES(47, '2013-04-06 14:24:04', '2013-04-06 14:24:12', 14, 1);
INSERT INTO `steps` VALUES(48, '2013-04-06 14:24:12', '2013-04-06 14:24:20', 14, 2);
INSERT INTO `steps` VALUES(49, '2013-04-06 14:24:21', '2013-04-06 14:24:23', 15, 1);
INSERT INTO `steps` VALUES(50, '2013-04-06 14:24:23', '2013-04-06 14:24:25', 15, 2);
INSERT INTO `steps` VALUES(51, '2013-04-06 14:24:25', '2013-04-06 14:24:26', 15, 1);
INSERT INTO `steps` VALUES(52, '2013-04-06 14:24:26', '2013-04-06 14:24:27', 15, 2);
INSERT INTO `steps` VALUES(53, '2013-04-06 14:24:27', '2013-04-06 14:24:29', 15, 1);
INSERT INTO `steps` VALUES(54, '2013-04-06 14:24:29', '2013-04-06 14:24:38', 15, 2);
INSERT INTO `steps` VALUES(55, '2013-04-06 14:24:38', '2013-04-06 14:27:18', 15, 1);
INSERT INTO `steps` VALUES(56, '2013-04-06 14:27:18', '2013-04-08 15:14:26', 15, 1);
INSERT INTO `steps` VALUES(57, '2013-04-08 15:14:26', '2013-04-08 15:17:32', 15, 1);
INSERT INTO `steps` VALUES(58, '2013-04-08 15:19:38', '2013-04-08 15:19:45', 16, 1);
INSERT INTO `steps` VALUES(59, '2013-04-08 15:19:58', '2013-04-08 15:20:03', 17, 1);
INSERT INTO `steps` VALUES(60, '2013-04-08 15:20:22', '2013-04-08 15:20:39', 18, 1);
INSERT INTO `steps` VALUES(61, '2013-04-13 17:12:55', '2013-04-25 15:51:54', 19, 1);
INSERT INTO `steps` VALUES(62, '2013-04-26 13:51:27', '2013-04-26 13:52:03', 20, 1);
INSERT INTO `steps` VALUES(63, '2013-04-26 13:52:03', '2013-04-26 13:52:20', 20, 2);
INSERT INTO `steps` VALUES(64, '2013-04-26 13:52:46', '2013-04-26 13:52:49', 21, 1);
INSERT INTO `steps` VALUES(65, '2013-04-26 13:52:50', '2013-04-26 13:53:13', 22, 1);
INSERT INTO `steps` VALUES(66, '2013-04-26 13:53:14', '2013-04-26 13:53:23', 23, 1);
INSERT INTO `steps` VALUES(67, '2013-04-26 13:53:34', '2013-04-26 13:53:50', 24, 1);
INSERT INTO `steps` VALUES(68, '2013-04-26 13:54:01', '2013-04-26 13:54:15', 25, 1);
INSERT INTO `steps` VALUES(69, '2013-04-26 13:54:20', '2013-04-26 13:54:36', 26, 1);
INSERT INTO `steps` VALUES(70, '2013-04-26 13:54:40', '2013-04-26 13:54:48', 27, 1);
INSERT INTO `steps` VALUES(71, '2013-04-26 13:55:33', '2013-04-26 13:59:37', 28, 1);
INSERT INTO `steps` VALUES(72, '2013-04-26 13:59:37', '2013-04-26 13:59:38', 28, 2);
INSERT INTO `steps` VALUES(73, '2013-04-26 13:59:38', '2013-04-26 14:01:26', 28, 1);
INSERT INTO `steps` VALUES(74, '2013-04-26 14:02:54', '2013-04-26 14:03:35', 29, 1);
INSERT INTO `steps` VALUES(75, '2013-04-26 14:03:48', '2013-04-26 14:25:13', 30, 1);
INSERT INTO `steps` VALUES(76, '2013-04-26 14:25:13', '2013-04-26 14:25:14', 30, 2);
INSERT INTO `steps` VALUES(77, '2013-04-26 14:25:14', '2013-04-26 14:25:22', 30, 1);
INSERT INTO `steps` VALUES(78, '2013-04-26 14:25:22', '2013-04-26 14:25:27', 30, 2);
INSERT INTO `steps` VALUES(79, '2013-04-26 14:25:27', '2013-04-26 14:25:43', 30, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

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
INSERT INTO `users` VALUES(61, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(62, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(63, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(64, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(65, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(66, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(67, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(68, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(69, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(70, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(71, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(72, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(73, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(74, 'JohnJane', 1, 2, NULL);

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
