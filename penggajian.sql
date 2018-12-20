-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 20 Des 2018 pada 11.52
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
