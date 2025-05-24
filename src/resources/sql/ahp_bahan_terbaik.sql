-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2025 at 06:34 AM
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
-- Database: `ahp_bahan_terbaik`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `appearance_score` int(11) NOT NULL,
  `comfort_score` int(11) NOT NULL,
  `durability_score` int(11) NOT NULL,
  `maintenance_score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `description`, `appearance_score`, `comfort_score`, `durability_score`, `maintenance_score`) VALUES
(1, 'Belini', 'Kain campuran polyester dan katun, kuat, tidak mudah kusut, cocok untuk seragam lapangan dan formal.', 7, 6, 8, 9),
(2, 'Karmani', 'Kain poliester-viskosa yang tebal dan elegan, cocok untuk jas atau blazer dengan tampilan eksklusif.', 9, 7, 9, 6),
(3, 'Potopino', 'Kain formal berbahan poliester-viskosa, doff, tidak mudah kusut, ideal untuk pakaian kantor.', 8, 7, 9, 7),
(4, 'Tropical', 'Kain ringan, sejuk, dan mudah dicuci, cocok untuk pakaian kerja harian di iklim tropis.', 6, 8, 7, 8),
(5, 'Semi Wool test', 'Kain premium campuran wol sintetis, tampilan sangat elegan namun butuh perawatan khusus. test', 7, 1, 2, 3),
(6, 'Test', 'test desc', 1, 2, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `priority` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`code`, `name`, `priority`) VALUES
('K1', 'Nilai Penampilan', 'Sangat Penting ke-1'),
('K2', 'Kenyamanan', 'Penting ke-2'),
('K3', 'Ketahanan', 'Cukup Penting ke-3'),
('K4', 'Perawatan', 'Biasa ke-4');

-- --------------------------------------------------------

--
-- Table structure for table `selections`
--

CREATE TABLE `selections` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `score` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `selections`
--

INSERT INTO `selections` (`id`, `user_id`, `score`) VALUES
(24, 1, 0.19667015580367928),
(25, 2, 0.22729280517518738),
(26, 3, 0.2175619524387945),
(27, 4, 0.1950298068085848),
(28, 5, 0.11007117468177018),
(29, 6, 0.05337410509198398);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `place_of_birth` varchar(15) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` text DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `join_date` datetime DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `gender`, `email`, `place_of_birth`, `date_of_birth`, `address`, `religion`, `status`, `phone_number`, `join_date`, `username`, `password`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin Utama', 'Male', 'admin@example.com', 'Jakarta', '1990-01-01', 'Jl. Merdeka No. 1, Jakarta', 'Islam', 'Active', '081234567890', '2025-05-22 00:28:50', 'admin', 'admin', 1, '2025-05-22 00:28:50', '2025-05-22 00:28:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selections`
--
ALTER TABLE `selections`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `selections`
--
ALTER TABLE `selections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
