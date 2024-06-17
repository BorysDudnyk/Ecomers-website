-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июн 16 2024 г., 12:45
-- Версия сервера: 5.5.25
-- Версия PHP: 5.2.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `mystore`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin_table`
--

CREATE TABLE IF NOT EXISTS `admin_table` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_title` varchar(100) NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=18 ;

--
-- Дамп данных таблицы `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(8, 'ÐÐ¾Ð²Ð¸Ð½ÐºÐ¸ ÐºÐ½Ð¸Ð³'),
(9, 'Ð’Ð°Ñ Ð¼Ð¾Ð¶Ðµ Ð·Ð°Ñ†Ñ–ÐºÐ°Ð²Ð¸Ñ‚Ð¸'),
(10, 'Ð‘ÐµÑÑ‚ÑÐµÐ»ÐµÑ€Ð¸'),
(11, 'Ð’Ð¸Ð±Ñ–Ñ€ Ñ‡Ð¸Ñ‚Ð°Ñ‡Ñ–Ð²'),
(12, 'Reading Culture Publishing'),
(13, 'Ð‘Ñ–Ð·Ð½ÐµÑ'),
(14, 'Ð¡Ð°Ð¼Ð¾Ñ€Ð¾Ð·Ð²Ð¸Ñ‚Ð¾Ðº'),
(15, 'ÐÐ°Ð²Ñ‡Ð°Ð»ÑŒÐ½Ð° Ð»Ñ–Ñ‚ÐµÑ€Ð°Ñ‚ÑƒÑ€Ð°'),
(16, 'Ð†ÑÑ‚Ð¾Ñ€Ñ–Ñ'),
(17, 'Ð’ÐµÐ±Ñ€Ð¾Ð¼Ð°Ð½');

-- --------------------------------------------------------

--
-- Структура таблицы `cart_details`
--

CREATE TABLE IF NOT EXISTS `cart_details` (
  `product_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_title` varchar(100) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(4, 'ÐŸÑ€Ð¸Ð³Ð¾Ð´Ð¸'),
(5, 'Ð”ÐµÑ‚ÐµÐºÑ‚Ð¸Ð²'),
(6, 'Ð—Ð´Ð¾Ñ€Ð¾Ð²''Ñ'),
(7, 'Ð¤ÐµÐ½Ñ‚ÐµÐ·Ñ–'),
(8, 'ÐšÐ»Ð°ÑÐ¸Ñ‡Ð½Ð° Ð¿Ñ€Ð¾Ð·Ð°'),
(9, 'Ð†ÑÑ‚Ð¾Ñ€Ñ–Ñ— ÑƒÑÐ¿Ñ–Ñ…Ñƒ'),
(10, 'ÐœÐ¾Ñ‚Ð¸Ð²Ð°Ñ†Ñ–Ñ'),
(12, 'Ð‘Ð¾ÐµÐ²Ð¸Ðº'),
(13, 'Ð˜ÑÐµÐºÐ°Ð¹');

-- --------------------------------------------------------

--
-- Структура таблицы `orders_pending`
--

CREATE TABLE IF NOT EXISTS `orders_pending` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(110) NOT NULL AUTO_INCREMENT,
  `product_title` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `category_id` int(110) NOT NULL,
  `brand_id` int(110) NOT NULL,
  `product_image1` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=18 ;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keywords`, `category_id`, `brand_id`, `product_image1`, `product_image2`, `product_image3`, `product_price`, `date`, `status`) VALUES
(3, 'ÐšÐ½Ð¸Ð³Ð° ÐÐ¿Ñ‚ÐµÐºÐ° Ð°Ñ€Ð¾Ð¼Ð°Ñ‚Ñ–Ð². Ð¢Ð¾Ð¼ 4', 'Ð›ÑŽÑ†Ñ– ÐÐ»ÑŒÐ²ÐµÐ½ÑˆÑ‚Ð°Ð¹Ð½ Ð¼Ð°Ð»Ð¾ Ð½Ðµ ÐºÑ–Ð½Ñ‡Ð¸ÐºÐ°Ð¼Ð¸ Ð¿Ð°Ð»ÑŒÑ†Ñ–Ð² Ð²Ñ–Ð´Ñ‡ÑƒÐ²Ð°Ñ”, Ñ‰Ð¾ Ñ‰Ð¾ÑÑŒ Ð½Ðµ Ñ‚Ð°Ðº Ñ–Ð· Ð·Ð°Ð¿Ñ€Ð¾ÑˆÐµÐ½Ð½ÑÐ¼, ÑÐºÐµ Ð²Ð¾Ð½Ð° Ñ‚Ñ€Ð¸Ð¼Ð°Ñ” Ð² Ñ€ÑƒÐºÐ°Ñ….', 'ÐŸÑ€Ð¸Ð³Ð¾Ð´Ð½Ð¸Ñ†ÑŒÐºÑ– Ñ€Ð¾Ð¼Ð°Ð½Ð¸ Ð´Ð»Ñ Ð´Ñ–Ñ‚ÐµÐ¹,Ð¤Ð°Ð½Ñ‚Ð°ÑÑ‚Ð¸ÐºÐ°,Ð†ÑÑ‚Ð¾Ñ€Ñ–Ñ— Ð¿Ñ€Ð¾ Ð´Ñ€ÑƒÐ¶Ð±Ñƒ, Ð²Ñ–Ð´Ð½Ð¾ÑÐ¸Ð½Ð¸ Ñ‚Ð° ÐºÐ¾Ñ…Ð°Ð½Ð½Ñ,ÐŸÑ€Ð¸Ð³Ð¾Ð´Ð½Ð¸Ñ†ÑŒÐºÑ– Ñ€Ð¾Ð¼Ð°Ð½Ð¸ Ð´Ð»Ñ Ð´Ñ–Ñ‚ÐµÐ¹.', 7, 10, 'Book Pharmacy of aromas. Volume 4. Tournament of a thousand talents genre1.jpg', 'Book Pharmacy of aromas. Volume 4. Tournament of a thousand talents genre2.jpg', 'Book Pharmacy of aromas. Volume 4. Tournament of a thousand talents genre3.jpg', '325', '2024-06-15 18:57:00', 'true'),
(4, 'Ð¯ Ð±Ð°Ñ‡Ñƒ, Ð’Ð°Ñ Ñ†Ñ–ÐºÐ°Ð²Ð¸Ñ‚ÑŒ Ð¿Ñ–Ñ‚ÑŒÐ¼Ð°', 'ÐšÐ¸Ñ—Ð²ÑÑŒÐºÐ¾Ð³Ð¾ ÐºÑ€Ð¸Ð¼Ñ–Ð½Ð°Ð»ÑŒÐ½Ð¾Ð³Ð¾ Ð¿ÑÐ¸Ñ…Ð¾Ð»Ð¾Ð³Ð° ÐÐ½Ð´Ñ€Ñ–Ñ Ð“Ð°Ð¹ÑÑ‚ÐµÑ€Ð° Ð²Ñ–Ð´Ð¿Ñ€Ð°Ð²Ð»ÑÑŽÑ‚ÑŒ ÐºÐ¾Ð½ÑÑƒÐ»ÑŒÑ‚Ð°Ð½Ñ‚Ð¾Ð¼ Ñƒ Ð±Ð¾Ð³Ð¾Ð¼ Ð·Ð°Ð±ÑƒÑ‚Ðµ ÑÐµÐ»Ð¸Ñ‰Ðµ Ð‘ÑƒÑÑŒÐºÑ–Ð² Ð¡Ð°Ð´.', 'ÐŸÑÐ¸Ñ…Ð¾Ð»Ð¾Ð³Ñ–Ñ‡Ð½Ð¸Ð¹ Ñ‚Ñ€Ð¸Ð»ÐµÑ€,Ð’Ð¸Ð±Ñ–Ñ€ Ñ‡Ð¸Ñ‚Ð°Ñ‡Ñ–Ð².', 5, 9, 'I see you are interested in the dark1.jpg', 'I see you are interested in the dark2.jpg', 'I see you are interested in the dark3.jpg', '250', '2024-02-20 18:31:22', 'true'),
(5, 'Ð‘ÑƒÑ‚Ð¸ Ð¾ÐºÐµÐ¹', 'ÐÐ°Ð¼ Ð²Ð°Ð¶Ð»Ð¸Ð²Ð¾ Â«Ð±ÑƒÑ‚Ð¸ Ð¾ÐºÐµÐ¹Â». ÐÐ´Ð¶Ðµ Ð²Ñ–Ð´ Ð¿ÑÐ¸Ñ…Ñ–Ñ‡Ð½Ð¾Ð³Ð¾ Ð·Ð´Ð¾Ñ€Ð¾Ð²â€™Ñ Ð·Ð°Ð»ÐµÐ¶Ð¸Ñ‚ÑŒ Ð½Ð°Ñˆ Ñ„Ñ–Ð·Ð¸Ñ‡Ð½Ð¸Ð¹ ÑÑ‚Ð°Ð½.', 'Ð¡Ð¿Ñ–Ð²Ð·Ð°Ð»ÐµÐ¶Ð½Ñ–ÑÑ‚ÑŒ,Ð”ÐµÐ¿Ñ€ÐµÑÑ–Ñ,ÐžÑÐ½Ð¾Ð²Ð¸ Ð¿ÑÐ¸Ñ…Ð¾Ð»Ð¾Ð³Ñ–Ñ—. Ð—Ð°Ð³Ð°Ð»ÑŒÐ½Ñ– Ð¿Ñ€Ð°Ñ†Ñ–,ÐŸÑ€Ð¸ÐºÐ»Ð°Ð´Ð½Ð° Ð¿ÑÐ¸Ñ…Ð¾Ð»Ð¾Ð³Ñ–Ñ,Ð©Ð°ÑÑ‚Ñ,Ð’Ð¸Ð±Ñ–Ñ€ Ñ‡Ð¸Ñ‚Ð°Ñ‡Ñ–Ð².', 6, 14, 'The book Being okay. What is important to know about mental health1.jpg', 'The book Being okay. What is important to know about mental health2.jpg', 'The book Being okay. What is important to know about mental health3.jpg', '221', '2024-06-15 18:58:09', 'true'),
(6, 'Ð§ÑƒÐ´Ð¾Ð²Ðµ Ñ‡ÑƒÐ´Ð¾Ð²Ð¸ÑÑŒÐºÐ¾ Ñ– Ð¿Ð¾Ð³Ð°Ð½Ðµ Ð¿Ð¾Ð³Ð°Ð½Ð¸ÑÑŒÐºÐ¾', 'ÐŸÑ€Ð¸Ð³Ð¾Ð´Ð¸ Ð§ÑƒÐ´Ð¾Ð²Ð¾Ð³Ð¾ Ð§ÑƒÐ´Ð¾Ð²Ð¸ÑÑŒÐºÐ° Ñ– Ð´Ñ–Ð²Ñ‡Ð¸Ð½ÐºÐ¸ Ð¡Ð¾Ð½Ñ– Ñ‚Ñ€Ð¸Ð²Ð°ÑŽÑ‚ÑŒ!', 'ÐŸÑ€Ð¸Ð³Ð¾Ð´Ð½Ð¸Ñ†ÑŒÐºÑ– Ñ€Ð¾Ð¼Ð°Ð½Ð¸ Ð´Ð»Ñ Ð´Ñ–Ñ‚ÐµÐ¹,Ð”Ð¸Ñ‚ÑÑ‡Ñ– ÐºÐ°Ð·ÐºÐ¸ Ñ– Ð¼Ñ–Ñ„Ð¸,Ð¤ÐµÐ½Ñ‚ÐµÐ·Ñ–,Ð’Ð¸Ð±Ñ–Ñ€ Ñ‡Ð¸Ñ‚Ð°Ñ‡Ñ–Ð².', 7, 11, 'A wonderful monster and a bad bastard1.jpg', 'A wonderful monster and a bad bastard2.jpg', 'A wonderful monster and a bad bastard3.jpg', '240', '2024-02-20 19:11:47', 'true'),
(7, 'Ð’Ð°Ð»ÐµÑ€''ÑÐ½ ÐŸÑ–Ð´Ð¼Ð¾Ð³Ð¸Ð»ÑŒÐ½Ð¸Ð¹', 'Ð£ Ð´Ð¾Ð±Ñ–Ñ€Ñ†Ñ– â€” Ñ‚Ð²Ð¾Ñ€Ñ‡Ñ–ÑÑ‚ÑŒ Ð’. ÐŸÑ–Ð´Ð¼Ð¾Ð³Ð¸Ð»ÑŒÐ½Ð¾Ð³Ð¾, ÑÐºÐ° Ð¼Ñ–ÑÑ‚Ð¸Ñ‚ÑŒ ÐºÑ€Ð°Ñ‰Ñ– Ð·Ñ€Ð°Ð·ÐºÐ¸ ÑƒÐºÑ€Ð°Ñ—Ð½ÑÑŒÐºÐ¾Ñ— Ð¿Ñ€Ð¾Ð·Ð¸.', 'Ð›Ñ–Ñ‚ÐµÑ€Ð°Ñ‚ÑƒÑ€Ð°,ÐšÐ»Ð°ÑÐ¸Ñ‡Ð½Ð° Ð¿Ñ€Ð¾Ð·Ð°,ÐšÐ»Ð°ÑÐ¸Ñ‡Ð½Ð° Ð¿Ñ€Ð¾Ð·Ð°.', 8, 9, 'Valerian Pidmohylyny. Selected works1.jpg', 'Valerian Pidmohylyny. Selected works2.jpg', 'Valerian Pidmohylyny. Selected works3.jpg', '240', '2024-06-14 05:01:35', 'true'),
(8, 'Netflix Ñ– ÐºÑƒÐ»ÑŒÑ‚ÑƒÑ€Ð° Ñ–Ð½Ð½Ð¾Ð²Ð°Ñ†Ñ–Ð¹', ' Ð”Ð¾ Netflix Ñ‰Ð¾Ñ€Ð¾ÐºÑƒ Ñ…Ð¾Ñ‡Ðµ Ð´Ð¾Ð»ÑƒÑ‡Ð¸Ñ‚Ð¸ÑÑ Ð±ÐµÐ·Ð»Ñ–Ñ‡ Ñ„Ð°Ñ…Ñ–Ð²Ñ†Ñ–Ð², Ð° Ð²Ð¶Ðµ ÑÑ„Ð¾Ñ€Ð¼Ð¾Ð²Ð°Ð½Ð° ÐºÐ¾Ð¼Ð°Ð½Ð´Ð° â€” Ð»Ð¾ÑÐ»ÑŒÐ½Ð°, Ñ‰Ð°ÑÐ»Ð¸Ð²Ð° Ñ‚Ð° ÐµÑ„ÐµÐºÑ‚Ð¸Ð²Ð½Ð°.', 'Ð†ÑÑ‚Ð¾Ñ€Ñ–Ñ— ÑƒÑÐ¿Ñ–Ñ…Ñƒ,Ð†ÑÑ‚Ð¾Ñ€Ñ–Ñ— ÐºÐ¾Ð¼Ð¿Ð°Ð½Ñ–Ð¹,ÐšÐ½Ð¸Ð³Ð¸ Ð¿Ñ€Ð¾ Ñ–Ð½Ð½Ð¾Ð²Ð°Ñ†Ñ–Ñ—,ÐœÐ¾Ð´ÑƒÐ»ÑŒ Ð›ÑŽÐ´Ð¸,Ð’Ð¸Ð±Ñ–Ñ€ Ñ‡Ð¸Ñ‚Ð°Ñ‡Ñ–Ð²,Ð†ÑÑ‚Ð¾Ñ€Ñ–Ñ— ÑƒÑÐ¿Ñ–Ñ…Ñƒ,ÐšÐ½Ð¸Ð³Ð¸ Ð´Ð»Ñ Ð¿Ñ–Ð´Ð¿Ñ€Ð¸Ñ”Ð¼Ð½Ð¸Ñ†ÑŒÐºÐ¾Ð³Ð¾ Ð¼Ð¸ÑÐ»ÐµÐ½Ð½Ñ,ÐšÐ½Ð¸Ð³Ð¸ Ð¿Ñ', 9, 13, 'Netflix and the culture of innovation1.jpg', 'Netflix and the culture of innovation2.jpg', 'Netflix and the culture of innovation3.jpg', '265', '2024-02-20 19:28:50', 'true'),
(9, 'ÐšÐ°Ñ„Ðµ Ð½Ð° ÐºÑ€Ð°ÑŽ ÑÐ²Ñ–Ñ‚Ñƒ', 'Ð—ÑƒÐ¿Ð¸Ð½Ñ–Ñ‚ÑŒÑÑ. ÐŸÐ¾ÑÑ‚Ð°Ð²Ñ‚Ðµ Ð½Ð° Ð¿Ð°ÑƒÐ·Ñƒ Ñ‰Ð¾Ð´ÐµÐ½Ð½Ñƒ Ð¼ÐµÑ‚ÑƒÑˆÐ½ÑŽ, Ð²Ð¸Ñ€Ð²Ñ–Ñ‚ÑŒÑÑ Ð· Ñ—Ñ— Ñ‚ÐµÐ½ÐµÑ‚ Ñ– Ð·Ð°Ð·Ð¸Ñ€Ð½Ñ–Ñ‚ÑŒ Ð´Ð¾ ÐºÐ°Ñ„Ðµ Ð½Ð° ÐºÑ€Ð°ÑŽ ÑÐ²Ñ–Ñ‚Ñƒ. ', 'ÐœÐµÑ‚Ð°. ÐœÑ€Ñ–Ñ,ÐœÐ¾Ñ‚Ð¸Ð²Ð°Ñ†Ñ–Ñ,Ð£ÑÐ¿Ñ–Ñ…,Ð¡ÑƒÑ‡Ð°ÑÐ½Ð° Ð¿Ñ€Ð¾Ð·Ð°, ÐšÐ½Ð¸Ð³Ð¸ Ð¿Ñ€Ð¾ Ð½Ð°Ñ‚Ñ…Ð½ÐµÐ½Ð½Ñ,ÐšÐ½Ð¸Ð³Ð¸ Ð´Ð»Ñ Ð½Ð°Ñ‚Ñ…Ð½ÐµÐ½Ð½Ñ,ÐšÐ½Ð¸Ð³Ð¸ Ð´Ð»Ñ Ñ€Ð¾Ð·Ð²Ð¸Ñ‚ÐºÑƒ ÐºÑ€ÐµÐ°Ñ‚Ð¸Ð²Ð½Ð¾ÑÑ‚Ñ–,ÐŸÑ€Ð°ÐºÑ‚Ð¸Ñ‡Ð½Ñ– ÐºÐ½Ð¸Ð³Ð¸,Ð‘ÐµÑÑ‚ÑÐµÐ»ï', 4, 12, 'The book Cafe at the edge of the world.1.jpg', 'The book Cafe at the edge of the world.2.jpg', 'The book Cafe at the edge of the world.3.jpg', '176', '2024-06-15 18:58:49', 'true'),
(10, 'Ð“Ð°Ñ€Ñ€Ñ– ÐŸÐ¾Ñ‚Ñ‚ÐµÑ€ Ñ– Ñ„Ñ–Ð»Ð¾ÑÐ¾Ñ„ÑÑŒÐºÐ¸Ð¹ ÐºÐ°Ð¼Ñ–Ð½ÑŒ', 'ÐŸÐµÑ€ÑˆÐ° Ñ‡Ð°ÑÑ‚Ð¸Ð½Ð° Ð¿Ñ€Ð¸Ð³Ð¾Ð´ Ð“Ð°Ñ€Ñ€Ñ– ÐŸÐ¾Ñ‚Ñ‚ÐµÑ€Ð° â€” ÐºÐ½Ð¸Ð³Ð° â„–1 Ð´Ð»Ñ Ð¼Ð°Ð»ÐµÐ½ÑŒÐºÐ¸Ñ… Ñ‡Ð¸Ñ‚Ð°Ñ‡Ñ–Ð².', 'Ð¤ÐµÐ½Ñ‚ÐµÐ·Ñ–,Ð›Ñ–Ñ‚ÐµÑ€Ð°Ñ‚ÑƒÑ€Ð°,Ð¡ÑƒÑ‡Ð°ÑÐ½Ðµ Ñ„ÐµÐ½Ñ‚ÐµÐ·Ñ–,Ð’Ð¸Ð±Ñ–Ñ€ Ñ‡Ð¸Ñ‚Ð°Ñ‡Ñ–Ð².', 7, 15, 's Stone1.jpg', 's Stone2.jpg', 's Stone3.jpg', '320', '2024-02-20 20:12:43', 'true'),
(11, '501 Ñ„Ð°ÐºÑ‚, ÑÐºÐ¸Ð¹ Ñ‚Ñ€ÐµÐ±Ð° Ð·Ð½Ð°Ñ‚Ð¸', 'Ð†ÑÑ‚Ð¾Ñ€Ñ–Ñ Ð£ÐºÑ€Ð°Ñ—Ð½Ð¸ Ð²Ñ–Ð´ Ð¼Ð°Ð¼Ð¾Ð½Ñ‚Ñ–Ð² Ð´Ð¾ ÑÑŒÐ¾Ð³Ð¾Ð´ÐµÐ½Ð½Ñ Ñƒ 501 Ñ„Ð°ÐºÑ‚Ñ–? Ð§Ð¾Ð¼Ñƒ Ð± Ñ– Ð½Ñ–!', 'ÐšÐ½Ð¸Ð³Ð¸ Ð· Ñ–ÑÑ‚Ð¾Ñ€Ñ–Ñ— Ð´Ð»Ñ Ð´Ñ–Ñ‚ÐµÐ¹,Ð£ÐºÑ€Ð°Ñ—Ð½Ð°.', 9, 16, '501 facts you need to know from... the history of Ukraine1.jpg', '501 facts you need to know from... the history of Ukraine2.jpg', '501 facts you need to know from... the history of Ukraine3.jpg', '427', '2024-06-15 18:59:58', 'true'),
(15, 'Ð¢Ñ–Ð»ÑŒÐºÐ¸ Ñ Ð²Ñ–Ð·ÑŒÐ¼Ñƒ Ð½Ð¾Ð²Ð¸Ð¹ Ñ€Ñ–Ð²ÐµÐ½ÑŒ', 'ÐžÐ´Ð½Ð¾Ð³Ð¾ Ð´Ð½Ñ Ñƒ ÑÐ²Ñ–Ñ‚Ñ– Ð²Ñ–Ð´ÐºÑ€Ð¸Ð²ÑÑ Ð¿Ð¾Ñ€Ñ‚Ð°Ð», Ñ‰Ð¾ Ð²ÐµÐ´Ðµ Ñƒ Ð¿Ð°Ñ€Ð°Ð»ÐµÐ»ÑŒÐ½Ñ– Ð²Ð¸Ð¼Ñ–Ñ€Ð¸. Ð¦Ðµ Ð¿Ñ€Ð¾Ð±ÑƒÐ´Ð¸Ð»Ð¾ Ð¼Ð¾Ð½ÑÑ‚Ñ€Ñ–Ð² Ð¿Ñ–Ð´Ð·ÐµÐ¼ÐµÐ»Ð»Ñ, ÑÐºÑ– Ð¼Ð¾Ð³Ð»Ð¸ Ð± Ð·Ð°Ñ…Ð¾Ð¿Ð¸Ñ‚Ð¸ Ð½Ð°ÑˆÑƒ Ð¿Ð»Ð°Ð½ÐµÑ‚Ñƒ. ', 'Ð¢Ñ–Ð»ÑŒÐºÐ¸ Ñ Ð²Ñ–Ð·ÑŒÐ¼Ñƒ Ð½Ð¾Ð²Ð¸Ð¹ Ñ€Ñ–Ð²ÐµÐ½ÑŒ,Solo Leveling', 12, 17, 'Solo Leveling1.jpg', 'Solo Leveling2.jpg', 'Solo Leveling3.jpg', '203', '2024-06-15 19:01:03', 'true'),
(16, 'Ð Ð¾Ð·ÐºÑ€Ð°Ð´Ð°Ñ‡ Ð³Ñ€Ð¾Ð±Ð½Ð¸Ñ†ÑŒ', 'Ð‘Ð¾Ð¶ÐµÑÑ‚Ð²ÐµÐ½Ð½Ñ– Ð³Ñ€Ð¾Ð±Ð½Ð¸Ñ†Ñ– Ñƒ ÑÑƒÑ‡Ð°ÑÐ½Ð¾Ð¼Ñƒ ÑÐ²Ñ–Ñ‚Ñ–. Ð›ÑŽÐ´Ð¸, ÑÐºÑ– Ð²Ð¸ÐºÐ¾Ñ€Ð¸ÑÑ‚Ð¾Ð²ÑƒÑŽÑ‚ÑŒ Ð·Ð´Ñ–Ð±Ð½Ð¾ÑÑ‚Ñ– Ð³ÐµÑ€Ð¾Ñ—Ð² Ð·Ð° Ð´Ð¾Ð¿Ð¾Ð¼Ð¾Ð³Ð¾ÑŽ Ñ€ÐµÐ»Ñ–ÐºÐ²Ñ–Ð¹ Ñ‚Ð° Ð»ÑŽÐ´Ð¸, ÑÐºÑ– Ð¾Ñ‚Ñ€Ð¸Ð¼Ð°Ð»Ð¸ Ð±Ð°Ð³Ð°Ñ‚ÑÑ‚Ð²Ð°. Ð ', 'Tomb Raider King,Ð Ð¾Ð·ÐºÑ€Ð°Ð´Ð°Ñ‡ Ð³Ñ€Ð¾Ð±Ð½Ð¸Ñ†ÑŒ', 12, 17, 'Tomb Raider King1.jpg', 'Tomb Raider King2.jpg', 'Tomb Raider King3.jpg', '411', '2024-06-15 19:07:55', 'true'),
(17, 'Ð¯ ÑÑ‚Ð°Ð² Ð³Ñ€Ð°Ñ„ÑÑŒÐºÐ¸Ð¼ Ð²Ð¸Ñ€Ð¾Ð´ÐºÐ¾Ð¼', 'Ð¯ Ð¾Ð¿Ñ€Ð¸Ñ‚Ð¾Ð¼Ð½Ñ–Ð² Ñƒ Ñ€Ð¾Ð¼Ð°Ð½Ñ–, Ñƒ Ñ‚Ñ–Ð»Ñ– Ð¼Ð¾Ð»Ð¾Ð´Ð¾Ð³Ð¾ ÑÐ¿Ð°Ð´ÐºÐ¾Ñ”Ð¼Ñ†Ñ Ð³Ñ€Ð°Ñ„ÑÑ‚Ð²Ð°, ÑƒÑÐ»Ð°Ð²Ð»ÐµÐ½Ð¾Ð³Ð¾ Ð½Ðµ Ð±ÐµÐ· Ð´Ð¾Ð¿Ð¾Ð¼Ð¾Ð³Ð¸ Ð¹Ð¾Ð³Ð¾ Ð¶Ð¾Ñ€ÑÑ‚Ð¾ÐºÐ¸Ñ… Ð²Ð¸Ñ‚Ñ–Ð²Ð¾Ðº.', 'Ð¯ ÑÑ‚Ð°Ð² Ð³Ñ€Ð°Ñ„ÑÑŒÐºÐ¸Ð¼ Ð²Ð¸Ñ€Ð¾Ð´ÐºÐ¾Ð¼', 13, 17, 's bastard1.jpg', 's bastard2.jpg', 's bastard3.jpg', '130', '2024-06-15 19:20:38', 'true');

-- --------------------------------------------------------

--
-- Структура таблицы `user_orders`
--

CREATE TABLE IF NOT EXISTS `user_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `amount_due` int(255) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `total_products` int(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_status` varchar(255) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `user_payments`
--

CREATE TABLE IF NOT EXISTS `user_payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `user_table`
--

CREATE TABLE IF NOT EXISTS `user_table` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` int(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
