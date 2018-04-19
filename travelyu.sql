-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 19. April 2018 jam 14:30
-- Versi Server: 5.1.30
-- Versi PHP: 5.2.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wahyutravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `costumer`
--

CREATE TABLE IF NOT EXISTS `costumer` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` int(20) NOT NULL,
  `gender` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `costumer`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(20) NOT NULL,
  `reservation_code` varchar(30) NOT NULL,
  `reservation_at` varchar(45) NOT NULL,
  `reservation_date` varchar(40) NOT NULL,
  `seat_code` varchar(50) NOT NULL,
  `depart_at` varchar(30) NOT NULL,
  `price` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `reservation`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `rute`
--

CREATE TABLE IF NOT EXISTS `rute` (
  `id` int(20) NOT NULL,
  `depart_at` varchar(80) NOT NULL,
  `rute_from` varchar(50) NOT NULL,
  `rute_to` varchar(30) NOT NULL,
  `price` int(40) NOT NULL,
  `transportationid` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rute`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `transportation`
--

CREATE TABLE IF NOT EXISTS `transportation` (
  `id` int(30) NOT NULL,
  `code` varchar(20) NOT NULL,
  `description` varchar(500) NOT NULL,
  `seat_qty` varchar(50) NOT NULL,
  `transportation_typeid` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transportation`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `transportation_type`
--

CREATE TABLE IF NOT EXISTS `transportation_type` (
  `id` int(50) NOT NULL,
  `description` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transportation_type`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(30) NOT NULL,
  `password` int(15) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `level` int(10) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

