-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2021 at 12:46 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arackiralama`
--

-- --------------------------------------------------------

--
-- Table structure for table `araclar`
--

CREATE TABLE `araclar` (
  `auto_id` int(11) NOT NULL,
  `plaka_no` varchar(10) NOT NULL,
  `sene` smallint(6) DEFAULT NULL,
  `model` int(11) NOT NULL,
  `renk` int(11) NOT NULL,
  `yakit` int(11) NOT NULL,
  `tuketim` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `araclar`
--

INSERT INTO `araclar` (`auto_id`, `plaka_no`, `sene`, `model`, `renk`, `yakit`, `tuketim`) VALUES
(1, '34 FB 1907', 2020, 8, 5, 2, '4.2'),
(2, '34KL3012', 2019, 6, 4, 3, '5.2'),
(3, '34BJK1903', 2021, 4, 5, 2, '6.1'),
(4, '59PY491', 2015, 3, 6, 2, '7.2'),
(5, '06KL312', 2021, 8, 7, 5, '0.0'),
(6, '34KY381', 2020, 3, 4, 3, '4.8');

-- --------------------------------------------------------

--
-- Table structure for table `firmalar`
--

CREATE TABLE `firmalar` (
  `auto_id` int(11) NOT NULL,
  `firma_ad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `firmalar`
--

INSERT INTO `firmalar` (`auto_id`, `firma_ad`) VALUES
(6, 'Audi'),
(2, 'BMW'),
(3, 'Fiat'),
(5, 'Ford'),
(7, 'Mercedes'),
(1, 'Nissan'),
(10, 'Peugeot'),
(4, 'Seat'),
(9, 'Volkswagen'),
(8, 'Volvo');

-- --------------------------------------------------------

--
-- Table structure for table `firma_model`
--

CREATE TABLE `firma_model` (
  `auto_id` int(11) NOT NULL,
  `firma_id` int(11) NOT NULL,
  `model` varchar(30) NOT NULL,
  `koltuk_say` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `firma_model`
--

INSERT INTO `firma_model` (`auto_id`, `firma_id`, `model`, `koltuk_say`) VALUES
(1, 6, 'A5', 4),
(2, 5, 'Focus', 4),
(3, 3, 'Linea', 4),
(4, 1, 'Juke', 4),
(5, 4, 'Leon', 4),
(6, 7, 'C180', 4),
(7, 9, 'Passat', 4),
(8, 10, '5008', 4),
(9, 8, 'V40', 4),
(10, 8, 'S40', 4);

-- --------------------------------------------------------

--
-- Table structure for table `kiralamalar`
--

CREATE TABLE `kiralamalar` (
  `auto_id` int(11) NOT NULL,
  `musteri_id` int(11) NOT NULL,
  `arac_id` int(11) NOT NULL,
  `gunluk_kira_bedeli` float DEFAULT NULL,
  `kiralama_tarihi` date DEFAULT NULL,
  `kiralama_gun_say` int(11) DEFAULT NULL,
  `teslim_tarihi` date DEFAULT NULL,
  `km_baslangic` int(11) DEFAULT NULL,
  `km_teslim` int(11) DEFAULT NULL,
  `sehir_disi` tinyint(1) DEFAULT '0',
  `kira_suresi_degisti` tinyint(1) DEFAULT '0',
  `durum` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kiralamalar`
--

INSERT INTO `kiralamalar` (`auto_id`, `musteri_id`, `arac_id`, `gunluk_kira_bedeli`, `kiralama_tarihi`, `kiralama_gun_say`, `teslim_tarihi`, `km_baslangic`, `km_teslim`, `sehir_disi`, `kira_suresi_degisti`, `durum`) VALUES
(1, 2, 3, 250, '2021-04-29', 3, '2021-05-01', 20000, 22000, 0, 0, 1),
(2, 4, 5, 270, '2021-04-29', 30, NULL, 18000, NULL, 1, 0, 1),
(3, 7, 1, 550, '2021-04-30', 2, NULL, 26000, NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `musteriler`
--

CREATE TABLE `musteriler` (
  `auto_id` int(11) NOT NULL,
  `musteri_ad` varchar(50) NOT NULL,
  `telefon` varchar(15) NOT NULL,
  `sehir` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `musteriler`
--

INSERT INTO `musteriler` (`auto_id`, `musteri_ad`, `telefon`, `sehir`) VALUES
(1, 'ENES GASI', '5326855225', 'İSTANBUL'),
(2, 'YAŞAR KÜÇÜKEFE', '855265545', 'TEKİRDAĞ'),
(3, 'YASİN GÖKMEN ALTINDİREK', '85544552', 'İSTANBUL'),
(4, 'NURULLAH ÖMER', '8569525456', 'MARDİN'),
(5, 'MERCAN DAVULCU', '8665898265', 'İSTANBUL'),
(6, 'BEYZA TAHİNCİOĞLU', '856856366', 'İSTANBUL'),
(7, 'DİLAN BİLAL', '875695566', 'İSTANBUL'),
(8, 'MERTACAN ECE', '5642664852', 'İSTANBUL');

-- --------------------------------------------------------

--
-- Table structure for table `renkler`
--

CREATE TABLE `renkler` (
  `auto_id` int(11) NOT NULL,
  `renk` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `renkler`
--

INSERT INTO `renkler` (`auto_id`, `renk`) VALUES
(4, 'Beyaz'),
(6, 'Gümüş'),
(7, 'Kırmızı'),
(5, 'Mavi'),
(3, 'Siyah');

-- --------------------------------------------------------

--
-- Table structure for table `yakit_turleri`
--

CREATE TABLE `yakit_turleri` (
  `auto_id` int(11) NOT NULL,
  `yakit_tipi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yakit_turleri`
--

INSERT INTO `yakit_turleri` (`auto_id`, `yakit_tipi`) VALUES
(2, 'Benzin'),
(1, 'Dizel'),
(5, 'Elektrikli'),
(4, 'Hibrit'),
(3, 'LPG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `araclar`
--
ALTER TABLE `araclar`
  ADD PRIMARY KEY (`auto_id`),
  ADD UNIQUE KEY `plaka_no_uq` (`plaka_no`),
  ADD KEY `model` (`model`),
  ADD KEY `renk` (`renk`),
  ADD KEY `yakit` (`yakit`);

--
-- Indexes for table `firmalar`
--
ALTER TABLE `firmalar`
  ADD PRIMARY KEY (`auto_id`),
  ADD UNIQUE KEY `firma_uq` (`firma_ad`);

--
-- Indexes for table `firma_model`
--
ALTER TABLE `firma_model`
  ADD PRIMARY KEY (`auto_id`),
  ADD UNIQUE KEY `firma_id` (`firma_id`,`model`);

--
-- Indexes for table `kiralamalar`
--
ALTER TABLE `kiralamalar`
  ADD PRIMARY KEY (`auto_id`),
  ADD KEY `musteri_id` (`musteri_id`),
  ADD KEY `arac_id` (`arac_id`);

--
-- Indexes for table `musteriler`
--
ALTER TABLE `musteriler`
  ADD PRIMARY KEY (`auto_id`),
  ADD UNIQUE KEY `musteri_ad` (`musteri_ad`);

--
-- Indexes for table `renkler`
--
ALTER TABLE `renkler`
  ADD PRIMARY KEY (`auto_id`),
  ADD UNIQUE KEY `renk_uq` (`renk`);

--
-- Indexes for table `yakit_turleri`
--
ALTER TABLE `yakit_turleri`
  ADD PRIMARY KEY (`auto_id`),
  ADD UNIQUE KEY `yakit_tipi` (`yakit_tipi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `araclar`
--
ALTER TABLE `araclar`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `firmalar`
--
ALTER TABLE `firmalar`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `firma_model`
--
ALTER TABLE `firma_model`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `kiralamalar`
--
ALTER TABLE `kiralamalar`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `musteriler`
--
ALTER TABLE `musteriler`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `renkler`
--
ALTER TABLE `renkler`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `yakit_turleri`
--
ALTER TABLE `yakit_turleri`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `araclar`
--
ALTER TABLE `araclar`
  ADD CONSTRAINT `araclar_ibfk_1` FOREIGN KEY (`model`) REFERENCES `firma_model` (`auto_id`),
  ADD CONSTRAINT `araclar_ibfk_2` FOREIGN KEY (`renk`) REFERENCES `renkler` (`auto_id`),
  ADD CONSTRAINT `araclar_ibfk_3` FOREIGN KEY (`yakit`) REFERENCES `yakit_turleri` (`auto_id`);

--
-- Constraints for table `firma_model`
--
ALTER TABLE `firma_model`
  ADD CONSTRAINT `firma_model_ibfk_1` FOREIGN KEY (`firma_id`) REFERENCES `firmalar` (`auto_id`);

--
-- Constraints for table `kiralamalar`
--
ALTER TABLE `kiralamalar`
  ADD CONSTRAINT `kiralamalar_ibfk_1` FOREIGN KEY (`musteri_id`) REFERENCES `musteriler` (`auto_id`),
  ADD CONSTRAINT `kiralamalar_ibfk_2` FOREIGN KEY (`arac_id`) REFERENCES `araclar` (`auto_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
