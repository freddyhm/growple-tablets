-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 19, 2013 at 08:17 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` VALUES(1, 'first', '2013-02-08 16:17:31', '2013-02-08 16:17:33', 613, 2, 0);
INSERT INTO `activities` VALUES(2, 'touched_ribbon', '2013-02-08 16:17:33', '2013-02-08 16:17:33', 613, 0, 1);
INSERT INTO `activities` VALUES(3, 'pressed_grab_it', '2013-02-08 16:17:33', '2013-02-08 16:17:33', 613, 0, 2);
INSERT INTO `activities` VALUES(4, 'pressed_grab_it', '2013-02-08 16:17:34', '2013-02-08 16:17:34', 613, 0, 2);
INSERT INTO `activities` VALUES(5, 'touched_ribbon', '2013-02-08 16:17:35', '2013-02-08 16:17:35', 613, 0, 1);
INSERT INTO `activities` VALUES(6, 'exit_while_viewing_menu_item', '2013-02-08 16:17:36', '2013-02-08 16:17:36', 613, 2, 0);
INSERT INTO `activities` VALUES(7, 'clicked_promo_slide', '2013-02-08 16:32:22', '2013-02-08 16:32:22', 614, 1, 0);
INSERT INTO `activities` VALUES(8, 'viewing_menu_item', '2013-02-08 16:32:22', '2013-02-08 16:32:22', 614, 2, 0);
INSERT INTO `activities` VALUES(9, 'viewing_menu_item', '2013-02-08 16:32:22', '2013-02-08 16:32:22', 614, 1, 0);
INSERT INTO `activities` VALUES(10, 'viewing_menu_item', '2013-02-08 16:32:22', '1969-12-31 19:00:00', 614, 1, 0);
INSERT INTO `activities` VALUES(11, 'first', '2013-02-08 16:32:24', '2013-02-08 16:32:24', 615, 1, 0);
INSERT INTO `activities` VALUES(12, 'viewed_menu_item', '2013-02-08 16:32:24', '2013-02-08 16:32:24', 615, 1, 0);
INSERT INTO `activities` VALUES(13, 'exit_while_viewing_menu_item', '2013-02-08 16:32:24', '2013-02-08 16:32:26', 615, 1, 0);
INSERT INTO `activities` VALUES(14, 'viewing_menu_item', '2013-02-08 16:48:59', '1969-12-31 19:00:00', 616, 2, 0);
INSERT INTO `activities` VALUES(15, 'clicked_promo_slide', '2013-02-08 16:49:08', '2013-02-08 16:49:08', 617, 1, 0);
INSERT INTO `activities` VALUES(16, 'viewing_menu_item', '2013-02-08 16:49:08', '2013-02-08 16:49:08', 617, 2, 0);
INSERT INTO `activities` VALUES(17, 'viewing_menu_item', '2013-02-08 16:49:08', '2013-02-08 16:49:08', 617, 1, 0);
INSERT INTO `activities` VALUES(18, 'viewing_menu_item', '2013-02-08 16:49:08', '1969-12-31 19:00:00', 617, 1, 0);
INSERT INTO `activities` VALUES(19, 'first', '2013-02-08 16:49:11', '2013-02-08 16:49:11', 618, 21, 0);
INSERT INTO `activities` VALUES(20, 'viewed_menu_item', '2013-02-08 16:49:11', '2013-02-08 16:49:11', 618, 2, 0);
INSERT INTO `activities` VALUES(21, 'viewing_menu_item', '2013-02-08 16:49:11', '1969-12-31 19:00:00', 618, 21, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` VALUES(1, '2013-01-25 10:57:01', 2, 16);
INSERT INTO `carts` VALUES(2, '2013-01-25 19:44:31', 2, 17);
INSERT INTO `carts` VALUES(3, '2013-02-08 11:49:04', 1, 140);
INSERT INTO `carts` VALUES(4, '2013-02-08 11:49:17', 1, 140);
INSERT INTO `carts` VALUES(5, '2013-02-08 12:09:28', 2, 144);
INSERT INTO `carts` VALUES(6, '2013-02-08 12:10:05', 1, 145);
INSERT INTO `carts` VALUES(7, '2013-02-08 12:10:46', 1, 145);
INSERT INTO `carts` VALUES(8, '2013-02-08 12:12:05', 1, 145);
INSERT INTO `carts` VALUES(9, '2013-02-08 12:12:26', 1, 145);
INSERT INTO `carts` VALUES(10, '2013-02-08 12:17:27', 1, 149);
INSERT INTO `carts` VALUES(11, '2013-02-08 12:19:24', 1, 151);
INSERT INTO `carts` VALUES(12, '2013-02-08 12:20:38', 1, 152);
INSERT INTO `carts` VALUES(13, '2013-02-08 12:21:11', 1, 153);
INSERT INTO `carts` VALUES(14, '2013-02-08 12:21:23', 1, 154);
INSERT INTO `carts` VALUES(15, '2013-02-08 12:24:23', 1, 155);
INSERT INTO `carts` VALUES(16, '2013-02-08 12:24:49', 1, 156);
INSERT INTO `carts` VALUES(17, '2013-02-08 12:25:18', 2, 157);
INSERT INTO `carts` VALUES(18, '2013-02-08 12:25:42', 1, 158);
INSERT INTO `carts` VALUES(19, '2013-02-08 12:27:15', 1, 159);
INSERT INTO `carts` VALUES(20, '2013-02-08 12:31:12', 1, 160);
INSERT INTO `carts` VALUES(21, '2013-02-08 12:32:11', 1, 160);
INSERT INTO `carts` VALUES(22, '2013-02-08 12:32:45', 1, 161);
INSERT INTO `carts` VALUES(23, '2013-02-08 12:34:03', 2, 163);
INSERT INTO `carts` VALUES(24, '2013-02-08 12:34:40', 1, 164);
INSERT INTO `carts` VALUES(25, '2013-02-08 12:35:00', 1, 165);
INSERT INTO `carts` VALUES(26, '2013-02-08 13:10:16', 2, 168);
INSERT INTO `carts` VALUES(27, '2013-02-08 13:11:20', 2, 169);
INSERT INTO `carts` VALUES(28, '2013-02-08 13:12:01', 2, 170);
INSERT INTO `carts` VALUES(29, '2013-02-08 14:33:41', 2, 171);
INSERT INTO `carts` VALUES(30, '2013-02-08 14:34:25', 2, 172);
INSERT INTO `carts` VALUES(31, '2013-02-08 14:34:57', 3, 173);
INSERT INTO `carts` VALUES(32, '2013-02-08 14:35:47', 2, 174);
INSERT INTO `carts` VALUES(33, '2013-02-08 14:36:10', 2, 175);
INSERT INTO `carts` VALUES(34, '2013-02-08 14:36:51', 2, 176);
INSERT INTO `carts` VALUES(35, '2013-02-08 14:37:46', 3, 177);
INSERT INTO `carts` VALUES(36, '2013-02-08 14:39:44', 3, 178);
INSERT INTO `carts` VALUES(37, '2013-02-08 15:40:51', 2, 179);
INSERT INTO `carts` VALUES(38, '2013-02-08 15:41:11', 1, 180);
INSERT INTO `carts` VALUES(39, '2013-02-08 15:54:36', 1, 188);
INSERT INTO `carts` VALUES(40, '2013-02-08 16:02:16', 1, 188);
INSERT INTO `carts` VALUES(41, '2013-02-08 16:02:35', 1, 189);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` VALUES(1, 37, 1, 1);
INSERT INTO `cart_items` VALUES(2, 37, 25, 0);
INSERT INTO `cart_items` VALUES(3, 38, 3, 0);
INSERT INTO `cart_items` VALUES(4, 39, 2, 0);
INSERT INTO `cart_items` VALUES(5, 40, 2, 0);
INSERT INTO `cart_items` VALUES(6, 41, 2, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` VALUES(1, 'Path started', '2013-02-08 16:35:56', '2013-02-08 16:49:19', NULL, NULL, 203, 1);
INSERT INTO `events` VALUES(2, 'Path started', '2013-02-08 16:50:23', '2013-02-08 16:50:24', NULL, NULL, 204, 1);

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
-- Table structure for table `promos`
--

CREATE TABLE `promos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `promotype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `promos`
--

INSERT INTO `promos` VALUES(1, '1#kamjatang#9#dishes#01.jpg#1', 'slide6.jpg', 1);
INSERT INTO `promos` VALUES(2, '21#cutlet(kasu)#4#dishes#21.jpg#2', 'slide7.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `promo_types`
--

CREATE TABLE `promo_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `promo_types`
--

INSERT INTO `promo_types` VALUES(1, 'slides');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=619 ;

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
INSERT INTO `steps` VALUES(202, '2013-01-30 18:22:31', '2013-01-30 18:22:32', 20, 3);
INSERT INTO `steps` VALUES(203, '2013-01-30 18:41:23', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(204, '2013-01-30 18:48:40', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(205, '2013-01-30 18:49:14', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(206, '2013-01-30 18:49:38', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(207, '2013-01-30 22:02:47', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(208, '2013-01-30 22:06:01', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(209, '2013-01-30 22:07:03', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(210, '2013-01-30 22:08:06', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(211, '2013-01-30 22:08:26', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(212, '2013-01-30 22:09:00', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(213, '2013-01-30 22:09:44', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(214, '2013-01-30 22:11:09', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(215, '2013-02-03 10:41:45', '2013-02-03 10:41:48', 26, 1);
INSERT INTO `steps` VALUES(216, '2013-02-03 23:32:27', '2013-02-03 23:32:30', 33, 1);
INSERT INTO `steps` VALUES(217, '2013-02-03 23:36:42', '2013-02-03 23:36:46', 36, 1);
INSERT INTO `steps` VALUES(218, '2013-02-03 23:36:47', '2013-02-03 23:36:49', 36, 1);
INSERT INTO `steps` VALUES(219, '2013-02-03 23:37:12', '2013-02-03 23:37:14', 37, 1);
INSERT INTO `steps` VALUES(220, '2013-02-04 00:33:09', '2013-02-04 00:33:11', 38, 1);
INSERT INTO `steps` VALUES(221, '2013-02-04 00:48:03', '1969-12-31 19:00:00', 39, 1);
INSERT INTO `steps` VALUES(222, '2013-02-04 02:31:54', '2013-02-04 02:31:56', 48, 1);
INSERT INTO `steps` VALUES(223, '2013-02-04 02:48:49', '2013-02-04 02:48:54', 49, 3);
INSERT INTO `steps` VALUES(224, '2013-02-04 02:51:58', '2013-02-04 02:51:59', 50, 3);
INSERT INTO `steps` VALUES(225, '2013-02-04 02:52:01', '2013-02-04 02:52:03', 50, 1);
INSERT INTO `steps` VALUES(226, '2013-02-04 02:55:07', '1969-12-31 19:00:00', 56, 1);
INSERT INTO `steps` VALUES(227, '2013-02-04 02:55:17', '2013-02-04 02:55:19', 56, 1);
INSERT INTO `steps` VALUES(228, '2013-02-04 03:03:56', '2013-02-04 03:03:57', 61, 3);
INSERT INTO `steps` VALUES(229, '2013-02-04 03:20:29', '2013-02-04 03:20:30', 74, 3);
INSERT INTO `steps` VALUES(230, '2013-02-04 03:26:17', '2013-02-04 03:26:20', 85, 1);
INSERT INTO `steps` VALUES(231, '2013-02-04 03:26:38', '2013-02-04 03:26:39', 85, 3);
INSERT INTO `steps` VALUES(232, '2013-02-04 03:26:40', '1969-12-31 19:00:00', 85, 2);
INSERT INTO `steps` VALUES(233, '2013-02-04 03:27:07', '2013-02-04 03:27:08', 86, 1);
INSERT INTO `steps` VALUES(234, '2013-02-04 03:27:09', '2013-02-04 03:27:10', 86, 1);
INSERT INTO `steps` VALUES(235, '2013-02-04 03:27:11', '2013-02-04 03:27:12', 86, 2);
INSERT INTO `steps` VALUES(236, '2013-02-04 03:27:14', '2013-02-04 03:27:15', 86, 1);
INSERT INTO `steps` VALUES(237, '2013-02-04 11:38:25', '2013-02-04 11:38:26', 87, 3);
INSERT INTO `steps` VALUES(238, '2013-02-04 11:58:00', '2013-02-04 11:58:01', 93, 1);
INSERT INTO `steps` VALUES(239, '2013-02-04 11:58:02', '2013-02-04 11:58:03', 93, 1);
INSERT INTO `steps` VALUES(240, '2013-02-04 11:58:04', '2013-02-04 11:58:06', 93, 2);
INSERT INTO `steps` VALUES(241, '2013-02-04 11:58:07', '2013-02-04 11:58:08', 93, 3);
INSERT INTO `steps` VALUES(242, '2013-02-04 11:58:10', '2013-02-04 11:58:11', 93, 1);
INSERT INTO `steps` VALUES(243, '2013-02-04 11:58:41', '2013-02-04 11:58:42', 93, 1);
INSERT INTO `steps` VALUES(244, '2013-02-04 11:58:53', '2013-02-04 11:58:54', 93, 1);
INSERT INTO `steps` VALUES(245, '2013-02-04 12:02:33', '1969-12-31 19:00:00', 96, 3);
INSERT INTO `steps` VALUES(246, '2013-02-04 12:02:33', '2013-02-04 12:02:34', 96, 3);
INSERT INTO `steps` VALUES(247, '2013-02-04 12:02:44', '2013-02-04 12:02:45', 96, 3);
INSERT INTO `steps` VALUES(248, '2013-02-04 12:02:54', '1969-12-31 19:00:00', 96, 1);
INSERT INTO `steps` VALUES(249, '2013-02-04 12:02:54', '2013-02-04 12:02:55', 96, 1);
INSERT INTO `steps` VALUES(250, '2013-02-04 12:44:33', '2013-02-04 12:44:34', 111, 3);
INSERT INTO `steps` VALUES(251, '2013-02-04 12:52:14', '2013-02-04 12:52:17', 116, 1);
INSERT INTO `steps` VALUES(252, '2013-02-04 12:54:33', '2013-02-04 12:54:35', 118, 1);
INSERT INTO `steps` VALUES(253, '2013-02-04 12:54:52', '2013-02-04 12:54:54', 119, 1);
INSERT INTO `steps` VALUES(254, '2013-02-04 12:55:07', '2013-02-04 12:55:17', 120, 1);
INSERT INTO `steps` VALUES(255, '2013-02-04 12:58:45', '1969-12-31 19:00:00', 121, 1);
INSERT INTO `steps` VALUES(256, '2013-02-04 12:58:52', '2013-02-04 12:58:53', 121, 3);
INSERT INTO `steps` VALUES(257, '2013-02-04 13:09:12', '2013-02-04 13:09:17', 122, 1);
INSERT INTO `steps` VALUES(258, '2013-02-04 13:09:21', '2013-02-04 13:09:23', 122, 3);
INSERT INTO `steps` VALUES(259, '2013-02-04 13:09:24', '2013-02-04 13:09:28', 122, 2);
INSERT INTO `steps` VALUES(260, '2013-02-04 13:09:31', '2013-02-04 13:09:54', 122, 2);
INSERT INTO `steps` VALUES(261, '2013-02-04 13:11:23', '2013-02-04 13:11:26', 124, 2);
INSERT INTO `steps` VALUES(262, '2013-02-04 13:11:34', '2013-02-04 13:11:36', 125, 1);
INSERT INTO `steps` VALUES(263, '2013-02-04 13:11:53', '2013-02-04 13:11:54', 125, 1);
INSERT INTO `steps` VALUES(264, '2013-02-04 13:20:33', '2013-02-04 13:20:35', 126, 1);
INSERT INTO `steps` VALUES(265, '2013-02-04 13:21:16', '2013-02-04 13:21:17', 127, 1);
INSERT INTO `steps` VALUES(266, '2013-02-05 19:22:05', '2013-02-05 19:22:19', 128, 1);
INSERT INTO `steps` VALUES(267, '2013-02-05 20:15:27', '2013-02-05 20:15:37', 128, 2);
INSERT INTO `steps` VALUES(268, '2013-02-05 20:15:40', '1969-12-31 19:00:00', 128, 2);
INSERT INTO `steps` VALUES(269, '2013-02-05 20:16:40', '2013-02-05 20:16:42', 128, 2);
INSERT INTO `steps` VALUES(270, '2013-02-05 20:17:03', '1969-12-31 19:00:00', 128, 2);
INSERT INTO `steps` VALUES(271, '2013-02-05 20:17:28', '1969-12-31 19:00:00', 128, 2);
INSERT INTO `steps` VALUES(272, '2013-02-05 20:17:43', '1969-12-31 19:00:00', 128, 2);
INSERT INTO `steps` VALUES(273, '2013-02-05 20:18:02', '2013-02-05 20:18:05', 128, 2);
INSERT INTO `steps` VALUES(274, '2013-02-05 20:18:07', '1969-12-31 19:00:00', 128, 2);
INSERT INTO `steps` VALUES(275, '2013-02-05 23:12:28', '2013-02-06 21:45:41', 128, 1);
INSERT INTO `steps` VALUES(276, '2013-02-06 21:45:42', '2013-02-06 21:45:44', 128, 1);
INSERT INTO `steps` VALUES(277, '2013-02-06 21:47:44', '2013-02-06 21:47:49', 128, 1);
INSERT INTO `steps` VALUES(278, '2013-02-06 21:47:52', '1969-12-31 19:00:00', 128, 1);
INSERT INTO `steps` VALUES(279, '2013-02-06 21:47:56', '2013-02-06 21:48:05', 128, 1);
INSERT INTO `steps` VALUES(280, '2013-02-06 21:48:08', '1969-12-31 19:00:00', 128, 1);
INSERT INTO `steps` VALUES(281, '2013-02-06 21:48:12', '1969-12-31 19:00:00', 128, 1);
INSERT INTO `steps` VALUES(282, '2013-02-06 21:48:15', '2013-02-06 21:49:05', 128, 1);
INSERT INTO `steps` VALUES(283, '2013-02-06 21:49:08', '1969-12-31 19:00:00', 128, 1);
INSERT INTO `steps` VALUES(284, '2013-02-06 21:49:37', '2013-02-06 21:49:40', 128, 1);
INSERT INTO `steps` VALUES(285, '2013-02-06 21:49:47', '2013-02-06 21:51:03', 128, 1);
INSERT INTO `steps` VALUES(286, '2013-02-06 21:51:09', '2013-02-06 21:51:17', 128, 1);
INSERT INTO `steps` VALUES(287, '2013-02-06 21:51:28', '1969-12-31 19:00:00', 129, 1);
INSERT INTO `steps` VALUES(288, '2013-02-06 21:51:36', '1969-12-31 19:00:00', 129, 1);
INSERT INTO `steps` VALUES(289, '2013-02-06 21:51:41', '1969-12-31 19:00:00', 129, 1);
INSERT INTO `steps` VALUES(290, '2013-02-06 21:51:47', '2013-02-06 21:51:49', 129, 1);
INSERT INTO `steps` VALUES(291, '2013-02-06 21:51:50', '2013-02-06 21:54:02', 129, 1);
INSERT INTO `steps` VALUES(292, '2013-02-06 21:54:18', '2013-02-06 21:54:28', 129, 1);
INSERT INTO `steps` VALUES(293, '2013-02-06 21:54:34', '1969-12-31 19:00:00', 129, 1);
INSERT INTO `steps` VALUES(294, '2013-02-06 21:54:43', '1969-12-31 19:00:00', 129, 1);
INSERT INTO `steps` VALUES(295, '2013-02-06 21:54:49', '1969-12-31 19:00:00', 129, 1);
INSERT INTO `steps` VALUES(296, '2013-02-06 21:54:55', '1969-12-31 19:00:00', 129, 1);
INSERT INTO `steps` VALUES(297, '2013-02-06 21:55:00', '1969-12-31 19:00:00', 129, 1);
INSERT INTO `steps` VALUES(298, '2013-02-06 21:57:42', '1969-12-31 19:00:00', 129, 1);
INSERT INTO `steps` VALUES(299, '2013-02-06 21:58:12', '2013-02-06 21:58:20', 129, 1);
INSERT INTO `steps` VALUES(300, '2013-02-06 21:58:21', '2013-02-06 21:58:24', 129, 1);
INSERT INTO `steps` VALUES(301, '2013-02-06 21:58:34', '2013-02-06 21:58:38', 130, 1);
INSERT INTO `steps` VALUES(302, '2013-02-06 21:58:47', '1969-12-31 19:00:00', 130, 1);
INSERT INTO `steps` VALUES(303, '2013-02-06 21:58:55', '1969-12-31 19:00:00', 130, 1);
INSERT INTO `steps` VALUES(304, '2013-02-06 21:59:01', '2013-02-06 21:59:04', 130, 1);
INSERT INTO `steps` VALUES(305, '2013-02-06 21:59:07', '1969-12-31 19:00:00', 130, 1);
INSERT INTO `steps` VALUES(306, '2013-02-06 21:59:10', '2013-02-06 21:59:14', 130, 1);
INSERT INTO `steps` VALUES(307, '2013-02-06 21:59:29', '2013-02-06 21:59:32', 130, 1);
INSERT INTO `steps` VALUES(308, '2013-02-06 21:59:44', '1969-12-31 19:00:00', 131, 1);
INSERT INTO `steps` VALUES(309, '2013-02-06 22:00:00', '2013-02-06 22:01:04', 131, 1);
INSERT INTO `steps` VALUES(310, '2013-02-06 22:01:06', '1969-12-31 19:00:00', 131, 1);
INSERT INTO `steps` VALUES(311, '2013-02-06 22:01:12', '1969-12-31 19:00:00', 131, 1);
INSERT INTO `steps` VALUES(312, '2013-02-06 22:01:18', '1969-12-31 19:00:00', 131, 1);
INSERT INTO `steps` VALUES(313, '2013-02-06 22:08:39', '2013-02-06 22:08:42', 132, 1);
INSERT INTO `steps` VALUES(314, '2013-02-06 22:08:48', '1969-12-31 19:00:00', 132, 1);
INSERT INTO `steps` VALUES(315, '2013-02-06 22:08:54', '1969-12-31 19:00:00', 132, 1);
INSERT INTO `steps` VALUES(316, '2013-02-06 22:09:04', '2013-02-06 22:09:06', 132, 1);
INSERT INTO `steps` VALUES(317, '2013-02-06 22:09:12', '1969-12-31 19:00:00', 132, 1);
INSERT INTO `steps` VALUES(318, '2013-02-06 22:09:18', '2013-02-06 22:09:56', 132, 1);
INSERT INTO `steps` VALUES(319, '2013-02-06 22:10:16', '2013-02-06 22:10:18', 132, 1);
INSERT INTO `steps` VALUES(320, '2013-02-06 22:10:24', '1969-12-31 19:00:00', 132, 1);
INSERT INTO `steps` VALUES(321, '2013-02-06 22:11:12', '1969-12-31 19:00:00', 132, 1);
INSERT INTO `steps` VALUES(322, '2013-02-06 22:11:57', '1969-12-31 19:00:00', 132, 1);
INSERT INTO `steps` VALUES(323, '2013-02-06 22:12:20', '2013-02-06 22:12:21', 132, 1);
INSERT INTO `steps` VALUES(324, '2013-02-06 22:12:28', '1969-12-31 19:00:00', 132, 1);
INSERT INTO `steps` VALUES(325, '2013-02-06 22:12:55', '1969-12-31 19:00:00', 132, 1);
INSERT INTO `steps` VALUES(326, '2013-02-06 22:17:24', '1969-12-31 19:00:00', 132, 1);
INSERT INTO `steps` VALUES(327, '2013-02-06 22:18:00', '1969-12-31 19:00:00', 132, 1);
INSERT INTO `steps` VALUES(328, '2013-02-06 22:18:08', '1969-12-31 19:00:00', 132, 1);
INSERT INTO `steps` VALUES(329, '2013-02-06 22:21:32', '1969-12-31 19:00:00', 132, 1);
INSERT INTO `steps` VALUES(330, '2013-02-06 22:21:54', '1969-12-31 19:00:00', 132, 1);
INSERT INTO `steps` VALUES(331, '2013-02-06 22:22:12', '2013-02-06 22:22:16', 132, 1);
INSERT INTO `steps` VALUES(332, '2013-02-06 22:22:47', '1969-12-31 19:00:00', 132, 1);
INSERT INTO `steps` VALUES(333, '2013-02-06 22:23:18', '2013-02-06 22:23:21', 132, 1);
INSERT INTO `steps` VALUES(334, '2013-02-06 22:23:27', '2013-02-06 22:23:31', 132, 1);
INSERT INTO `steps` VALUES(335, '2013-02-06 22:23:42', '1969-12-31 19:00:00', 132, 1);
INSERT INTO `steps` VALUES(336, '2013-02-06 22:23:52', '1969-12-31 19:00:00', 132, 1);
INSERT INTO `steps` VALUES(337, '2013-02-06 22:24:06', '1969-12-31 19:00:00', 132, 1);
INSERT INTO `steps` VALUES(338, '2013-02-06 22:24:33', '1969-12-31 19:00:00', 133, 1);
INSERT INTO `steps` VALUES(339, '2013-02-06 22:24:57', '1969-12-31 19:00:00', 133, 1);
INSERT INTO `steps` VALUES(340, '2013-02-06 22:25:35', '1969-12-31 19:00:00', 134, 1);
INSERT INTO `steps` VALUES(341, '2013-02-06 22:26:36', '2013-02-06 22:26:38', 134, 1);
INSERT INTO `steps` VALUES(342, '2013-02-06 22:26:49', '1969-12-31 19:00:00', 134, 1);
INSERT INTO `steps` VALUES(343, '2013-02-06 22:27:19', '1969-12-31 19:00:00', 134, 1);
INSERT INTO `steps` VALUES(344, '2013-02-06 22:27:43', '1969-12-31 19:00:00', 134, 1);
INSERT INTO `steps` VALUES(345, '2013-02-06 22:28:12', '1969-12-31 19:00:00', 134, 1);
INSERT INTO `steps` VALUES(346, '2013-02-06 22:28:59', '2013-02-06 22:29:01', 134, 1);
INSERT INTO `steps` VALUES(347, '2013-02-06 22:29:14', '1969-12-31 19:00:00', 135, 1);
INSERT INTO `steps` VALUES(348, '2013-02-06 22:30:33', '1969-12-31 19:00:00', 135, 1);
INSERT INTO `steps` VALUES(349, '2013-02-06 22:31:28', '1969-12-31 19:00:00', 135, 1);
INSERT INTO `steps` VALUES(350, '2013-02-06 22:31:58', '1969-12-31 19:00:00', 135, 1);
INSERT INTO `steps` VALUES(351, '2013-02-06 22:32:10', '1969-12-31 19:00:00', 135, 1);
INSERT INTO `steps` VALUES(352, '2013-02-06 22:32:36', '1969-12-31 19:00:00', 135, 1);
INSERT INTO `steps` VALUES(353, '2013-02-06 22:34:32', '1969-12-31 19:00:00', 135, 1);
INSERT INTO `steps` VALUES(354, '2013-02-06 22:36:02', '1969-12-31 19:00:00', 135, 1);
INSERT INTO `steps` VALUES(355, '2013-02-06 22:36:16', '1969-12-31 19:00:00', 135, 1);
INSERT INTO `steps` VALUES(356, '2013-02-06 22:36:56', '1969-12-31 19:00:00', 135, 1);
INSERT INTO `steps` VALUES(357, '2013-02-06 22:37:24', '1969-12-31 19:00:00', 135, 1);
INSERT INTO `steps` VALUES(358, '2013-02-06 22:37:40', '1969-12-31 19:00:00', 135, 1);
INSERT INTO `steps` VALUES(359, '2013-02-06 22:38:06', '2013-02-06 22:38:10', 135, 1);
INSERT INTO `steps` VALUES(360, '2013-02-06 22:38:16', '2013-02-06 22:38:23', 135, 1);
INSERT INTO `steps` VALUES(361, '2013-02-06 22:38:34', '1969-12-31 19:00:00', 135, 1);
INSERT INTO `steps` VALUES(362, '2013-02-06 22:39:37', '2013-02-06 22:39:58', 135, 1);
INSERT INTO `steps` VALUES(363, '2013-02-06 22:40:37', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(364, '2013-02-06 22:40:58', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(365, '2013-02-06 22:41:07', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(366, '2013-02-06 22:43:50', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(367, '2013-02-06 22:44:00', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(368, '2013-02-06 22:44:12', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(369, '2013-02-06 22:44:19', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(370, '2013-02-06 22:44:43', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(371, '2013-02-06 22:45:35', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(372, '2013-02-06 22:53:18', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(373, '2013-02-06 22:53:57', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(374, '2013-02-06 22:54:55', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(375, '2013-02-06 22:55:43', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(376, '2013-02-06 22:56:36', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(377, '2013-02-06 22:57:44', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(378, '2013-02-06 22:58:14', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(379, '2013-02-06 22:59:57', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(380, '2013-02-06 23:01:04', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(381, '2013-02-06 23:01:44', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(382, '2013-02-06 23:02:26', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(383, '2013-02-06 23:02:52', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(384, '2013-02-06 23:03:04', '1969-12-31 19:00:00', 136, 1);
INSERT INTO `steps` VALUES(385, '2013-02-06 23:03:28', '1969-12-31 19:00:00', 137, 1);
INSERT INTO `steps` VALUES(386, '2013-02-06 23:04:00', '1969-12-31 19:00:00', 138, 1);
INSERT INTO `steps` VALUES(387, '2013-02-06 23:04:23', '1969-12-31 19:00:00', 138, 1);
INSERT INTO `steps` VALUES(388, '2013-02-06 23:05:11', '1969-12-31 19:00:00', 138, 1);
INSERT INTO `steps` VALUES(389, '2013-02-06 23:05:21', '2013-02-06 23:05:23', 138, 1);
INSERT INTO `steps` VALUES(390, '2013-02-07 17:43:51', '2013-02-07 19:13:56', 139, 1);
INSERT INTO `steps` VALUES(391, '2013-02-07 19:14:03', '2013-02-07 19:14:05', 139, 3);
INSERT INTO `steps` VALUES(392, '2013-02-07 19:14:07', '2013-02-07 19:28:48', 139, 1);
INSERT INTO `steps` VALUES(393, '2013-02-07 19:28:49', '2013-02-07 19:29:11', 139, 3);
INSERT INTO `steps` VALUES(394, '2013-02-07 19:29:13', '2013-02-07 19:29:14', 139, 2);
INSERT INTO `steps` VALUES(395, '2013-02-07 19:35:13', '1969-12-31 19:00:00', 139, 1);
INSERT INTO `steps` VALUES(396, '2013-02-07 19:40:41', '1969-12-31 19:00:00', 139, 1);
INSERT INTO `steps` VALUES(397, '2013-02-07 19:41:15', '1969-12-31 19:00:00', 139, 1);
INSERT INTO `steps` VALUES(398, '2013-02-07 19:42:11', '1969-12-31 19:00:00', 139, 1);
INSERT INTO `steps` VALUES(399, '2013-02-07 19:43:06', '2013-02-08 11:28:57', 139, 1);
INSERT INTO `steps` VALUES(400, '2013-02-08 11:28:58', '2013-02-08 11:32:47', 139, 1);
INSERT INTO `steps` VALUES(401, '2013-02-08 11:32:49', '2013-02-08 11:32:51', 139, 1);
INSERT INTO `steps` VALUES(402, '2013-02-08 11:48:57', '2013-02-08 11:49:17', 139, 1);
INSERT INTO `steps` VALUES(403, '2013-02-08 11:50:03', '1969-12-31 19:00:00', 140, 1);
INSERT INTO `steps` VALUES(404, '2013-02-08 11:50:09', '2013-02-08 11:50:13', 140, 1);
INSERT INTO `steps` VALUES(405, '2013-02-08 11:53:58', '2013-02-08 11:54:26', 140, 1);
INSERT INTO `steps` VALUES(406, '2013-02-08 11:54:27', '2013-02-08 11:54:30', 140, 1);
INSERT INTO `steps` VALUES(407, '2013-02-08 11:55:11', '2013-02-08 11:55:13', 140, 1);
INSERT INTO `steps` VALUES(408, '2013-02-08 11:55:17', '2013-02-08 11:55:23', 140, 1);
INSERT INTO `steps` VALUES(409, '2013-02-08 11:55:24', '2013-02-08 11:56:38', 140, 1);
INSERT INTO `steps` VALUES(410, '2013-02-08 11:59:56', '2013-02-08 12:00:17', 142, 1);
INSERT INTO `steps` VALUES(411, '2013-02-08 12:00:47', '2013-02-08 12:00:50', 143, 1);
INSERT INTO `steps` VALUES(412, '2013-02-08 12:02:04', '1969-12-31 19:00:00', 143, 1);
INSERT INTO `steps` VALUES(413, '2013-02-08 12:02:17', '2013-02-08 12:02:23', 143, 1);
INSERT INTO `steps` VALUES(414, '2013-02-08 12:03:00', '1969-12-31 19:00:00', 143, 1);
INSERT INTO `steps` VALUES(415, '2013-02-08 12:04:02', '1969-12-31 19:00:00', 143, 1);
INSERT INTO `steps` VALUES(416, '2013-02-08 12:04:10', '2013-02-08 12:04:12', 143, 1);
INSERT INTO `steps` VALUES(417, '2013-02-08 12:04:23', '1969-12-31 19:00:00', 143, 1);
INSERT INTO `steps` VALUES(418, '2013-02-08 12:04:41', '2013-02-08 12:04:42', 143, 1);
INSERT INTO `steps` VALUES(419, '2013-02-08 12:04:49', '1969-12-31 19:00:00', 143, 1);
INSERT INTO `steps` VALUES(420, '2013-02-08 12:09:23', '2013-02-08 12:09:28', 143, 1);
INSERT INTO `steps` VALUES(421, '2013-02-08 12:10:01', '2013-02-08 12:10:05', 144, 1);
INSERT INTO `steps` VALUES(422, '2013-02-08 12:10:33', '2013-02-08 12:10:34', 144, 1);
INSERT INTO `steps` VALUES(423, '2013-02-08 12:10:41', '2013-02-08 12:11:54', 144, 1);
INSERT INTO `steps` VALUES(424, '2013-02-08 12:12:01', '2013-02-08 12:12:06', 144, 1);
INSERT INTO `steps` VALUES(425, '2013-02-08 12:12:22', '2013-02-08 12:13:10', 144, 1);
INSERT INTO `steps` VALUES(426, '2013-02-08 12:13:17', '2013-02-08 12:13:37', 144, 1);
INSERT INTO `steps` VALUES(427, '2013-02-08 12:13:44', '1969-12-31 19:00:00', 144, 1);
INSERT INTO `steps` VALUES(428, '2013-02-08 12:13:57', '1969-12-31 19:00:00', 145, 1);
INSERT INTO `steps` VALUES(429, '2013-02-08 12:14:51', '1969-12-31 19:00:00', 145, 1);
INSERT INTO `steps` VALUES(430, '2013-02-08 12:15:20', '1969-12-31 19:00:00', 146, 1);
INSERT INTO `steps` VALUES(431, '2013-02-08 12:15:52', '1969-12-31 19:00:00', 147, 1);
INSERT INTO `steps` VALUES(432, '2013-02-08 12:17:23', '2013-02-08 12:17:28', 148, 1);
INSERT INTO `steps` VALUES(433, '2013-02-08 12:17:58', '1969-12-31 19:00:00', 149, 1);
INSERT INTO `steps` VALUES(434, '2013-02-08 12:19:17', '2013-02-08 12:19:25', 150, 1);
INSERT INTO `steps` VALUES(435, '2013-02-08 12:20:33', '2013-02-08 12:20:38', 151, 1);
INSERT INTO `steps` VALUES(436, '2013-02-08 12:20:44', '2013-02-08 12:20:47', 151, 1);
INSERT INTO `steps` VALUES(437, '2013-02-08 12:21:04', '2013-02-08 12:21:11', 152, 1);
INSERT INTO `steps` VALUES(438, '2013-02-08 12:21:20', '2013-02-08 12:21:23', 153, 1);
INSERT INTO `steps` VALUES(439, '2013-02-08 12:24:19', '2013-02-08 12:24:23', 154, 1);
INSERT INTO `steps` VALUES(440, '2013-02-08 12:24:42', '2013-02-08 12:24:49', 155, 1);
INSERT INTO `steps` VALUES(441, '2013-02-08 12:25:06', '2013-02-08 12:25:07', 156, 1);
INSERT INTO `steps` VALUES(442, '2013-02-08 12:25:13', '2013-02-08 12:25:18', 156, 1);
INSERT INTO `steps` VALUES(443, '2013-02-08 12:25:37', '2013-02-08 12:25:42', 157, 1);
INSERT INTO `steps` VALUES(444, '2013-02-08 12:25:56', '2013-02-08 12:25:56', 158, 3);
INSERT INTO `steps` VALUES(445, '2013-02-08 12:25:57', '2013-02-08 12:25:58', 158, 2);
INSERT INTO `steps` VALUES(446, '2013-02-08 12:25:59', '1969-12-31 19:00:00', 158, 1);
INSERT INTO `steps` VALUES(447, '2013-02-08 12:26:08', '1969-12-31 19:00:00', 158, 1);
INSERT INTO `steps` VALUES(448, '2013-02-08 12:26:19', '1969-12-31 19:00:00', 158, 1);
INSERT INTO `steps` VALUES(449, '2013-02-08 12:26:50', '1969-12-31 19:00:00', 158, 1);
INSERT INTO `steps` VALUES(450, '2013-02-08 12:26:56', '1969-12-31 19:00:00', 158, 1);
INSERT INTO `steps` VALUES(451, '2013-02-08 12:27:07', '2013-02-08 12:27:15', 158, 1);
INSERT INTO `steps` VALUES(452, '2013-02-08 12:30:35', '1969-12-31 19:00:00', 159, 1);
INSERT INTO `steps` VALUES(453, '2013-02-08 12:30:46', '1969-12-31 19:00:00', 159, 1);
INSERT INTO `steps` VALUES(454, '2013-02-08 12:31:03', '2013-02-08 12:31:12', 159, 1);
INSERT INTO `steps` VALUES(455, '2013-02-08 12:31:57', '1969-12-31 19:00:00', 159, 1);
INSERT INTO `steps` VALUES(456, '2013-02-08 12:32:03', '2013-02-08 12:32:11', 159, 1);
INSERT INTO `steps` VALUES(457, '2013-02-08 12:32:37', '2013-02-08 12:32:45', 160, 1);
INSERT INTO `steps` VALUES(458, '2013-02-08 12:33:00', '1969-12-31 19:00:00', 161, 1);
INSERT INTO `steps` VALUES(459, '2013-02-08 12:33:06', '1969-12-31 19:00:00', 161, 1);
INSERT INTO `steps` VALUES(460, '2013-02-08 12:33:13', '1969-12-31 19:00:00', 161, 1);
INSERT INTO `steps` VALUES(461, '2013-02-08 12:33:21', '1969-12-31 19:00:00', 161, 1);
INSERT INTO `steps` VALUES(462, '2013-02-08 12:33:28', '1969-12-31 19:00:00', 161, 1);
INSERT INTO `steps` VALUES(463, '2013-02-08 12:33:36', '2013-02-08 12:33:37', 161, 1);
INSERT INTO `steps` VALUES(464, '2013-02-08 12:33:40', '1969-12-31 19:00:00', 162, 1);
INSERT INTO `steps` VALUES(465, '2013-02-08 12:33:51', '2013-02-08 12:34:03', 162, 1);
INSERT INTO `steps` VALUES(466, '2013-02-08 12:34:22', '1969-12-31 19:00:00', 163, 1);
INSERT INTO `steps` VALUES(467, '2013-02-08 12:34:34', '2013-02-08 12:34:40', 163, 1);
INSERT INTO `steps` VALUES(468, '2013-02-08 12:34:55', '2013-02-08 12:35:00', 164, 1);
INSERT INTO `steps` VALUES(469, '2013-02-08 12:36:23', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(470, '2013-02-08 12:36:37', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(471, '2013-02-08 12:36:47', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(472, '2013-02-08 12:37:04', '2013-02-08 12:37:05', 165, 1);
INSERT INTO `steps` VALUES(473, '2013-02-08 12:37:11', '2013-02-08 12:37:17', 165, 1);
INSERT INTO `steps` VALUES(474, '2013-02-08 12:37:23', '2013-02-08 12:37:32', 165, 1);
INSERT INTO `steps` VALUES(475, '2013-02-08 12:38:08', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(476, '2013-02-08 12:38:14', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(477, '2013-02-08 12:38:25', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(478, '2013-02-08 12:39:34', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(479, '2013-02-08 12:39:41', '2013-02-08 12:39:43', 165, 1);
INSERT INTO `steps` VALUES(480, '2013-02-08 12:39:50', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(481, '2013-02-08 12:39:55', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(482, '2013-02-08 12:40:31', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(483, '2013-02-08 12:40:52', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(484, '2013-02-08 12:41:11', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(485, '2013-02-08 12:41:19', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(486, '2013-02-08 12:41:30', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(487, '2013-02-08 12:41:43', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(488, '2013-02-08 12:42:32', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(489, '2013-02-08 12:42:46', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(490, '2013-02-08 12:43:18', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(491, '2013-02-08 12:43:25', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(492, '2013-02-08 12:43:38', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(493, '2013-02-08 12:44:05', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(494, '2013-02-08 12:44:12', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(495, '2013-02-08 12:44:15', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(496, '2013-02-08 12:44:16', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(497, '2013-02-08 12:44:16', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(498, '2013-02-08 12:44:16', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(499, '2013-02-08 12:44:16', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(500, '2013-02-08 12:44:16', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(501, '2013-02-08 12:44:16', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(502, '2013-02-08 12:44:17', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(503, '2013-02-08 12:44:17', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(504, '2013-02-08 12:44:17', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(505, '2013-02-08 12:44:17', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(506, '2013-02-08 12:44:18', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(507, '2013-02-08 12:45:33', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(508, '2013-02-08 12:45:47', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(509, '2013-02-08 12:46:06', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(510, '2013-02-08 12:46:16', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(511, '2013-02-08 12:46:31', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(512, '2013-02-08 12:46:40', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(513, '2013-02-08 12:47:16', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(514, '2013-02-08 12:47:27', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(515, '2013-02-08 12:49:45', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(516, '2013-02-08 12:49:58', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(517, '2013-02-08 12:51:42', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(518, '2013-02-08 12:51:54', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(519, '2013-02-08 12:52:15', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(520, '2013-02-08 12:52:26', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(521, '2013-02-08 12:54:20', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(522, '2013-02-08 12:54:31', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(523, '2013-02-08 12:54:57', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(524, '2013-02-08 12:55:04', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(525, '2013-02-08 12:55:15', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(526, '2013-02-08 12:55:21', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(527, '2013-02-08 12:55:32', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(528, '2013-02-08 12:55:49', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(529, '2013-02-08 12:55:55', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(530, '2013-02-08 12:56:07', '2013-02-08 12:56:29', 165, 1);
INSERT INTO `steps` VALUES(531, '2013-02-08 12:56:35', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(532, '2013-02-08 12:56:46', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(533, '2013-02-08 12:57:20', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(534, '2013-02-08 12:57:20', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(535, '2013-02-08 12:57:33', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(536, '2013-02-08 12:57:55', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(537, '2013-02-08 12:58:59', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(538, '2013-02-08 12:59:13', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(539, '2013-02-08 13:01:12', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(540, '2013-02-08 13:01:19', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(541, '2013-02-08 13:02:39', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(542, '2013-02-08 13:02:50', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(543, '2013-02-08 13:02:58', '1969-12-31 19:00:00', 165, 1);
INSERT INTO `steps` VALUES(544, '2013-02-08 13:03:38', '2013-02-08 13:03:49', 166, 1);
INSERT INTO `steps` VALUES(545, '2013-02-08 13:03:52', '2013-02-08 13:03:54', 167, 1);
INSERT INTO `steps` VALUES(546, '2013-02-08 13:04:02', '1969-12-31 19:00:00', 167, 1);
INSERT INTO `steps` VALUES(547, '2013-02-08 13:04:13', '1969-12-31 19:00:00', 167, 1);
INSERT INTO `steps` VALUES(548, '2013-02-08 13:04:43', '1969-12-31 19:00:00', 167, 1);
INSERT INTO `steps` VALUES(549, '2013-02-08 13:05:02', '1969-12-31 19:00:00', 167, 1);
INSERT INTO `steps` VALUES(550, '2013-02-08 13:05:22', '1969-12-31 19:00:00', 167, 1);
INSERT INTO `steps` VALUES(551, '2013-02-08 13:05:42', '1969-12-31 19:00:00', 167, 1);
INSERT INTO `steps` VALUES(552, '2013-02-08 13:06:05', '1969-12-31 19:00:00', 167, 1);
INSERT INTO `steps` VALUES(553, '2013-02-08 13:06:12', '1969-12-31 19:00:00', 167, 1);
INSERT INTO `steps` VALUES(554, '2013-02-08 13:06:23', '1969-12-31 19:00:00', 167, 1);
INSERT INTO `steps` VALUES(555, '2013-02-08 13:06:39', '2013-02-08 13:06:39', 167, 3);
INSERT INTO `steps` VALUES(556, '2013-02-08 13:06:40', '2013-02-08 13:06:57', 167, 1);
INSERT INTO `steps` VALUES(557, '2013-02-08 13:09:55', '1969-12-31 19:00:00', 167, 1);
INSERT INTO `steps` VALUES(558, '2013-02-08 13:10:08', '2013-02-08 13:10:16', 167, 1);
INSERT INTO `steps` VALUES(559, '2013-02-08 13:10:59', '1969-12-31 19:00:00', 168, 1);
INSERT INTO `steps` VALUES(560, '2013-02-08 13:11:16', '2013-02-08 13:11:20', 168, 1);
INSERT INTO `steps` VALUES(561, '2013-02-08 13:11:41', '1969-12-31 19:00:00', 169, 1);
INSERT INTO `steps` VALUES(562, '2013-02-08 13:11:53', '2013-02-08 13:12:01', 169, 1);
INSERT INTO `steps` VALUES(563, '2013-02-08 14:33:10', '1969-12-31 19:00:00', 170, 1);
INSERT INTO `steps` VALUES(564, '2013-02-08 14:33:23', '1969-12-31 19:00:00', 170, 1);
INSERT INTO `steps` VALUES(565, '2013-02-08 14:33:35', '2013-02-08 14:33:41', 170, 1);
INSERT INTO `steps` VALUES(566, '2013-02-08 14:34:06', '1969-12-31 19:00:00', 171, 1);
INSERT INTO `steps` VALUES(567, '2013-02-08 14:34:17', '2013-02-08 14:34:25', 171, 1);
INSERT INTO `steps` VALUES(568, '2013-02-08 14:34:39', '1969-12-31 19:00:00', 172, 1);
INSERT INTO `steps` VALUES(569, '2013-02-08 14:34:52', '2013-02-08 14:34:57', 172, 1);
INSERT INTO `steps` VALUES(570, '2013-02-08 14:35:41', '2013-02-08 14:35:47', 173, 1);
INSERT INTO `steps` VALUES(571, '2013-02-08 14:36:01', '2013-02-08 14:36:10', 174, 1);
INSERT INTO `steps` VALUES(572, '2013-02-08 14:36:45', '2013-02-08 14:36:51', 175, 1);
INSERT INTO `steps` VALUES(573, '2013-02-08 14:37:38', '2013-02-08 14:37:46', 176, 1);
INSERT INTO `steps` VALUES(574, '2013-02-08 14:39:07', '1969-12-31 19:00:00', 177, 1);
INSERT INTO `steps` VALUES(575, '2013-02-08 14:39:14', '1969-12-31 19:00:00', 177, 1);
INSERT INTO `steps` VALUES(576, '2013-02-08 14:39:26', '1969-12-31 19:00:00', 177, 1);
INSERT INTO `steps` VALUES(577, '2013-02-08 14:39:40', '2013-02-08 14:39:44', 177, 1);
INSERT INTO `steps` VALUES(578, '2013-02-08 14:57:53', '1969-12-31 19:00:00', 178, 1);
INSERT INTO `steps` VALUES(579, '2013-02-08 14:58:29', '1969-12-31 19:00:00', 178, 1);
INSERT INTO `steps` VALUES(580, '2013-02-08 14:58:40', '1969-12-31 19:00:00', 178, 1);
INSERT INTO `steps` VALUES(581, '2013-02-08 15:13:27', '1969-12-31 19:00:00', 178, 1);
INSERT INTO `steps` VALUES(582, '2013-02-08 15:18:28', '1969-12-31 19:00:00', 178, 1);
INSERT INTO `steps` VALUES(583, '2013-02-08 15:18:40', '1969-12-31 19:00:00', 178, 1);
INSERT INTO `steps` VALUES(584, '2013-02-08 15:40:25', '1969-12-31 19:00:00', 178, 1);
INSERT INTO `steps` VALUES(585, '2013-02-08 15:40:34', '1969-12-31 19:00:00', 178, 1);
INSERT INTO `steps` VALUES(586, '2013-02-08 15:40:44', '2013-02-08 15:40:51', 178, 1);
INSERT INTO `steps` VALUES(587, '2013-02-08 15:41:02', '2013-02-08 15:41:11', 179, 1);
INSERT INTO `steps` VALUES(588, '2013-02-08 15:41:36', '2013-02-08 15:41:41', 180, 1);
INSERT INTO `steps` VALUES(589, '2013-02-08 15:41:56', '2013-02-08 15:42:02', 181, 1);
INSERT INTO `steps` VALUES(590, '2013-02-08 15:42:10', '2013-02-08 15:42:13', 182, 1);
INSERT INTO `steps` VALUES(591, '2013-02-08 15:42:55', '2013-02-08 15:42:57', 183, 1);
INSERT INTO `steps` VALUES(592, '2013-02-08 15:44:11', '2013-02-08 15:44:15', 184, 1);
INSERT INTO `steps` VALUES(593, '2013-02-08 15:44:30', '2013-02-08 15:44:33', 185, 1);
INSERT INTO `steps` VALUES(594, '2013-02-08 15:49:58', '2013-02-08 15:50:00', 186, 1);
INSERT INTO `steps` VALUES(595, '2013-02-08 15:51:40', '1969-12-31 19:00:00', 187, 1);
INSERT INTO `steps` VALUES(596, '2013-02-08 15:52:14', '1969-12-31 19:00:00', 187, 1);
INSERT INTO `steps` VALUES(597, '2013-02-08 15:52:25', '2013-02-08 15:52:28', 187, 1);
INSERT INTO `steps` VALUES(598, '2013-02-08 15:53:56', '2013-02-08 15:54:00', 187, 1);
INSERT INTO `steps` VALUES(599, '2013-02-08 15:54:02', '1969-12-31 19:00:00', 187, 1);
INSERT INTO `steps` VALUES(600, '2013-02-08 15:54:21', '2013-02-08 15:54:25', 187, 1);
INSERT INTO `steps` VALUES(601, '2013-02-08 15:54:27', '2013-02-08 15:54:29', 187, 1);
INSERT INTO `steps` VALUES(602, '2013-02-08 15:54:30', '2013-02-08 15:54:36', 187, 1);
INSERT INTO `steps` VALUES(603, '2013-02-08 15:54:37', '1969-12-31 19:00:00', 187, 1);
INSERT INTO `steps` VALUES(604, '2013-02-08 16:02:11', '2013-02-08 16:02:16', 187, 1);
INSERT INTO `steps` VALUES(605, '2013-02-08 16:02:29', '2013-02-08 16:02:35', 188, 1);
INSERT INTO `steps` VALUES(606, '2013-02-08 16:09:38', '2013-02-08 16:09:41', 189, 1);
INSERT INTO `steps` VALUES(607, '2013-02-08 16:10:04', '2013-02-08 16:10:07', 190, 1);
INSERT INTO `steps` VALUES(608, '2013-02-08 16:10:22', '2013-02-08 16:10:26', 192, 1);
INSERT INTO `steps` VALUES(609, '2013-02-08 16:11:01', '2013-02-08 16:11:03', 193, 1);
INSERT INTO `steps` VALUES(610, '2013-02-08 16:11:15', '2013-02-08 16:11:18', 194, 1);
INSERT INTO `steps` VALUES(611, '2013-02-08 16:14:18', '2013-02-08 16:14:22', 195, 1);
INSERT INTO `steps` VALUES(612, '2013-02-08 16:14:26', '2013-02-08 16:14:26', 195, 3);
INSERT INTO `steps` VALUES(613, '2013-02-08 16:17:31', '2013-02-08 16:17:36', 196, 1);
INSERT INTO `steps` VALUES(614, '2013-02-08 16:32:22', '1969-12-31 19:00:00', 198, 1);
INSERT INTO `steps` VALUES(615, '2013-02-08 16:32:24', '2013-02-08 16:32:26', 198, 1);
INSERT INTO `steps` VALUES(616, '2013-02-08 16:48:59', '1969-12-31 19:00:00', 1, 1);
INSERT INTO `steps` VALUES(617, '2013-02-08 16:49:08', '1969-12-31 19:00:00', 1, 1);
INSERT INTO `steps` VALUES(618, '2013-02-08 16:49:11', '1969-12-31 19:00:00', 1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` VALUES(1, 'ribbon');
INSERT INTO `tests` VALUES(2, 'touch this');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=205 ;

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
INSERT INTO `users` VALUES(75, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(76, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(77, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(78, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(79, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(80, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(81, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(82, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(83, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(84, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(85, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(86, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(87, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(88, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(89, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(90, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(91, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(92, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(93, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(94, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(95, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(96, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(97, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(98, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(99, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(100, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(101, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(102, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(103, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(104, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(105, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(106, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(107, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(108, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(109, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(110, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(111, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(112, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(113, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(114, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(115, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(116, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(117, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(118, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(119, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(120, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(121, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(122, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(123, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(124, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(125, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(126, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(127, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(128, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(129, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(130, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(131, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(132, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(133, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(134, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(135, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(136, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(137, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(138, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(139, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(140, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(141, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(142, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(143, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(144, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(145, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(146, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(147, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(148, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(149, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(150, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(151, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(152, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(153, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(154, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(155, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(156, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(157, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(158, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(159, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(160, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(161, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(162, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(163, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(164, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(165, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(166, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(167, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(168, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(169, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(170, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(171, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(172, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(173, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(174, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(175, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(176, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(177, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(178, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(179, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(180, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(181, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(182, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(183, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(184, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(185, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(186, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(187, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(188, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(189, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(190, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(191, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(192, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(193, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(194, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(195, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(196, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(197, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(198, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(199, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(200, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(201, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(202, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(203, 'JohnJane', 1, 2, NULL);
INSERT INTO `users` VALUES(204, 'JohnJane', 1, 2, NULL);

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
