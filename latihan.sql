-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 01, 2026 at 01:32 AM
-- Server version: 8.4.10
-- PHP Version: 8.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihan`
--

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id_transaksi` int NOT NULL,
  `id_produk` int NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `kuantitas` tinyint NOT NULL,
  `harga` int NOT NULL,
  `id_pelanggan` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id_transaksi`, `id_produk`, `tgl_transaksi`, `kuantitas`, `harga`, `id_pelanggan`) VALUES
(1, 100, '2016-09-20', 8, 265000, 1),
(2, 101, '2016-09-21', 5, 150000, 2),
(3, 102, '2016-09-22', 10, 50000, 3),
(4, 103, '2016-09-23', 7, 75000, 4),
(5, 104, '2016-09-24', 12, 120000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `asalKampusAtauSekolah` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `role` varchar(25) DEFAULT NULL,
  `terdaftarPnjHotspot` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`nama`, `asalKampusAtauSekolah`, `role`, `terdaftarPnjHotspot`) VALUES
('Yosafat Beny Herlambang Hutasoit', 'Universitas Negeri Jakarta', 'Singer', 1),
('Fiona Calysta', 'Universitas Padjadjaran', 'Singer', 1),
('Nadine Nathania Edelweiss', 'Universitas Indonesia', 'Singer', 1),
('Gabriel Roxel Ekapradipta', 'Universitas Terbuka', 'Pianist', 1),
('Geraldo Zefanya', '', 'Bassist', 1),
('Serafim Joy', 'SMK-SMAKBO Bogor', 'Guitarist', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_produk` (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id_transaksi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
