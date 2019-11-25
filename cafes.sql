-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 25 Kas 2019, 15:09:33
-- Sunucu sürümü: 10.4.6-MariaDB
-- PHP Sürümü: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `cafes`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `cities`
--

INSERT INTO `cities` (`id`, `name`) VALUES
(4, 'dublin'),
(1, 'izmir'),
(3, 'mountain view'),
(2, 'new york city'),
(5, 'san francisco');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `lists`
--

CREATE TABLE `lists` (
  `id` int(11) NOT NULL,
  `city` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `lists`
--

INSERT INTO `lists` (`id`, `city`, `name`, `image_url`) VALUES
(7, 'izmir', 'Mars Cafe', 'https://images.unsplash.com/photo-1463797221720-6b07e6426c24?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80'),
(8, 'izmir', 'Earth Cafe', 'https://images.unsplash.com/photo-1508424757105-b6d5ad9329d0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80'),
(9, 'izmir', 'Pluto Cafe', 'https://images.unsplash.com/photo-1559925393-8be0ec4767c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80'),
(10, 'izmir', 'Cat Cafe', 'https://images.unsplash.com/photo-1529676468696-f3a47aba7d5d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
(11, 'izmir', 'Moon Cafe', 'https://images.unsplash.com/photo-1542020667-adc2bf0b744d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80'),
(12, 'mountain view', 'California Cafe', 'https://images.unsplash.com/photo-1520279406162-c955e67194ed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
(13, 'mountain view', 'Sirius Cafe', 'https://images.unsplash.com/photo-1546983620-53cb1c496917?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
(14, 'mountain view', 'Betelguese Cafe', 'https://images.unsplash.com/photo-1569096651661-820d0de8b4ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=613&q=80'),
(15, 'mountain view', 'Rigel Cafe', 'https://images.unsplash.com/photo-1493857671505-72967e2e2760?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'),
(16, 'mountain view', 'Sun Cafe', 'https://images.unsplash.com/photo-1505275350441-83dcda8eeef5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80'),
(17, 'dublin', 'Dublin Cafe', 'https://images.unsplash.com/photo-1516197227520-4d1c419f6ec6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=657&q=80'),
(18, 'dublin', 'Pacific Cafe', 'https://images.unsplash.com/photo-1558627273-0afee68c8efc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
(19, 'dublin', 'Atlantic Cafe', 'https://images.unsplash.com/photo-1545588155-34ea20f71974?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
(20, 'dublin', 'Artic Ocean', 'https://images.unsplash.com/photo-1521732861880-958c73f6cb72?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=706&q=80'),
(21, 'dublin', 'Indian Cafe', 'https://images.unsplash.com/photo-1464979681340-bdd28a61699e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
(27, 'new york city', 'New York Cafe', 'https://images.unsplash.com/photo-1418479631014-8cbf89db3431?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
(28, 'new york city', 'Git Cafe', 'https://images.unsplash.com/photo-1526396130214-c9120f440977?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
(29, 'new york city', 'Vue Cafe', 'https://images.unsplash.com/photo-1486482044844-888b371f410c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=634&q=80'),
(30, 'new york city', 'React Cafe', 'https://images.unsplash.com/photo-1521917441209-e886f0404a7b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1600&q=80'),
(31, 'new york city', 'Angular Cafe', 'https://images.unsplash.com/photo-1516196252840-f9947d2bcb7a?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
(32, 'san francisco', 'San Francisco Cafe', 'https://images.unsplash.com/photo-1474898856510-884a2c0be546?ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80'),
(33, 'san francisco', 'Flutter Cafe', 'https://images.unsplash.com/photo-1485182708500-e8f1f318ba72?ixlib=rb-1.2.1&auto=format&fit=crop&w=1085&q=80'),
(34, 'san francisco', 'Express Cafe', 'https://images.unsplash.com/photo-1488751045188-3c55bbf9a3fa?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
(35, 'san francisco', 'Mongo Cafe', 'https://images.unsplash.com/5/unsplash-bonus.jpg?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
(36, 'san francisco', 'Redis Cafe', 'https://images.unsplash.com/photo-1515347512516-e608e81bc00c?ixlib=rb-1.2.1&auto=format&fit=crop&w=888&q=80');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Tablo için indeksler `lists`
--
ALTER TABLE `lists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `image_url` (`image_url`),
  ADD KEY `list_ibfk_1` (`city`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `lists`
--
ALTER TABLE `lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `lists`
--
ALTER TABLE `lists`
  ADD CONSTRAINT `lists_ibfk_1` FOREIGN KEY (`city`) REFERENCES `cities` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
