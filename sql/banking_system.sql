-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2021 at 02:53 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(3) NOT NULL,
  `c_name` varchar(20) NOT NULL,
  `c_mail` varchar(20) DEFAULT NULL,
  `c_balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `c_name`, `c_mail`, `c_balance`) VALUES
(101, 'Albert Einstein', 'Albert135@gmail.com', 90000),
(102, 'J.J Thomson', 'Thomson55@gmail.com', 87350),
(103, 'Ernest Rutherford', 'Ernest25@gmail.com', 77460),
(104, 'John Dalton', 'John9@gmail.com', 90700),
(105, 'James Chadwick', 'James_Chadwick@gmail', 47500),
(106, 'Isaac Newton', 'Newton123@gmail.com', 92100),
(107, 'Georg Simon Ohm', 'Georg111@gmail.com', 59300),
(108, 'Michael Faraday', 'M_Faraday@gmail.com', 59000),
(109, 'Thomas Edison', 'Thomas400@gmail.com', 12200),
(110, 'Max Planck', 'MPlanck3@gmail.com', 536900);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sr_no` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(10) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sr_no`, `sender`, `receiver`, `balance`, `date_time`) VALUES
(1, 'Albert Einstein', 'Georg Simon Ohm', 500, '2021-07-09 20:21:42'),
(2, 'Max Planck', 'Isaac Newton', 8000, '2021-07-09 20:22:11'),
(3, 'Isaac Newton', 'Max Planck', 5900, '2021-07-09 20:23:03'),
(4, 'Albert Einstein', 'Michael Faraday', 3000, '2021-07-19 18:33:18'),
(5, 'Thomas Edison', 'J.J Thomson', 8800, '2021-07-21 18:15:22'),
(6, 'Max Planck', 'Thomas Edison', 5000, '2021-07-21 18:15:47'),
(7, 'Max Planck', 'Thomas Edison', 6000, '2021-07-21 18:16:06'),
(8, 'Ernest Rutherford', 'Georg Simon Ohm', 8000, '2021-07-21 18:16:27'),
(9, 'John Dalton', 'Albert Einstein', 3000, '2021-07-21 18:16:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `c_mail` (`c_mail`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sr_no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
