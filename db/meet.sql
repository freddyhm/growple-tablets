-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 05, 2013 at 11:41 PM
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `activities`
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` VALUES(1, 'Path started', '2013-01-05 13:57:37', '2013-01-05 13:57:55', NULL, NULL, 1, 1);
INSERT INTO `events` VALUES(2, 'Path started', '2013-01-05 13:57:55', '2013-01-05 14:00:24', NULL, NULL, 2, 1);
INSERT INTO `events` VALUES(3, 'Path started', '2013-01-05 14:00:24', '2013-01-05 14:10:53', NULL, NULL, 3, 1);
INSERT INTO `events` VALUES(4, 'Path started', '2013-01-05 14:10:53', '2013-01-05 14:11:36', NULL, NULL, 4, 1);
INSERT INTO `events` VALUES(5, 'Path started', '2013-01-05 14:11:36', '2013-01-05 14:31:28', NULL, NULL, 5, 1);
INSERT INTO `events` VALUES(6, 'Path started', '2013-01-05 14:31:28', '2013-01-05 14:31:39', NULL, NULL, 6, 1);
INSERT INTO `events` VALUES(7, 'Path started', '2013-01-05 14:31:39', '2013-01-05 14:32:00', NULL, NULL, 7, 1);
INSERT INTO `events` VALUES(8, 'Path started', '2013-01-05 14:32:00', '2013-01-05 14:32:13', NULL, NULL, 8, 1);
INSERT INTO `events` VALUES(9, 'Path started', '2013-01-05 14:32:13', '2013-01-05 14:34:38', NULL, NULL, 9, 1);
INSERT INTO `events` VALUES(10, 'Path started', '2013-01-05 14:34:38', '2013-01-05 14:35:03', NULL, NULL, 10, 1);
INSERT INTO `events` VALUES(11, 'Path started', '2013-01-05 14:35:03', '0000-00-00 00:00:00', NULL, NULL, 11, 1);
INSERT INTO `events` VALUES(12, 'Path started', '2013-01-05 19:32:19', '0000-00-00 00:00:00', NULL, NULL, 12, 1);
INSERT INTO `events` VALUES(13, 'Path started', '2013-01-05 21:06:08', '0000-00-00 00:00:00', NULL, NULL, 13, 1);
INSERT INTO `events` VALUES(14, 'Path started', '2013-01-05 22:33:57', '0000-00-00 00:00:00', NULL, NULL, 14, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=euckr AUTO_INCREMENT=81 ;

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
INSERT INTO `items` VALUES(23, 'bokeum salkugsu', '볶음살국수', '$10.99', 'Stir-fried rice noodle with assorted vegetables', '23.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(24, 'tuna or pork kimchi jjigae', '김치찌개', '$10.99', 'Tuna or Pork kimch stew, rice', '24.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(25, 'bulgogi busot jjigae', '불고기버섯찌개', '$11.99', 'Bulgogi and mushroom soup with sweet soy sauce, rice', '25.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(27, 'soon tofu', '순두부', '$9.99', 'Soft tofu stewed in hot-spicy broth, rice', '27.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(28, 'o-deng tang', '오뎅탕', '$9.99', 'Fishcake soup, rice', '28.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(29, 'kalbi tang', '갈비탕', '$11.99', 'Beef ribs soup with clear noodles, rice', '29.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(30, 'kamjatang jeongol', '감자탕전골', '$22.99', 'Large size Kamjatang with extra vegetables, rice cake, dumplings, 2 rice', '30.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(31, 'kimchijeongol', '김치전골', '$20.99', 'Kimchi stew with rice cakes, dumplings, pork, vegetables, 2 rice', '31.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(33, 'ramen', '라면', '$6.99', 'Instant noodle with rice cake, egg and assorted vegetables', '33.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(34, 'ddeokmandukuk', '떡만두국', '$9.99', 'Dumpling and sliced rice cake with beef in egg drop soup', '34.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(35, 'cold or spicy noodle', '냉면', '$9.99', 'Korean cold noodles with soup or with spicy sauce', '35.jpg', '', '', '', '', 0, 9);
INSERT INTO `items` VALUES(36, 'kimchi bokeumbap', '김치볶음밥', '$9.99', 'Stir-fried kimchi with rice, fried egg', '36.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(37, 'shrimp bokeumbap', '새우볶음밥', '$9.99', 'Stir-fried shrimp with vegetables & rice', '37.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(38, 'bulgogi bokeumbap', '불고기볶음밥', '$9.99', 'Stir-fried beef with vegetables & rice', '38.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(40, 'bulgogi bap', '불고기덮밥', '$9.99', 'Stir-fried beef with vegetables & fried egg on steamed rice', '40.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(41, 'chicken bap', '치킨덮밥', '$9.99', 'Stir-fried chicken with vegetables & fried egg on steamed rice', '41.jpg', '', '', '', '', 0, 4);
INSERT INTO `items` VALUES(53, 'Pop', '음료수', '1.50', 'Variety of pop/soda drinks - Coke, Sprite, Ginger Ale etc. *Nestea - $1.75', '1.jpg', '', '', '', '', 0, 10);
INSERT INTO `items` VALUES(54, 'Soju (Alc. 20.1%)', '참이슬', '13.99', 'Distilled beverage native to Korea. ChamIseul is the most popular soju brand in Korea (Alc. 20.1%)', '2.jpg', '', '', '', '', 0, 10);
INSERT INTO `items` VALUES(55, 'Soju (Alc. 19.5%)', '처음처럼', '13.99', 'Distilled beverage native to Korea. ChuhEumChuhRum is the second most popular soju brand (Alc. 19.5%)', '3.jpg', '', '', '', '', 0, 10);
INSERT INTO `items` VALUES(56, 'Korean Wine', '백세주', '17.99', 'Rice wine infused with ginseng and eleven other herbs (Alc. 13%)', '4.jpg', '', '', '', '', 0, 10);
INSERT INTO `items` VALUES(57, 'Makkoli (750ml)', '막걸리', '14.99', 'Milky, sweet alcoholic beverage made from rice - 750ml', '5.jpg', '', '', '', '', 0, 10);
INSERT INTO `items` VALUES(58, 'Makkoli (1000ml)', '막걸리', '17.99', 'Milky, sweet alcoholic beverage made from rice - 1000ml', '6.jpg', '', '', '', '', 0, 10);
INSERT INTO `items` VALUES(59, 'Coors Light', '', '3.50', 'Light Beer with the "Cold Certified" label.', '1.jpg', '', '', '', '', 0, 11);
INSERT INTO `items` VALUES(60, 'Labatt Blue', '', '3.50', 'Clean, refreshing pilsner with a distinctive hoppy aroma, a delicate character, and a slightly sweet aftertaste.', '2.jpg', '', '', '', '', 0, 11);
INSERT INTO `items` VALUES(61, 'Molson Canadian', '', '3.50', 'Canadian water, prairie barley, and no preservatives. Clean crisp and fresh. Molson Canadian. Made from Canada.', '3.jpg', '', '', '', '', 0, 11);
INSERT INTO `items` VALUES(62, 'Budweiser', '', '3.50', 'Pale lager produced by Anheuser–Busch InBev. - King of Beers.', '4.jpg', '', '', '', '', 0, 11);
INSERT INTO `items` VALUES(63, 'Hite', '', '4.00', 'The top-selling beer in Korea. Hite lager is sweet and golden, with thin body and minimal head.', '5.jpg', '', '', '', '', 0, 11);
INSERT INTO `items` VALUES(64, 'Heineken', '', '4.00', 'Pale lager beer with 5% alcohol by volume produced by the Dutch brewing company Heineken International.', '6.jpg', '', '', '', '', 0, 11);
INSERT INTO `items` VALUES(65, 'Combo A', '', '27.99', 'Special Combo A - Choose 1 item from the list + 4 Beers or 1 Soju (Korean Wine - Extra $3.00)', '1.jpg', '', '', '', '', 0, 12);
INSERT INTO `items` VALUES(66, 'Combo B', '', '33.99', 'Special Combo B - Choose 1 item from the list + 4 Beers or 1 Soju (Korean Wine - Extra $3.00)', '2.jpg', '', '', '', '', 0, 12);
INSERT INTO `items` VALUES(71, 'UFC Best KO 2011 - 2012', '', '', '', '', '', '1.mp4', 'StrikeForce', '', 0, 2);
INSERT INTO `items` VALUES(72, 'Blake Griffin 3 Pt Fail', '', '', '', '', '', '2.mp4', 'NBA', '', 0, 2);
INSERT INTO `items` VALUES(73, 'Cheating Boss Prank', '', '', '', '', '', '3.mp4', 'Just for Laughs', '', 0, 2);
INSERT INTO `items` VALUES(74, 'Embarrassing Urinal Prank', '', '', '', '', '', '4.mp4', 'Just for Laughs', '', 0, 2);
INSERT INTO `items` VALUES(75, 'I GOT A BOY (MV)', '', '', '', '', '', '5.mp4', 'Girls Generation', '', 0, 2);
INSERT INTO `items` VALUES(76, 'League of Legends Top 5 Plays (Wk. 113)', '', '', '', '', '', '6.mp4', 'LOLKing', '', 0, 2);
INSERT INTO `items` VALUES(77, 'Lionel Messi Humiliates Great Players', '', '', '', '', '', '7.mp4', 'FuteBol', '', 0, 2);
INSERT INTO `items` VALUES(78, 'Gangnam Style', '', '', '', '', '', '8.mp4', 'Psy', '', 0, 2);
INSERT INTO `items` VALUES(79, 'Star Trek Into Darkness NEW Trailer (2013)', '', '', '', '', '', '9.mp4', 'JJ Abrams Movie', '', 0, 2);
INSERT INTO `items` VALUES(80, 'White Couple Black Baby', '', '', '', '', '', '10.mp4', 'Just for Laughs', '', 0, 2);

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

INSERT INTO `modules` VALUES(1, 'menu', 1, NULL);
INSERT INTO `modules` VALUES(2, 'video', 1, NULL);
INSERT INTO `modules` VALUES(3, 'game', 1, NULL);
INSERT INTO `modules` VALUES(4, 'dishes', 1, 1);
INSERT INTO `modules` VALUES(8, 'appetizers', 1, 1);
INSERT INTO `modules` VALUES(9, 'soup & noodle', 1, 1);
INSERT INTO `modules` VALUES(10, 'drinks', 1, 1);
INSERT INTO `modules` VALUES(11, 'beer', 1, 1);
INSERT INTO `modules` VALUES(12, 'combos', 1, 1);

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
  `end` datetime DEFAULT NULL,
  `event_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  KEY `module_id` (`module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `steps`
--

INSERT INTO `steps` VALUES(1, '2013-01-05 13:57:43', '2013-01-05 13:57:46', 1, 1);
INSERT INTO `steps` VALUES(2, '2013-01-05 13:57:47', '2013-01-05 13:57:48', 1, 3);
INSERT INTO `steps` VALUES(3, '2013-01-05 13:57:50', '2013-01-05 13:57:52', 1, 2);
INSERT INTO `steps` VALUES(4, '2013-01-05 14:01:57', NULL, 3, 1);
INSERT INTO `steps` VALUES(5, '2013-01-05 14:11:31', '2013-01-05 14:11:33', 4, 1);
INSERT INTO `steps` VALUES(6, '2013-01-05 14:31:56', '2013-01-05 14:31:58', 7, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES(1, 'JohnJane', 1, 3, NULL);
INSERT INTO `users` VALUES(2, 'JohnJane', 1, 3, NULL);
INSERT INTO `users` VALUES(3, 'JohnJane', 1, 3, NULL);
INSERT INTO `users` VALUES(4, 'JohnJane', 1, 3, NULL);
INSERT INTO `users` VALUES(5, 'JohnJane', 1, 3, NULL);
INSERT INTO `users` VALUES(6, 'JohnJane', 1, 3, NULL);
INSERT INTO `users` VALUES(7, 'JohnJane', 1, 3, NULL);
INSERT INTO `users` VALUES(8, 'JohnJane', 1, 3, NULL);
INSERT INTO `users` VALUES(9, 'JohnJane', 1, 3, NULL);
INSERT INTO `users` VALUES(10, 'JohnJane', 1, 3, NULL);
INSERT INTO `users` VALUES(11, 'JohnJane', 1, 3, NULL);
INSERT INTO `users` VALUES(12, 'JohnJane', 1, 3, NULL);
INSERT INTO `users` VALUES(13, 'JohnJane', 1, 3, NULL);
INSERT INTO `users` VALUES(14, 'JohnJane', 1, 3, NULL);

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
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`id`),
  ADD CONSTRAINT `users_ibfk_5` FOREIGN KEY (`usertype_id`) REFERENCES `user_types` (`id`),
  ADD CONSTRAINT `users_ibfk_6` FOREIGN KEY (`tablet_id`) REFERENCES `tablets` (`id`);
