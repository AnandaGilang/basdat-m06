-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2024 at 09:22 AM
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
-- Database: `jam makan`
--

-- --------------------------------------------------------

--
-- Table structure for table `table jadwal makan`
--

CREATE TABLE `table jadwal makan` (
  `Id_jadwalmakan` int(11) NOT NULL,
  `waktu_makan` time NOT NULL,
  `Tanggal` date NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `Created_by` varchar(50) NOT NULL,
  `Created_date` datetime NOT NULL,
  `Updated_by` varchar(50) NOT NULL,
  `Updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table jadwal makan`
--

INSERT INTO `table jadwal makan` (`Id_jadwalmakan`, `waktu_makan`, `Tanggal`, `id_pengguna`, `status`, `Created_by`, `Created_date`, `Updated_by`, `Updated_date`) VALUES
(1, '12:01:18', '2024-03-18', 2022071029, 'Aktif', 'Bayu', '2024-03-15 15:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table pengguna`
--

CREATE TABLE `table pengguna` (
  `Id_pengguna` int(11) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `preferensi` varchar(100) NOT NULL,
  `kata sandi` varchar(100) NOT NULL,
  `Created_by` varchar(50) NOT NULL,
  `Created_date` datetime NOT NULL,
  `Updated_by` varchar(50) NOT NULL,
  `Updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table pengguna`
--

INSERT INTO `table pengguna` (`Id_pengguna`, `Nama`, `email`, `preferensi`, `kata sandi`, `Created_by`, `Created_date`, `Updated_by`, `Updated_date`) VALUES
(2022071029, 'Bayu', 'Hebigamers@gmail.com', 'Bu maya', '@bot12345', 'Bayu', '2024-03-15 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table reminder makan`
--

CREATE TABLE `table reminder makan` (
  `Id_reminder makan` int(11) NOT NULL,
  `Id_pengguna` int(11) NOT NULL,
  `Waktu` time NOT NULL,
  `Tanggal` datetime NOT NULL,
  `Pesan` varchar(100) NOT NULL,
  `Created_by` varchar(50) NOT NULL,
  `Created_date` datetime NOT NULL,
  `Updated_by` varchar(50) NOT NULL,
  `Updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table reminder makan`
--

INSERT INTO `table reminder makan` (`Id_reminder makan`, `Id_pengguna`, `Waktu`, `Tanggal`, `Pesan`, `Created_by`, `Created_date`, `Updated_by`, `Updated_date`) VALUES
(1, 2022071029, '12:10:14', '2024-03-18 15:10:14', 'Jangan Lupa Makan', 'Bayu', '2024-03-15 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table saran makan`
--

CREATE TABLE `table saran makan` (
  `Id_saranmakan` int(11) NOT NULL,
  `Id_pengguna` int(11) NOT NULL,
  `Alasan_saran` varchar(200) NOT NULL,
  `Sumber_informasi` varchar(100) NOT NULL,
  `Created_by` varchar(50) NOT NULL,
  `Created_date` datetime NOT NULL,
  `Updated_by` varchar(50) NOT NULL,
  `Updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table saran makan`
--

INSERT INTO `table saran makan` (`Id_saranmakan`, `Id_pengguna`, `Alasan_saran`, `Sumber_informasi`, `Created_by`, `Created_date`, `Updated_by`, `Updated_date`) VALUES
(1, 2022071029, 'Membuat Badan sehat bila makan teratur', 'halodok.com', 'Bayu', '2024-03-15 00:00:00', '', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table jadwal makan`
--
ALTER TABLE `table jadwal makan`
  ADD PRIMARY KEY (`Id_jadwalmakan`),
  ADD UNIQUE KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `table pengguna`
--
ALTER TABLE `table pengguna`
  ADD PRIMARY KEY (`Id_pengguna`);

--
-- Indexes for table `table reminder makan`
--
ALTER TABLE `table reminder makan`
  ADD PRIMARY KEY (`Id_reminder makan`),
  ADD UNIQUE KEY `Id_pengguna` (`Id_pengguna`);

--
-- Indexes for table `table saran makan`
--
ALTER TABLE `table saran makan`
  ADD PRIMARY KEY (`Id_saranmakan`),
  ADD UNIQUE KEY `Id_pengguna` (`Id_pengguna`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
