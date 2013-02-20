-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 19, 2013 at 08:16 PM
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
  `test_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `step_id` (`step_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` VALUES(1, 'first', '2013-02-06 16:24:50', '2013-02-06 16:24:52', 468, 44, 0);
INSERT INTO `activities` VALUES(2, 'viewed_menu_item', '2013-02-06 16:24:52', '2013-02-06 16:24:52', 468, 45, 0);
INSERT INTO `activities` VALUES(3, 'viewing_menu_item', '2013-02-06 16:24:52', '2013-02-06 16:24:53', 468, 46, 0);
INSERT INTO `activities` VALUES(4, 'pressed_grab_it', '2013-02-06 16:24:53', '2013-02-06 16:24:53', 468, 0, 2);
INSERT INTO `activities` VALUES(5, 'touched_ribbon', '2013-02-06 16:24:54', '2013-02-06 16:24:54', 468, 0, 1);
INSERT INTO `activities` VALUES(6, 'exit_while_viewing_menu_item', '2013-02-06 16:24:56', '2013-02-06 16:24:56', 468, 46, 0);
INSERT INTO `activities` VALUES(7, 'first', '2013-02-06 16:25:19', '2013-02-06 16:25:21', 469, 44, 0);
INSERT INTO `activities` VALUES(8, 'viewed_menu_item', '2013-02-06 16:25:21', '2013-02-06 16:25:25', 469, 45, 0);
INSERT INTO `activities` VALUES(9, 'viewing_menu_item', '2013-02-06 16:25:25', '2013-02-06 16:25:27', 469, 47, 0);
INSERT INTO `activities` VALUES(10, 'pressed_grab_it', '2013-02-06 16:25:27', '2013-02-06 16:25:27', 469, 0, 2);
INSERT INTO `activities` VALUES(11, 'touched_ribbon', '2013-02-06 16:25:31', '2013-02-06 16:25:31', 469, 0, 1);
INSERT INTO `activities` VALUES(12, 'viewed_menu_item', '2013-02-06 16:25:35', '2013-02-06 16:25:35', 469, 47, 0);
INSERT INTO `activities` VALUES(13, 'viewing_menu_item', '2013-02-06 16:25:35', '2013-02-06 16:25:39', 469, 35, 0);
INSERT INTO `activities` VALUES(14, 'touched_ribbon', '2013-02-06 16:25:39', '2013-02-06 16:25:39', 469, 0, 1);
INSERT INTO `activities` VALUES(15, 'exit_while_viewing_menu_item', '2013-02-06 16:25:42', '2013-02-06 16:25:42', 469, 35, 0);

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
  `promo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` VALUES(1, 1, 2, NULL);
INSERT INTO `cart_items` VALUES(2, 1, 2, NULL);
INSERT INTO `cart_items` VALUES(3, 2, 2, NULL);
INSERT INTO `cart_items` VALUES(4, 2, 2, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` VALUES(1, 'Path started', '2013-02-04 14:41:09', '2013-02-04 14:41:19', NULL, NULL, 147, 1);
INSERT INTO `events` VALUES(2, 'Path started', '2013-02-04 14:41:20', '2013-02-04 14:41:25', NULL, NULL, 148, 1);
INSERT INTO `events` VALUES(3, 'Path started', '2013-02-04 14:41:31', '2013-02-05 18:39:44', NULL, NULL, 149, 1);
INSERT INTO `events` VALUES(4, 'Path started', '2013-02-05 18:39:46', '2013-02-05 22:35:22', NULL, NULL, 150, 1);
INSERT INTO `events` VALUES(5, 'Path started', '2013-02-05 22:35:30', '2013-02-05 22:36:44', NULL, NULL, 151, 1);
INSERT INTO `events` VALUES(6, 'Path started', '2013-02-05 22:36:48', '2013-02-05 22:37:05', NULL, NULL, 152, 1);
INSERT INTO `events` VALUES(7, 'Path started', '2013-02-05 22:40:09', '2013-02-05 22:40:14', NULL, NULL, 153, 1);
INSERT INTO `events` VALUES(8, 'Path started', '2013-02-05 22:40:26', '2013-02-05 22:40:36', NULL, NULL, 154, 1);
INSERT INTO `events` VALUES(9, 'Path started', '2013-02-05 22:42:16', '2013-02-05 22:42:30', NULL, NULL, 155, 1);
INSERT INTO `events` VALUES(10, 'Path started', '2013-02-05 22:45:04', '2013-02-05 22:45:15', NULL, NULL, 156, 1);
INSERT INTO `events` VALUES(11, 'Path started', '2013-02-05 22:47:37', '2013-02-05 22:49:28', NULL, NULL, 157, 1);
INSERT INTO `events` VALUES(12, 'Path started', '2013-02-05 22:49:53', '2013-02-05 22:51:29', NULL, NULL, 158, 1);
INSERT INTO `events` VALUES(13, 'Path started', '2013-02-05 22:51:30', '2013-02-05 22:52:20', NULL, NULL, 159, 1);
INSERT INTO `events` VALUES(14, 'Path started', '2013-02-05 22:52:41', '2013-02-05 22:56:45', NULL, NULL, 160, 1);
INSERT INTO `events` VALUES(15, 'Path started', '2013-02-05 22:57:59', '2013-02-05 23:05:09', NULL, NULL, 161, 1);
INSERT INTO `events` VALUES(16, 'Path started', '2013-02-05 23:05:10', '2013-02-05 23:05:23', NULL, NULL, 162, 1);
INSERT INTO `events` VALUES(17, 'Path started', '2013-02-05 23:05:49', '2013-02-05 23:06:00', NULL, NULL, 163, 1);
INSERT INTO `events` VALUES(18, 'Path started', '2013-02-05 23:06:25', '2013-02-05 23:06:42', NULL, NULL, 164, 1);
INSERT INTO `events` VALUES(19, 'Path started', '2013-02-05 23:10:28', '2013-02-05 23:22:21', NULL, NULL, 165, 1);
INSERT INTO `events` VALUES(20, 'Path started', '2013-02-05 23:22:43', '2013-02-05 23:22:51', NULL, NULL, 166, 1);
INSERT INTO `events` VALUES(21, 'Path started', '2013-02-05 23:23:15', '2013-02-05 23:23:53', NULL, NULL, 167, 1);
INSERT INTO `events` VALUES(22, 'Path started', '2013-02-05 23:24:01', '2013-02-05 23:24:08', NULL, NULL, 168, 1);
INSERT INTO `events` VALUES(23, 'Path started', '2013-02-05 23:25:06', '2013-02-05 23:25:20', NULL, NULL, 169, 1);
INSERT INTO `events` VALUES(24, 'Path started', '2013-02-06 12:47:12', '2013-02-06 16:19:08', NULL, NULL, 170, 1);
INSERT INTO `events` VALUES(25, 'Path started', '2013-02-06 16:19:43', '2013-02-06 16:20:42', NULL, NULL, 171, 1);
INSERT INTO `events` VALUES(26, 'Path started', '2013-02-06 16:23:27', '2013-02-06 16:24:00', NULL, NULL, 172, 1);
INSERT INTO `events` VALUES(27, 'Path started', '2013-02-06 16:24:45', '2013-02-06 16:24:59', NULL, NULL, 173, 1);
INSERT INTO `events` VALUES(28, 'Path started', '2013-02-06 16:25:18', '2013-02-06 16:25:44', NULL, NULL, 174, 1);

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
-- Table structure for table `promos`
--

CREATE TABLE `promos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `promotype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `promos`
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=470 ;

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
INSERT INTO `steps` VALUES(346, '2013-02-04 01:48:47', '2013-02-04 01:48:49', 32, 1);
INSERT INTO `steps` VALUES(347, '2013-02-04 02:54:53', '2013-02-04 02:54:56', 39, 1);
INSERT INTO `steps` VALUES(348, '2013-02-04 02:55:29', '1969-12-31 19:00:00', 40, 1);
INSERT INTO `steps` VALUES(349, '2013-02-04 02:56:15', '2013-02-04 02:56:17', 41, 1);
INSERT INTO `steps` VALUES(350, '2013-02-04 02:56:56', '2013-02-04 02:56:57', 43, 1);
INSERT INTO `steps` VALUES(351, '2013-02-04 02:56:58', '2013-02-04 02:57:00', 43, 1);
INSERT INTO `steps` VALUES(352, '2013-02-04 02:57:01', '2013-02-04 02:57:02', 43, 1);
INSERT INTO `steps` VALUES(353, '2013-02-04 03:02:35', '2013-02-04 03:02:36', 43, 1);
INSERT INTO `steps` VALUES(354, '2013-02-04 03:03:03', '2013-02-04 03:03:04', 44, 1);
INSERT INTO `steps` VALUES(355, '2013-02-04 03:03:28', '2013-02-04 03:03:29', 46, 3);
INSERT INTO `steps` VALUES(356, '2013-02-04 03:03:41', '2013-02-04 03:03:42', 46, 3);
INSERT INTO `steps` VALUES(357, '2013-02-04 03:04:05', '2013-02-04 03:04:06', 47, 3);
INSERT INTO `steps` VALUES(358, '2013-02-04 03:28:31', '2013-02-04 03:28:34', 60, 1);
INSERT INTO `steps` VALUES(359, '2013-02-04 11:54:40', '2013-02-04 11:54:42', 70, 3);
INSERT INTO `steps` VALUES(360, '2013-02-04 11:59:14', '2013-02-04 11:59:15', 75, 1);
INSERT INTO `steps` VALUES(361, '2013-02-04 11:59:16', '2013-02-04 11:59:17', 75, 1);
INSERT INTO `steps` VALUES(362, '2013-02-04 12:00:24', '2013-02-04 12:00:25', 76, 3);
INSERT INTO `steps` VALUES(363, '2013-02-04 12:09:47', '2013-02-04 12:09:49', 79, 3);
INSERT INTO `steps` VALUES(364, '2013-02-04 12:09:50', '2013-02-04 12:09:51', 79, 1);
INSERT INTO `steps` VALUES(365, '2013-02-04 12:09:53', '2013-02-04 12:09:54', 79, 2);
INSERT INTO `steps` VALUES(366, '2013-02-04 12:52:26', '2013-02-04 12:52:28', 85, 1);
INSERT INTO `steps` VALUES(367, '2013-02-04 12:52:45', '2013-02-04 12:52:47', 85, 1);
INSERT INTO `steps` VALUES(368, '2013-02-04 12:52:56', '2013-02-04 12:52:58', 86, 1);
INSERT INTO `steps` VALUES(369, '2013-02-04 12:54:43', '2013-02-04 12:54:45', 87, 1);
INSERT INTO `steps` VALUES(370, '2013-02-04 13:12:39', '2013-02-04 13:12:41', 88, 1);
INSERT INTO `steps` VALUES(371, '2013-02-04 13:12:42', '2013-02-04 13:12:45', 88, 2);
INSERT INTO `steps` VALUES(372, '2013-02-04 13:12:53', '2013-02-04 13:12:55', 89, 1);
INSERT INTO `steps` VALUES(373, '2013-02-04 13:16:46', '2013-02-04 13:16:48', 90, 1);
INSERT INTO `steps` VALUES(374, '2013-02-04 13:16:54', '1969-12-31 19:00:00', 91, 1);
INSERT INTO `steps` VALUES(375, '2013-02-04 13:16:58', '2013-02-04 13:17:00', 91, 1);
INSERT INTO `steps` VALUES(376, '2013-02-04 13:17:10', '2013-02-04 13:17:12', 91, 1);
INSERT INTO `steps` VALUES(377, '2013-02-04 13:20:24', '2013-02-04 13:20:26', 96, 1);
INSERT INTO `steps` VALUES(378, '2013-02-04 13:20:42', '2013-02-04 13:20:44', 97, 1);
INSERT INTO `steps` VALUES(379, '2013-02-04 13:20:52', '2013-02-04 13:20:54', 98, 1);
INSERT INTO `steps` VALUES(380, '2013-02-04 13:21:06', '2013-02-04 13:21:07', 99, 1);
INSERT INTO `steps` VALUES(381, '2013-02-04 13:21:25', '2013-02-04 13:21:27', 100, 1);
INSERT INTO `steps` VALUES(382, '2013-02-04 13:50:07', '2013-02-04 13:50:09', 103, 1);
INSERT INTO `steps` VALUES(383, '2013-02-04 14:07:23', '2013-02-04 14:07:24', 104, 1);
INSERT INTO `steps` VALUES(384, '2013-02-04 14:07:45', '2013-02-04 14:07:47', 104, 2);
INSERT INTO `steps` VALUES(385, '2013-02-04 14:16:26', '2013-02-04 14:16:27', 107, 3);
INSERT INTO `steps` VALUES(386, '2013-02-04 14:16:28', '2013-02-04 14:16:31', 107, 2);
INSERT INTO `steps` VALUES(387, '2013-02-04 14:16:32', '2013-02-04 14:16:35', 107, 1);
INSERT INTO `steps` VALUES(388, '2013-02-04 14:37:04', '2013-02-04 14:37:05', 107, 1);
INSERT INTO `steps` VALUES(389, '2013-02-04 14:37:46', '2013-02-04 14:37:46', 2, 3);
INSERT INTO `steps` VALUES(390, '2013-02-04 14:38:03', '2013-02-04 14:38:04', 3, 3);
INSERT INTO `steps` VALUES(391, '2013-02-04 14:39:30', '2013-02-04 14:39:30', 6, 3);
INSERT INTO `steps` VALUES(392, '2013-02-04 14:39:38', '2013-02-04 14:39:38', 6, 3);
INSERT INTO `steps` VALUES(393, '2013-02-04 14:39:41', '2013-02-04 14:39:42', 6, 3);
INSERT INTO `steps` VALUES(394, '2013-02-04 14:40:37', '2013-02-04 14:40:38', 8, 3);
INSERT INTO `steps` VALUES(395, '2013-02-04 14:41:21', '2013-02-04 14:41:22', 2, 3);
INSERT INTO `steps` VALUES(396, '2013-02-04 14:41:22', '2013-02-04 14:41:23', 2, 1);
INSERT INTO `steps` VALUES(397, '2013-02-04 17:20:40', '2013-02-04 17:24:58', 3, 1);
INSERT INTO `steps` VALUES(398, '2013-02-04 17:24:59', '1969-12-31 19:00:00', 3, 1);
INSERT INTO `steps` VALUES(399, '2013-02-05 18:08:37', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(400, '2013-02-05 18:08:44', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(401, '2013-02-05 18:08:56', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(402, '2013-02-05 18:09:01', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(403, '2013-02-05 18:09:13', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(404, '2013-02-05 18:09:19', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(405, '2013-02-05 18:09:30', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(406, '2013-02-05 18:09:33', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(407, '2013-02-05 18:09:34', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(408, '2013-02-05 18:09:39', '2013-02-05 18:09:40', 3, 1);
INSERT INTO `steps` VALUES(409, '2013-02-05 18:11:35', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(410, '2013-02-05 18:12:23', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(411, '2013-02-05 18:12:36', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(412, '2013-02-05 18:12:57', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(413, '2013-02-05 18:14:44', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(414, '2013-02-05 18:15:06', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(415, '2013-02-05 18:15:09', '1969-12-31 19:00:00', 3, 3);
INSERT INTO `steps` VALUES(416, '2013-02-05 18:15:11', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(417, '2013-02-05 18:15:14', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(418, '2013-02-05 18:17:25', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(419, '2013-02-05 18:17:46', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(420, '2013-02-05 18:18:45', '2013-02-05 18:18:47', 3, 2);
INSERT INTO `steps` VALUES(421, '2013-02-05 18:19:28', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(422, '2013-02-05 18:19:38', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(423, '2013-02-05 18:20:11', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(424, '2013-02-05 18:24:47', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(425, '2013-02-05 18:26:10', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(426, '2013-02-05 18:29:29', '1969-12-31 19:00:00', 3, 2);
INSERT INTO `steps` VALUES(427, '2013-02-05 18:29:38', '2013-02-05 18:39:39', 3, 2);
INSERT INTO `steps` VALUES(428, '2013-02-05 18:39:41', '2013-02-05 18:39:42', 3, 3);
INSERT INTO `steps` VALUES(429, '2013-02-05 18:42:38', '1969-12-31 19:00:00', 4, 1);
INSERT INTO `steps` VALUES(430, '2013-02-05 22:36:58', '2013-02-05 22:37:02', 6, 1);
INSERT INTO `steps` VALUES(431, '2013-02-05 22:40:10', '2013-02-05 22:40:12', 7, 1);
INSERT INTO `steps` VALUES(432, '2013-02-05 22:40:28', '2013-02-05 22:40:32', 8, 1);
INSERT INTO `steps` VALUES(433, '2013-02-05 22:42:17', '2013-02-05 22:42:29', 9, 1);
INSERT INTO `steps` VALUES(434, '2013-02-05 22:45:07', '2013-02-05 22:45:13', 10, 1);
INSERT INTO `steps` VALUES(435, '2013-02-05 22:47:40', '1969-12-31 19:00:00', 11, 1);
INSERT INTO `steps` VALUES(436, '2013-02-05 22:47:53', '2013-02-05 22:48:35', 11, 1);
INSERT INTO `steps` VALUES(437, '2013-02-05 22:48:37', '2013-02-05 22:48:38', 11, 3);
INSERT INTO `steps` VALUES(438, '2013-02-05 22:48:42', '2013-02-05 22:49:22', 11, 1);
INSERT INTO `steps` VALUES(439, '2013-02-05 22:50:01', '1969-12-31 19:00:00', 12, 1);
INSERT INTO `steps` VALUES(440, '2013-02-05 22:50:58', '2013-02-05 22:51:26', 12, 1);
INSERT INTO `steps` VALUES(441, '2013-02-05 22:51:31', '2013-02-05 22:52:17', 13, 1);
INSERT INTO `steps` VALUES(442, '2013-02-05 22:54:00', '1969-12-31 19:00:00', 14, 1);
INSERT INTO `steps` VALUES(443, '2013-02-05 22:55:55', '1969-12-31 19:00:00', 14, 1);
INSERT INTO `steps` VALUES(444, '2013-02-05 22:56:26', '2013-02-05 22:56:41', 14, 1);
INSERT INTO `steps` VALUES(445, '2013-02-05 23:05:11', '2013-02-05 23:05:21', 16, 1);
INSERT INTO `steps` VALUES(446, '2013-02-05 23:05:50', '2013-02-05 23:05:58', 17, 1);
INSERT INTO `steps` VALUES(447, '2013-02-05 23:06:27', '2013-02-05 23:06:40', 18, 1);
INSERT INTO `steps` VALUES(448, '2013-02-05 23:10:30', '1969-12-31 19:00:00', 19, 1);
INSERT INTO `steps` VALUES(449, '2013-02-05 23:12:06', '1969-12-31 19:00:00', 19, 1);
INSERT INTO `steps` VALUES(450, '2013-02-05 23:13:39', '1969-12-31 19:00:00', 19, 1);
INSERT INTO `steps` VALUES(451, '2013-02-05 23:14:00', '1969-12-31 19:00:00', 19, 1);
INSERT INTO `steps` VALUES(452, '2013-02-05 23:14:15', '1969-12-31 19:00:00', 19, 1);
INSERT INTO `steps` VALUES(453, '2013-02-05 23:14:18', '1969-12-31 19:00:00', 19, 1);
INSERT INTO `steps` VALUES(454, '2013-02-05 23:15:55', '1969-12-31 19:00:00', 19, 1);
INSERT INTO `steps` VALUES(455, '2013-02-05 23:16:11', '1969-12-31 19:00:00', 19, 1);
INSERT INTO `steps` VALUES(456, '2013-02-05 23:17:51', '1969-12-31 19:00:00', 19, 1);
INSERT INTO `steps` VALUES(457, '2013-02-05 23:21:03', '1969-12-31 19:00:00', 19, 1);
INSERT INTO `steps` VALUES(458, '2013-02-05 23:22:11', '2013-02-05 23:22:19', 19, 1);
INSERT INTO `steps` VALUES(459, '2013-02-05 23:22:44', '2013-02-05 23:22:49', 20, 1);
INSERT INTO `steps` VALUES(460, '2013-02-05 23:23:19', '1969-12-31 19:00:00', 21, 1);
INSERT INTO `steps` VALUES(461, '2013-02-05 23:23:47', '2013-02-05 23:23:52', 21, 1);
INSERT INTO `steps` VALUES(462, '2013-02-05 23:24:02', '2013-02-05 23:24:06', 22, 1);
INSERT INTO `steps` VALUES(463, '2013-02-05 23:25:09', '2013-02-05 23:25:18', 23, 1);
INSERT INTO `steps` VALUES(464, '2013-02-06 16:19:01', '2013-02-06 16:19:07', 24, 1);
INSERT INTO `steps` VALUES(465, '2013-02-06 16:20:11', '2013-02-06 16:20:11', 25, 3);
INSERT INTO `steps` VALUES(466, '2013-02-06 16:20:33', '2013-02-06 16:20:40', 25, 1);
INSERT INTO `steps` VALUES(467, '2013-02-06 16:23:29', '2013-02-06 16:23:58', 26, 1);
INSERT INTO `steps` VALUES(468, '2013-02-06 16:24:50', '2013-02-06 16:24:56', 27, 1);
INSERT INTO `steps` VALUES(469, '2013-02-06 16:25:19', '2013-02-06 16:25:42', 28, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=175 ;

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
