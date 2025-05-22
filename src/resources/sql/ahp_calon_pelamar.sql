-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2025 at 07:32 PM
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
-- Database: `ahp_calon_pelamar`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `last_education` varchar(10) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `leadership_score` int(11) NOT NULL,
  `knowledge_score` int(11) NOT NULL,
  `technical_skill_score` int(11) NOT NULL,
  `advanced_skill_score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `gender`, `last_education`, `phone_number`, `address`, `leadership_score`, `knowledge_score`, `technical_skill_score`, `advanced_skill_score`) VALUES
(1, 'Ahmad Santoso', 'Male', 'S1', '081234567890', 'Jl. Kenanga No. 1, Jakarta', 85, 90, 88, 80),
(2, 'Rina Widya', 'Female', 'S1', '082345678901', 'Jl. Melati No. 2, Bandung', 78, 82, 85, 88),
(3, 'Dedi Prasetyo', 'Male', 'D3', '083456789012', 'Jl. Mawar No. 3, Surabaya', 80, 76, 82, 75),
(4, 'Sari Putri', 'Female', 'SMA', '084567890123', 'Jl. Anggrek No. 4, Yogyakarta', 70, 72, 74, 73),
(5, 'Budi Hartono', 'Male', 'S2', '085678901234', 'Jl. Flamboyan No. 5, Medan', 90, 88, 91, 87);

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
('K1', 'Nilai Kepemimpinan', 'Sangat Penting ke-1'),
('K2', 'Pengetahuan', 'Penting ke-2'),
('K3', 'Kemampuan Teknis', 'Cukup Penting ke-3'),
('K4', 'Kemampuan Lanjutan', 'Biasa ke-4');

-- --------------------------------------------------------

--
-- Table structure for table `selections`
--

CREATE TABLE `selections` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `score` double(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `selections`
--

INSERT INTO `selections` (`id`, `user_id`, `score`) VALUES
(1, 1, 0.21),
(2, 2, 0.20),
(3, 3, 0.19),
(4, 4, 0.18),
(5, 5, 0.22);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `score` (`score`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `selections`
--
ALTER TABLE `selections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
