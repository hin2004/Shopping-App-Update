-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2026-03-22 11:30:37
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `php_shopping app`
--

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `category`, `description`) VALUES
(1, 'Laptop Bag', 65.00, 'images/laptopbag.png', 'Bag', 'Durable and stylish laptop bag for carrying your device safely every day.'),
(2, 'Umbrella', 55.00, 'images/umbrella.png', 'Accessories', 'Compact HKMU umbrella that is lightweight, practical, and easy to carry.'),
(3, 'Folder', 65.00, 'images/folder.png', 'Stationery', 'Useful HKMU folder for keeping documents organized and protected.'),
(4, 'Water Bottle', 25.00, 'images/waterbottle.png', 'Lifestyle', 'Reusable HKMU water bottle that is convenient for study, sports, and travel.'),
(5, 'Mobile Strap', 15.00, 'images/mobilestrap.png', 'Accessories', 'Comfortable mobile strap for carrying your phone securely and conveniently.'),
(6, 'T-shirt', 77.00, 'images/t-shirt.png', 'Clothing', 'HKMU T-shirt with a modern design, suitable for daily wear and events.');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
