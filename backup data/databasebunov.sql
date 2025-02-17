-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2025 at 02:17 PM
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
-- Database: `databasebunov`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mahasiswa`
--

CREATE TABLE `tbl_mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama_mhs` varchar(40) NOT NULL,
  `alamat_mhs` varchar(50) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_mahasiswa`
--

INSERT INTO `tbl_mahasiswa` (`nim`, `nama_mhs`, `alamat_mhs`, `jenis_kelamin`) VALUES
('10296001', 'Kusuma Putri', 'Jakarta Timur', 'Perempuan'),
('10296126', 'Astuti', 'Jakarta', 'Perempuan'),
('10296832', 'Murhayati', 'Jakarta', 'Perempuan'),
('21196353', 'Dwi Rahmawati', 'Jakarta Selatan', 'Perempuan'),
('21198002', 'Raka Fitra', 'Ciledug', 'Laki-laki'),
('31296500', 'Budi', 'Depok', 'Laki-laki'),
('41296525', 'Dewi Lestari', 'Bogor', 'Perempuan'),
('50096487', 'Pipit', 'Bekasi', 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_matkul`
--

CREATE TABLE `tbl_matkul` (
  `kd_mk` varchar(5) NOT NULL,
  `nama_mk` varchar(35) NOT NULL,
  `sks` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_matkul`
--

INSERT INTO `tbl_matkul` (`kd_mk`, `nama_mk`, `sks`) VALUES
('KD132', 'Pemrograman Web', 3),
('KK021', 'Sistem Basis Data', 3),
('KU122', 'Pengantar Teknologi Informasi', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `nim` varchar(10) NOT NULL,
  `no_mk` varchar(5) NOT NULL,
  `mid` int(3) NOT NULL,
  `final` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`nim`, `no_mk`, `mid`, `final`) VALUES
('10296832', 'KK021', 60, 75),
('10296126', 'KD132', 70, 90),
('31296500', 'KK021', 55, 40),
('41296525', 'KU122', 90, 80),
('21196353', 'KU122', 75, 75),
('50095487', 'KD132', 80, 70),
('10296126', 'KK021', 78, 83);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tbl_matkul`
--
ALTER TABLE `tbl_matkul`
  ADD PRIMARY KEY (`kd_mk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
