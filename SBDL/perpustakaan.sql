-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2020 at 12:51 PM
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
-- Database: `perpustakaan`
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

--
-- Dumping data for table `tb_anggota`
--

INSERT INTO `tb_anggota` (`No_Anggota`, `Nis`, `Nama_Anggota`, `Jenis_Kelamin`, `Tempat_Lahir`, `Tgl_Lahir`, `Alamat`, `No_Telp`, `Kelas`, `Masa_Berlaku`, `Status_Pinjam`) VALUES
('1', '21345', 'Aldi', 'L', 'Majalengka', '2000-04-02', 'Leuwimunding', '083121192034', 'Reguler', '2020-04-04', '1'),
('2', '21354', 'Andi', 'L', 'Majalengka', '1999-02-05', 'Sindang', '085312934834', 'Reguler', '2020-04-03', '2'),
('3', '21356', 'Afif', 'L', 'Majalengka', '1999-12-01', 'Leuwimunding', '081837374793', 'Reguler', '2020-04-05', '2'),
('4', '21367', 'Sandra', 'P', 'Majalengka', '2000-03-27', 'Kadipaten', '089345723974', 'Reguler', '2020-04-06', '3'),
('5', '21378', 'Irna', 'P', 'Majalengka', '2000-10-22', 'Palasah', '081864983763', 'Reguler', '2020-04-07', '4');

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

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`Kd_Buku`, `Kd_Penerbit`, `Jenis_Buku`, `Judul_Buku`, `Nama_Pengarang`, `Nama_Penerbit`, `Tempat_Terbit`, `Status_Buku`, `Tahun_Terbit`) VALUES
('01', '12456', 'Legenda', 'Tangkuban Perahu', 'Asep', 'Gramedia Publisher', 'Bandung', '5', '2017'),
('02', '12345', 'Komik', 'Sepatu Dahlan', 'Supriadi', 'Agro Media', 'Jakarta', '3', '2016'),
('03', '12678', 'Dongeng', 'Si Kancil', 'Wahyu', 'Andi Publisher', 'Bandung', '8', '2019'),
('04', '12356', 'Legenda', 'Malin Kundang', 'Supriatna', 'Grasindo', 'Bandung', '2', '2017'),
('05', '12567', 'Novel', 'Cinta Brontosaurus', 'Raditya Dika', 'Gagas Media', 'Jakarta', '1', '2018');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjaman`
--

CREATE TABLE `tb_peminjaman` (
  `No_Pinjam` varchar(5) NOT NULL,
  `No_Anggota` varchar(7) NOT NULL,
  `Tgl_Pinjam` date NOT NULL,
  `Tgl_Kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_peminjaman`
--

INSERT INTO `tb_peminjaman` (`No_Pinjam`, `No_Anggota`, `Tgl_Pinjam`, `Tgl_Kembali`) VALUES
('1', '1', '2020-03-20', '2020-04-04'),
('2', '2', '2020-03-21', '2020-04-03'),
('3', '3', '2020-03-22', '2020-04-05'),
('4', '4', '2020-03-23', '2020-04-06'),
('5', '5', '2020-03-24', '2020-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penerbit`
--

CREATE TABLE `tb_penerbit` (
  `Kd_Penerbit` varchar(10) NOT NULL,
  `Nama_Penerbit` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penerbit`
--

INSERT INTO `tb_penerbit` (`Kd_Penerbit`, `Nama_Penerbit`) VALUES
('12345', 'Agro Media'),
('12456', 'Andi Publisher'),
('12567', 'Gagas Media'),
('12356', 'Gramedia Publisher'),
('12678', 'Grasindo');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengembalian`
--

CREATE TABLE `tb_pengembalian` (
  `No_Kembali` varchar(5) NOT NULL,
  `No_Pinjam` varchar(7) NOT NULL,
  `Tgl_Kembali` date NOT NULL,
  `No_Anggota` varchar(100) NOT NULL,
  `Status_Pengembalian` varchar(5) NOT NULL,
  `Keterlambatan` varchar(8) NOT NULL,
  `Jml_Denda` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengembalian`
--

INSERT INTO `tb_pengembalian` (`No_Kembali`, `No_Pinjam`, `Tgl_Kembali`, `No_Anggota`, `Status_Pengembalian`, `Keterlambatan`, `Jml_Denda`) VALUES
('1', '1', '2020-04-04', '1', '1', '-', '-'),
('2', '2', '2020-04-03', '2', '2', '-', '-'),
('3', '3', '2020-04-05', '3', '2', '-', '-'),
('4', '4', '2020-04-06', '4', '3', '1', '15.000'),
('5', '5', '2020-04-07', '5', '4', '2', '30.000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'admin', 'caf1a3dfb505ffed0d024130f58c5cfa');

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
  ADD PRIMARY KEY (`No_Pinjam`),
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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD CONSTRAINT `tb_buku_ibfk_1` FOREIGN KEY (`Kd_Penerbit`) REFERENCES `tb_penerbit` (`Kd_Penerbit`);

--
-- Constraints for table `tb_pengembalian`
--
ALTER TABLE `tb_pengembalian`
  ADD CONSTRAINT `tb_pengembalian_ibfk_1` FOREIGN KEY (`No_Pinjam`) REFERENCES `tb_peminjaman` (`No_Pinjam`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
