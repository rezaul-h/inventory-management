-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2023 at 09:20 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biosysdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientorder`
--

CREATE TABLE `clientorder` (
  `OrderID` int(10) NOT NULL,
  `clientorderId` int(11) NOT NULL,
  `ClientOrderNo` int(10) NOT NULL,
  `ClientName` varchar(20) NOT NULL,
  `OrderItem` int(11) NOT NULL,
  `ItemQty` int(10) NOT NULL,
  `ItemPrice` float NOT NULL,
  `orderStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clientorder`
--

INSERT INTO `clientorder` (`OrderID`, `clientorderId`, `ClientOrderNo`, `ClientName`, `OrderItem`, `ItemQty`, `ItemPrice`, `orderStatus`) VALUES
(9716, 6707, 27210753, 'Antu', 11, 50, 10, 'Complete'),
(9717, 1336, 27211809, 'Antu', 11, 100, 10, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `ClientId` int(10) NOT NULL,
  `ClientName` varchar(50) NOT NULL,
  `ClientAddress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`ClientId`, `ClientName`, `ClientAddress`) VALUES
(2, 'Antu', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProdId` int(10) NOT NULL,
  `ProdDescription` varchar(50) NOT NULL,
  `ProdQuantity` int(10) NOT NULL,
  `ProdUnit` varchar(50) NOT NULL,
  `ProdUnitPrice` double NOT NULL,
  `ProdExpiry` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProdId`, `ProdDescription`, `ProdQuantity`, `ProdUnit`, `ProdUnitPrice`, `ProdExpiry`) VALUES
(11, 'Lux', -49, '2', 10, '2023-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder`
--

CREATE TABLE `purchaseorder` (
  `PoID` int(10) NOT NULL,
  `PurchaseorderId` int(20) NOT NULL,
  `PurchaseorderNo` int(20) NOT NULL,
  `SupplierName` varchar(50) NOT NULL,
  `Orders` int(50) NOT NULL,
  `OrderQty` int(10) NOT NULL,
  `OrderPrice` float NOT NULL,
  `OrderStatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchaseorder`
--

INSERT INTO `purchaseorder` (`PoID`, `PurchaseorderId`, `PurchaseorderNo`, `SupplierName`, `Orders`, `OrderQty`, `OrderPrice`, `OrderStatus`) VALUES
(46, 24124, 27210547, 'Umiliver', 11, 100, 100, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupId` int(11) NOT NULL,
  `SupName` varchar(50) NOT NULL,
  `SupAddress` varchar(50) NOT NULL,
  `SupMobile` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SupId`, `SupName`, `SupAddress`, `SupMobile`) VALUES
(5, 'Umiliver', 'Dhaka', '+2154365421');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(10) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `UserPassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `UserName`, `UserPassword`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientorder`
--
ALTER TABLE `clientorder`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ClientId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProdId`);

--
-- Indexes for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD PRIMARY KEY (`PoID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientorder`
--
ALTER TABLE `clientorder`
  MODIFY `OrderID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9718;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `ClientId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProdId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  MODIFY `PoID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SupId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
