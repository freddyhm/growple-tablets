-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 22, 2013 at 02:34 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` VALUES(1, 'viewed_item', '2013-03-21 12:03:11', '2013-03-21 12:03:11', 34, 16, 0);
INSERT INTO `activities` VALUES(2, 'loved_item', '2013-03-21 12:03:12', '2013-03-21 12:03:12', 34, 16, 0);
INSERT INTO `activities` VALUES(3, 'viewed_item', '2013-03-21 12:03:13', '2013-03-21 12:03:13', 34, 1, 0);
INSERT INTO `activities` VALUES(4, 'loved_item', '2013-03-21 12:03:14', '2013-03-21 12:03:14', 34, 1, 0);
INSERT INTO `activities` VALUES(5, 'viewed_item', '2013-03-21 12:03:28', '2013-03-21 12:03:28', 35, 3, 0);
INSERT INTO `activities` VALUES(6, 'viewed_item', '2013-03-21 12:03:30', '2013-03-21 12:03:30', 35, 4, 0);
INSERT INTO `activities` VALUES(7, 'viewed_item', '2013-03-21 12:03:31', '2013-03-21 12:03:31', 35, 2, 0);
INSERT INTO `activities` VALUES(8, 'viewed_item', '2013-03-21 12:03:33', '2013-03-21 12:03:33', 35, 17, 0);
INSERT INTO `activities` VALUES(9, 'viewed_item', '2013-03-21 12:03:52', '2013-03-21 12:03:52', 36, 16, 0);
INSERT INTO `activities` VALUES(10, 'viewed_item', '2013-03-21 12:03:55', '2013-03-21 12:03:55', 36, 3, 0);
INSERT INTO `activities` VALUES(11, 'viewed_item', '2013-03-21 12:03:56', '2013-03-21 12:03:56', 36, 4, 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `comment_items`
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` VALUES(1, 'Path started', '2013-03-18 10:14:07', '2013-03-18 10:14:24', NULL, NULL, 1, 1);
INSERT INTO `events` VALUES(2, 'Path started', '2013-03-18 10:15:54', '2013-03-18 10:20:14', NULL, NULL, 2, 1);
INSERT INTO `events` VALUES(3, 'Path started', '2013-03-18 13:07:36', '2013-03-18 13:08:14', NULL, NULL, 3, 1);
INSERT INTO `events` VALUES(4, 'Path started', '2013-03-18 13:08:20', '2013-03-18 13:08:23', NULL, NULL, 4, 1);
INSERT INTO `events` VALUES(5, 'Path started', '2013-03-18 13:08:26', '2013-03-18 13:08:29', NULL, NULL, 5, 1);
INSERT INTO `events` VALUES(6, 'Path started', '2013-03-18 13:08:33', '2013-03-18 13:09:43', NULL, NULL, 6, 1);
INSERT INTO `events` VALUES(7, 'Path started', '2013-03-18 13:09:46', '2013-03-18 13:09:48', NULL, NULL, 7, 1);
INSERT INTO `events` VALUES(8, 'Path started', '2013-03-18 13:09:55', '2013-03-18 13:09:58', NULL, NULL, 8, 1);
INSERT INTO `events` VALUES(9, 'Path started', '2013-03-18 13:10:03', '2013-03-18 13:10:05', NULL, NULL, 9, 1);
INSERT INTO `events` VALUES(10, 'Path started', '2013-03-18 13:17:03', '2013-03-18 13:18:12', NULL, NULL, 10, 1);
INSERT INTO `events` VALUES(11, 'Path started', '2013-03-18 13:18:13', '2013-03-18 13:18:15', NULL, NULL, 11, 1);
INSERT INTO `events` VALUES(12, 'Path started', '2013-03-18 13:18:16', '2013-03-18 23:09:08', NULL, NULL, 12, 1);
INSERT INTO `events` VALUES(13, 'Path started', '2013-03-19 18:07:17', '2013-03-20 18:19:25', NULL, NULL, 13, 1);
INSERT INTO `events` VALUES(14, 'Path started', '2013-03-21 11:11:36', '2013-03-21 11:53:38', NULL, NULL, 14, 1);
INSERT INTO `events` VALUES(15, 'Path started', '2013-03-21 11:54:03', '2013-03-21 11:54:10', NULL, NULL, 15, 1);
INSERT INTO `events` VALUES(16, 'Path started', '2013-03-21 11:54:25', '2013-03-21 11:54:32', NULL, NULL, 16, 1);
INSERT INTO `events` VALUES(17, 'Path started', '2013-03-21 11:54:47', '2013-03-21 11:54:56', NULL, NULL, 17, 1);
INSERT INTO `events` VALUES(18, 'Path started', '2013-03-21 12:02:11', '2013-03-21 12:02:16', NULL, NULL, 18, 1);
INSERT INTO `events` VALUES(19, 'Path started', '2013-03-21 12:03:10', '2013-03-21 12:03:17', NULL, NULL, 19, 1);
INSERT INTO `events` VALUES(20, 'Path started', '2013-03-21 12:03:27', '2013-03-21 12:03:39', NULL, NULL, 20, 1);
INSERT INTO `events` VALUES(21, 'Path started', '2013-03-21 12:03:52', '2013-03-21 12:04:00', NULL, NULL, 21, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=euckr AUTO_INCREMENT=18 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` VALUES(1, 'kamjatang', '감자탕', '7.99', 'Spicy soup made with pork bone, vegetables, green onion, hot peppers and ground wild sesame seeds', 'chef-kamjatang-small.png', 'chef-kamjatang-big.jpg', '', '', 22, 8);
INSERT INTO `items` VALUES(2, 'bulgogi', '불고기', '10.99', 'Sweet marinated & grilled beef with vegetables, it was voted 23rd for world''s most delicious food', 'bulgogi-small.png', 'bulgogi-big.jpg', '', '', 7, 5);
INSERT INTO `items` VALUES(3, 'cutlet(kasu)', '돈까스/새우까스', '12.99', 'Popular dish that consists of breaded, deep-fried pork cutlet & sliced into bite-sized pieces', 'cutlet-small.png', 'cutlet-big.jpg', '`', '', 47, 5);
INSERT INTO `items` VALUES(4, 'japchae', '잡채', '9.99', 'Famous dish made from sweet potato noodles, beef and stir fried in sesame oil with various vegetables', 'japchae-small.png', 'japchae-big.jpg', '', '', 5, 5);
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
INSERT INTO `items` VALUES(16, 'Growple! Tablets', '', '', 'Growple''s a fun discovery tool that connects you with places you love. Find out more at growple.com', 'notice-growple-small.png', 'notice-growple-big.jpg', '', '', 31, 9);
INSERT INTO `items` VALUES(17, 'The Owl of Minerva', '', '', 'Rated top among T.O''s best restaurants, we strive to offer the best in korean cuisine. Enjoy!', 'about-owl-small.png', 'about-owl-big.jpg', '', '', 9, 7);

-- --------------------------------------------------------

--
-- Table structure for table `metrics`
--

CREATE TABLE `metrics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metrictype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `metrics`
--

INSERT INTO `metrics` VALUES(1, 'popularity', 1);
INSERT INTO `metrics` VALUES(2, 'interest', 2);
INSERT INTO `metrics` VALUES(3, 'exposure', 2);
INSERT INTO `metrics` VALUES(4, 'engagement', 2);

-- --------------------------------------------------------

--
-- Table structure for table `metric_types`
--

CREATE TABLE `metric_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `metric_types`
--

INSERT INTO `metric_types` VALUES(1, 'behavior');
INSERT INTO `metric_types` VALUES(2, 'performance');

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
-- Table structure for table `releases`
--

CREATE TABLE `releases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `releasetype_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `releases`
--

INSERT INTO `releases` VALUES(1, 'v2.0.0', '2013-03-18 20:29:28', '0000-00-00 00:00:00', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `release_types`
--

CREATE TABLE `release_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `release_types`
--

INSERT INTO `release_types` VALUES(1, 'experiment');
INSERT INTO `release_types` VALUES(2, 'fix');
INSERT INTO `release_types` VALUES(3, 'baseline');

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
  `test_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `results`
--


-- --------------------------------------------------------

--
-- Table structure for table `snapshots`
--

CREATE TABLE `snapshots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mods` varchar(10000) NOT NULL,
  `items` varchar(10000) NOT NULL,
  `release_id` int(11) NOT NULL,
  `metric_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `steps`
--

INSERT INTO `steps` VALUES(1, '2013-03-18 10:14:07', '2013-03-18 10:14:08', 1, 1);
INSERT INTO `steps` VALUES(2, '2013-03-18 10:14:08', '2013-03-18 10:14:19', 1, 2);
INSERT INTO `steps` VALUES(3, '2013-03-18 10:14:19', '2013-03-18 10:14:24', 1, 1);
INSERT INTO `steps` VALUES(4, '2013-03-18 10:15:54', '2013-03-18 10:15:55', 2, 1);
INSERT INTO `steps` VALUES(5, '2013-03-18 10:15:55', '2013-03-18 10:20:08', 2, 2);
INSERT INTO `steps` VALUES(6, '2013-03-18 10:20:08', '2013-03-18 10:20:14', 2, 1);
INSERT INTO `steps` VALUES(7, '2013-03-18 13:07:36', '2013-03-18 13:08:14', 3, 1);
INSERT INTO `steps` VALUES(8, '2013-03-18 13:08:20', '2013-03-18 13:08:23', 4, 1);
INSERT INTO `steps` VALUES(9, '2013-03-18 13:08:26', '2013-03-18 13:08:29', 5, 1);
INSERT INTO `steps` VALUES(10, '2013-03-18 13:08:33', '2013-03-18 13:09:43', 6, 1);
INSERT INTO `steps` VALUES(11, '2013-03-18 13:09:46', '2013-03-18 13:09:48', 7, 1);
INSERT INTO `steps` VALUES(12, '2013-03-18 13:09:55', '2013-03-18 13:09:58', 8, 1);
INSERT INTO `steps` VALUES(13, '2013-03-18 13:10:03', '2013-03-18 13:10:05', 9, 1);
INSERT INTO `steps` VALUES(14, '2013-03-18 13:17:03', '2013-03-18 13:18:12', 10, 1);
INSERT INTO `steps` VALUES(15, '2013-03-18 13:18:13', '2013-03-18 13:18:15', 11, 1);
INSERT INTO `steps` VALUES(16, '2013-03-18 13:18:16', '2013-03-18 14:32:47', 12, 1);
INSERT INTO `steps` VALUES(17, '2013-03-18 14:32:47', '2013-03-18 14:33:18', 12, 2);
INSERT INTO `steps` VALUES(18, '2013-03-18 14:33:18', '2013-03-18 14:33:25', 12, 2);
INSERT INTO `steps` VALUES(19, '2013-03-18 14:33:25', '2013-03-18 14:33:35', 12, 2);
INSERT INTO `steps` VALUES(20, '2013-03-18 14:33:35', '2013-03-18 14:33:46', 12, 2);
INSERT INTO `steps` VALUES(21, '2013-03-18 14:33:46', '2013-03-18 14:35:12', 12, 1);
INSERT INTO `steps` VALUES(22, '2013-03-18 14:35:12', '2013-03-18 14:35:13', 12, 2);
INSERT INTO `steps` VALUES(23, '2013-03-18 14:35:13', '2013-03-18 23:07:08', 12, 1);
INSERT INTO `steps` VALUES(24, '2013-03-18 23:07:08', '2013-03-18 23:09:04', 12, 2);
INSERT INTO `steps` VALUES(25, '2013-03-18 23:09:04', '2013-03-18 23:09:08', 12, 1);
INSERT INTO `steps` VALUES(26, '2013-03-19 18:07:17', '2013-03-19 18:07:19', 13, 1);
INSERT INTO `steps` VALUES(27, '2013-03-19 18:07:19', '2013-03-19 18:07:20', 13, 2);
INSERT INTO `steps` VALUES(28, '2013-03-19 18:07:20', '2013-03-20 18:19:25', 13, 1);
INSERT INTO `steps` VALUES(29, '2013-03-21 11:11:36', '2013-03-21 11:53:38', 14, 1);
INSERT INTO `steps` VALUES(30, '2013-03-21 11:54:03', '2013-03-21 11:54:10', 15, 1);
INSERT INTO `steps` VALUES(31, '2013-03-21 11:54:25', '2013-03-21 11:54:32', 16, 1);
INSERT INTO `steps` VALUES(32, '2013-03-21 11:54:47', '2013-03-21 11:54:56', 17, 1);
INSERT INTO `steps` VALUES(33, '2013-03-21 12:02:11', '2013-03-21 12:02:16', 18, 1);
INSERT INTO `steps` VALUES(34, '2013-03-21 12:03:10', '2013-03-21 12:03:17', 19, 1);
INSERT INTO `steps` VALUES(35, '2013-03-21 12:03:27', '2013-03-21 12:03:39', 20, 1);
INSERT INTO `steps` VALUES(36, '2013-03-21 12:03:52', '2013-03-21 12:04:00', 21, 1);

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
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `metric_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` VALUES(1, '2013-03-18 20:27:26', '0000-00-00 00:00:00', 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

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
