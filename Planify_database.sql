-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2024 at 01:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weeklyplanner`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_history`
--

CREATE TABLE `detail_history` (
  `id` int(11) NOT NULL,
  `todo` varchar(200) NOT NULL,
  `day` varchar(100) NOT NULL,
  `category` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_history`
--

INSERT INTO `detail_history` (`id`, `todo`, `day`, `category`) VALUES
(7, 'letsgooooo', 'Monday', 'do'),
(7, 'heart', 'Monday', 'decide'),
(7, 'hualo', 'Friday', 'do'),
(12, 'makan siang', 'Monday', 'do'),
(13, 'Membuat coklat panas', 'Monday', 'do'),
(13, 'Bermain tic tac toe', 'Monday', 'decide'),
(13, 'Minum coklat panas', 'Monday', 'delegate');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `namaWeek` varchar(100) NOT NULL,
  `notes` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `username`, `namaWeek`, `notes`) VALUES
(7, 'coba', 'lagicoba3', 'cek1'),
(12, 'rahel', 'Last2', 'menyelesaikan oop'),
(13, 'rahel', 'Week 1 NewYear', 'Happy new yearr !!');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `username` varchar(30) NOT NULL,
  `note` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`username`, `note`) VALUES
('coba', NULL),
('hi', 'just testing'),
('rahel', 'Happy new year all !!'),
('terserah', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passwordUser` varchar(50) NOT NULL CHECK (`username` regexp '[a-zA-Z0-9]+$')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`username`, `email`, `passwordUser`) VALUES
('coba', 'coba1', '1'),
('hi', 'hi', 'hi'),
('rahel', 'apaya', '2'),
('terserah', 'aa', '1');

-- --------------------------------------------------------

--
-- Table structure for table `weeklist`
--

CREATE TABLE `weeklist` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `day` varchar(15) NOT NULL,
  `category` varchar(10) NOT NULL,
  `todo` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weeklist`
--

INSERT INTO `weeklist` (`id`, `username`, `day`, `category`, `todo`) VALUES
(24, 'rahel', 'Monday', 'do', 'presentasi'),
(25, 'rahel', 'Monday', 'decide', 'makan siang'),
(26, 'rahel', 'Tuesday', 'do', 'Buat salad'),
(27, 'rahel', 'Thursday', 'decide', 'Bermain sepeda di luar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_history`
--
ALTER TABLE `detail_history`
  ADD KEY `id` (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `weeklist`
--
ALTER TABLE `weeklist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `weeklist`
--
ALTER TABLE `weeklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_history`
--
ALTER TABLE `detail_history`
  ADD CONSTRAINT `detail_history_ibfk_1` FOREIGN KEY (`id`) REFERENCES `history` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
