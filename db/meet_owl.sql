-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 12, 2013 at 08:33 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

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
  `path` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=euckr AUTO_INCREMENT=18 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` VALUES(1, 'kamjatang', '감자탕', '7.99', 'Pork bone & potato soup, rice', '01.jpg', '', '', 6);
INSERT INTO `items` VALUES(2, 'bulgogi', '불고기', '10.99', 'Stir-fried beef, some vegetables, noodles with sweet soy sauce on the sizzling plate, rice', '02.jpg', '', '', 3);
INSERT INTO `items` VALUES(3, 'cutlet(kasu)', '돈까스/새우까스', '12.99', 'Deep-fried pork or shrimp cutlet with vegetable and rice', '21.jpg', '', '', 3);
INSERT INTO `items` VALUES(4, 'japchae', '잡채', '9.99', 'Stir-fried beef, some vegetables, noodles with sweet soy sauce', '08.jpg', '', '', 3);
INSERT INTO `items` VALUES(5, 'UFC Best KO 2011 - 2012', '', '', '', '', '1.mp4', 'StrikeForce', 2);
INSERT INTO `items` VALUES(6, 'Blake Griffin 3 Pt Fail', '', '', '', '', '2.mp4', 'NBA', 2);
INSERT INTO `items` VALUES(7, 'Cheating Boss Prank', '', '', '', '', '3.mp4', 'Just for Laughs', 2);
INSERT INTO `items` VALUES(8, 'Embarrassing Urinal Prank', '', '', '', '', '4.mp4', 'Just for Laughs', 2);
INSERT INTO `items` VALUES(9, 'I Got A Boy', '', '', '', '', '5.mp4', 'Girls Generation', 2);
INSERT INTO `items` VALUES(10, 'League of Legends Top 5 Plays (Wk. 113)', '', '', '', '', '6.mp4', 'LOLKing', 2);
INSERT INTO `items` VALUES(11, 'Lionel Messi Humiliates Great Players', '', '', '', '', '7.mp4', 'FuteBol', 2);
INSERT INTO `items` VALUES(12, 'Gangnam Style', '', '', '', '', '8.mp4', 'Psy', 2);
INSERT INTO `items` VALUES(13, 'Into Darkness Trailer ', '', '', '', '', '9.mp4', 'Star Trek', 2);
INSERT INTO `items` VALUES(14, 'White Couple Black Baby', '', '', '', '', '10.mp4', 'Just for Laughs', 2);
INSERT INTO `items` VALUES(15, 'free appetizer', '', '', '', '', '', '', 4);
INSERT INTO `items` VALUES(16, 'Growple! Tablets', '', '', '', '', '', '', 7);
INSERT INTO `items` VALUES(17, 'The Owl of Minerva', '', '', '', '', '', '', 5);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `steps`
--

INSERT INTO `steps` VALUES(1, '2013-03-09 18:47:59', '1969-12-31 19:00:00', 3, 3);
INSERT INTO `steps` VALUES(2, '2013-03-09 21:32:19', '1969-12-31 19:00:00', 6, 1);
INSERT INTO `steps` VALUES(3, '2013-03-09 21:32:33', '1969-12-31 19:00:00', 6, 1);
INSERT INTO `steps` VALUES(4, '2013-03-09 21:32:54', '1969-12-31 19:00:00', 6, 1);
INSERT INTO `steps` VALUES(5, '2013-03-09 21:33:08', '1969-12-31 19:00:00', 6, 1);
INSERT INTO `steps` VALUES(6, '2013-03-09 21:33:39', '1969-12-31 19:00:00', 6, 1);
INSERT INTO `steps` VALUES(7, '2013-03-09 21:34:24', '1969-12-31 19:00:00', 6, 1);
INSERT INTO `steps` VALUES(8, '2013-03-09 21:34:33', '1969-12-31 19:00:00', 6, 1);
INSERT INTO `steps` VALUES(9, '2013-03-09 21:34:38', '1969-12-31 19:00:00', 6, 1);
INSERT INTO `steps` VALUES(10, '2013-03-09 21:35:18', '1969-12-31 19:00:00', 6, 1);
INSERT INTO `steps` VALUES(11, '2013-03-09 21:36:04', '2013-03-09 21:36:06', 6, 1);
INSERT INTO `steps` VALUES(12, '2013-03-09 21:36:13', '2013-03-09 21:36:14', 6, 3);
INSERT INTO `steps` VALUES(13, '2013-03-09 21:36:15', '2013-03-09 21:36:17', 6, 2);
INSERT INTO `steps` VALUES(14, '2013-03-09 21:36:23', '2013-03-09 21:36:25', 6, 1);
INSERT INTO `steps` VALUES(15, '2013-03-09 21:36:26', '2013-03-09 21:36:27', 6, 3);
INSERT INTO `steps` VALUES(16, '2013-03-09 21:36:28', '2013-03-09 21:36:29', 6, 2);
INSERT INTO `steps` VALUES(17, '2013-03-09 21:37:48', '2013-03-09 21:37:50', 6, 1);
INSERT INTO `steps` VALUES(18, '2013-03-09 21:37:51', '2013-03-09 21:37:52', 6, 3);
INSERT INTO `steps` VALUES(19, '2013-03-09 21:37:56', '2013-03-09 21:37:58', 6, 1);
INSERT INTO `steps` VALUES(20, '2013-03-10 01:35:48', '1969-12-31 19:00:00', 10, 3);
INSERT INTO `steps` VALUES(21, '2013-03-10 01:38:52', '1969-12-31 19:00:00', 13, 1);
INSERT INTO `steps` VALUES(22, '2013-03-10 01:39:23', '1969-12-31 19:00:00', 13, 3);
INSERT INTO `steps` VALUES(23, '2013-03-10 01:39:54', '1969-12-31 19:00:00', 13, 3);
INSERT INTO `steps` VALUES(24, '2013-03-10 01:39:57', '1969-12-31 19:00:00', 13, 3);
INSERT INTO `steps` VALUES(25, '2013-03-10 01:40:10', '1969-12-31 19:00:00', 13, 3);
INSERT INTO `steps` VALUES(26, '2013-03-10 01:40:33', '1969-12-31 19:00:00', 13, 3);
INSERT INTO `steps` VALUES(27, '2013-03-10 01:40:44', '1969-12-31 19:00:00', 13, 3);
INSERT INTO `steps` VALUES(28, '2013-03-10 01:41:35', '1969-12-31 19:00:00', 13, 3);
INSERT INTO `steps` VALUES(29, '2013-03-10 01:41:35', '1969-12-31 19:00:00', 13, 3);
INSERT INTO `steps` VALUES(30, '2013-03-10 01:41:57', '1969-12-31 19:00:00', 13, 3);
INSERT INTO `steps` VALUES(31, '2013-03-10 01:42:05', '1969-12-31 19:00:00', 13, 3);
INSERT INTO `steps` VALUES(32, '2013-03-10 01:42:45', '1969-12-31 19:00:00', 13, 3);
INSERT INTO `steps` VALUES(33, '2013-03-10 01:44:04', '2013-03-10 01:44:05', 13, 3);
INSERT INTO `steps` VALUES(34, '2013-03-10 01:44:07', '2013-03-10 01:44:09', 13, 1);
INSERT INTO `steps` VALUES(35, '2013-03-10 01:44:14', '2013-03-10 01:44:15', 13, 1);
INSERT INTO `steps` VALUES(36, '2013-03-10 01:44:16', '2013-03-10 01:44:17', 13, 3);
INSERT INTO `steps` VALUES(37, '2013-03-10 03:32:18', '2013-03-10 03:32:21', 14, 1);
INSERT INTO `steps` VALUES(38, '2013-03-10 03:32:22', '2013-03-10 03:32:23', 14, 3);
INSERT INTO `steps` VALUES(39, '2013-03-10 03:32:26', '1969-12-31 19:00:00', 14, 3);
INSERT INTO `steps` VALUES(40, '2013-03-10 15:18:53', '2013-03-10 15:18:55', 14, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

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
