-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2025 at 12:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resturent_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `address_id` int(11) NOT NULL,
  `street` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `postal_code` varchar(30) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`address_id`, `street`, `city`, `postal_code`, `user_id`) VALUES
(1, '123 Main St', 'New York', '10001', 1),
(2, '456 Elm St', 'Los Angeles', '90001', 2),
(3, '789 Oak St', 'Chicago', '60601', 3),
(4, '101 Pine St', 'Houston', '77001', 4),
(5, '202 Maple St', 'Phoenix', '85001', 5),
(6, '303 Birch St', 'Philadelphia', '19019', 6),
(7, '404 Cedar St', 'San Antonio', '78201', 7),
(8, '505 Walnut St', 'San Diego', '92101', 8),
(9, '606 Cherry St', 'Dallas', '75201', 9),
(10, '707 Spruce St', 'San Jose', '95101', 10),
(11, '808 Ash St', 'Austin', '73301', 11),
(12, '909 Poplar St', 'Jacksonville', '32099', 12),
(13, '111 Fir St', 'Fort Worth', '76101', 13),
(14, '222 Redwood St', 'Columbus', '43085', 14),
(15, '333 Sequoia St', 'Charlotte', '28201', 15),
(16, '444 Palm St', 'San Francisco', '94101', 16),
(17, '555 Willow St', 'Indianapolis', '46201', 17),
(18, '666 Sycamore St', 'Seattle', '98101', 18),
(19, '777 Magnolia St', 'Denver', '80201', 19),
(20, '888 Dogwood St', 'Washington', '20001', 20),
(21, '999 Juniper St', 'Boston', '02101', 21),
(22, '121 Acacia St', 'Nashville', '37201', 22),
(23, '232 Bamboo St', 'Baltimore', '21201', 23),
(24, '343 Cypress St', 'Oklahoma City', '73101', 24),
(25, '454 Olive St', 'Louisville', '40201', 25),
(26, '565 Pineapple St', 'Portland', '97201', 26),
(27, '676 Peach St', 'Las Vegas', '89101', 27),
(28, '787 Plum St', 'Milwaukee', '53201', 28),
(29, '898 Mango St', 'Albuquerque', '87101', 29),
(30, '909 Papaya St', 'Tucson', '85701', 30),
(31, '123 Main St', 'New York', '10001', 1),
(32, '456 Elm St', 'Los Angeles', '90001', 2),
(33, '789 Oak St', 'Chicago', '60601', 3),
(34, '101 Pine St', 'Houston', '77001', 4),
(35, '202 Maple St', 'Phoenix', '85001', 5),
(36, '303 Birch St', 'Philadelphia', '19019', 6),
(37, '404 Cedar St', 'San Antonio', '78201', 7),
(38, '505 Walnut St', 'San Diego', '92101', 8),
(39, '606 Cherry St', 'Dallas', '75201', 9),
(40, '707 Spruce St', 'San Jose', '95101', 10),
(41, '808 Ash St', 'Austin', '73301', 11),
(42, '909 Poplar St', 'Jacksonville', '32099', 12),
(43, '111 Fir St', 'Fort Worth', '76101', 13),
(44, '222 Redwood St', 'Columbus', '43085', 14),
(45, '333 Sequoia St', 'Charlotte', '28201', 15),
(46, '444 Palm St', 'San Francisco', '94101', 16),
(47, '555 Willow St', 'Indianapolis', '46201', 17),
(48, '666 Sycamore St', 'Seattle', '98101', 18),
(49, '777 Magnolia St', 'Denver', '80201', 19),
(50, '888 Dogwood St', 'Washington', '20001', 20),
(51, '999 Juniper St', 'Boston', '02101', 21),
(52, '121 Acacia St', 'Nashville', '37201', 22),
(53, '232 Bamboo St', 'Baltimore', '21201', 23),
(54, '343 Cypress St', 'Oklahoma City', '73101', 24),
(55, '454 Olive St', 'Louisville', '40201', 25),
(56, '565 Pineapple St', 'Portland', '97201', 26),
(57, '676 Peach St', 'Las Vegas', '89101', 27),
(58, '787 Plum St', 'Milwaukee', '53201', 28),
(59, '898 Mango St', 'Albuquerque', '87101', 29),
(60, '909 Papaya St', 'Tucson', '85701', 30),
(62, 'morocco', 'marrakesh', '40000', 115),
(63, 'tighdouin el haouz', 'marrakesh', '40000', 116),
(64, 'bokhalef tanger ', 'tanger', '56000', 117),
(65, 'morocco', 'marrakesh', '40000', 118),
(66, 'morocco', 'marrakesh', '40000', 119),
(67, 'morocco', 'marrakesh', '40000', 120),
(68, 'morocco', 'marrakesh', '40000', 121),
(69, 'morocco', 'marrakesh', '40000', 123),
(70, 'morocco', 'marrakesh', '40000', 125),
(71, 'morocco', 'marrakesh', '40000', 126),
(72, 'morocco', 'marrakesh', '40000', 127),
(73, 'tighdouinel haouz marrakesh safi morocco', 'marrakesh', '40000', 128),
(74, 'bokhalef mojama3 hassani', 'tanger', '12000', 128),
(75, 'homat nasser tanger', 'tanger', '60000', 129),
(76, 'dar tonssi tanger', 'tamger', '9000900', 129),
(77, 'morocco agadir', 'marrakesh', '40000', 129);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Italian'),
(2, 'Mexican'),
(3, 'Chinese'),
(4, 'Indian'),
(5, 'Japanese'),
(6, 'American'),
(7, 'Mediterranean'),
(8, 'Thai'),
(9, 'French'),
(10, 'Vegetarian');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `dish_id` int(11) NOT NULL,
  `dish_price` decimal(10,2) NOT NULL,
  `dish_name` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `image_url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`dish_id`, `dish_price`, `dish_name`, `category_id`, `image_url`) VALUES
(1, 12.99, 'Spaghetti Carbonara', 1, 'spaghetti_carbonara.jpg'),
(2, 10.99, 'Margherita Pizza', 1, 'margherita_pizza.jpg'),
(3, 14.99, 'Lasagna', 1, 'lasagna.jpg'),
(4, 13.99, 'Risotto', 1, 'risotto.jpg'),
(5, 8.99, 'Tiramisu', 1, 'tiramisu.jpg'),
(6, 9.99, 'Tacos', 2, 'tacos.jpg'),
(7, 11.99, 'Burrito', 2, 'burrito.jpg'),
(8, 5.99, 'Guacamole', 2, 'guacamole.jpg'),
(9, 12.99, 'Enchiladas', 2, 'enchiladas.jpg'),
(10, 6.99, 'Churros', 2, 'churros.jpg'),
(11, 13.99, 'Kung Pao Chicken', 3, 'kung_pao_chicken.jpg'),
(12, 10.99, 'Fried Rice', 3, 'fried_rice.jpg'),
(13, 8.99, 'Dumplings', 3, 'dumplings.jpg'),
(14, 6.99, 'Hot and Sour Soup', 3, 'hot_and_sour_soup.jpg'),
(15, 25.99, 'Peking Duck', 3, 'peking_duck.jpg'),
(16, 14.99, 'Butter Chicken', 4, 'butter_chicken.jpg'),
(17, 12.99, 'Biryani', 4, 'biryani.jpg'),
(18, 4.99, 'Samosa', 4, 'samosa.jpg'),
(19, 3.99, 'Naan', 4, 'naan.jpg'),
(20, 5.99, 'Gulab Jamun', 4, 'gulab_jamun.jpg'),
(21, 15.99, 'Sushi', 5, 'sushi.jpg'),
(22, 12.99, 'Ramen', 5, 'ramen.jpg'),
(23, 10.99, 'Tempura', 5, 'tempura.jpg'),
(24, 4.99, 'Miso Soup', 5, 'miso_soup.jpg'),
(25, 6.99, 'Matcha Ice Cream', 5, 'matcha_ice_cream.jpg'),
(26, 9.99, 'Cheeseburger', 6, 'cheeseburger.jpg'),
(27, 18.99, 'BBQ Ribs', 6, 'bbq_ribs.jpg'),
(28, 8.99, 'Mac and Cheese', 6, 'mac_and_cheese.jpg'),
(29, 7.99, 'Apple Pie', 6, 'apple_pie.webp'),
(30, 11.99, 'Buffalo Wings', 6, 'buffalo_wings.jpg'),
(31, 6.99, 'Hummus', 7, 'hummus.jpg'),
(32, 8.99, 'Falafel', 7, 'falafel.jpg'),
(33, 10.99, 'Shawarma', 7, 'shawarma.jpg'),
(34, 7.99, 'Baklava', 7, 'baklava.jpg'),
(35, 9.99, 'Tabbouleh', 7, 'tabbouleh.jpg'),
(36, 12.99, 'Pad Thai', 8, 'pad_thai.jpg'),
(37, 13.99, 'Green Curry', 8, 'green_curry.jpg'),
(38, 9.99, 'Tom Yum Soup', 8, 'tom_yum_soup.jpg'),
(39, 7.99, 'Mango Sticky Rice', 8, 'mango_sticky_rice.jpg'),
(40, 6.99, 'Spring Rolls', 8, 'spring_rolls.jpg'),
(41, 4.99, 'Croissant', 9, 'croissant.jpg'),
(42, 16.99, 'Coq au Vin', 9, 'coq_au_vin.jpg'),
(43, 12.99, 'Ratatouille', 9, 'ratatouille.jpg'),
(44, 8.99, 'Crème Brûlée', 9, 'creme_brulee.jpg'),
(45, 9.99, 'Veggie Burger', 10, 'veggie_burger.jpg'),
(46, 10.99, 'Quinoa Salad', 10, 'quinoa_salad.jpg'),
(47, 11.99, 'Stuffed Bell Peppers', 10, 'stuffed_bell_peppers.jpg'),
(48, 12.99, 'Vegetable Stir Fry', 10, 'vegetable_stir_fry.jpg'),
(49, 8.99, 'Avocado Toast', 10, 'avocado_toast.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `status`, `user_id`, `address_id`) VALUES
(1, '2023-01-01', 'Pending', 1, 1),
(2, '2023-01-05', 'Processing', 2, 2),
(3, '2023-01-10', 'Shipped', 3, 3),
(4, '2023-01-15', 'Delivered', 4, 4),
(5, '2023-01-20', 'Cancelled', 5, 5),
(6, '2023-01-25', 'Returned', 6, 6),
(7, '2023-02-01', 'Pending', 7, 7),
(8, '2023-02-05', 'Processing', 8, 8),
(9, '2023-02-10', 'Shipped', 9, 9),
(10, '2023-02-15', 'Delivered', 10, 10),
(11, '2023-02-20', 'Cancelled', 11, 11),
(12, '2023-02-25', 'Returned', 12, 12),
(13, '2023-03-01', 'Pending', 13, 13),
(14, '2023-03-05', 'Processing', 14, 14),
(15, '2023-03-10', 'Shipped', 15, 15),
(16, '2023-03-15', 'Delivered', 16, 16),
(17, '2023-03-20', 'Cancelled', 17, 17),
(18, '2023-03-25', 'Returned', 18, 18),
(19, '2023-04-01', 'Pending', 19, 19),
(20, '2023-04-05', 'Processing', 20, 20),
(21, '2023-04-10', 'Shipped', 21, 21),
(22, '2023-04-15', 'Delivered', 22, 22),
(23, '2023-04-20', 'Cancelled', 23, 23),
(24, '2023-04-25', 'Returned', 24, 24),
(25, '2023-05-01', 'Pending', 25, 25),
(26, '2023-05-05', 'Processing', 26, 26),
(27, '2023-05-10', 'Shipped', 27, 27),
(28, '2023-05-15', 'Delivered', 28, 28),
(29, '2023-05-20', 'Cancelled', 29, 29),
(30, '2023-05-25', 'Returned', 30, 30),
(31, '2023-06-01', 'Pending', 1, 1),
(32, '2023-06-05', 'Processing', 2, 2),
(33, '2023-06-10', 'Shipped', 3, 3),
(34, '2023-06-15', 'Delivered', 4, 4),
(35, '2023-06-20', 'Cancelled', 5, 5),
(36, '2023-06-25', 'Returned', 6, 6),
(37, '2023-07-01', 'Pending', 7, 7),
(38, '2023-07-05', 'Processing', 8, 8),
(39, '2023-07-10', 'Shipped', 9, 9),
(40, '2023-07-15', 'Delivered', 10, 10),
(41, '2023-07-20', 'Cancelled', 11, 11),
(42, '2023-07-25', 'Returned', 12, 12),
(43, '2023-08-01', 'Pending', 13, 13),
(44, '2023-08-05', 'Processing', 14, 14),
(45, '2023-08-10', 'Shipped', 15, 15),
(46, '2023-08-15', 'Delivered', 16, 16),
(47, '2023-08-20', 'Cancelled', 17, 17),
(48, '2023-08-25', 'Returned', 18, 18),
(49, '2023-09-01', 'Pending', 19, 19),
(73, '2025-03-12', 'Pending', 121, 68),
(74, '2025-03-12', 'Pending', 121, 68),
(75, '2025-03-12', 'Pending', 121, 68),
(76, '2025-03-12', 'Pending', 121, 68),
(77, '2025-03-12', 'Pending', 121, 68),
(78, '2025-03-12', 'Pending', 121, 68),
(79, '2025-03-12', 'Pending', 121, 68),
(80, '2025-03-12', 'Pending', 121, 68),
(81, '2025-03-12', 'Pending', 121, 68),
(82, '2025-03-12', 'Pending', 121, 68),
(83, '2025-03-12', 'Pending', 121, 68),
(84, '2025-03-12', 'Pending', 121, 68),
(85, '2025-03-12', 'Pending', 121, 68),
(86, '2025-03-12', 'Pending', 121, 68),
(87, '2025-03-12', 'Pending', 121, 68),
(88, '2025-03-12', 'Pending', 121, 68),
(89, '2025-03-12', 'Pending', 121, 68),
(90, '2025-03-12', 'Pending', 121, 68),
(91, '2025-03-12', 'Pending', 121, 68),
(92, '2025-03-12', 'Pending', 121, 68),
(93, '2025-03-12', 'Pending', 121, 68),
(94, '2025-03-12', 'Pending', 121, 68),
(95, '2025-03-12', 'Pending', 121, 68),
(96, '2025-03-12', 'Pending', 121, 68),
(97, '2025-03-12', 'Pending', 121, 68),
(98, '2025-03-12', 'Pending', 121, 68),
(99, '2025-03-12', 'Pending', 121, 68),
(100, '2025-03-12', 'Pending', 121, 68),
(101, '2025-03-12', 'Pending', 121, 68),
(102, '2025-03-12', 'Pending', 121, 68),
(103, '2025-03-12', 'Pending', 121, 68),
(104, '2025-03-12', 'Pending', 121, 68),
(105, '2025-03-12', 'Pending', 121, 68),
(106, '2025-03-12', 'Pending', 121, 68),
(107, '2025-03-12', 'Pending', 121, 68),
(108, '2025-03-13', 'Pending', 121, 68),
(109, '2025-03-13', 'Pending', 121, 68),
(110, '2025-03-13', 'Pending', 121, 68),
(111, '2025-03-13', 'Pending', 121, 68),
(112, '2025-03-13', 'Pending', 121, 68),
(113, '2025-03-13', 'Pending', 121, 68),
(114, '2025-03-13', 'Pending', 121, 68),
(115, '2025-03-13', 'Pending', 121, 68),
(116, '2025-03-13', 'Pending', 121, 68),
(117, '2025-03-13', 'Pending', 121, 68),
(118, '2025-03-13', 'Pending', 121, 68),
(119, '2025-03-13', 'Pending', 121, 68),
(120, '2025-03-13', 'Pending', 128, 73),
(121, '2025-03-13', 'Pending', 128, 73),
(122, '2025-03-13', 'Pending', 128, 73),
(123, '2025-03-13', 'Pending', 128, 73),
(124, '2025-03-13', 'Pending', 128, 73),
(125, '2025-03-13', 'Pending', 128, 73),
(126, '2025-03-13', 'Pending', 128, 73),
(127, '2025-03-13', 'Pending', 128, 73),
(128, '2025-03-13', 'Pending', 128, 73),
(129, '2025-03-13', 'Pending', 128, 73),
(130, '2025-03-13', 'Pending', 128, 73),
(131, '2025-03-13', 'Pending', 128, 73),
(132, '2025-03-13', 'Pending', 128, 73),
(133, '2025-03-13', 'Pending', 128, 73),
(134, '2025-03-13', 'Pending', 128, 73),
(135, '2025-03-13', 'Pending', 128, 73),
(136, '2025-03-13', 'Pending', 128, 73),
(137, '2025-03-13', 'Pending', 128, 73),
(138, '2025-03-13', 'Pending', 128, 73),
(139, '2025-03-13', 'Pending', 128, 73),
(140, '2025-03-13', 'Pending', 128, 73),
(141, '2025-03-13', 'Pending', 128, 73),
(142, '2025-03-13', 'Pending', 128, 73),
(143, '2025-03-13', 'Pending', 128, 73),
(144, '2025-03-13', 'Pending', 128, 73),
(145, '2025-03-13', 'Pending', 128, 73),
(146, '2025-03-13', 'Pending', 128, 73),
(147, '2025-03-13', 'Pending', 128, 73),
(148, '2025-03-13', 'Pending', 128, 73),
(149, '2025-03-13', 'Pending', 128, 73),
(150, '2025-03-13', 'Pending', 128, 73),
(151, '2025-03-13', 'Pending', 128, 73),
(152, '2025-03-13', 'Pending', 129, 75),
(153, '2025-03-13', 'Pending', 129, 75),
(154, '2025-03-13', 'Pending', 129, 75),
(155, '2025-03-13', 'Pending', 129, 75),
(156, '2025-03-13', 'Pending', 129, 75),
(157, '2025-03-13', 'Pending', 129, 75);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_item_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `dish_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_item_id`, `quantity`, `dish_id`, `order_id`) VALUES
(1, 2, 1, 1),
(2, 1, 2, 2),
(3, 3, 3, 3),
(4, 1, 4, 4),
(5, 2, 5, 5),
(6, 1, 6, 6),
(7, 1, 7, 7),
(8, 2, 8, 8),
(9, 1, 9, 9),
(10, 3, 10, 10),
(11, 2, 11, 11),
(12, 1, 12, 12),
(13, 1, 13, 13),
(14, 2, 14, 14),
(15, 3, 15, 15),
(16, 2, 16, 16),
(17, 1, 17, 17),
(18, 1, 18, 18),
(19, 2, 19, 19),
(20, 3, 20, 20),
(21, 1, 21, 21),
(22, 2, 22, 22),
(23, 3, 23, 23),
(24, 2, 24, 24),
(25, 2, 25, 25),
(26, 1, 26, 26),
(27, 3, 27, 27),
(28, 1, 28, 28),
(29, 2, 29, 29),
(30, 1, 30, 30),
(31, 1, 31, 31),
(32, 2, 32, 32),
(33, 3, 33, 33),
(34, 2, 34, 34),
(35, 1, 35, 35),
(36, 1, 36, 36),
(37, 2, 37, 37),
(38, 1, 38, 38),
(39, 2, 39, 39),
(40, 1, 40, 40),
(41, 3, 41, 41),
(42, 2, 42, 42),
(43, 1, 43, 43),
(44, 2, 44, 44),
(45, 3, 45, 45),
(46, 1, 46, 46),
(47, 2, 47, 47),
(48, 1, 48, 48),
(49, 1, 49, 49),
(52, NULL, 3, 73),
(53, NULL, 4, 73),
(54, NULL, 4, 74),
(55, NULL, 3, 74),
(56, NULL, 4, 75),
(57, NULL, 3, 75),
(58, NULL, 3, 76),
(59, NULL, 4, 76),
(60, NULL, 4, 77),
(61, NULL, 3, 77),
(62, 2, 3, 81),
(63, 2, 4, 81),
(64, 2, 3, 82),
(65, 2, 4, 82),
(66, 2, 2, 83),
(67, 2, 3, 83),
(68, 2, 2, 84),
(69, 2, 3, 84),
(70, 2, 2, 85),
(71, 2, 3, 85),
(72, 2, 8, 86),
(73, 2, 2, 86),
(74, 2, 9, 86),
(75, 2, 8, 87),
(76, 2, 2, 87),
(77, 2, 9, 87),
(78, 2, 8, 88),
(79, 2, 2, 88),
(80, 2, 9, 88),
(81, 2, 8, 89),
(82, 2, 2, 89),
(83, 2, 9, 89),
(84, 2, 8, 90),
(85, 2, 2, 90),
(86, 2, 9, 90),
(87, 2, 8, 91),
(88, 2, 2, 91),
(89, 2, 9, 91),
(90, 2, 8, 92),
(91, 2, 2, 92),
(92, 2, 9, 92),
(93, 2, 8, 93),
(94, 2, 2, 93),
(95, 2, 9, 93),
(96, 2, 8, 94),
(97, 2, 2, 94),
(98, 2, 9, 94),
(99, 2, 8, 95),
(100, 2, 2, 95),
(101, 2, 9, 95),
(102, 2, 8, 96),
(103, 2, 2, 96),
(104, 2, 9, 96),
(105, 2, 8, 97),
(106, 2, 2, 97),
(107, 2, 9, 97),
(108, 2, 8, 98),
(109, 2, 2, 98),
(110, 2, 9, 98),
(111, 2, 8, 99),
(112, 2, 2, 99),
(113, 2, 9, 99),
(114, 2, 8, 100),
(115, 2, 2, 100),
(116, 2, 9, 100),
(117, 2, 8, 101),
(118, 2, 2, 101),
(119, 2, 9, 101),
(120, 2, 8, 102),
(121, 2, 2, 102),
(122, 2, 9, 102),
(123, 2, 8, 103),
(124, 2, 2, 103),
(125, 2, 9, 103),
(126, 2, 8, 104),
(127, 2, 2, 104),
(128, 2, 9, 104),
(129, 2, 8, 105),
(130, 2, 2, 105),
(131, 2, 9, 105),
(132, 2, 8, 106),
(133, 2, 2, 106),
(134, 2, 9, 106),
(135, 2, 8, 107),
(136, 2, 2, 107),
(137, 2, 9, 107),
(138, 2, 4, 108),
(139, 2, 4, 109),
(140, 2, 4, 110),
(141, 2, 4, 111),
(142, 2, 4, 112),
(143, 2, 4, 113),
(144, 2, 4, 114),
(145, 2, 3, 115),
(146, 2, 3, 116),
(147, 2, 3, 117),
(148, 2, 3, 118),
(149, 2, 3, 119),
(150, 2, 3, 120),
(151, 2, 3, 121),
(152, 2, 3, 122),
(153, 2, 3, 123),
(154, 2, 3, 124),
(155, 2, 3, 125),
(156, 2, 3, 126),
(157, 2, 3, 127),
(158, 2, 3, 128),
(159, 2, 3, 129),
(160, 2, 3, 130),
(161, 2, 3, 131),
(162, 2, 3, 132),
(163, 2, 3, 133),
(164, 2, 3, 134),
(165, 2, 3, 135),
(166, 2, 3, 136),
(167, 2, 3, 137),
(168, 2, 3, 138),
(169, 2, 3, 139),
(170, 2, 3, 140),
(171, 2, 3, 141),
(172, 2, 4, 142),
(173, 2, 3, 142),
(174, 2, 1, 143),
(175, 2, 16, 143),
(176, 2, 23, 144),
(177, 2, 7, 144),
(178, 2, 38, 144),
(179, 2, 4, 144),
(180, 2, 3, 145),
(181, 2, 2, 145),
(182, 2, 3, 146),
(183, 2, 4, 146),
(184, 2, 2, 146),
(185, 2, 3, 147),
(186, 2, 4, 147),
(187, 2, 5, 147),
(188, 2, 3, 148),
(189, 2, 4, 148),
(190, 2, 2, 148),
(191, 2, 3, 149),
(192, 2, 4, 149),
(193, 2, 4, 150),
(194, 2, 44, 150),
(195, 2, 9, 150),
(196, 2, 4, 151),
(197, 2, 5, 151),
(198, 2, 1, 151),
(199, 2, 4, 152),
(200, 2, 2, 152),
(201, 2, 28, 153),
(202, 2, 27, 153),
(203, 2, 16, 153),
(204, 2, 48, 153),
(205, 2, 3, 154),
(206, 2, 43, 154),
(207, 2, 2, 154),
(208, 2, 1, 154),
(209, 2, 2, 155),
(210, 2, 3, 156),
(211, 2, 4, 156),
(212, 2, 18, 157);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `phone_number`, `password`) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', ''),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', ''),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', '345-678-9012', ''),
(4, 'Bob', 'Brown', 'bob.brown@example.com', '456-789-0123', ''),
(5, 'Charlie', 'Davis', 'charlie.davis@example.com', '567-890-1234', ''),
(6, 'Eva', 'Miller', 'eva.miller@example.com', '678-901-2345', ''),
(7, 'Frank', 'Wilson', 'frank.wilson@example.com', '789-012-3456', ''),
(8, 'Grace', 'Moore', 'grace.moore@example.com', '890-123-4567', ''),
(9, 'Henry', 'Taylor', 'henry.taylor@example.com', '901-234-5678', ''),
(10, 'Ivy', 'Anderson', 'ivy.anderson@example.com', '012-345-6789', ''),
(11, 'Jack', 'Thomas', 'jack.thomas@example.com', '123-456-7890', ''),
(12, 'Karen', 'Jackson', 'karen.jackson@example.com', '234-567-8901', ''),
(13, 'Leo', 'White', 'leo.white@example.com', '345-678-9012', ''),
(14, 'Mia', 'Harris', 'mia.harris@example.com', '456-789-0123', ''),
(15, 'Noah', 'Martin', 'noah.martin@example.com', '567-890-1234', ''),
(16, 'Olivia', 'Thompson', 'olivia.thompson@example.com', '678-901-2345', ''),
(17, 'Paul', 'Garcia', 'paul.garcia@example.com', '789-012-3456', ''),
(18, 'Quinn', 'Martinez', 'quinn.martinez@example.com', '890-123-4567', ''),
(19, 'Rachel', 'Robinson', 'rachel.robinson@example.com', '901-234-5678', ''),
(20, 'Steve', 'Clark', 'steve.clark@example.com', '012-345-6789', ''),
(21, 'Tina', 'Rodriguez', 'tina.rodriguez@example.com', '123-456-7890', ''),
(22, 'Uma', 'Lewis', 'uma.lewis@example.com', '234-567-8901', ''),
(23, 'Victor', 'Lee', 'victor.lee@example.com', '345-678-9012', ''),
(24, 'Wendy', 'Walker', 'wendy.walker@example.com', '456-789-0123', ''),
(25, 'Xander', 'Hall', 'xander.hall@example.com', '567-890-1234', ''),
(26, 'Yara', 'Allen', 'yara.allen@example.com', '678-901-2345', ''),
(27, 'Zack', 'Young', 'zack.young@example.com', '789-012-3456', ''),
(28, 'Amy', 'Hernandez', 'amy.hernandez@example.com', '890-123-4567', ''),
(29, 'Ben', 'King', 'ben.king@example.com', '901-234-5678', ''),
(30, 'Cara', 'Wright', 'cara.wright@example.com', '012-345-6789', ''),
(61, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$z1ZNHmbELKwRKNbMLEzVcema2gwcS9PJrYwndq4A/FvET5F/cQ53K'),
(62, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$DOboBL1TMfeiG/cjPb33TOq1Qzs/D2GMWjb3vTGwn7CPWh79O.gI2'),
(63, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$l9xtxr4bmpyifAWBrP.FfOpqoK0Q6h3K4wFqzKjVymYnsR2Ke9uxi'),
(64, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$VtFYzsL/kg3GWGEHe621EOB4lJ3abNOfSjRUiG6fNLnNXvJhL5bpG'),
(65, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$rCSWBfHfIUJd5xZaKf43oOJSNv2HjO2RONiflY/imUh7asNvUkRHC'),
(66, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$Cf8NKVKSehJ5Hhi0sQFsRu4l56DPCuxmLG6xWKopEn48j3M3pDHIi'),
(67, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$FfTKA9AGgtsGyB3fVnr.veLN15.eBv0mvvPd1su2ldJHQ0/u/dS7i'),
(68, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$2KRN7d9OEvozgUomZpHvGe2hmCx2GQK9nY.rJaecrCnoYXDusetna'),
(69, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$8.dZEJ7ucne7o3Q.30IyN.1GoWuIyuRjUUK.4xtwvwZ9kO21lXw/C'),
(70, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$Gyxu.ElfoA1u1wTPdGcVhOBxA.HkWCVEy.iNA3y6ChWd84.TxSQam'),
(71, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$NXbkRZU.fNXy3efGgWVRhOSGKmfQ.mH96EZi/RczUVRMgEKe4qyKC'),
(72, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$nR1R43DyfMJvlZ7HCVzvZubL5sVTNjkmucLENHkNdmH92QkC/JsFe'),
(73, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$FhRRLdGU/sSLCvElU81kcOAfkWPhxgyf0gmc8afY/JEJqeF5.3RT6'),
(74, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$ipxy0RGLd40vYJ4WlHtjSuLHtlMZlH4aJs7rt00RNEB74mV.nNSW.'),
(76, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$lyhvn5u5LVTdgdFfL9nj8.cUhhT7VUUIvSBM5kP2LVqlgOHA/WxVC'),
(77, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$wo8fihRalXmzcFeTPfn4xeo1stXH5K3nTpYpgEWoWs5mBUFSW1vee'),
(78, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$TZWM0o3MxDcy5BNubym4W.uFpnHePulHMxge4oeWebu6ea67xE.ZK'),
(79, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$Ab6kDGZYCju9CsPzvrrJi.MumxBaM6oC9NqhH3BxJgxbp5FV8706i'),
(80, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$7hBw7qy1azl/7TfLjJQyxuUv/xstSvOElN3xZr5QOngkv9UZp3O7a'),
(81, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$kF4VotipuYmfpePhfb/e4e5HW5BQvBCzOGBr.U1i9V7FS97M8.QNW'),
(82, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$p/s1eceCblDCbEcPyMaOreYnFrbJ9XgCMIRbSEegpYRmVFGt2tFMm'),
(83, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$qKO7BifbiEV26U30uPxPHeH2e1s5MJjL4z0oaI.x8IldCFfpM.RI.'),
(84, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$ZjxEcI4a2.7TE1jpaw3jHuyFD1AD2v2MmEc.aqx5H.1LBYv5voXP6'),
(85, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$oA/9by4IsVtmlkRcYlyycOTLRSJUMIZ2w1d9JJAxX53weOjRsDQ6S'),
(86, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$prAmhXarHMjNKW17SDSZi.1HWIuHdthJaen7C9Ytq7HYNEpjBwyU2'),
(87, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$BK7XDTdU2yFHxuSGdsKBqeQTbrVnqOtoiGTMKW1aea84xBw6qvPoa'),
(88, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$z5Amwdm0e6tV7DNhlGCXgum6mzK3d9/VsH3mSXGNB3ULuXindLzmC'),
(89, 'mohammad', 'elcadi', 'john.doe@example.com', '0769159613', '$2y$10$tsR8wexGMfBXiUWsBTChquuBKZ7eAt63P0ZrG62AH7EHAqXZSDmCm'),
(90, 'omarlantit', 'elcadi', 'omarox@gmail.com', '0769159613', '$2y$10$5ALMgbBHqrorHnBL.q46HuLrTVIkLVLemlhlV.diGyQ9xhFhYLS/i'),
(91, 'khaldoon', 'eahmed', 'ahmedomar@gmail.com', '0769159613', '$2y$10$OZeoBQn7TrvKTKgs466pZuIp.Q8m4h0nokz.vda7kNjyTnhxOllc2'),
(92, 'khalid', 'mohammad', 'khalismohammad@gmail.com', '0769159613', '$2y$10$xytmXZcN89yFDHIkEa34UOKLA6/Phv8XQ23YI1IGoliH2IiI61Um6'),
(93, 'yassar', 'hamada', 'hamadyassir@gmail.com', '0769159999', '$2y$10$18OID5FnwyBhmvxGjbOEVefJjyDKgU/qAN.L3DjIcJe0ZUqDa6sFi'),
(94, 'mohammad', 'elcadi', 'kkkkk@gmail.com', '0769159613', '$2y$10$.oGDjJUjQ3it/wEneWyVEO1XcsEnJVKS7DoICIW3SPgdHVkjebNpe'),
(95, 'taha', 'abokhalid', 'abokhalitaha@gmail.com', '0769159613', '$2y$10$UR8268lXJ8eJEPmAdUJY3eyH.lvR7qXeHJcYyL0ubpGTsFcqFp2gO'),
(96, 'taha', 'boulhak', 'boulhaktaha@gmail.com', '0769159613', '$2y$10$9Ouoav7j/PiRCER8rD3PYOldnoV5s8012a2zE0DAN0/ws8TuZIgTS'),
(97, 'yaasir', 'ahmed', 'ahmedyassir99@gmail.com', '0677777777', '$2y$10$ttuTqSAdFOZpslzhlT8/9.gEML1ye8QiPLyyz5zACf2rfbR7LJ89y'),
(98, 'hamid', 'adam', 'hMIIIIDAMIN@gmail.com', '0769159613', '$2y$10$j1k.1R/bzCXi5laFEjdvaumaH4BaFPOMDpwOHgJrZCU5K7biXk9IS'),
(99, 'yawdanbi', 'yawywa', 'yawdanbi@gmail.com', '0909898765', '$2y$10$Wg4AbV2AY55PjUUrugt0u.jflcZGNz/t0MI.QISIDldkPL8FLunj.'),
(100, 'zamel', 'yahya', 'yahyaiszamel@gmail.com', '0666267389', '$2y$10$GWnCWoRFyI8pUJilYPF7cuEo.iSSbKvpI8NxszUgs41rNVVQ0Dhti'),
(101, 'omar', 'xsb', 'xsbadam@gmail.com', '0987563976', '$2y$10$U.S2hTwvyJnFg.AJXZQT5.JM0rDysZvTGslUh2l6yA2kzNWxjgZvm'),
(102, 'hichame', 'aitbenalla', 'diplo@gg.com', '0667788990', '$2y$10$R3CDFaW5Ppq/6siuu69AmOlVHqEQyh5w1/EzH06dSoQWPJLxIDYhK'),
(103, 'adham', 'khalid', 'adham@gmail.com', '0769159613', '$2y$10$di2APqEw2r5bVxT6sK/uRONUjaMPLprCfZRAYSR9SfXdQRqdIvT0W'),
(104, 'bahja', 'm3alam', 'bahja@gmail.com', '0769159613', '$2y$10$9VOzySdV79/oat.KrCh8Ve6GclbKytrxtW.j.k7AItBVZCR767RNK'),
(105, 'mohammad', 'elcadi', 'mr.elcadi@gmail.com', '0769159613', '$2y$10$297LjheauezO1Q30vdjG.eA8Sbj1TiPLcJy1.Bro/Vt7IaWKjdCte'),
(106, 'mohammad', 'elcadi', 'maxdv@gmail.com', '0769159613', '$2y$10$lu53c5TlTFsRXvdOk8cWiOWpE5nisfLfYpAUszK8hs4BahZSkWoDu'),
(107, 'massri', 'mohammad', 'massri@gmail.com', '0769159613', '$2y$10$FiAZJK3.q/eU93iTGvxNp.mJJZZmd.ftREoOFsG1LtAy0SzqJrq72'),
(108, 'aymen', 'aymen', 'aymen@gmail.com', '0769159613', '$2y$10$.YNw719CCIqJUCkv016AE.0icsogTYu7UzW4TNkKKlYklDTNzS5BS'),
(109, 'mohammad', 'elcadi', 'elcadi5@gmail.com', '0769159613', '$2y$10$Qu.6vWNHr9rifW8K4bW0PetU3EmWbnznUgXTaQnHEF2SxDZrSlEMu'),
(110, 'mohammad', 'elcadi', 'wahdoon@gmail.com', '0769159613', '$2y$10$xnZBzvVmavA7qVdvtjggL.1zNDxz9DszGB3KqLdkZUt2yXWllFgTS'),
(111, 'mohammad', 'elcadi', 'monirishmar@gmail.com', '0769159613', '$2y$10$FRKURtV/nqmX2g6358GCiOHb3f1YOCzr7o5Nbwey8TFUwLf30lDR2'),
(112, 'mohammad', 'elcadi', 'mkagdfdjkhjshi@gmail.com', '0769159613', '$2y$10$I4kibgO/uBlsqnCUaXt0Ie1a3zyL806JNKCTVlVcJn.n9gvqxHe5i'),
(113, 'mohammad', 'elcadi', 'mmakmaak@gmail.com', '0769159613', '$2y$10$ipBu30fM7DtpNnoyXy59/OEYBwhylIYX35iWPiM2sjLVhZNgCIAFC'),
(114, 'mohammad', 'elcadi', 'mraak@gmail.com', '0769159613', '$2y$10$ab1psifTnAx3elEtDaTUsOoA72QLHOPkNjQcv2Cbf1W1gqHLv4aX2'),
(115, 'mohammad', 'elcadi', 'kkkdkdkdi@gmail.com', '0769159613', '$2y$10$sWlQVR0vM8W0FnmRbaA0.O3Zxw24ldlf6ml0kf6l9Rg6ZgJvN.ZNm'),
(116, 'kalid', 'hamad', 'hamada09@gmail.com', '0769159613', '$2y$10$MuKXGkBklfyn0Unh3cqUHOLhZj1aTGo7c6SEZ353pKKos5wfkibc6'),
(117, 'hamza', 'khalid', 'hamzakhalid@gmail.com', '0987898034', '$2y$10$dX0oyswBnIfDgEJ0CRAYSezctEto.d0Qf4Fs6GvPfyaZANXPXmUJC'),
(118, 'brahim', 'elcadi', 'brahimcadi@gmail.com', '0769159613', '$2y$10$7uvgygMuZDq9itg25Sxm7OOPgeJ/vcM8rrJndOBVT30TgOndJiZfG'),
(119, 'amin', 'elcadi', 'amincadi99@gmail.com', '0769159613', '$2y$10$.g.eMO77GFCOXTTs6YQhTeBtDFlsMBUPKZpKNGwTh0oFAo21/Fk2W'),
(120, 'khalid', 'adam', 'khalidadam@gmail.com', '0769159613', '$2y$10$S5zLJ6JCX/g3GcXsKj.lFOm.Z8ifUUi4CeVjbK9VDcNDNN5trhbS.'),
(121, 'mohammad', 'elcadi', 'mr.mohammad@gmail.com', '0769159613', '$2y$10$uTpNGVIousyBGVJoIU6q/.tM17E1DT3RfvQVEYWs8mQoutTCdxkqy'),
(122, 'mohammad', 'elcadi', 'mr.elcadimohammad@gmail.com', '0769159613', '$2y$10$jMtd48deTuViaOhqBoRTfuFxAbF.Z4e.i/C5p0dRHm2AZdfbzvSOy'),
(123, 'mohammad', 'elcadi', 'asala@gmail.com', '0769159613', '$2y$10$lIUHJfXsuwovAxun.Ze2XOiZNcsK9XF2WNOoKBwsgDQ0jq3LlnXC.'),
(124, 'yahya', 'amin', 'yahyaaminnadi@gmail.com', '0769159613', '$2y$10$5Fz58rLcnTpN9jPz5hDsz.b9B5cn/z0VZhaKGTExlf8xOt.mWY6ou'),
(125, 'tfoxnohada', 'hada', 'xnohada@gmail.com', '0769159613', '$2y$10$VDFxqWVRDCNOfjkL3zl5TOFggOmhPWO360hTt.CiIOgz7sIr8L356'),
(126, 'mohammad', 'elcadi', 'aymanafiya@gmail.com', '0769159613', '$2y$10$AYh87rvrsI.Rq85H8lSGDuwpbHsaoKWoGQN8IeoiZt1ebWMKCa00O'),
(127, 'ali', 'rifi', 'alirifi@gmail.com', '0769159613', '$2y$10$627hH.NvNXs5qPKUkZvdweNJNNY2jssPN5is.xcVweHTCO44YiejS'),
(128, 'mohammad', 'elcadi', 'elhaouz@gmail.com', '0769159613', '$2y$10$E0nrTrtEkfvqoWFHfBNPpetgiX7KtUCTVEPq6KBPcUmOW6480o7wS'),
(129, 'omar', 'antit', 'omarlantit40@gmail.com', '0769159613', '$2y$10$qxYQWDNy45XfkEKI2Pxu5O5iLVKmUmhOmtKe5sQmHv738snsuntYe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`dish_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `dish_id` (`dish_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `dish_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `dishes`
--
ALTER TABLE `dishes`
  ADD CONSTRAINT `dishes_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`address_id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`dish_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
