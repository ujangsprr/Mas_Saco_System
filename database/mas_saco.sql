-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 28, 2021 at 02:01 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mas_saco`
--

-- --------------------------------------------------------

--
-- Table structure for table `pkm_kenjeran`
--

CREATE TABLE `pkm_kenjeran` (
  `id` int(11) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `keramaian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pkm_kenjeran`
--

INSERT INTO `pkm_kenjeran` (`id`, `waktu`, `hari`, `tanggal`, `keramaian`) VALUES
(1, '18:28:00', 'Sabtu', '08/28/2021', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pkm_dr_soetomo`
--

CREATE TABLE `pkm_dr_soetomo` (
  `id` int(11) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `keramaian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pkm_dr_soetomo`
--

INSERT INTO `pkm_dr_soetomo` (`id`, `waktu`, `hari`, `tanggal`, `keramaian`) VALUES
(1, '19:00:00', 'Sabtu', '08/28/2021', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pkm_keputih`
--

CREATE TABLE `pkm_keputih` (
  `id` int(11) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `keramaian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pkm_keputih`
--

INSERT INTO `pkm_keputih` (`id`, `waktu`, `hari`, `tanggal`, `keramaian`) VALUES
(1, '18:57:00', 'Sabtu', '08/28/2021', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pkm_mulyorejo`
--

CREATE TABLE `pkm_mulyorejo` (
  `id` int(11) NOT NULL,
  `waktu` varchar(100) NOT NULL,
  `hari` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `keramaian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pkm_mulyorejo`
--

INSERT INTO `pkm_mulyorejo` (`id`, `waktu`, `hari`, `tanggal`, `keramaian`) VALUES
(1, '17:28:00', 'Sabtu', '08/28/2021', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tempat_swab`
--

CREATE TABLE `tempat_swab` (
  `id` int(11) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keramaian` int(11) NOT NULL,
  `antigen` int(11) NOT NULL,
  `pcr` int(11) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `telp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tempat_swab`
--

INSERT INTO `tempat_swab` (`id`, `waktu`, `tanggal`, `nama`, `keramaian`, `antigen`, `pcr`, `lokasi`, `telp`) VALUES
(1, '17:28:00', '08/28/2021', 'Puskesmas Mulyorejo Surabaya', 3, 250000, 705000, 'Jl. Mulyorejo Utara 201 Blk, Kec. Mulyorejo', '(031) 381 6885'),
(2, '18:57:00', '08/28/2021', 'Puskesmas Keputih Surabaya', 1, 245000, 650000, 'Jl. Keputih Tegal No 1, Kec. Sukolilo', '5820 1517'),
(3, '19:00:00', '08/28/2021', 'Puskesmas Dr. Soetomo Surabaya', 1, 260000, 830000, 'Jl. Kupang Segunting II/22, Kec. Tegalsari', '(031) 567 8279'),
(4, '18:28:00', '08/28/2021', 'Puskesmas Kenjeran Surabaya', 2, 230000, 800000, 'Jl. Tambak Deres No.2, Kec. Bulak', '(031) 382 2103');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pkm_dr_soetomo`
--
ALTER TABLE `pkm_dr_soetomo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pkm_kenjeran`
--
ALTER TABLE `pkm_kenjeran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pkm_keputih`
--
ALTER TABLE `pkm_keputih`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pkm_mulyorejo`
--
ALTER TABLE `pkm_mulyorejo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempat_swab`
--
ALTER TABLE `tempat_swab`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pkm_kenjeran`
--
ALTER TABLE `pkm_kenjeran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pkm_dr_soetomo`
--
ALTER TABLE `pkm_dr_soetomo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pkm_keputih`
--
ALTER TABLE `pkm_keputih`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pkm_mulyorejo`
--
ALTER TABLE `pkm_mulyorejo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tempat_swab`
--
ALTER TABLE `tempat_swab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
