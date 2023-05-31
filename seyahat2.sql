-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 29 May 2023, 23:52:10
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `__dev (1)(1)`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `arac_kiralama`
--

CREATE TABLE `arac_kiralama` (
  `Plaka_numarasi` varchar(20) NOT NULL,
  `Kiralama_tarihi` date NOT NULL,
  `Teslim_tarihi` date NOT NULL,
  `Fiyat` int(11) NOT NULL,
  `Rezervasyon_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `arac_kiralama`
--

INSERT INTO `arac_kiralama` (`Plaka_numarasi`, `Kiralama_tarihi`, `Teslim_tarihi`, `Fiyat`, `Rezervasyon_ID`) VALUES
('10', '2023-06-12', '2023-06-19', 2000, 20),
('11', '2023-06-15', '2023-06-20', 1400, 21),
('12', '2023-06-18', '2023-06-22', 1100, 22),
('13', '2023-06-20', '2023-06-27', 1900, 23),
('14', '2023-06-22', '2023-06-26', 1300, 24),
('15', '2023-06-25', '2023-06-30', 1700, 25),
('16', '2023-06-27', '2023-07-05', 2200, 26),
('17', '2023-06-30', '2023-07-07', 2400, 27),
('18', '2023-07-02', '2023-07-09', 2000, 28),
('19', '2023-07-05', '2023-07-10', 1500, 29),
('20', '2023-07-08', '2023-07-12', 1200, 30),
('6', '2023-06-01', '2023-06-10', 1500, 16),
('7', '2023-06-02', '2023-06-06', 1200, 17),
('8', '2023-06-05', '2023-06-08', 900, 18),
('9', '2023-06-10', '2023-06-15', 1800, 19);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `arac_turu`
--

CREATE TABLE `arac_turu` (
  `arac_ID` int(11) NOT NULL,
  `marka` varchar(50) NOT NULL,
  `model_yili` int(50) NOT NULL,
  `Plaka_numarasi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `etkinlik`
--

CREATE TABLE `etkinlik` (
  `Etkinlik_ID` int(11) NOT NULL,
  `Etkinlik_adi` varchar(50) NOT NULL,
  `Etkinlik_tarih` date NOT NULL,
  `Etkinlik_konumu` varchar(50) NOT NULL,
  `Bilet_fiyati` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `etkinlik`
--

INSERT INTO `etkinlik` (`Etkinlik_ID`, `Etkinlik_adi`, `Etkinlik_tarih`, `Etkinlik_konumu`, `Bilet_fiyati`) VALUES
(1, 'Rock Festivali', '2023-06-01', 'İstanbul', 50),
(2, 'Yaz Konserleri', '2023-08-10', 'Antalya', 75),
(3, 'Bale Gösterisi', '2023-07-15', 'İzmir', 60),
(4, 'Klasik Müzik Konseri', '2023-06-25', 'Ankara', 40),
(5, 'Opera Gösterisi', '2023-07-05', 'İstanbul', 100),
(6, 'Spor Turnuvası', '2023-08-15', 'Antalya', 20),
(7, 'Satranç Turnuvası', '2023-07-20', 'Ankara', 10),
(8, 'Fotoğraf Sergisi', '2023-06-05', 'İzmir', 5),
(9, 'Heykel Sergisi', '2023-06-30', 'İstanbul', 15),
(10, 'Film Festivali', '2023-07-25', 'Ankara', 30),
(11, 'Komedi Show', '2023-08-05', 'İstanbul', 50),
(12, 'Drama Gösterisi', '2023-07-10', 'İzmir', 40),
(13, 'Çocuk Tiyatrosu', '2023-06-20', 'Antalya', 25),
(14, 'Dijital Sanat Sergisi', '2023-07-30', 'Ankara', 20),
(15, 'Müze Gezisi', '2023-08-01', 'İstanbul', 10);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `konaklama`
--

CREATE TABLE `konaklama` (
  `konaklama_ID` int(11) NOT NULL,
  `Internet_hizi` varchar(50) DEFAULT NULL,
  `Otel_adi` varchar(50) NOT NULL,
  `Fiyat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `konaklama`
--

INSERT INTO `konaklama` (`konaklama_ID`, `Internet_hizi`, `Otel_adi`, `Fiyat`) VALUES
(61, '50', 'Hilton', 1000),
(62, '25', 'Marriot', 800),
(63, '100', 'Rixos', 1500),
(64, '50', 'Holiday Inn', 600),
(65, '25', 'Sheraton', 900),
(66, '100', 'Four Seasons', 2000),
(67, '50', 'Ramada', 700),
(68, '25', 'Wyndham', 850),
(69, '100', 'InterContinental', 1800),
(70, '50', 'DoubleTree', 750),
(71, '25', 'Park Inn', 550),
(72, '100', 'Mövenpick', 1600),
(73, '50', 'Radisson', 950),
(74, '25', 'Novotel', 700),
(75, '100', 'Hilton Garden Inn', 1200);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `konaklama_seyahat`
--

CREATE TABLE `konaklama_seyahat` (
  `konaklama_ID` int(11) NOT NULL,
  `seyahat_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `konaklama_seyahat`
--

INSERT INTO `konaklama_seyahat` (`konaklama_ID`, `seyahat_ID`) VALUES
(61, 1),
(62, 2),
(63, 3),
(64, 4),
(65, 5),
(66, 6),
(67, 7),
(68, 8),
(69, 9),
(70, 10),
(71, 11),
(72, 12),
(73, 13),
(74, 14),
(75, 15);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `Kullanici_ID` int(11) NOT NULL,
  `Ad` varchar(50) NOT NULL,
  `Kullanici_yasi` int(11) NOT NULL,
  `Dogum_tarihi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`Kullanici_ID`, `Ad`, `Kullanici_yasi`, `Dogum_tarihi`) VALUES
(1, 'Ali', 25, '1998-03-12'),
(2, 'Ayşe', 32, '1991-09-21'),
(3, 'Mehmet', 45, '1978-06-05'),
(4, 'Fatma', 28, '1995-11-15'),
(5, 'Ahmet', 39, '1984-02-27'),
(6, 'Zeynep', 31, '1990-08-10'),
(7, 'Mustafa', 47, '1976-04-23'),
(8, 'Gülsüm', 22, '1999-01-03'),
(9, 'Emre', 29, '1994-07-17'),
(10, 'Selin', 26, '1997-05-29'),
(11, 'Kerem', 34, '1989-11-08'),
(12, 'Aysun', 40, '1983-03-04'),
(13, 'Deniz', 23, '1998-10-30'),
(14, 'İbrahim', 36, '1987-08-02'),
(15, 'Merve', 27, '1996-09-18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rezervasyon`
--

CREATE TABLE `rezervasyon` (
  `Rezervasyon_ID` int(11) NOT NULL,
  `Ödeme_yöntemi` varchar(50) NOT NULL,
  `Giris_tarihi` date NOT NULL,
  `Cikis_tarihi` date NOT NULL,
  `Kullanici_ID` int(11) NOT NULL,
  `Seyahat_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `rezervasyon`
--

INSERT INTO `rezervasyon` (`Rezervasyon_ID`, `Ödeme_yöntemi`, `Giris_tarihi`, `Cikis_tarihi`, `Kullanici_ID`, `Seyahat_ID`) VALUES
(16, 'Kredi Kartı', '2023-06-01', '2023-06-05', 1, 1),
(17, 'Nakit', '2023-07-15', '2023-07-20', 2, 2),
(18, 'Havale', '2023-08-10', '2023-08-15', 3, 3),
(19, 'Kredi Kartı', '2023-09-01', '2023-09-05', 4, 4),
(20, 'Nakit', '2023-10-15', '2023-10-20', 5, 5),
(21, 'Havale', '2023-11-10', '2023-11-15', 6, 6),
(22, 'Kredi Kartı', '2023-12-01', '2023-12-05', 7, 7),
(23, 'Nakit', '2024-01-15', '2024-01-20', 8, 8),
(24, 'Havale', '2024-02-10', '2024-02-15', 9, 9),
(25, 'Kredi Kartı', '2024-03-01', '2024-03-05', 10, 10),
(26, 'Nakit', '2024-04-15', '2024-04-20', 11, 11),
(27, 'Havale', '2024-05-10', '2024-05-15', 12, 12),
(28, 'Kredi Kartı', '2024-06-01', '2024-06-05', 13, 13),
(29, 'Nakit', '2024-07-15', '2024-07-20', 14, 14),
(30, 'Havale', '2024-08-10', '2024-08-15', 15, 15);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `seyahat`
--

CREATE TABLE `seyahat` (
  `Seyahat_ID` int(11) NOT NULL,
  `Baslangic_tarihi` date NOT NULL,
  `Bitis_tarihi` date NOT NULL,
  `Toplam_fiyat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `seyahat`
--

INSERT INTO `seyahat` (`Seyahat_ID`, `Baslangic_tarihi`, `Bitis_tarihi`, `Toplam_fiyat`) VALUES
(1, '2023-06-15', '2023-06-30', 2500),
(2, '2023-07-01', '2023-07-10', 1500),
(3, '2023-08-01', '2023-08-15', 3000),
(4, '2023-12-20', '2023-12-31', 2000),
(5, '2024-01-05', '2024-01-10', 1000),
(6, '2024-02-01', '2024-02-10', 1500),
(7, '2024-03-15', '2024-03-30', 2200),
(8, '2024-04-01', '2024-04-10', 1200),
(9, '2024-05-01', '2024-05-10', 1800),
(10, '2024-06-15', '2024-06-30', 2700),
(11, '2024-07-01', '2024-07-10', 1600),
(12, '2024-08-01', '2024-08-15', 3200),
(13, '2024-12-20', '2024-12-31', 2200),
(14, '2025-01-05', '2025-01-10', 1100),
(15, '2025-02-01', '2025-02-10', 1600);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `seyahat_etkinlik`
--

CREATE TABLE `seyahat_etkinlik` (
  `Seyahat_ID` int(11) NOT NULL,
  `Etkinlik_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `seyahat_etkinlik`
--

INSERT INTO `seyahat_etkinlik` (`Seyahat_ID`, `Etkinlik_ID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ulasim`
--

CREATE TABLE `ulasim` (
  `Bilet_numarasi` int(11) NOT NULL,
  `Bilet_fiyati` int(11) NOT NULL,
  `Kalkis_yeri` varchar(50) NOT NULL,
  `Varis_yeri` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ulasim`
--

INSERT INTO `ulasim` (`Bilet_numarasi`, `Bilet_fiyati`, `Kalkis_yeri`, `Varis_yeri`) VALUES
(1, 100, 'İstanbul', 'Ankara'),
(2, 150, 'Ankara', 'İzmir'),
(3, 50, 'İstanbul', 'Bursa'),
(4, 200, 'İzmir', 'Antalya'),
(5, 75, 'Ankara', 'Sivas'),
(6, 80, 'Antalya', 'Alanya'),
(7, 120, 'İstanbul', 'İzmir'),
(8, 180, 'İzmir', 'Antalya'),
(9, 90, 'Bursa', 'İstanbul'),
(10, 50, 'Ankara', 'Konya'),
(11, 60, 'İstanbul', 'Edirne'),
(12, 300, 'İstanbul', 'Paris'),
(13, 40, 'İzmir', 'Aydın'),
(14, 80, 'Antalya', 'Manavgat'),
(15, 70, 'Ankara', 'Eskişehir');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ulasim_seyahat`
--

CREATE TABLE `ulasim_seyahat` (
  `Seyahat_ID` int(11) NOT NULL,
  `Bilet_numarasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ulasim_seyahat`
--

INSERT INTO `ulasim_seyahat` (`Seyahat_ID`, `Bilet_numarasi`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `arac_kiralama`
--
ALTER TABLE `arac_kiralama`
  ADD PRIMARY KEY (`Plaka_numarasi`),
  ADD KEY `Rezervasyon_ID` (`Rezervasyon_ID`);

--
-- Tablo için indeksler `arac_turu`
--
ALTER TABLE `arac_turu`
  ADD PRIMARY KEY (`arac_ID`),
  ADD KEY `Plaka_numarasi` (`Plaka_numarasi`);

--
-- Tablo için indeksler `etkinlik`
--
ALTER TABLE `etkinlik`
  ADD PRIMARY KEY (`Etkinlik_ID`);

--
-- Tablo için indeksler `konaklama`
--
ALTER TABLE `konaklama`
  ADD PRIMARY KEY (`konaklama_ID`);

--
-- Tablo için indeksler `konaklama_seyahat`
--
ALTER TABLE `konaklama_seyahat`
  ADD KEY `konaklama_ID` (`konaklama_ID`),
  ADD KEY `seyahat_ID` (`seyahat_ID`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`Kullanici_ID`);

--
-- Tablo için indeksler `rezervasyon`
--
ALTER TABLE `rezervasyon`
  ADD PRIMARY KEY (`Rezervasyon_ID`),
  ADD KEY `Kullanici_ID` (`Kullanici_ID`),
  ADD KEY `Seyahat_ID` (`Seyahat_ID`);

--
-- Tablo için indeksler `seyahat`
--
ALTER TABLE `seyahat`
  ADD PRIMARY KEY (`Seyahat_ID`);

--
-- Tablo için indeksler `seyahat_etkinlik`
--
ALTER TABLE `seyahat_etkinlik`
  ADD KEY `Etkinlik_ID` (`Etkinlik_ID`),
  ADD KEY `seyahat_etkinlik_ibfk_2` (`Seyahat_ID`);

--
-- Tablo için indeksler `ulasim`
--
ALTER TABLE `ulasim`
  ADD PRIMARY KEY (`Bilet_numarasi`);

--
-- Tablo için indeksler `ulasim_seyahat`
--
ALTER TABLE `ulasim_seyahat`
  ADD KEY `Bilet_numarasi` (`Bilet_numarasi`),
  ADD KEY `ulasim_seyahat_ibfk_2` (`Seyahat_ID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `arac_turu`
--
ALTER TABLE `arac_turu`
  MODIFY `arac_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `etkinlik`
--
ALTER TABLE `etkinlik`
  MODIFY `Etkinlik_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `konaklama`
--
ALTER TABLE `konaklama`
  MODIFY `konaklama_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `Kullanici_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `rezervasyon`
--
ALTER TABLE `rezervasyon`
  MODIFY `Rezervasyon_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `seyahat`
--
ALTER TABLE `seyahat`
  MODIFY `Seyahat_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `ulasim`
--
ALTER TABLE `ulasim`
  MODIFY `Bilet_numarasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `arac_kiralama`
--
ALTER TABLE `arac_kiralama`
  ADD CONSTRAINT `arac_kiralama_ibfk_1` FOREIGN KEY (`Rezervasyon_ID`) REFERENCES `rezervasyon` (`Rezervasyon_ID`);

--
-- Tablo kısıtlamaları `arac_turu`
--
ALTER TABLE `arac_turu`
  ADD CONSTRAINT `arac_turu_ibfk_1` FOREIGN KEY (`Plaka_numarasi`) REFERENCES `arac_kiralama` (`Plaka_numarasi`);

--
-- Tablo kısıtlamaları `konaklama_seyahat`
--
ALTER TABLE `konaklama_seyahat`
  ADD CONSTRAINT `konaklama_seyahat_ibfk_1` FOREIGN KEY (`konaklama_ID`) REFERENCES `konaklama` (`konaklama_ID`),
  ADD CONSTRAINT `konaklama_seyahat_ibfk_2` FOREIGN KEY (`seyahat_ID`) REFERENCES `seyahat` (`Seyahat_ID`);

--
-- Tablo kısıtlamaları `rezervasyon`
--
ALTER TABLE `rezervasyon`
  ADD CONSTRAINT `rezervasyon_ibfk_1` FOREIGN KEY (`Kullanici_ID`) REFERENCES `kullanici` (`Kullanici_ID`),
  ADD CONSTRAINT `rezervasyon_ibfk_2` FOREIGN KEY (`Seyahat_ID`) REFERENCES `seyahat` (`Seyahat_ID`);

--
-- Tablo kısıtlamaları `seyahat_etkinlik`
--
ALTER TABLE `seyahat_etkinlik`
  ADD CONSTRAINT `seyahat_etkinlik_ibfk_1` FOREIGN KEY (`Etkinlik_ID`) REFERENCES `etkinlik` (`Etkinlik_ID`),
  ADD CONSTRAINT `seyahat_etkinlik_ibfk_2` FOREIGN KEY (`Seyahat_ID`) REFERENCES `seyahat` (`Seyahat_ID`);

--
-- Tablo kısıtlamaları `ulasim_seyahat`
--
ALTER TABLE `ulasim_seyahat`
  ADD CONSTRAINT `ulasim_seyahat_ibfk_1` FOREIGN KEY (`Bilet_numarasi`) REFERENCES `ulasim` (`Bilet_numarasi`),
  ADD CONSTRAINT `ulasim_seyahat_ibfk_2` FOREIGN KEY (`Seyahat_ID`) REFERENCES `seyahat` (`Seyahat_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
