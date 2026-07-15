-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.3 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for funthai_db
CREATE DATABASE IF NOT EXISTS `funthai_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `funthai_db`;

-- Dumping structure for table funthai_db.table_quiz
CREATE TABLE IF NOT EXISTS `table_quiz` (
  `quiz_id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_a` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_b` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_c` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_d` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct_option` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table funthai_db.table_quiz: ~4 rows (approximately)
INSERT INTO `table_quiz` (`quiz_id`, `category`, `question_text`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_option`) VALUES
	(1, 'Fruit', 'What is the meaning of "กล้วย" (Kluay)?', 'Apple', 'Banana', 'Orange', 'Watermelon', 'B'),
	(2, 'Fruit', 'How do you pronounce Apple in Thai?', 'Som', 'Ma-muang', 'Aep-bpeel', 'Kluay', 'C'),
	(3, 'Phrases', 'What is the Thai phrase for "Thank you"?', 'Sawasdee', 'Khob khun', 'Khor thot', 'Mai pen rai', 'B'),
	(4, 'Animals', 'Which animal is called "ช้าง" (Chaang)?', 'Cat', 'Dog', 'Bird', 'Elephant', 'D');

-- Dumping structure for table funthai_db.table_scores
CREATE TABLE IF NOT EXISTS `table_scores` (
  `score_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int NOT NULL,
  `total_questions` int NOT NULL,
  `date_taken` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table funthai_db.table_scores: ~2 rows (approximately)
INSERT INTO `table_scores` (`score_id`, `username`, `category`, `score`, `total_questions`, `date_taken`) VALUES
	(1, 'Muiz', 'Fruit', 2, 2, '2026-07-14 18:20:18'),
	(2, 'Hakim', 'Phrases', 1, 1, '2026-07-14 18:20:18'),
	(3, 'Guest', 'General', 0, 0, '2026-07-15 04:29:46'),
	(4, 'vuvu', 'Fruit', 0, 2, '2026-07-15 04:29:46'),
	(5, 'vuvu', 'Fruit', 0, 2, '2026-07-15 04:29:58'),
	(6, 'Guest', 'General', 0, 0, '2026-07-15 04:29:58'),
	(7, 'vuvu', 'Fruit', 0, 2, '2026-07-15 04:30:12'),
	(8, 'Guest', 'General', 0, 0, '2026-07-15 04:30:12'),
	(9, 'vuvu', 'Fruit', 0, 2, '2026-07-15 04:30:25'),
	(10, 'Guest', 'General', 0, 0, '2026-07-15 04:30:25'),
	(11, 'vuvu', 'Fruit', 0, 2, '2026-07-15 04:30:42'),
	(12, 'Guest', 'General', 0, 0, '2026-07-15 04:30:42'),
	(13, 'Guest', 'General', 0, 0, '2026-07-15 04:31:11'),
	(14, 'vuvu', 'Fruit', 0, 2, '2026-07-15 04:31:11'),
	(15, 'vuvu', 'Fruit', 0, 2, '2026-07-15 04:33:02'),
	(16, 'Guest', 'General', 0, 0, '2026-07-15 04:33:02'),
	(17, 'vuvu', 'Fruit', 0, 2, '2026-07-15 04:33:40'),
	(18, 'Guest', 'General', 0, 0, '2026-07-15 04:33:40'),
	(19, 'Guest', 'General', 0, 0, '2026-07-15 04:42:04'),
	(20, 'vuvu', 'Fruit', 0, 2, '2026-07-15 04:42:04'),
	(21, 'vuvu', 'Fruit', 2, 2, '2026-07-15 04:42:22'),
	(22, 'Guest', 'General', 0, 0, '2026-07-15 04:42:22'),
	(23, 'Guest', 'General', 0, 0, '2026-07-15 04:54:51'),
	(24, 'hua', 'Fruit', 2, 2, '2026-07-15 04:54:51'),
	(25, 'hua', 'Fruit', 2, 2, '2026-07-15 05:01:39'),
	(26, 'Guest', 'General', 0, 0, '2026-07-15 05:01:39'),
	(27, 'farah', 'Fruit', 1, 2, '2026-07-15 07:16:30'),
	(28, 'Guest', 'General', 0, 0, '2026-07-15 07:16:30'),
	(29, 'Guest', 'General', 0, 0, '2026-07-15 07:16:51'),
	(30, 'farah', 'Fruit', 2, 2, '2026-07-15 07:16:51');

-- Dumping structure for table funthai_db.table_users
CREATE TABLE IF NOT EXISTS `table_users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table funthai_db.table_users: ~3 rows (approximately)
INSERT INTO `table_users` (`user_id`, `username`, `created_at`) VALUES
	(1, 'Hakim', '2026-07-14 18:20:18'),
	(2, 'Muiz', '2026-07-14 18:20:18'),
	(3, 'Aisyah', '2026-07-14 18:20:18'),
	(4, 'fakiah', '2026-07-14 21:25:38'),
	(5, 'umar', '2026-07-14 21:36:29'),
	(6, 'gugu', '2026-07-14 21:49:29');

-- Dumping structure for table funthai_db.table_vocab
CREATE TABLE IF NOT EXISTS `table_vocab` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lesson_no` int NOT NULL DEFAULT '1',
  `category` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `word_thai` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pronunciation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meaning_eng` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table funthai_db.table_vocab: ~7 rows (approximately)
INSERT INTO `table_vocab` (`id`, `lesson_no`, `category`, `word_thai`, `pronunciation`, `meaning_eng`, `image_name`, `audio_name`) VALUES
	(1, 1, 'Phrases', 'สวัสดี', '(Sawasdee)', 'Hello', 'hello.jpg', 'hello.mp3'),
	(2, 1, 'Phrases', 'ขอบคุณ', '(Khob khun)', 'Thank you', 'thankyou.jpg', 'khobkhun.mp3'),
	(3, 1, 'Phrases', 'ขอโทษ', '(Khor thot)', 'Sorry', 'sorry.jpg', 'sorry.mp3'),
	(4, 1, 'Phrases', 'เท่าไหร่', '(Thao rai)', 'How much?', 'howmuch.jpg', 'thaorai.mp3'),
	(5, 2, 'Fruit', 'แอปเปิล', '(Aep-bpeel)', 'Apple', 'apple.jpg', 'apple.mp3'),
	(6, 2, 'Fruit', 'กล้วย', '(Kluay)', 'Banana', 'banana.jpg', 'banana.mp3'),
	(7, 2, 'Fruit', 'ส้ม', '(Som)', 'Orange', 'orange.jpg', 'orange.mp3'),
	(8, 2, 'Fruit', 'แตงโม', '(Taeng-mo)', 'Watermelon', 'watermelon.jpg', 'watermelon.mp3'),
	(9, 3, 'Animals', 'ช้าง', '(Chaang)', 'Elephant', 'elephant.jpg', 'elephant.mp3'),
	(10, 3, 'Animals', 'แมว', '(Maew)', 'Cat', 'cat.jpg', 'cat.mp3'),
	(11, 3, 'Animals', 'หมา', '(Maa)', 'Dog', 'dog.jpg', 'dog.mp3');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
