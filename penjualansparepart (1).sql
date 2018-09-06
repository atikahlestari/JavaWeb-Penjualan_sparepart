-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 06 Sep 2018 pada 03.31
-- Versi Server: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `penjualansparepart`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `master`
--

CREATE TABLE IF NOT EXISTS `master` (
  `kd_brg` varchar(50) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `stok` int(100) NOT NULL,
  `harga_jual` double NOT NULL,
  `harga_beli` double NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master`
--

INSERT INTO `master` (`kd_brg`, `nama_brg`, `stok`, `harga_jual`, `harga_beli`, `satuan`, `kategori`) VALUES
('003', 'Palu', 8, 25000, 20000, 'item', 'barang'),
('010', 'Spion', 5, 30000, 25000, 'pcs', 'mobil');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE IF NOT EXISTS `penjualan` (
  `tgl_faktur` date NOT NULL,
  `no_faktur` varchar(50) NOT NULL,
  `nama_ksm` varchar(100) NOT NULL,
  `kd_brg` varchar(50) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `stok` int(100) NOT NULL,
  `jumlah` double NOT NULL,
  `harga_satuan` double NOT NULL,
  `harga_total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`tgl_faktur`, `no_faktur`, `nama_ksm`, `kd_brg`, `nama_brg`, `stok`, `jumlah`, `harga_satuan`, `harga_total`) VALUES
('2018-09-06', 'f003', 'dinda', '001', 'Palu', 3, 1, 20000, 200000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
