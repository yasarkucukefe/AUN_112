-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 08 Nis 2021, 15:29:54
-- Sunucu sürümü: 10.1.16-MariaDB
-- PHP Sürümü: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `arackiralama`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `araclar`
--

CREATE TABLE `araclar` (
  `auto_id` int(11) NOT NULL,
  `plaka_no` varchar(10) NOT NULL,
  `sene` smallint(6) DEFAULT NULL,
  `model` int(11) NOT NULL,
  `renk` int(11) NOT NULL,
  `yakit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `araclar`
--

INSERT INTO `araclar` (`auto_id`, `plaka_no`, `sene`, `model`, `renk`, `yakit`) VALUES
(1, '34 FB 1907', 2020, 8, 5, 2),
(2, '34KL3012', 2019, 6, 4, 3),
(3, '34BJK1903', 2021, 4, 5, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `firmalar`
--

CREATE TABLE `firmalar` (
  `auto_id` int(11) NOT NULL,
  `firma_ad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `firmalar`
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
-- Tablo için tablo yapısı `firma_model`
--

CREATE TABLE `firma_model` (
  `auto_id` int(11) NOT NULL,
  `firma_id` int(11) NOT NULL,
  `model` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `firma_model`
--

INSERT INTO `firma_model` (`auto_id`, `firma_id`, `model`) VALUES
(4, 1, 'Juke'),
(3, 3, 'Linea'),
(5, 4, 'Leon'),
(2, 5, 'Focus'),
(1, 6, 'A5'),
(6, 7, 'C180'),
(10, 8, 'S40'),
(9, 8, 'V40'),
(7, 9, 'Passat'),
(8, 10, '5008');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `renkler`
--

CREATE TABLE `renkler` (
  `auto_id` int(11) NOT NULL,
  `renk` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `renkler`
--

INSERT INTO `renkler` (`auto_id`, `renk`) VALUES
(4, 'Beyaz'),
(6, 'Gümüş'),
(7, 'Kırmızı'),
(5, 'Mavi'),
(3, 'Siyah');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yakit_turleri`
--

CREATE TABLE `yakit_turleri` (
  `auto_id` int(11) NOT NULL,
  `yakit_tipi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `yakit_turleri`
--

INSERT INTO `yakit_turleri` (`auto_id`, `yakit_tipi`) VALUES
(2, 'Benzin'),
(1, 'Dizel'),
(4, 'Hibrit'),
(3, 'LPG');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `araclar`
--
ALTER TABLE `araclar`
  ADD PRIMARY KEY (`auto_id`),
  ADD UNIQUE KEY `plaka_no_uq` (`plaka_no`),
  ADD KEY `model` (`model`),
  ADD KEY `renk` (`renk`),
  ADD KEY `yakit` (`yakit`);

--
-- Tablo için indeksler `firmalar`
--
ALTER TABLE `firmalar`
  ADD PRIMARY KEY (`auto_id`),
  ADD UNIQUE KEY `firma_uq` (`firma_ad`);

--
-- Tablo için indeksler `firma_model`
--
ALTER TABLE `firma_model`
  ADD PRIMARY KEY (`auto_id`),
  ADD UNIQUE KEY `firma_id` (`firma_id`,`model`);

--
-- Tablo için indeksler `renkler`
--
ALTER TABLE `renkler`
  ADD PRIMARY KEY (`auto_id`),
  ADD UNIQUE KEY `renk_uq` (`renk`);

--
-- Tablo için indeksler `yakit_turleri`
--
ALTER TABLE `yakit_turleri`
  ADD PRIMARY KEY (`auto_id`),
  ADD UNIQUE KEY `yakit_tipi` (`yakit_tipi`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `araclar`
--
ALTER TABLE `araclar`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Tablo için AUTO_INCREMENT değeri `firmalar`
--
ALTER TABLE `firmalar`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Tablo için AUTO_INCREMENT değeri `firma_model`
--
ALTER TABLE `firma_model`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Tablo için AUTO_INCREMENT değeri `renkler`
--
ALTER TABLE `renkler`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Tablo için AUTO_INCREMENT değeri `yakit_turleri`
--
ALTER TABLE `yakit_turleri`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `araclar`
--
ALTER TABLE `araclar`
  ADD CONSTRAINT `araclar_ibfk_1` FOREIGN KEY (`model`) REFERENCES `firma_model` (`auto_id`),
  ADD CONSTRAINT `araclar_ibfk_2` FOREIGN KEY (`renk`) REFERENCES `renkler` (`auto_id`),
  ADD CONSTRAINT `araclar_ibfk_3` FOREIGN KEY (`yakit`) REFERENCES `yakit_turleri` (`auto_id`);

--
-- Tablo kısıtlamaları `firma_model`
--
ALTER TABLE `firma_model`
  ADD CONSTRAINT `firma_model_ibfk_1` FOREIGN KEY (`firma_id`) REFERENCES `firmalar` (`auto_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
