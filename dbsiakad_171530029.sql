-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Okt 2018 pada 05.32
-- Versi server: 10.1.30-MariaDB
-- Versi PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsiakad_171530029`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbjurusan`
--

CREATE TABLE `tbjurusan` (
  `kd_jur` char(3) NOT NULL,
  `jurusan` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbjurusan`
--

INSERT INTO `tbjurusan` (`kd_jur`, `jurusan`) VALUES
('150', 'Teknik Komputer dan informatika'),
('151', 'Teknik Mesin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbmahasiswa`
--

CREATE TABLE `tbmahasiswa` (
  `nim` char(9) NOT NULL,
  `kd_prodi` char(3) NOT NULL,
  `id_ta` tinyint(4) NOT NULL,
  `nama_mhs` varchar(35) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `tmp_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telepon` varchar(24) NOT NULL,
  `nama_ayah` varchar(35) NOT NULL,
  `nama_ibu` varchar(35) NOT NULL,
  `foto` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbprodi`
--

CREATE TABLE `tbprodi` (
  `kd_prodi` char(3) NOT NULL,
  `prodi` varchar(45) NOT NULL,
  `kd_jur` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbthangkatan`
--

CREATE TABLE `tbthangkatan` (
  `id_ta` tinyint(4) NOT NULL,
  `tahun_angkatan` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbthangkatan`
--

INSERT INTO `tbthangkatan` (`id_ta`, `tahun_angkatan`) VALUES
(1, '2017');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbuser`
--

CREATE TABLE `tbuser` (
  `id_user` char(5) NOT NULL,
  `nama_user` varchar(45) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `lev_user` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbuser`
--

INSERT INTO `tbuser` (`id_user`, `nama_user`, `pass`, `lev_user`) VALUES
('ID001', 'yunita', 'admin123', 'Administraktor'),
('ID002', 'NyunNyun2', '123456', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbjurusan`
--
ALTER TABLE `tbjurusan`
  ADD PRIMARY KEY (`kd_jur`);

--
-- Indeks untuk tabel `tbmahasiswa`
--
ALTER TABLE `tbmahasiswa`
  ADD PRIMARY KEY (`id_ta`,`nim`,`kd_prodi`);

--
-- Indeks untuk tabel `tbprodi`
--
ALTER TABLE `tbprodi`
  ADD PRIMARY KEY (`kd_prodi`,`kd_jur`);

--
-- Indeks untuk tabel `tbthangkatan`
--
ALTER TABLE `tbthangkatan`
  ADD PRIMARY KEY (`id_ta`);

--
-- Indeks untuk tabel `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
