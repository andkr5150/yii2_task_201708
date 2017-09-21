-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Сен 22 2017 г., 01:58
-- Версия сервера: 5.7.18-0ubuntu0.17.04.1
-- Версия PHP: 7.0.23-1+ubuntu17.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_yii_prodCatalog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `ASIN` varchar(10) DEFAULT NULL,
  `Title` varchar(600) DEFAULT NULL,
  `Price` decimal(8,2) DEFAULT NULL,
  `Picture` varchar(200) DEFAULT NULL,
  `EAN` varchar(13) DEFAULT NULL,
  `Brand` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `ASIN`, `Title`, `Price`, `Picture`, `EAN`, `Brand`) VALUES
(1, 'B00F8JHE16', 'Apple iPhone 5S Smartphone 16GB (10,2 cm (4 Zoll) IPS Retina-Touchscreen, 8 Megapixel Kamera, iOS 7) Silber', '264.99', 'https://images-eu.ssl-images-amazon.com/images/I/511IzopJisL._SL160_.jpg', 'EAN', 'Apple'),
(2, 'B01KOJK0MY', 'Apple iPhone 5 Schwarz 16GB Smartphone (Zertifiziert und Generalüberholt)', '179.99', 'https://images-eu.ssl-images-amazon.com/images/I/41tQKdrEh4L._SL160_.jpg', 'EAN', 'Apple'),
(3, 'B01HH5MOPY', 'Samsung Galaxy J5 DUOS Smartphone (13,2 cm (5,2 Zoll) Touch-Display, 16 GB Speicher, Android 6.0) schwarz', '186.90', 'https://images-eu.ssl-images-amazon.com/images/I/317Qgc2hB7L._SL160_.jpg', 'EAN', 'Samsung'),
(4, 'B074P1F9GD', 'Xiaomi Mi 6 Dual LTE 128GB 6GB RAM Black', '600.00', 'https://images-eu.ssl-images-amazon.com/images/I/41SApWiSLtL._SL160_.jpg', 'EAN', 'Xiaomi'),
(5, 'B01KUXKP92', 'Motorola Moto Z Play Smartphone (14 cm (5,5 Zoll), 32 GB, Android) Schwarz/Silber', '309.00', 'https://images-eu.ssl-images-amazon.com/images/I/41YeekXfctL._SL160_.jpg', 'EAN', 'Motorola'),
(6, 'B01M9H633O', 'König-Shop Panzerglasfolie Lenovo A5000 Glasfolie Panzerfolie Schutzfolie - 9H Hartglas - 2 Stück', '6.94', 'https://images-eu.ssl-images-amazon.com/images/I/41Va2g7nzlL._SL160_.jpg', 'EAN', 'König-Shop'),
(7, 'B01M04Q5XX', 'Asus F540LA-XX436T 39.6 cm (15,6 Zoll) Notebook (Intel Core i3-5005U, 4GB RAM, 1TB HDD, Intel HD 5500, Win 10 Home) schwarz', '399.00', 'https://images-eu.ssl-images-amazon.com/images/I/41lSEYMqv2L._SL160_.jpg', 'EAN', 'ASUS Computer'),
(8, 'B072C2G4LN', 'HP 15-bw050ng 2CN90EA 39,6 cm (15,6 Zoll) Laptop (AMD Dual-Core E2-9000e, 4 GB RAM, 128 GB SSD, AMD Radeon R2-Grafikkarte, FreeDOS 2.0) schwarz', '279.00', 'https://images-eu.ssl-images-amazon.com/images/I/41f0R4o8RiL._SL160_.jpg', 'EAN', 'HP'),
(9, 'B018IFWDV2', 'MSI GE62-6QF16H11HOS ,39,62 cm (15,6 Zoll) Notebook (Intel Core i7 6700HQ, 16GB RAM, 1152GB HDD/SSD, Win 10 Home)', '1335.51', 'https://images-eu.ssl-images-amazon.com/images/I/41TOfrsGoeL._SL160_.jpg', 'EAN', 'MSI'),
(10, 'B01GEVYNT2', 'Sony Xperia E5 Smartphone (12,7 cm (5 Zoll) Touch-Display, 16 GB Speicher, Android 6.0) schwarz', '143.99', 'https://images-eu.ssl-images-amazon.com/images/I/31TcaAU%2BR9L._SL160_.jpg', 'EAN', 'Sony'),
(11, 'B01MTXVOUY', 'Gigaset GS160 Smartphone, Touch-Display, 16GB Speicher, Micro-SD-Slot für 128 GB Zusatzspeicher, Fingerprint-Sensor, Dual-SIM, Android 6.0, SD-Adap', '86.50', 'https://images-eu.ssl-images-amazon.com/images/I/41rHQ%2BJXpSL._SL160_.jpg', 'EAN', 'Gigaset'),
(12, 'B06XHPM3Z5', 'Samsung Galaxy S8+ Smartphone (6,2 Zoll (15,8 cm) Touch-Display, 64GB interner Speicher, Android OS) orchid grey', '644.00', 'https://images-eu.ssl-images-amazon.com/images/I/412qQ7oJoDL._SL160_.jpg', 'EAN', 'Samsung'),
(13, 'B00TX5OIZG', 'Samsung Galaxy S6 Smartphone (12,9 cm (5,1 Zoll) Touch-Display, 32 GB Speicher, Android 5.0) blau (Nur für Europäische SIM-Karte)', '374.95', 'https://images-eu.ssl-images-amazon.com/images/I/41rizrbwxSL._SL160_.jpg', 'EAN', 'Samsung'),
(14, 'B073PSJMJQ', 'SIM Free Smartphone , Blackview BV6000 4G Dual SIM Handy mit 4,7 Zoll HD IPS Display - Octa Core Android 7.0 Smartphone Ohne Vertrag - 3 GB RAM + 32 GB ROM - 4500mAh Große Batterie - 5MP + 13MP Kamera - IP68 Wasserdichte / Stoßfest / Staubdicht / mit Drucksensor (Gelb)', '199.99', 'https://images-eu.ssl-images-amazon.com/images/I/51yAKx9aZwL._SL160_.jpg', 'EAN', 'Blackview'),
(15, 'B0734JYQTS', 'Blackview - P2 Lite 4G, Smartphone entriegelt 5,5 Zoll Android 7,0 Octa-Core 3GB RAM + 32GB ROM mit 6000mAh Große peicherkapazität der Batterie - 8MP + 13MP Kameras, Dual SIM/ OTG / Full Metal (Blau)', '159.99', 'https://images-eu.ssl-images-amazon.com/images/I/51RD1AFSxaL._SL160_.jpg', 'EAN', 'Blackview'),
(16, 'B074M985BQ', 'Smartphone 3G ohne Vertrag Android 6.0, ViVK R3 Smartphone 5,5\' Zoll Dual-SIM Handy Simlockfrei (Quad-Core 16Go ROM, 1280 * 720 pixels, 8MP Rückkamera mit dreifachen LED Blitz, Smart wake) Weiß', '79.99', 'https://images-eu.ssl-images-amazon.com/images/I/41Q4FA-2B7L._SL160_.jpg', 'EAN', 'ViVK'),
(17, 'B07499T11H', 'Blackview BV8000 Pro 5.0 Zoll FHD 4G LTE Smartphone Android 7.0, MTK6757 Octa-core 6GB RAM 64GB ROM, 16MP+ 8MP Dual Kamera, 4180mAh Akku, Dual SIM IP68 Wasserdicht Staubdicht Stoßfest Outdoor Handy ohne vertrag, GPS NFC OTG FM - Silber', '299.99', 'https://images-eu.ssl-images-amazon.com/images/I/51-PKebj5gL._SL160_.jpg', 'EAN', 'Blackview'),
(18, 'B071JHBZS5', 'Blackview BV7000 Pro IP68 4G Smartphone Ohne Vertrag (4GB Ram+64GB Rom, Octa-core 1.5GHz, Android 6.0, Outdoor Handy Wasserdicht /Stoßfest/ Staubdicht, 5,0 Zoll FHD 1920*1080 pixels , Dual-SIM, Dual Kamera 13MP + 8MP, 3500mAh Akku, Fingerabdruck GPS FM OTG WiFi) - Silber', '189.99', 'https://images-eu.ssl-images-amazon.com/images/I/51Gz1RplIQL._SL160_.jpg', 'EAN', 'Blackview'),
(20, 'B07211F5D1', 'Blackview BV8000 Pro - Android 7.0 5 Zoll FHD Bildschirm IP68 Outdoor Smartphone MTK6757 Octa Core 2.3GHz 6GB RAM 64GB 8MP + 16MP Kamera Wasserdicht / Shockproof / Staubdicht NFC OTG Fingerabdruck - Schwarz-Gold', '299.99', 'https://images-eu.ssl-images-amazon.com/images/I/51v9ppt7vKL._SL160_.jpg', 'EAN', 'Blackview'),
(21, 'B0747MDFVV', 'Outdoor Handy, Blackview BV8000 Pro 5.0 Zoll Smartphone Android 7.0 OS MT6757 Octa Core Prozessor 6GB RAM 64GB ROM, IP68 Wasserdichte / Stoßfest / Staubdicht, 4G Dual SIM Handy mit 4180mAh Akku', '280.00', 'https://images-eu.ssl-images-amazon.com/images/I/51QZqsTXPtL._SL160_.jpg', 'EAN', 'Blackview'),
(22, 'B06XFRBM26', 'LG Mobile G6 Smartphone (14,5 cm (5,7 Zoll) QHD Plus Full Vision Display, 32GB Speicher, Android 7.0 Nougat) schwarz', '406.00', 'https://images-eu.ssl-images-amazon.com/images/I/318sSn4LrfL._SL160_.jpg', 'EAN', 'LG Electronics'),
(23, 'B01L3H3JZG', 'LG G5 SE Smartphone (13,5cm (5,3 Zoll) Display, 32 GB Speicher, Android 6.0) Titan', '314.00', 'https://images-eu.ssl-images-amazon.com/images/I/41WtVd5A9NL._SL160_.jpg', 'EAN', 'LG Electronics'),
(24, 'B0725GZ3SW', 'HTC U11 Smartphone (13,97cm (5,5 Zoll), Alexa ready, 16 MP Frontkamera, 64GB Speicher, Android) Brilliant Black', '630.00', 'https://images-eu.ssl-images-amazon.com/images/I/413jpi08K2L._SL160_.jpg', 'EAN', 'HTC'),
(25, 'B06XJ65K58', 'Samsung Galaxy S8 Smartphone (5,8 Zoll (14,7 cm) Touch-Display, 64GB interner Speicher, Android OS) arctic silver', '548.99', 'https://images-eu.ssl-images-amazon.com/images/I/41OBmm5z0UL._SL160_.jpg', 'EAN', 'Samsung'),
(26, 'B06XJ49G5B', 'Samsung Galaxy S8 Smartphone (5,8 Zoll (14,7 cm) Touch-Display, 64GB interner Speicher, Android OS) midnight black', '547.00', 'https://images-eu.ssl-images-amazon.com/images/I/41v6wu3u3vL._SL160_.jpg', 'EAN', 'Samsung'),
(27, 'B01BTZFSTC', 'Samsung Galaxy S7 EDGE Smartphone (5,5 Zoll (13,9 cm) Touch-Display, 32GB interner Speicher, Android OS) schwarz', '467.95', 'https://images-eu.ssl-images-amazon.com/images/I/311kifl39tL._SL160_.jpg', 'EAN', 'Samsung'),
(29, 'B06XX2HX4Z', 'BQ C000268 Aquaris X Pro Smartphone (13,2 cm (5,2 Zoll), 128GB interner Speicher, 4GB RAM, 12 MP Dual Pixel Kamera, Android) schwarz/mitternächtlich-schwarz', '408.00', 'https://images-eu.ssl-images-amazon.com/images/I/41QkP13RlZL._SL160_.jpg', 'EAN', 'bq'),
(30, 'B01BCMKFZ4', 'Microsoft Lumia 650 Smartphone (5 Zoll (12,7 cm)  Touch-Display, 16 GB Speicher, Windows 10) schwarz', '229.00', 'https://images-eu.ssl-images-amazon.com/images/I/41Q6CK2KF5L._SL160_.jpg', 'EAN', 'Microsoft'),
(34, 'B00NB5XE36', 'Nokia Lumia 830 Smartphone (5 Zoll (12,7 cm) Touch-Display, 16 GB Speicher, Windows 8.1) schwarz', '209.00', 'https://images-eu.ssl-images-amazon.com/images/I/517XWklx-IL._SL160_.jpg', 'EAN', 'Microsoft'),
(35, 'B01MU9R2EN', 'Huawei P8 Lite 2017 Smartphone (13.2 cm (5.2 Zoll) Full-HD Touchscreen, 16 GB, Android 7.0) black', '199.00', 'https://images-eu.ssl-images-amazon.com/images/I/41NNN1NttFL._SL160_.jpg', 'EAN', 'Huawei'),
(36, 'B01DYN5N06', 'Huawei P9 lite Smartphone (13,2 cm (5,2 Zoll) Touch-Display, 16GB interner Speicher, 3GB RAM, Android 6) schwarz', '199.00', 'https://images-eu.ssl-images-amazon.com/images/I/41pbXl72WvL._SL160_.jpg', 'EAN', 'Huawei'),
(41, 'B01MXFV5D3', 'Honor 6X LTE Dual Sim Smartphone (14 cm (5,5 Zoll) Full HD, Touch-Display, 32 GB, Android 6.0) grau', '204.74', 'https://images-eu.ssl-images-amazon.com/images/I/413CJcUYU2L._SL160_.jpg', 'EAN', 'Honor'),
(42, 'B00G4DTOWW', 'ZTE Grand S Flex Smartphone (12,7 cm (5 Zoll) Touchscreen, 1,2GHz, 1GB RAM, 8 Megapixel Kamera, 16GB interner Speicher, Android 4.1) weiß', '108.00', 'https://images-eu.ssl-images-amazon.com/images/I/31Rbvd4rHAL._SL160_.jpg', 'EAN', 'ZTE'),
(43, 'B01K4HC7UY', 'Motorola Moto G4 Play Smartphone (12,7 cm (5 Zoll), 16 GB, Android, Dual-SIM) schwarz [Exklusiv bei Amazon]', '132.00', 'https://images-eu.ssl-images-amazon.com/images/I/41UbL9THR3L._SL160_.jpg', 'EAN', 'Motorola'),
(44, 'B073Q2D8RJ', 'Motorola Moto E4 Smartphone (12,7 cm (5 Zoll) Display, 2 GB RAM/16 GB, Android) iron grau', '137.00', 'https://images-eu.ssl-images-amazon.com/images/I/41p0Dira2uL._SL160_.jpg', 'EAN', 'Motorola');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
