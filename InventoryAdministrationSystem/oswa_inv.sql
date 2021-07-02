-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2021 at 04:38 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oswa_inv`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `id` int(10) NOT NULL,
  `buyer_name` varchar(50) NOT NULL,
  `buyer_gst` varchar(50) NOT NULL,
  `buyer_cmp` varchar(50) NOT NULL,
  `buyer_ph` varchar(50) NOT NULL,
  `buyer_city` varchar(50) NOT NULL,
  `sale_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`id`, `buyer_name`, `buyer_gst`, `buyer_cmp`, `buyer_ph`, `buyer_city`, `sale_id`) VALUES
(38, 'Deekshith', 'KADF763245E', 'DX pvt ltd', '9786432167', 'BANGALORE', 39),
(39, 'Vasu', 'KAHS763214E', 'Vasu pvt ltd', '9563217642', 'BANGALORE', 41),
(40, '', '', '', '', '', 0),
(41, 'Harry', 'KASE653287E', 'Harry pvt ltd', '9567743256', 'BANGALORE', 42),
(42, 'Rekha', 'KAWR974214E', 'Rekha pvt ltd', '9532786540', 'BANGALORE', 43),
(43, 'Jagan', 'KAPX953217E', 'Jagan pvt ltd', '9642167043', 'BANGALORE', 44),
(44, 'Suresh', 'KAFG672834E', 'Suresh pvt ltd', '9253719648', 'BANGALORE', 45),
(45, 'Tanmay', 'KADF853267E', 'Tanmay pvt ltd', '9536720871', 'BANGALORE', 46),
(46, 'Krishna', 'KAGD263549e', 'Krishna pvt ltd', '9246719053', 'BANGALORE', 47),
(47, 'Hithyanth', 'KABS263549E', 'Hithyanth pvt ltd', '9420354671', 'BANGALORE', 48),
(48, 'Kushi', 'KAPZ943216E', 'Kushi pvt ltd', '9673218640', 'BANGALORE', 49),
(49, 'Rohit', 'KAWQ982345E', 'Rohit pvt ltd', '9520163451', 'BANGALORE', 50);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `gst` varchar(20) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `gst`) VALUES
(24, 'SPICES', ''),
(25, 'DRYFRUITS', ''),
(26, 'GRAINS', ''),
(27, 'VEGETABLES', ''),
(28, 'FRUITS', '');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `file_name`, `file_type`) VALUES
(1, 'raisins.jpg', 'image/jpeg'),
(2, 'garlic.jpg', 'image/jpeg'),
(3, 'apple.jpg', 'image/jpeg'),
(4, 'salt.jpg', 'image/jpeg'),
(5, 'mango.jpg', 'image/jpeg'),
(6, 'ragi.jpg', 'image/jpeg'),
(7, 'coconut.jpg', 'image/jpeg'),
(8, 'groundnut.jpg', 'image/jpeg'),
(9, 'maize.jpg', 'image/jpeg'),
(10, 'sugarcane.jpg', 'image/jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `buy_price` decimal(25,2) DEFAULT NULL,
  `sale_price` decimal(25,2) NOT NULL,
  `categorie_id` int(11) UNSIGNED NOT NULL,
  `media_id` int(11) DEFAULT 0,
  `date` datetime NOT NULL,
  `seller_id` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `buy_price`, `sale_price`, `categorie_id`, `media_id`, `date`, `seller_id`) VALUES
(10, 'Garlic', '133', '125.00', '140.00', 27, 2, '2021-05-28 16:06:19', 16),
(11, 'Apple', '790', '40.00', '60.00', 28, 3, '2021-05-29 09:39:37', 15),
(12, 'Salt', '400', '12.00', '15.00', 24, 4, '2021-05-30 20:41:16', 24),
(13, 'Mango', '436', '120.00', '150.00', 28, 5, '2021-05-31 13:37:29', 25),
(15, 'Raisins', '195', '150.00', '200.00', 25, 1, '2021-06-13 17:23:39', 26),
(16, 'Maize', '280', '50.00', '100.00', 26, 9, '2021-06-13 17:24:53', 28),
(17, 'Sugarcane', '936', '20.00', '80.00', 28, 10, '2021-06-13 17:25:35', 29),
(18, 'Finger millet', '450', '20.00', '70.00', 26, 6, '2021-06-13 17:37:43', 30),
(19, 'Coconut', '1000', '10.00', '50.00', 27, 7, '2021-06-13 17:38:33', 31),
(20, 'Groundnuts', '550', '50.00', '150.00', 27, 8, '2021-06-13 17:39:48', 32);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `qty`, `price`, `date`) VALUES
(39, 10, 1, '140.00', '2021-05-30'),
(41, 10, 100, '14000.00', '2021-05-30'),
(42, 10, 1, '140.00', '2021-05-30'),
(43, 12, 100, '1500.00', '2021-05-30'),
(44, 13, 50, '7500.00', '2021-05-31'),
(45, 15, 5, '1000.00', '2021-06-13'),
(46, 18, 50, '3500.00', '2021-06-13'),
(47, 11, 10, '600.00', '2021-06-13'),
(48, 16, 20, '2000.00', '2021-06-13'),
(49, 17, 14, '1120.00', '2021-06-13'),
(50, 20, 200, '30000.00', '2021-06-13'),
(51, 13, 14, '2100.00', '2021-06-13');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` int(11) UNSIGNED NOT NULL,
  `seller_name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `gst_num` varchar(20) NOT NULL,
  `s_company` varchar(50) NOT NULL,
  `s_phone` varchar(20) NOT NULL,
  `s_city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `seller_name`, `gst_num`, `s_company`, `s_phone`, `s_city`) VALUES
(13, 'Sathyam Goyal', 'DACPG9283E', 'Sathyam Sales Corporation', '9786643151', 'Coimbatore'),
(15, 'HARSHIT', 'DSADHB1356E', 'Harshit Enterprises', '9876543210', 'Bangalore'),
(16, 'SHETTY', 'DASHGD6453E', 'Shetty & Co.', '9456781230', 'Udupi'),
(24, 'Saroj', 'DNVAJD4861E', 'Saroj Enterprises', '9487513043', 'MADURAI'),
(25, 'Nithin', 'ASDSAC8421E', 'Nithin Pvt Ltd', '9786643151', 'Bangalore'),
(26, 'Mohan', '186592764739024', 'Mohan pvt ltd', '8973498728', 'Rajasthan'),
(27, 'Mohan', 'dvdn128894E', 'Mohan pvt ltd', '8973498728', 'Rajasthan'),
(28, 'Sachin', 'DSHA985375E', 'Sachin pvt ltd', '5448259847', 'BANGALORE'),
(29, 'Dev', 'JGSD678463E', 'Dev pvt ltd', '9624357490', 'Tamil Nadu'),
(30, 'Raghu', 'KSDA672453E', 'Raghu pvt ltd', '6725178345', 'Karnataka'),
(31, 'Melvin', 'KETS625378E', 'Melvin pvt ltd', '5678243901', 'Kerala'),
(32, 'Yogesh', 'ADHC782541E', 'Yogesh pvt ltd', '6729365481', 'Andhra Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int(1) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `user_level`, `image`, `status`, `last_login`) VALUES
(1, ' Admin User', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'pn9biipl1.jpg', 1, '2021-07-02 16:37:20'),
(4, 'user', 'user', '12dea96fec20593566ab75692c9949596833adc9', 2, 'c0q9tmb74.jpg', 1, '2021-07-02 16:22:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Admin', 1, 1),
(4, 'user', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `categorie_id` (`categorie_id`),
  ADD KEY `media_id` (`media_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_level` (`user_level`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_products` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `SK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
