-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2024 at 08:10 AM
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
-- Database: `bbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `email`, `pwd`) VALUES
(1, 'Keerthikan', 'Seetha', 'dunsankeerthy2000@gmail.com', '$2y$10$4ynFW0Hs7HpG.vFQjkY1t.w1Jdm5q.QO3DEfVbQM5kijvXIFQTEqu');

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `id` bigint(20) NOT NULL,
  `AP` bigint(20) DEFAULT NULL,
  `AN` bigint(20) DEFAULT NULL,
  `BP` bigint(20) DEFAULT NULL,
  `BN` bigint(20) DEFAULT NULL,
  `ABP` bigint(20) DEFAULT NULL,
  `ABN` bigint(20) DEFAULT NULL,
  `OP` bigint(20) DEFAULT NULL,
  `ON` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`id`, `AP`, `AN`, `BP`, `BN`, `ABP`, `ABN`, `OP`, `ON`) VALUES
(1, 50, 30, 20, 15, 10, 5, 40, 25);

-- --------------------------------------------------------

--
-- Table structure for table `donate`
--

CREATE TABLE `donate` (
  `id` bigint(20) NOT NULL,
  `donor_id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `disease` varchar(255) NOT NULL,
  `blood` varchar(10) NOT NULL,
  `unit` bigint(20) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donate`
--

INSERT INTO `donate` (`id`, `donor_id`, `username`, `disease`, `blood`, `unit`, `status`) VALUES
(1, 5, 'சந்தோஷ்', 'இரத்தம் குறைவு', 'B-', 1, 'approved'),
(2, 6, 'ரம்யா', 'பொது மருத்துவம்', 'O+', 2, 'pending'),
(3, 7, 'விஜய்', 'சிறுநீர் பாதிப்பு', 'A+', 3, 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `blood` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `name`, `username`, `email`, `pwd`, `blood`) VALUES
(1, 'சந்திரன்', 'chandran15', 'chandran@example.com', '$2y$10$58dzLpZRlVwJYsOSnDGF0ewk25bhU5bsmmy3f6ICM6hod7ctL4Zuq', 'O+'),
(5, 'வெங்கடசுப்ரமணியன்', 'venkatasai24', 'venkatasai24042004@gmail.com', '$2y$10$Kd5ykwrCfU6VIoS/0M5uEey9LgE8331ff8nwAYMnKHk2VLD678OD.', 'B-'),
(6, 'முகில்', 'mugil24', 'mugil@example.com', '$2y$10$abcxyz789', 'A+'),
(7, 'faiha', 'faiha', 'salamathfaiha69@gmail.com', '$2y$10$l5wdJjDeXLADGEttqbktgO/5QdnwY4hlfwZ6.IWdwilNUFDVY0mYy', 'AB-');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `blood` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `username`, `email`, `pwd`, `blood`) VALUES
(1, 'மயூரி', 'mayuri15', 'mayuri@example.com', '$2y$10$Fg/FI3xI1R5Fp9Kq/hvgLuJVB4nIDtM.DZ6sDDNXktZ2CiDb.WOZq', 'A+'),
(12, 'ராதிகா', 'radhika24', 'radhika@example.com', '$2y$10$CKRsoSpPcEk7kGBNVNP7xuND9FhVLqLDdkEGCxkqO3uoghC5zz9Ha', 'B+'),
(13, 'விக்னேஷ்', 'vignesh15', 'vignesh@example.com', '$2y$10$abcxyz000', 'O-');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` bigint(20) NOT NULL,
  `patient_id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `blood` varchar(10) NOT NULL,
  `unit` bigint(20) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `patient_id`, `username`, `reason`, `blood`, `unit`, `status`) VALUES
(0, 0, 'mayuri15', 'சாலை விபத்து', 'A+', 5, 'pending'),
(1, 12, 'venkatasai24', 'குறைந்த இரத்த அளவு', 'B+', 2, 'approved'),
(2, 13, 'vignesh15', 'அதிர்ஷ்ட மருந்து', 'O-', 3, 'pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donate`
--
ALTER TABLE `donate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_donate_donor` (`donor_id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_request_patient` (`patient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
