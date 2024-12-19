-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2024 at 05:46 AM
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
-- Database: `mobile`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'infinix'),
(2, 'vivo'),
(3, 'vgotel'),
(4, 'techno'),
(5, 'iphone'),
(6, 'sumsung'),
(7, 'nokia'),
(8, 'redmi');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'up comming',
  `warranty` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `quantity`, `price`, `status`, `warranty`, `brand_id`) VALUES
(1, 'infinix hot 40 pro', 50, 40000, 'up comming', 2, 1),
(2, 'vivo', 35, 50000, 'up comming', 3, 2),
(3, 'infinix note 30', 47, 32000, 'availabe', 1, 1),
(4, 'vgotel note 24', 50, 22000, 'up comming', 1, 3),
(5, 'vgotel new 20', 10, 18000, 'availabe', 1, 3),
(6, 'vivo y20', 50, 45000, 'up comming', 2, 2),
(7, '12 pro max', 41, 120000, 'availabe', 1, 5),
(8, 'techno pova 6/128', 65, 25000, 'up comming', 2, 4),
(9, '14 pro', 10, 150000, 'up comming', 2, 5),
(10, 'techno y10', 17, 30000, 'up comming', 2, 4),
(11, 'iphone 7 plus', 25, 35000, 'available', 1, 5),
(12, 'redmi 13c', 5, 75000, 'up comming', 2, 8),
(13, 'nokia 3310', 12, 1500, 'availabe', 1, 7),
(14, 'sumsung S20', 42, 55000, 'up comming', 2, 6),
(15, 'redmi C12', 55, 50000, 'up comming', 2, 8),
(16, 'nokia 250', 50, 1700, 'availabe', 1, 7),
(17, 'new 24', 70, 18000, 'availabe', 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
