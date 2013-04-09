-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 09, 2013 at 11:27 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` VALUES(1, 'viewed_item', '2013-04-08 15:19:40', '2013-04-08 15:19:40', 58, 2, NULL);
INSERT INTO `activities` VALUES(2, 'viewed_item', '2013-04-08 15:19:43', '2013-04-08 15:19:43', 58, 3, NULL);
INSERT INTO `activities` VALUES(3, 'viewed_item', '2013-04-08 15:19:59', '2013-04-08 15:19:59', 59, 18, NULL);
INSERT INTO `activities` VALUES(4, 'viewed_item', '2013-04-08 15:20:00', '2013-04-08 15:20:00', 59, 16, NULL);
INSERT INTO `activities` VALUES(5, 'viewed_item', '2013-04-08 15:20:30', '2013-04-08 15:20:30', 60, 2, NULL);
INSERT INTO `activities` VALUES(6, 'viewed_item', '2013-04-08 15:20:31', '2013-04-08 15:20:31', 60, 3, NULL);
INSERT INTO `activities` VALUES(7, 'viewed_item', '2013-04-08 15:20:32', '2013-04-08 15:20:32', 60, 4, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `comment_items`
--

INSERT INTO `comment_items` VALUES(1, '2013-04-06 14:04:49', 3, 1);
INSERT INTO `comment_items` VALUES(2, '2013-04-06 14:05:26', 1, 3);
INSERT INTO `comment_items` VALUES(3, '2013-04-06 14:05:38', 2, 4);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

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

INSERT INTO `items` VALUES(1, 'kamjatang', '감자탕', '7.99', 'Spicy soup made with pork bone, vegetables, green onion, hot peppers and ground wild sesame seeds', 'chef-kamjatang-small.png', 'kamjatang-big.png', '', '', 239, 5);
INSERT INTO `items` VALUES(2, 'bulgogi', '불고기', '10.99', 'Sweet marinated & grilled beef with vegetables, it was voted 23rd for world''s most delicious food', 'bulgogi-small.png', 'bulgogi-big.png', '', '', 24, 5);
INSERT INTO `items` VALUES(3, 'Cutlet', '돈까스/새우까스', '12.99', 'Popular dish that consists of breaded, deep-fried pork cutlet & sliced into bite-sized pieces', 'cutlet-small.png', 'cutlet-big.png', '', '', 13, 5);
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
INSERT INTO `items` VALUES(16, 'Growple! Tablets', '', '', 'Growple''s a fun discovery tool that connects you with places you love. Find out more at growple.com', 'notice-growple-small.png', 'growple-big.png', '', '', 16, 7);
INSERT INTO `items` VALUES(17, 'Owl of Minerva', '', '', 'Rated top among T.O''s best restaurants, we strive to offer the best in korean cuisine. Enjoy!', 'about-owl-small.png', 'owl-big.png', '', '', 0, 7);
INSERT INTO `items` VALUES(18, 'Coming Soon!', '', '', 'Want some earth-shattering, mouth-watering, kick-ass, sweet deals? Heart this page and stay tuned!', NULL, 'comingsoon-big.png', '', '', 25, 8);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

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
