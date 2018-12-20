-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 20 Des 2018 pada 12.10
-- Versi server: 5.6.38
-- Versi PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `penggajian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gaji`
--

CREATE TABLE `gaji` (
  `id_karyawan` varchar(11) NOT NULL,
  `jam_kerja` int(11) NOT NULL,
  `uang_perjam` int(11) NOT NULL,
  `potongan` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gaji`
--

INSERT INTO `gaji` (`id_karyawan`, `jam_kerja`, `uang_perjam`, `potongan`, `keterangan`) VALUES
('K001', 80, 500000, 50000, 'Absen 3 Hari'),
('K002', 120, 700000, 250000, 'Absen 2 Hari'),
('K002', 120, 700000, 700000, 'absen 6 hari'),
('K001', 2, 500000, 0, 'tidak ada'),
('K001', 200, 500000, 0, ''),
('K001', 200, 500000, 800000, 'Absen 12 Hari'),
('K003', 206, 800000, 500000, 'Absen 10 hari');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'IT Support Officer'),
(2, 'Network Administrator'),
(3, 'Network Engineer'),
(4, 'IT Programmer'),
(5, 'Project Manager');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` varchar(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `TTL` varchar(25) NOT NULL,
  `jabatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `TTL`, `jabatan`) VALUES
('K001', 'Siti Nor C', 'Surabaya, 11 Maret 1986', 2),
('K002', 'M Lourentius', 'Malang, 30 Desember 1977', 2),
('K003', 'J Kambing Hitam', 'Sawahan, 30 Februari 2020', 3),
('K004', 'Noor Ali', 'Malang, 26 Januari 1998', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `manager`
--

CREATE TABLE `manager` (
  `id_manager` varchar(11) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `jabatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `manager`
--

INSERT INTO `manager` (`id_manager`, `password`, `nama`, `alamat`, `jabatan`) VALUES
('M001', 'a123', 'Mark Zuckerberg', 'Jln California', 5),
('M002', 'd123', 'Bill Gates', 'Jln Surabaya', 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id_manager`);
