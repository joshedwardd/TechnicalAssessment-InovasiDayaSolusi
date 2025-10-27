-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2025 at 02:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test2`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`) VALUES
('10001', 'Test 1'),
('10002', 'Test 2');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(0, 'SUCCESS'),
(1, 'FAILED');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) NOT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_on` datetime DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `amount`, `customer_name`, `transaction_date`, `create_by`, `create_on`, `product_id`, `status_id`) VALUES
(1372, '1000', 'abc', '2022-07-10 11:14:52', 'abc', '2022-07-10 11:14:52', '10001', 0),
(1373, '2000', 'abc', '2022-07-11 13:14:52', 'abc', '2022-07-10 13:14:52', '10002', 0),
(1374, '1000', 'abc', '2022-08-10 12:14:52', 'abc', '2022-07-10 12:14:52', '10001', 0),
(1375, '1000', 'abc', '2022-08-10 13:10:52', 'abc', '2022-07-10 13:10:52', '10002', 1),
(1376, '1000', 'abc', '2022-08-10 13:11:52', 'abc', '2022-07-10 13:11:52', '10001', 0),
(1377, '2000', 'abc', '2022-08-12 13:14:52', 'abc', '2022-07-10 13:14:52', '10002', 0),
(1378, '1000', 'abc', '2022-08-12 14:11:52', 'abc', '2022-07-10 14:11:52', '10001', 0),
(1379, '1000', 'abc', '2022-09-13 11:14:52', 'abc', '2022-07-10 11:14:52', '10002', 1),
(1380, '1000', 'abc', '2022-09-13 13:14:52', 'abc', '2022-07-10 13:14:52', '10001', 0),
(1381, '2000', 'abc', '2022-09-14 09:11:52', 'abc', '2022-07-10 09:11:52', '10002', 0),
(1382, '1000', 'abc', '2022-09-14 10:14:52', 'abc', '2022-07-10 10:14:52', '10001', 0),
(1383, '1000', 'abc', '2022-08-15 13:14:52', 'abc', '2022-07-10 13:14:52', '10002', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `status_id` (`status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1384;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
