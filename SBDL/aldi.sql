-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2020 at 03:33 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aldi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `No_Anggota` varchar(20) NOT NULL,
  `Nis` varchar(20) NOT NULL,
  `Nama_Anggota` varchar(20) NOT NULL,
  `Jenis_Kelamin` varchar(8) NOT NULL,
  `Tempat_Lahir` varchar(10) NOT NULL,
  `Tgl_Lahir` date NOT NULL,
  `Alamat` varchar(40) NOT NULL,
  `No_Telp` varchar(12) NOT NULL,
  `Kelas` varchar(10) NOT NULL,
  `Masa_Berlaku` varchar(10) NOT NULL,
  `Status_Pinjam` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `Kd_Buku` varchar(10) NOT NULL,
  `Kd_Penerbit` varchar(10) NOT NULL,
  `Jenis_Buku` varchar(10) NOT NULL,
  `Judul_Buku` varchar(20) NOT NULL,
  `Nama_Pengarang` varchar(20) NOT NULL,
  `Nama_Penerbit` varchar(20) NOT NULL,
  `Tempat_Terbit` varchar(15) NOT NULL,
  `Status_Buku` varchar(10) NOT NULL,
  `Tahun_Terbit` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjaman`
--

CREATE TABLE `tb_peminjaman` (
  `No_Pinjaman` varchar(5) NOT NULL,
  `No_Anggota` varchar(7) NOT NULL,
  `Tgl_Pinjam` date NOT NULL,
  `Tgl_Kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_penerbit`
--

CREATE TABLE `tb_penerbit` (
  `Kd_Penerbit` varchar(10) NOT NULL,
  `Nama_Penerbit` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengembalian`
--

CREATE TABLE `tb_pengembalian` (
  `No_Kembali` varchar(5) NOT NULL,
  `No_Pinjam` varchar(7) NOT NULL,
  `Tgl_Pengembalian` date NOT NULL,
  `Tgl_Pembayaran` date NOT NULL,
  `No_Anggota` varchar(100) NOT NULL,
  `Status_Pengembalian` varchar(5) NOT NULL,
  `Keterlambatan` int(8) NOT NULL,
  `Jml_Denda` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`No_Anggota`) USING BTREE;

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`Kd_Buku`),
  ADD UNIQUE KEY `Kd_Penerbit` (`Kd_Penerbit`);

--
-- Indexes for table `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD PRIMARY KEY (`No_Pinjaman`),
  ADD UNIQUE KEY `No_Anggota` (`No_Anggota`);

--
-- Indexes for table `tb_penerbit`
--
ALTER TABLE `tb_penerbit`
  ADD PRIMARY KEY (`Kd_Penerbit`),
  ADD UNIQUE KEY `Nama_Penerbit` (`Nama_Penerbit`);

--
-- Indexes for table `tb_pengembalian`
--
ALTER TABLE `tb_pengembalian`
  ADD PRIMARY KEY (`No_Kembali`),
  ADD UNIQUE KEY `No_Pinjam` (`No_Pinjam`),
  ADD UNIQUE KEY `No_Anggota` (`No_Anggota`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  MODIFY `No_Anggota` varchar(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
