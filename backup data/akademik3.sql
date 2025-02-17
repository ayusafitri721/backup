-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2025 at 02:46 PM
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
-- Database: `akademik3`
--

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `NIS` char(9) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Jkel` varchar(15) NOT NULL,
  `Jurusan` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`NIS`, `Nama`, `Jkel`, `Jurusan`) VALUES
('123456770', 'Salsabila Putri', 'PEREMPUAN', 'TBG'),
('123456771', 'Rizky Ramadhan', 'LAKI', 'TBS'),
('123456772', 'Qory Fadillah', 'PEREMPUAN', 'PH'),
('123456773', 'Pandu Wijaya', 'LAKI', 'UPW'),
('123456774', 'Olivia Mutiara', 'PEREMPUAN', 'RPL'),
('123456775', 'Nanda Pratama', 'LAKI', 'TBG'),
('123456776', 'Maya Rizky', 'PEREMPUAN', 'TBS'),
('123456777', 'Lukman Hakim', 'LAKI', 'PH'),
('123456778', 'Kartika Sari', 'PEREMPUAN', 'UPW'),
('123456779', 'Joko Waluyo', 'LAKI', 'RPL'),
('123456780', 'Indah Lestari', 'PEREMPUAN', 'TBG'),
('123456781', 'Heri Susanto', 'LAKI', 'TBS'),
('123456782', 'Gina Permata', 'PEREMPUAN', 'PH'),
('123456783', 'Fajar Nugraha', 'LAKI', 'UPW'),
('123456784', 'Eka Wulandari', 'PEREMPUAN', 'RPL'),
('123456785', 'Doni Saputra', 'LAKI', 'TBG'),
('123456786', 'Citra Dewi', 'PEREMPUAN', 'TBS'),
('123456787', 'Budi Santoso', 'LAKI', 'PH'),
('123456788', 'Siti Aisyah', 'PEREMPUAN', 'UPW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`NIS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
