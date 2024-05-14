-- Adminer 4.8.1 MySQL 8.3.0 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `created_at` datetime NOT NULL,
  `author_id` int NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_idx` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `messages` (`id`, `text`, `created_at`, `author_id`, `image`) VALUES
(42,	'445435345345',	'2024-05-14 14:12:53',	1,	''),
(43,	'535353',	'2024-05-14 14:12:55',	1,	''),
(44,	'11111',	'2024-05-14 14:12:57',	1,	''),
(45,	'43242323',	'2024-05-14 14:13:42',	5,	'');

DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Users` (`id`, `name`, `created_at`, `password`, `email`) VALUES
(1,	'Katya',	'2024-05-13 17:28:21',	'b60ab8a27648700381578c0576519ab12a52295a',	'ekaterina+5@ankr.com'),
(2,	'Katya',	'2024-05-13 17:28:21',	'b60ab8a27648700381578c0576519ab12a52295a',	'ekaterina+5@ankr.com'),
(3,	'Dima',	'2024-05-13 18:05:23',	'2ecdb2d9fd189e153b6b5129559226e50384e190',	'Dima@mail.ru'),
(4,	'Dima',	'2024-05-13 18:05:23',	'2ecdb2d9fd189e153b6b5129559226e50384e190',	'Dima@mail.ru'),
(5,	'ffff',	'2024-05-14 14:13:40',	'2ecdb2d9fd189e153b6b5129559226e50384e190',	'fff@mail.ru');

-- 2024-05-14 14:25:34
