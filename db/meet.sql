-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 14, 2013 at 02:41 PM
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
  `end` datetime DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `events`
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=euckr AUTO_INCREMENT=81 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` VALUES(1, 'kamjatang', '감자탕', '$7.99', 'Pork bone & potato soup, rice', '01.jpg', '', '', 9);
INSERT INTO `items` VALUES(2, 'bulgogi', '불고기', '$10.99', 'Stir-fried beef, some vegetables, noodles with sweet soy sauce on the sizzling plate, rice', '02.jpg', '', '', 4);
INSERT INTO `items` VALUES(3, 'dolsot bibimbap', '돌솥비빔밥', '$9.99', 'Assorted vegetables, beef, fried egg and hot sauce on steamed rice in hot stone bowl', '03.jpg', '', '', 4);
INSERT INTO `items` VALUES(4, 'l.a kalbi', 'LA갈비', '$14.99/$22.99', 'B.B.Q. L.A beef ribs on the sizzling plate, rice', '04.jpg', '', '', 4);
INSERT INTO `items` VALUES(5, 'jeyuk bokeum', '제육볶음', '$12.99', 'Stir-fried marinated pork with spicy sauce on the sizzling plate, rice', '05.jpg', '', '', 4);
INSERT INTO `items` VALUES(6, 'dakchulpan', '닭철판', '$11.99', 'Stir-fried spicy chicken on the sizzling plate, rice', '06.jpg', '', '', 4);
INSERT INTO `items` VALUES(7, 'ojinguh bokeum', '오징어볶음', '$13.99', 'Stir-fried squid, vegetables with sweet and spicy sauce on the sizzling plate', '07.jpg', '', '', 4);
INSERT INTO `items` VALUES(8, 'japchae', '잡채', '$9.99', 'Stir-fried beef, some vegetables, noodles with sweet soy sauce', '08.jpg', '', '', 8);
INSERT INTO `items` VALUES(9, 'haemul pajeon', '해물파전', '$15.99', 'Korean style egg pan cake with assorted seafood and green onion', '09.jpg', '', '', 8);
INSERT INTO `items` VALUES(10, 'kichi jeon', '김치전', '$10.99', 'Kimchi and egg with assorted vegetables', '10.jpg', '', '', 8);
INSERT INTO `items` VALUES(11, 'kaeran malyi', '계란말이', '$10.99', 'Fried egg roll with green onion, carrot, ham, onion, and tuna', '11.jpg', '', '', 8);
INSERT INTO `items` VALUES(12, 'gunmandu', '군만두', '$8.99', 'Deep-fried Korean dumplings', '12.jpg', '', '', 8);
INSERT INTO `items` VALUES(13, 'jjinmandu', '찐만두', '$8.99', 'Steamed Korean dumplings', '13.jpg', '', '', 8);
INSERT INTO `items` VALUES(14, 'royal ricecake', '궁중떡볶이', '$9.99', 'Rice cakes with seafood cakes and vegetables', '14.jpg', '', '', 8);
INSERT INTO `items` VALUES(15, 'spicy ricecake', '떡볶이', '$9.99', 'Rice cakes with seafood cakes, vegetables in spicy sauce', '15.jpg', '', '', 8);
INSERT INTO `items` VALUES(16, 'tofu kimchi', '두부김치', '$13.99', 'Stir-fried Kimchi and pork with tofu and rice', '16.jpg', '', '', 4);
INSERT INTO `items` VALUES(17, 'tangsuyuk', '탕수육', '$12.99', 'Deep-fried pork with sour & sweet sauce', '17.jpg', '', '', 4);
INSERT INTO `items` VALUES(18, 'khampunggi', '깐풍기', '$12.99', 'Deep-fried chicken with hot sour & sweet sauce', '18.jpg', '', '', 4);
INSERT INTO `items` VALUES(19, 'jokbal', '족발', '$16.99', 'Steamed sliced pettitoes (pork hock) with fish sauce', '19.jpg', '', '', 4);
INSERT INTO `items` VALUES(20, 'nakjibokeum somyun', '낙지볶음소면', '$18.99', 'Stir-fried octopus with noodles in spicy sauce', '20.jpg', '', '', 4);
INSERT INTO `items` VALUES(21, 'cutlet(kasu)', '돈까스/새우까스', '$12.99', 'Deep-fried pork or shrimp cutlet with vegetable and rice', '21.jpg', '', '', 4);
INSERT INTO `items` VALUES(23, 'bokeum salkugsu', '볶음살국수', '$10.99', 'Stir-fried rice noodle with assorted vegetables', '23.jpg', '', '', 4);
INSERT INTO `items` VALUES(24, 'tuna or pork kimchi jjigae', '김치찌개', '$10.99', 'Tuna or Pork kimch stew, rice', '24.jpg', '', '', 9);
INSERT INTO `items` VALUES(25, 'bulgogi busot jjigae', '불고기버섯찌개', '$11.99', 'Bulgogi and mushroom soup with sweet soy sauce, rice', '25.jpg', '', '', 9);
INSERT INTO `items` VALUES(27, 'soon tofu', '순두부', '$9.99', 'Soft tofu stewed in hot-spicy broth, rice', '27.jpg', '', '', 9);
INSERT INTO `items` VALUES(28, 'o-deng tang', '오뎅탕', '$9.99', 'Fishcake soup, rice', '28.jpg', '', '', 9);
INSERT INTO `items` VALUES(29, 'kalbi tang', '갈비탕', '$11.99', 'Beef ribs soup with clear noodles, rice', '29.jpg', '', '', 9);
INSERT INTO `items` VALUES(30, 'kamjatang jeongol', '감자탕전골', '$22.99', 'Large size Kamjatang with extra vegetables, rice cake, dumplings, 2 rice', '30.jpg', '', '', 9);
INSERT INTO `items` VALUES(31, 'kimchijeongol', '김치전골', '$20.99', 'Kimchi stew with rice cakes, dumplings, pork, vegetables, 2 rice', '31.jpg', '', '', 9);
INSERT INTO `items` VALUES(33, 'ramen', '라면', '$6.99', 'Instant noodle with rice cake, egg and assorted vegetables', '33.jpg', '', '', 9);
INSERT INTO `items` VALUES(34, 'ddeokmandukuk', '떡만두국', '$9.99', 'Dumpling and sliced rice cake with beef in egg drop soup', '34.jpg', '', '', 9);
INSERT INTO `items` VALUES(35, 'cold or spicy noodle', '냉면', '$9.99', 'Korean cold noodles with soup or with spicy sauce', '35.jpg', '', '', 9);
INSERT INTO `items` VALUES(36, 'kimchi bokeumbap', '김치볶음밥', '$9.99', 'Stir-fried kimchi with rice, fried egg', '36.jpg', '', '', 4);
INSERT INTO `items` VALUES(37, 'shrimp bokeumbap', '새우볶음밥', '$9.99', 'Stir-fried shrimp with vegetables & rice', '37.jpg', '', '', 4);
INSERT INTO `items` VALUES(38, 'bulgogi bokeumbap', '불고기볶음밥', '$9.99', 'Stir-fried beef with vegetables & rice', '38.jpg', '', '', 4);
INSERT INTO `items` VALUES(40, 'bulgogi bap', '불고기덮밥', '$9.99', 'Stir-fried beef with vegetables & fried egg on steamed rice', '40.jpg', '', '', 4);
INSERT INTO `items` VALUES(41, 'chicken bap', '치킨덮밥', '$9.99', 'Stir-fried chicken with vegetables & fried egg on steamed rice', '41.jpg', '', '', 4);
INSERT INTO `items` VALUES(53, 'Pop', '음료수', '1.50', 'Variety of pop/soda drinks - Coke, Sprite, Ginger Ale etc. *Nestea - $1.75', '53.jpg', '', '', 10);
INSERT INTO `items` VALUES(54, 'Soju (Alc. 20.1%)', '참이슬', '13.99', 'Distilled beverage native to Korea. ChamIseul is the most popular soju brand in Korea (Alc. 20.1%)', '54.jpg', '', '', 10);
INSERT INTO `items` VALUES(55, 'Soju (Alc. 19.5%)', '처음처럼', '13.99', 'Distilled beverage native to Korea. ChuhEumChuhRum is the second most popular soju brand (Alc. 19.5%)', '55.jpg', '', '', 10);
INSERT INTO `items` VALUES(56, 'Korean Wine', '백세주', '17.99', 'Rice wine infused with ginseng and eleven other herbs (Alc. 13%)', '56.jpg', '', '', 10);
INSERT INTO `items` VALUES(57, 'Makkoli (750ml)', '막걸리', '14.99', 'Milky, sweet alcoholic beverage made from rice - 750ml', '57.jpg', '', '', 10);
INSERT INTO `items` VALUES(58, 'Makkoli (1000ml)', '막걸리', '17.99', 'Milky, sweet alcoholic beverage made from rice - 1000ml', '58.jpg', '', '', 10);
INSERT INTO `items` VALUES(59, 'Coors Light', '', '3.50', 'Light Beer with the "Cold Certified" label.', '59.jpg', '', '', 11);
INSERT INTO `items` VALUES(60, 'Labatt Blue', '', '3.50', 'Clean, refreshing pilsner with a distinctive hoppy aroma, a delicate character, and a slightly sweet aftertaste.', '60.jpg', '', '', 11);
INSERT INTO `items` VALUES(61, 'Molson Canadian', '', '3.50', 'Canadian water, prairie barley, and no preservatives. Clean crisp and fresh. Molson Canadian. Made from Canada.', '61.jpg', '', '', 11);
INSERT INTO `items` VALUES(62, 'Budweiser', '', '3.50', 'Pale lager produced by Anheuser–Busch InBev. - King of Beers.', '62.jpg', '', '', 11);
INSERT INTO `items` VALUES(63, 'Hite', '', '4.00', 'The top-selling beer in Korea. Hite lager is sweet and golden, with thin body and minimal head.', '63.jpg', '', '', 11);
INSERT INTO `items` VALUES(64, 'Heineken', '', '4.00', 'Pale lager beer with 5% alcohol by volume produced by the Dutch brewing company Heineken International.', '64.jpg', '', '', 11);
INSERT INTO `items` VALUES(65, 'Combo A', '', '27.99', 'Special Combo A - Choose 1 item from the list + 4 Beers or 1 Soju (Korean Wine - Extra $3.00)', '65.jpg', '', '', 12);
INSERT INTO `items` VALUES(66, 'Combo B', '', '33.99', 'Special Combo B - Choose 1 item from the list + 4 Beers or 1 Soju (Korean Wine - Extra $3.00)', '66.jpg', '', '', 12);
INSERT INTO `items` VALUES(71, 'UFC Best KO 2011 - 2012', '', '', '', '', '1.mp4', 'StrikeForce', 2);
INSERT INTO `items` VALUES(72, 'Blake Griffin 3 Pt Fail', '', '', '', '', '2.mp4', 'NBA', 2);
INSERT INTO `items` VALUES(73, 'Cheating Boss Prank', '', '', '', '', '3.mp4', 'Just for Laughs', 2);
INSERT INTO `items` VALUES(74, 'Embarrassing Urinal Prank', '', '', '', '', '4.mp4', 'Just for Laughs', 2);
INSERT INTO `items` VALUES(75, 'I Got A Boy', '', '', '', '', '5.mp4', 'Girls Generation', 2);
INSERT INTO `items` VALUES(76, 'League of Legends Top 5 Plays (Wk. 113)', '', '', '', '', '6.mp4', 'LOLKing', 2);
INSERT INTO `items` VALUES(77, 'Lionel Messi Humiliates Great Players', '', '', '', '', '7.mp4', 'FuteBol', 2);
INSERT INTO `items` VALUES(78, 'Gangnam Style', '', '', '', '', '8.mp4', 'Psy', 2);
INSERT INTO `items` VALUES(79, 'Into Darkness Trailer ', '', '', '', '', '9.mp4', 'Star Trek', 2);
INSERT INTO `items` VALUES(80, 'White Couple Black Baby', '', '', '', '', '10.mp4', 'Just for Laughs', 2);

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
) ENGINE=InnoDB DEFAULT CHARSET=euckr AUTO_INCREMENT=1 ;

--
-- Dumping data for table `reports`
--


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
  `duration` double(11,2) NOT NULL,
  `engagement` double(11,2) NOT NULL,
  `popularity` varchar(255) CHARACTER SET latin1 NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `steps`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `users`
--


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
-- Constraints for table `section_modules`
--
ALTER TABLE `section_modules`
  ADD CONSTRAINT `section_modules_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`),
  ADD CONSTRAINT `section_modules_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`id`),
  ADD CONSTRAINT `users_ibfk_5` FOREIGN KEY (`usertype_id`) REFERENCES `user_types` (`id`),
  ADD CONSTRAINT `users_ibfk_6` FOREIGN KEY (`tablet_id`) REFERENCES `tablets` (`id`);
