-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2020 at 11:00 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sewamobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `no_plat` int(9) NOT NULL,
  `tahun` year(4) NOT NULL,
  `tarif` varchar(12) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `no_ktp` int(18) NOT NULL,
  `nama` char(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telepon` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sopir`
--

CREATE TABLE `sopir` (
  `id_sopir` int(12) NOT NULL,
  `nama` char(20) NOT NULL,
  `alamat` char(20) NOT NULL,
  `telepon` char(15) NOT NULL,
  `sim` int(12) NOT NULL,
  `tarif` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tipe kendaraan`
--

CREATE TABLE `tipe kendaraan` (
  `id_type` int(12) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `no_transaksi` int(15) NOT NULL,
  `tanggan_pesan` date NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali_rencana` date NOT NULL,
  `jam_kembali_rencana` time(6) NOT NULL,
  `tanggal_kembali_realisas` date NOT NULL,
  `jam_kembali_realisasi` time(6) NOT NULL,
  `denda` int(20) NOT NULL,
  `kilometer_pinjam` int(10) NOT NULL,
  `kilometer_kembali` int(10) NOT NULL,
  `bbm_pinjam` int(10) NOT NULL,
  `bbm_kembali` int(10) NOT NULL,
  `kondisi_mobil_pinjam` text NOT NULL,
  `kondisi_mobil_kembali` text NOT NULL,
  `kerusakan` text NOT NULL,
  `biaya_kerusakan` int(20) NOT NULL,
  `biaya_bbm` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`no_plat`),
  ADD KEY `tahun` (`tahun`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`no_ktp`);

--
-- Indexes for table `sopir`
--
ALTER TABLE `sopir`
  ADD PRIMARY KEY (`id_sopir`);

--
-- Indexes for table `tipe kendaraan`
--
ALTER TABLE `tipe kendaraan`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `no_plat` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `no_ktp` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sopir`
--
ALTER TABLE `sopir`
  MODIFY `id_sopir` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tipe kendaraan`
--
ALTER TABLE `tipe kendaraan`
  MODIFY `id_type` int(12) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD CONSTRAINT `kendaraan_ibfk_1` FOREIGN KEY (`no_plat`) REFERENCES `tipe kendaraan` (`id_type`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`no_transaksi`) REFERENCES `kendaraan` (`no_plat`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
