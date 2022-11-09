-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2022 at 02:46 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schedulekucing`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama_admin` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `psw` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL,
  `jenis_perawatan` varchar(255) NOT NULL,
  `nama_kucing` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `tgl_pemeriksaan` varchar(255) NOT NULL,
  `tgl_booking` varchar(255) NOT NULL,
  `foto_kucing` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kucing`
--

CREATE TABLE `kucing` (
  `id` int(11) NOT NULL,
  `bnama` varchar(50) NOT NULL,
  `bjenis` varchar(50) NOT NULL,
  `knama` varchar(50) NOT NULL,
  `kkelamin` varchar(50) NOT NULL,
  `bbook` varchar(100) NOT NULL,
  `btrawat` varchar(100) NOT NULL,
  `kfoto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kucing`
--

INSERT INTO `kucing` (`id`, `bnama`, `bjenis`, `knama`, `kkelamin`, `bbook`, `btrawat`, `kfoto`) VALUES
(21, 'Alan Nuzulan', 'VACCINATION', 'Poci', 'BETINA', '2022-10-28T09:11', '2022-10-29T21:11', 'Poci.jpg'),
(22, 'Lobi', 'STERILIZATION', 'Supri', 'JANTAN', '2022-10-28T09:13', '2022-10-31T21:13', 'Supri.jpg'),
(23, 'Nova', 'GROOMING', 'Nino', 'JANTAN', '2022-10-31T09:36', '2022-11-03T10:40', 'Nino.jpg'),
(24, 'NIna', 'SEMUA PERAWATAN', 'Nona', 'BETINA', '2022-10-31T04:02', '2022-11-03T16:04', 'Nona.jpg'),
(25, 'Hera', 'GROOMING', 'Lulu', 'JANTAN', '2022-11-08T12:20', '2022-11-11T14:24', 'Lulu.jpg'),
(26, 'Mitha Amalia', 'STERILIZATION', 'Muezzaa', 'JANTAN', '2022-11-08T12:41', '2022-11-12T16:46', 'Muezzaa.jpg'),
(27, 'Rivan', 'GROOMING', 'Zuzuzu', 'BETINA', '2022-11-09T11:25', '2022-11-12T15:26', 'Zuzuzu.jpg'),
(28, 'Mitha Amalia', 'VACCINATION', 'Iyo', 'JANTAN', '2022-11-09T04:13', '2022-11-12T20:14', 'Iyo.jpg'),
(29, 'Hera', 'GROOMING', 'Luluu', 'BETINA', '2022-11-09', '2022-11-15T12:25', 'Luluu.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) DEFAULT NULL,
  `Nama` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Sandi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Nama`, `Email`, `Username`, `Sandi`) VALUES
(NULL, 'Alan Nuzulan', 'landduasatu21@gmail.com', 'land21', '$2y$10$nVetv9SZEkHP.4IO3KraqOBijDerHGWe7qTAf2Tn/b0dnBHCAGuT6'),
(NULL, 'Rivan Abdilah', 'rivan123@gmail.com', 'nekopan', '$2y$10$.TdkdHKX.XBrryKWaAuq5ufRMEbGWyjE88rUThletrIC.mdCVpMDq'),
(NULL, 'mita', 'mithaas13@gmail.com', 'mita', '$2y$10$cqOCIsC6jswyR0/TXqXt7u89hWG5Vf/SsLZ2qLzpGUbS4zyE15NOS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kucing`
--
ALTER TABLE `kucing`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kucing`
--
ALTER TABLE `kucing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
