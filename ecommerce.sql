-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2023 at 08:50 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_to_cart`
--

CREATE TABLE `add_to_cart` (
  `cart_id` varchar(20) NOT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `customer_mobile` int(10) DEFAULT NULL,
  `quntity` varchar(20) DEFAULT NULL,
  `added_on` varchar(20) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `price` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `add_to_wish_list`
--

CREATE TABLE `add_to_wish_list` (
  `product_id` varchar(100) DEFAULT NULL,
  `customer_mobile` int(10) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `added_on` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `buy_now`
--

CREATE TABLE `buy_now` (
  `buy_id` varchar(20) NOT NULL,
  `cart_id` varchar(20) DEFAULT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `customer_mobile` int(10) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `added_on` varchar(20) DEFAULT NULL,
  `paymment_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_registration`
--

CREATE TABLE `customer_registration` (
  `customer_mobile` int(10) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `pincode` int(10) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_registration`
--

INSERT INTO `customer_registration` (`customer_mobile`, `email`, `name`, `gender`, `address`, `state`, `city`, `pincode`, `password`) VALUES
(54698326, 'shaujgs@gmail.com', 'kdskd', 'male', 'bhimnagar', 'mp', 'bhopal', 45665, '124564'),
(778524659, 'sahu@gmail.com', 'ravi', 'male', 'bhim nagar  bhopal', 'mp', 'bhopal', 124563, '134567');

-- --------------------------------------------------------

--
-- Table structure for table `make_payment`
--

CREATE TABLE `make_payment` (
  `invoice` varchar(20) DEFAULT NULL,
  `cart_id` varchar(20) DEFAULT NULL,
  `buy_id` varchar(20) DEFAULT NULL,
  `transaction_id` varchar(20) NOT NULL,
  `date_time` varchar(20) DEFAULT NULL,
  `amount` int(20) DEFAULT NULL,
  `tax` varchar(20) DEFAULT NULL,
  `payment_mode` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `offer_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `offer_id` varchar(20) NOT NULL,
  `coupon_code` varchar(100) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `To_date` date DEFAULT NULL,
  `discount_per` varchar(20) DEFAULT NULL,
  `flat_discount` int(100) DEFAULT NULL,
  `valid_in` varchar(20) DEFAULT NULL,
  `additional_offer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`offer_id`, `coupon_code`, `from_date`, `To_date`, `discount_per`, `flat_discount`, `valid_in`, `additional_offer`) VALUES
('1', '2', '0000-00-00', '0000-00-00', '25', 12, '0000-00-00', 'sbi'),
('120', '432sas', '2022-01-05', '2022-08-23', '2', 12, '2022-05-12', 'sbi'),
('2', '5', '0000-00-00', '0000-00-00', '5', 12, '0000-00-00', 'sbi'),
('3', '2', '2022-01-05', '2022-08-23', '2', 12, '2022-05-12', 'sbi'),
('464', '2', '2022-01-05', '2022-08-23', '2', 12, '2022-05-12', 'sbi'),
('46463', '2', '2022-01-05', '2022-08-23', '2', 12, '2022-05-12', 'sbi'),
('464633', '2', '2022-01-05', '2022-08-23', '2', 12, '2022-05-12', 'sbi'),
('464sa', '2', '2022-01-05', '2022-08-23', '2', 12, '2022-05-12', 'sbi');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `cat_id` varchar(100) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`cat_id`, `cat_name`) VALUES
('2', 'abc'),
('1', 'xyz');

-- --------------------------------------------------------

--
-- Table structure for table `product_specification`
--

CREATE TABLE `product_specification` (
  `product_speci` varchar(50) NOT NULL,
  `product_id` varchar(50) DEFAULT NULL,
  `height` varchar(50) DEFAULT NULL,
  `width` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `colour` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `expire_date` varchar(50) DEFAULT NULL,
  `mfg_date` varchar(50) DEFAULT NULL,
  `dimension` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `cart_id` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `review_point` varchar(20) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `date_time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `ship_id` varchar(50) NOT NULL,
  `invoice` varchar(50) DEFAULT NULL,
  `customer_mobile` int(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `ship_date` varchar(20) DEFAULT NULL,
  `delivery_date` varchar(20) DEFAULT NULL,
  `delivery_expected` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shop_product`
--

CREATE TABLE `shop_product` (
  `product_id` varchar(100) NOT NULL,
  `cat_id` varchar(100) DEFAULT NULL,
  `sub_cat` varchar(100) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_company` varchar(100) DEFAULT NULL,
  `shop_id` varchar(100) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shop_registration`
--

CREATE TABLE `shop_registration` (
  `reg_no` varchar(100) NOT NULL,
  `Shop_Id` varchar(100) DEFAULT NULL,
  `Shop_name` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `State` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Pincode` varchar(100) DEFAULT NULL,
  `Contact` int(10) DEFAULT NULL,
  `Owner` varchar(100) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Url` varchar(100) DEFAULT NULL,
  `Gst` varchar(100) DEFAULT NULL,
  `Turnover` int(250) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Terms&cond` varchar(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_registration`
--

INSERT INTO `shop_registration` (`reg_no`, `Shop_Id`, `Shop_name`, `Address`, `State`, `City`, `Pincode`, `Contact`, `Owner`, `Type`, `Email`, `Url`, `Gst`, `Turnover`, `Description`, `Terms&cond`, `Status`, `Password`) VALUES
('1', '124', 'elctronic', 'H.No 92 bhim nagar bhopal', 'mp', 'bhopal', '462004', 23569824, 'ravi', 'electrical', 'sahu1323@gmail.com', 'www.google.com', '25%', 25, 'this is shop', 'this valid', 'bkhdig', '12cd56d');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `cat_id` varchar(100) DEFAULT NULL,
  `sub_cat` varchar(100) NOT NULL,
  `sub_cat_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`cat_id`, `sub_cat`, `sub_cat_name`) VALUES
('1', '2', 'xyz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_mobile` (`customer_mobile`);

--
-- Indexes for table `add_to_wish_list`
--
ALTER TABLE `add_to_wish_list`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_mobile` (`customer_mobile`);

--
-- Indexes for table `buy_now`
--
ALTER TABLE `buy_now`
  ADD PRIMARY KEY (`buy_id`),
  ADD KEY `customer_mobile` (`customer_mobile`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `cart_id` (`cart_id`);

--
-- Indexes for table `customer_registration`
--
ALTER TABLE `customer_registration`
  ADD PRIMARY KEY (`customer_mobile`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `make_payment`
--
ALTER TABLE `make_payment`
  ADD PRIMARY KEY (`transaction_id`),
  ADD UNIQUE KEY `invoice` (`invoice`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `buy_id` (`buy_id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name` (`cat_name`);

--
-- Indexes for table `product_specification`
--
ALTER TABLE `product_specification`
  ADD PRIMARY KEY (`product_speci`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD KEY `cart_id` (`cart_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`ship_id`),
  ADD KEY `invoice` (`invoice`),
  ADD KEY `customer_mobile` (`customer_mobile`);

--
-- Indexes for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `sub_cat` (`sub_cat`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `shop_registration`
--
ALTER TABLE `shop_registration`
  ADD PRIMARY KEY (`reg_no`),
  ADD UNIQUE KEY `Shop_Id` (`Shop_Id`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Url` (`Url`),
  ADD UNIQUE KEY `Gst` (`Gst`),
  ADD UNIQUE KEY `Password` (`Password`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_cat`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  ADD CONSTRAINT `add_to_cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`product_id`),
  ADD CONSTRAINT `add_to_cart_ibfk_2` FOREIGN KEY (`customer_mobile`) REFERENCES `customer_registration` (`customer_mobile`);

--
-- Constraints for table `add_to_wish_list`
--
ALTER TABLE `add_to_wish_list`
  ADD CONSTRAINT `add_to_wish_list_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`product_id`),
  ADD CONSTRAINT `add_to_wish_list_ibfk_2` FOREIGN KEY (`customer_mobile`) REFERENCES `customer_registration` (`customer_mobile`);

--
-- Constraints for table `buy_now`
--
ALTER TABLE `buy_now`
  ADD CONSTRAINT `buy_now_ibfk_1` FOREIGN KEY (`customer_mobile`) REFERENCES `customer_registration` (`customer_mobile`),
  ADD CONSTRAINT `buy_now_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`product_id`),
  ADD CONSTRAINT `buy_now_ibfk_3` FOREIGN KEY (`cart_id`) REFERENCES `add_to_cart` (`cart_id`);

--
-- Constraints for table `make_payment`
--
ALTER TABLE `make_payment`
  ADD CONSTRAINT `make_payment_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `add_to_cart` (`cart_id`),
  ADD CONSTRAINT `make_payment_ibfk_2` FOREIGN KEY (`buy_id`) REFERENCES `buy_now` (`buy_id`);

--
-- Constraints for table `product_specification`
--
ALTER TABLE `product_specification`
  ADD CONSTRAINT `product_specification_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`product_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `add_to_cart` (`cart_id`);

--
-- Constraints for table `shipping`
--
ALTER TABLE `shipping`
  ADD CONSTRAINT `shipping_ibfk_1` FOREIGN KEY (`invoice`) REFERENCES `make_payment` (`invoice`),
  ADD CONSTRAINT `shipping_ibfk_2` FOREIGN KEY (`customer_mobile`) REFERENCES `customer_registration` (`customer_mobile`);

--
-- Constraints for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD CONSTRAINT `shop_product_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `product_category` (`cat_id`),
  ADD CONSTRAINT `shop_product_ibfk_2` FOREIGN KEY (`sub_cat`) REFERENCES `sub_category` (`sub_cat`),
  ADD CONSTRAINT `shop_product_ibfk_3` FOREIGN KEY (`shop_id`) REFERENCES `shop_registration` (`Shop_Id`);

--
-- Constraints for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `sub_category_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `product_category` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
