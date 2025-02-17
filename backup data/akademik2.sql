-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2025 at 02:15 PM
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
-- Database: `akademik2`
--

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(9) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenkel` varchar(15) NOT NULL,
  `jurusan` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `jenkel`, `jurusan`) VALUES
('100001', 'Andi Saputra', 'Laki', 'RPL'),
('100002', 'Siti Aminah', 'Perempuan', 'UPW'),
('100003', 'Budi Santoso', 'Laki', 'PH'),
('100004', 'Dewi Lestari', 'Perempuan', 'TBS'),
('100005', 'Eka Pratama', 'Laki', 'TBG'),
('100006', 'Fajar Nugroho', 'Laki', 'RPL'),
('100007', 'Gita Pertiwi', 'Perempuan', 'UPW'),
('100008', 'Hadi Wijaya', 'Laki', 'PH'),
('100009', 'Indah Permata', 'Perempuan', 'TBS'),
('100010', 'Joko Susanto', 'Laki', 'TBG'),
('100011', 'Kartika Sari', 'Perempuan', 'RPL'),
('100012', 'Lukman Hakim', 'Laki', 'UPW'),
('100013', 'Mega Sari', 'Perempuan', 'PH'),
('100014', 'Nanda Putra', 'Laki', 'TBS'),
('100015', 'Oki Prasetyo', 'Laki', 'TBG'),
('100016', 'Putri Ananda', 'Perempuan', 'RPL'),
('100017', 'Qory Rahman', 'Laki', 'UPW'),
('100018', 'Rina Fauziah', 'Perempuan', 'PH'),
('100019', 'Samsul Arifin', 'Laki', 'TBS'),
('100020', 'Tasya Maharani', 'Perempuan', 'TBG'),
('10021', 'Ayu Saf', 'Perempuan', 'RPL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
