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
-- Database: `sistempembelianpenjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `KodeBarang` int(11) NOT NULL,
  `NamaBarang` varchar(30) NOT NULL,
  `JenisBarang` varchar(15) NOT NULL,
  `Stock` int(11) NOT NULL,
  `HargaBeli` int(11) NOT NULL,
  `TotalHarga` int(11) NOT NULL,
  `Qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`KodeBarang`, `NamaBarang`, `JenisBarang`, `Stock`, `HargaBeli`, `TotalHarga`, `Qty`) VALUES
(1, 'Jeruk', 'Buah', 0, 1000, 10000, 10),
(2, 'Salak', 'Buah', 10, 1000, 10000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `KodePelanggan` int(11) NOT NULL,
  `NamaPelanggan` varchar(30) NOT NULL,
  `AlamatPelanggan` varchar(50) DEFAULT NULL,
  `NoTelpPelanggan` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`KodePelanggan`, `NamaPelanggan`, `AlamatPelanggan`, `NoTelpPelanggan`) VALUES
(2, 'pelanggan', 'Disana', '08123456789'),
(3, 'ayu safitri', 'ad', 'd'),
(4, 'amry', 'kaja', '00897');

-- --------------------------------------------------------

--
-- Table structure for table `pemasok`
--

CREATE TABLE `pemasok` (
  `KodePemasok` int(11) NOT NULL,
  `NamaPemasok` varchar(30) NOT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  `NoTelp` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemasok`
--

INSERT INTO `pemasok` (`KodePemasok`, `NamaPemasok`, `Alamat`, `NoTelp`, `Email`) VALUES
(1, 'Buah Salak', 'DISANAAAAA', '02389371098319', 'salak@gmail.com'),
(2, 'Buah Duku', 'YUHU DISANA', '92398217398179', 'duku@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `NomorOrder` int(11) NOT NULL,
  `TanggalOrder` datetime NOT NULL DEFAULT current_timestamp(),
  `KodePelanggan` int(11) DEFAULT NULL,
  `KodePemasok` int(11) DEFAULT NULL,
  `NomorPO` int(11) DEFAULT NULL,
  `TanggalPO` date DEFAULT NULL,
  `KodeBarang` int(11) DEFAULT NULL,
  `JumlahBeli` int(11) NOT NULL DEFAULT 1,
  `TotalHarga` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`NomorOrder`, `TanggalOrder`, `KodePelanggan`, `KodePemasok`, `NomorPO`, `TanggalPO`, `KodeBarang`, `JumlahBeli`, `TotalHarga`) VALUES
(7, '2024-11-18 10:17:46', 2, NULL, 4937, '2024-12-02', 1, 10, 10000),
(8, '2024-11-18 10:17:56', 2, NULL, 1774, '2024-11-18', 2, 10, 10000),
(9, '2024-11-18 10:25:18', 2, NULL, 5420, '2024-11-18', 1, 10, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Level` enum('admin','operator','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Username`, `Password`, `Level`) VALUES
(1, 'admin', '$2y$10$abcdefghijklmnopqrstuv', 'admin'),
(2, 'operator', '$2y$10$mnopqrstuvabcdefghijkl', 'operator'),
(3, 'pelanggan', '$2y$10$uvwxyzabcdefghijklmnop', 'user'),
(4, 'ayu safitri', 'd', 'user'),
(5, 'amry', 'b', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`KodeBarang`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`KodePelanggan`),
  ADD UNIQUE KEY `NamaPelanggan` (`NamaPelanggan`);

--
-- Indexes for table `pemasok`
--
ALTER TABLE `pemasok`
  ADD PRIMARY KEY (`KodePemasok`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`NomorOrder`),
  ADD KEY `KodeBarang` (`KodeBarang`),
  ADD KEY `KodePelanggan` (`KodePelanggan`),
  ADD KEY `KodePemasok` (`KodePemasok`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `KodeBarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `KodePelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pemasok`
--
ALTER TABLE `pemasok`
  MODIFY `KodePemasok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `NomorOrder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`KodePelanggan`) REFERENCES `pelanggan` (`KodePelanggan`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`KodePemasok`) REFERENCES `pemasok` (`KodePemasok`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`KodeBarang`) REFERENCES `barang` (`KodeBarang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
