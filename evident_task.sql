-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 11, 2022 at 07:53 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evident_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `sno` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `data` varchar(200) DEFAULT NULL,
  `input_datetime` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`sno`, `user_id`, `username`, `data`, `input_datetime`) VALUES
(21, 1, 'mizan', '15,14,13,12,', '2022-11-11 11:42:35.044069'),
(22, 3, 'sizan', '18,16,15,12,', '2022-11-11 11:47:03.878776'),
(23, 3, 'sizan', '15,14,13,12,', '2022-11-11 12:03:19.402422'),
(24, 1, 'mizan', '15,14,13,12,', '2022-11-11 12:27:44.137228'),
(25, 1, 'mizan', '11,10,9,7,5,1,0,', '2022-11-11 12:28:40.197422'),
(26, 1, 'mizan', '11,10,9,7,5,1,0,', '2022-11-11 12:28:59.902596'),
(27, 1, 'mizan', '11,10,9,7,5,1,0,', '2022-11-11 12:29:00.815906'),
(28, 1, 'mizan', '11,10,9,7,5,1,0,', '2022-11-11 12:29:08.592025'),
(29, 1, 'mizan', '11,10,9,7,5,1,0,', '2022-11-11 12:37:15.381776'),
(30, 1, 'mizan', '11,10,9,7,5,1,0,', '2022-11-11 12:37:46.602388'),
(31, 1, 'mizan', '14,13,12,', '2022-11-11 12:40:07.346405'),
(32, 1, 'mizan', '11,10,9,7,5,1,0,', '2022-11-11 12:40:37.348852');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'mizan', 'abdullhalmizan644@gmail.com', '12345678'),
(3, 'sizan', 'sizan@gmail.com', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `sno` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
