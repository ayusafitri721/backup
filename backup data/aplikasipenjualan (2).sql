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
-- Database: `aplikasipenjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `Kode_Barang` varchar(10) NOT NULL,
  `Nama_Barang` text NOT NULL,
  `Stok` int(11) NOT NULL,
  `Satuan` text NOT NULL,
  `Harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`Kode_Barang`, `Nama_Barang`, `Stok`, `Satuan`, `Harga`) VALUES
('DNT-001', 'Donat Coklat', 9, 'pcs', 4000),
('DNT-002', 'Donat Stroberi', 10, 'pcs', 4000),
('DNT-003', 'Donat Vanila', 10, 'pcs', 4000),
('DNT-004', 'Donat Tiramisu', 10, 'pcs', 4000),
('DNT-005', 'Donat Red Velvet', 10, 'pcs', 4000),
('DNT-006', 'Donat Keju', 10, 'pcs', 4000),
('DNT-007', 'Donat Taro', 10, 'pcs', 4000),
('MIN-001', 'Vit Kecil', 10, 'botol', 3000),
('MIN-002', 'Vit Gede', 10, 'botol', 5000),
('MIN-003', 'Gunung Kecil', 10, 'botol', 3000),
('MIN-004', 'Gunung Gede', 10, 'botol', 4000),
('MIN-005', 'Teh Kotak', 10, 'kotak', 5000),
('MIN-006', 'Susu', 10, 'botol', 6000),
('MKN-001', 'Risol', 10, 'pcs', 3000),
('MKN-002', 'Cheese Roll', 10, 'pcs', 1000),
('MKN-003', 'Indomie Biasa (No Telor)', 10, 'porsi', 7000),
('MKN-004', 'Sakura', 10, 'porsi', 4000),
('MKN-005', 'Mie Chili Oil', 10, 'porsi', 8000),
('MKN-006', 'Wonton', 10, 'porsi', 10000),
('MKN-007', 'Martabak', 10, 'pcs', 5000),
('PDD-001', 'Pudding Bluberry', 10, 'pcs', 2000),
('PDD-002', 'Pudding Coklat', 10, 'pcs', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_barang`
--

CREATE TABLE `detail_barang` (
  `Kode_Detail` varchar(10) NOT NULL,
  `Kode_Barang` varchar(10) NOT NULL,
  `Harga` int(11) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `Discount` int(11) NOT NULL,
  `Subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `detail_barang`
--

INSERT INTO `detail_barang` (`Kode_Detail`, `Kode_Barang`, `Harga`, `Jumlah`, `Discount`, `Subtotal`) VALUES
('DTRX001', 'MKN-003', 7000, 1, 0, 7000),
('DTRX002', 'MKN-003', 7000, 2, 1000, 13000),
('DTRX003', 'PDD-002', 2000, 2, 0, 4000),
('DTRX003', 'MKN-003', 7000, 1, 500, 6500),
('DTRX004', 'MKN-006', 10000, 2, 2500, 17500),
('DTRX004', 'MKN-001', 3000, 1, 0, 3000),
('DTRX004', 'PDD-002', 2000, 1, 0, 2000),
('DTRX005', 'MKN-001', 3000, 2, 0, 6000),
('DTRX005', 'PDD-002', 2000, 2, 0, 4000),
('DTRX006', 'PDD-002', 2000, 2, 0, 4000),
('DTRX007', 'MKN-006', 10000, 2, 0, 20000),
('DTRX008', 'MKN-001', 3000, 5, 0, 15000),
('DTRX009', 'DNT-001', 4000, 1, 0, 4000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `Kode_Transaksi` varchar(10) NOT NULL,
  `Kode_Detail` varchar(10) NOT NULL,
  `Tanggal` date NOT NULL,
  `Jam` time NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`Kode_Transaksi`, `Kode_Detail`, `Tanggal`, `Jam`, `Total`) VALUES
('TRX001', 'DTRX001', '2018-07-12', '05:04:00', 200000),
('TRX002', 'DTRX002', '2018-07-13', '09:33:19', 39000),
('TRX003', 'DTRX003', '2018-07-16', '09:20:30', 23500),
('TRX004', 'DTRX004', '2018-07-13', '09:21:37', 119500),
('TRX005', 'DTRX005', '2018-07-16', '09:22:09', 52000),
('TRX006', 'DTRX006', '2018-07-16', '09:22:32', 4000),
('TRX007', 'DTRX007', '2018-07-16', '09:22:56', 96000),
('TRX008', 'DTRX008', '2025-01-31', '14:46:29', 120000),
('TRX009', 'DTRX009', '2025-02-15', '08:32:04', 4000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`Kode_Barang`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`Kode_Transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
