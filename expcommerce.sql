-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2020 at 10:42 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expcommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `working_type` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `store_id` varchar(255) NOT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `imports`
--

INSERT INTO `imports` (`id`, `date`, `employee_id`, `name`, `working_type`, `start_time`, `end_time`, `store_id`, `store_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2019-10-15', 1237780, 'kimmy ', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store', '2020-05-30 23:23:32', '2020-05-30 23:23:32', NULL),
(2, '2019-10-15', 1237780, 'kimmy ', 'lunch', '12:00', '13:00', 'RAJD6000883', NULL, '2020-05-30 23:23:32', '2020-05-30 23:23:32', NULL),
(3, '2019-10-15', 1237780, 'kimmy ', 'break', '15:00', '15:30', 'RAJD6000883', NULL, '2020-05-30 23:23:32', '2020-05-30 23:23:32', NULL),
(4, '2019-10-15', 1237780, 'kimmy ', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung', '2020-05-30 23:23:32', '2020-05-30 23:23:32', NULL),
(5, '2019-10-15', 1237780, 'kimmy ', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart', '2020-05-30 23:23:32', '2020-05-30 23:23:32', NULL),
(6, '2019-10-16', 1237780, 'kimmy ', 'day off', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-30 23:23:32', '2020-05-30 23:23:32', NULL),
(7, '2019-10-17', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-30 23:23:32', '2020-05-30 23:23:32', NULL),
(8, '2019-10-18', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-30 23:23:32', '2020-05-30 23:23:32', NULL),
(9, '2019-10-19', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-30 23:23:32', '2020-05-30 23:23:32', NULL),
(10, '2019-10-15', 1237780, 'kimmy ', 'lunch', '12:00', '13:00', 'RAJD6000883', NULL, '2020-05-30 23:36:04', '2020-05-30 23:36:04', NULL),
(11, '2019-10-15', 1237780, 'kimmy ', 'break', '15:00', '15:30', 'RAJD6000883', NULL, '2020-05-30 23:36:04', '2020-05-30 23:36:04', NULL),
(12, '2019-10-15', 1237780, 'kimmy ', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung', '2020-05-30 23:36:04', '2020-05-30 23:36:04', NULL),
(13, '2019-10-15', 1237780, 'kimmy ', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart', '2020-05-30 23:36:04', '2020-05-30 23:36:04', NULL),
(14, '2019-10-16', 1237780, 'kimmy ', 'day off', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-30 23:36:04', '2020-05-30 23:36:04', NULL),
(15, '2019-10-17', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-30 23:36:04', '2020-05-30 23:36:04', NULL),
(16, '2019-10-18', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-30 23:36:04', '2020-05-30 23:36:04', NULL),
(17, '2019-10-19', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-30 23:36:04', '2020-05-30 23:36:04', NULL),
(18, '2019-10-15', 1237780, 'kimmy ', 'lunch', '12:00', '13:00', 'RAJD6000883', NULL, '2020-05-30 23:51:11', '2020-05-30 23:51:11', NULL),
(19, '2019-10-15', 1237780, 'kimmy ', 'break', '15:00', '15:30', 'RAJD6000883', NULL, '2020-05-30 23:51:11', '2020-05-30 23:51:11', NULL),
(20, '2019-10-15', 1237780, 'kimmy ', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung', '2020-05-30 23:51:11', '2020-05-30 23:51:11', NULL),
(21, '2019-10-15', 1237780, 'kimmy ', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart', '2020-05-30 23:51:11', '2020-05-30 23:51:11', NULL),
(22, '2019-10-16', 1237780, 'kimmy ', 'day off', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-30 23:51:11', '2020-05-30 23:51:11', NULL),
(23, '2019-10-17', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-30 23:51:11', '2020-05-30 23:51:11', NULL),
(24, '2019-10-18', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-30 23:51:11', '2020-05-30 23:51:11', NULL),
(25, '2019-10-19', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-30 23:51:11', '2020-05-30 23:51:11', NULL),
(26, '2019-10-15', 1237780, 'kimmy ', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store', '2020-05-30 23:52:13', '2020-05-30 23:52:13', NULL),
(27, '2019-10-15', 1237780, 'kimmy ', 'lunch', '12:00', '13:00', 'RAJD6000883', NULL, '2020-05-30 23:52:13', '2020-05-30 23:52:13', NULL),
(28, '2019-10-15', 1237780, 'kimmy ', 'break', '15:00', '15:30', 'RAJD6000883', NULL, '2020-05-30 23:52:13', '2020-05-30 23:52:13', NULL),
(29, '2019-10-15', 1237780, 'kimmy ', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung', '2020-05-30 23:52:13', '2020-05-30 23:52:13', NULL),
(30, '2019-10-15', 1237780, 'kimmy ', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart', '2020-05-30 23:52:13', '2020-05-30 23:52:13', NULL),
(31, '2019-10-16', 1237780, 'kimmy ', 'day off', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-30 23:52:13', '2020-05-30 23:52:13', NULL),
(32, '2019-10-17', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-30 23:52:13', '2020-05-30 23:52:13', NULL),
(33, '2019-10-18', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-30 23:52:13', '2020-05-30 23:52:13', NULL),
(34, '2019-10-19', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-30 23:52:13', '2020-05-30 23:52:13', NULL),
(35, '2019-10-15', 1237780, 'kimmy ', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store', '2020-05-31 03:03:35', '2020-05-31 03:03:35', NULL),
(36, '2019-10-15', 1237780, 'kimmy ', 'lunch', '12:00', '13:00', 'RAJD6000883', NULL, '2020-05-31 03:03:35', '2020-05-31 03:03:35', NULL),
(37, '2019-10-15', 1237780, 'kimmy ', 'break', '15:00', '15:30', 'RAJD6000883', NULL, '2020-05-31 03:03:35', '2020-05-31 03:03:35', NULL),
(38, '2019-10-15', 1237780, 'kimmy ', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung', '2020-05-31 03:03:35', '2020-05-31 03:03:35', NULL),
(39, '2019-10-15', 1237780, 'kimmy ', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart', '2020-05-31 03:03:35', '2020-05-31 03:03:35', NULL),
(40, '2019-10-16', 1237780, 'kimmy ', 'day off', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-31 03:03:35', '2020-05-31 03:03:35', NULL),
(41, '2019-10-17', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-31 03:03:35', '2020-05-31 03:03:35', NULL),
(42, '2019-10-18', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-31 03:03:35', '2020-05-31 03:03:35', NULL),
(43, '2019-10-19', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-31 03:03:35', '2020-05-31 03:03:35', NULL),
(44, '2019-10-15', 1237780, 'kimmy ', 'lunch', '12:00', '13:00', 'RAJD6000883', NULL, '2020-05-31 03:04:01', '2020-05-31 03:04:01', NULL),
(45, '2019-10-15', 1237780, 'kimmy ', 'break', '15:00', '15:30', 'RAJD6000883', NULL, '2020-05-31 03:04:01', '2020-05-31 03:04:01', NULL),
(46, '2019-10-15', 1237780, 'kimmy ', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung', '2020-05-31 03:04:01', '2020-05-31 03:04:01', NULL),
(47, '2019-10-15', 1237780, 'kimmy ', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart', '2020-05-31 03:04:01', '2020-05-31 03:04:01', NULL),
(48, '2019-10-16', 1237780, 'kimmy ', 'day off', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-31 03:04:01', '2020-05-31 03:04:01', NULL),
(49, '2019-10-17', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-31 03:04:01', '2020-05-31 03:04:01', NULL),
(50, '2019-10-18', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-31 03:04:01', '2020-05-31 03:04:01', NULL),
(51, '2019-10-19', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-31 03:04:01', '2020-05-31 03:04:01', NULL),
(52, '2019-10-15', 1237780, 'kimmy ', 'lunch', '12:00', '13:00', 'RAJD6000883', NULL, '2020-05-31 03:05:06', '2020-05-31 03:05:06', NULL),
(53, '2019-10-15', 1237780, 'kimmy ', 'break', '15:00', '15:30', 'RAJD6000883', NULL, '2020-05-31 03:05:06', '2020-05-31 03:05:06', NULL),
(54, '2019-10-15', 1237780, 'kimmy ', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung', '2020-05-31 03:05:06', '2020-05-31 03:05:06', NULL),
(55, '2019-10-15', 1237780, 'kimmy ', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart', '2020-05-31 03:05:06', '2020-05-31 03:05:06', NULL),
(56, '2019-10-16', 1237780, 'kimmy ', 'day off', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-31 03:05:06', '2020-05-31 03:05:06', NULL),
(57, '2019-10-17', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-31 03:05:06', '2020-05-31 03:05:06', NULL),
(58, '2019-10-18', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-31 03:05:06', '2020-05-31 03:05:06', NULL),
(59, '2019-10-19', 1237780, 'kimmy ', 'leave', '18:00', '19:00', 'RAJD6000883', NULL, '2020-05-31 03:05:06', '2020-05-31 03:05:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reimbursements`
--

CREATE TABLE `reimbursements` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1:conveyance 2:hotel 3:food 4:mobile 5:internet',
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `km` int(11) DEFAULT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  `inv_no` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `attachement` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reimbursements`
--

INSERT INTO `reimbursements` (`id`, `type`, `from_date`, `to_date`, `purpose`, `mode`, `km`, `hotel_name`, `inv_no`, `amount`, `attachement`, `created_at`, `updated_at`, `deleted_at`) VALUES
(18, 1, '2020-05-31', '2020-05-31', 'travel', 'bus', 1500, NULL, 234, 230, '1590910609_dummy.pdf', '2020-05-31 02:06:49', '2020-05-31 02:06:49', NULL),
(19, 2, '2020-05-31', '2020-05-31', NULL, NULL, NULL, 'My Hotel', 234, 230, '1590910736_dummy.pdf', '2020-05-31 02:08:56', '2020-05-31 02:08:56', NULL),
(20, 3, NULL, NULL, NULL, NULL, NULL, NULL, 234, 230, '1590910760_dummy.pdf', '2020-05-31 02:09:20', '2020-05-31 02:09:20', NULL),
(21, 3, NULL, NULL, NULL, NULL, NULL, NULL, 234, 230, '1590910961_dummy.pdf', '2020-05-31 02:12:41', '2020-05-31 02:12:41', NULL),
(22, 3, NULL, NULL, NULL, NULL, NULL, NULL, 234, 230, '1590911294_dummy.pdf', '2020-05-31 02:18:14', '2020-05-31 02:18:14', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reimbursements`
--
ALTER TABLE `reimbursements`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `reimbursements`
--
ALTER TABLE `reimbursements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
