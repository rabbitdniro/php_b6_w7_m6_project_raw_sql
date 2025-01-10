-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 10, 2025 at 11:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `author_name`, `created_at`, `updated_at`) VALUES
(2, 'Abdul Rahman', '2025-01-10 21:06:36', '2025-01-10 21:17:14'),
(3, 'Jane Smith', '2025-01-10 21:06:36', '2025-01-10 21:06:36'),
(4, 'Alice Johnson', '2025-01-10 21:06:36', '2025-01-10 21:06:36'),
(5, 'Robert Brown', '2025-01-10 21:06:36', '2025-01-10 21:06:36'),
(6, 'Emily Davis', '2025-01-10 21:06:36', '2025-01-10 21:06:36'),
(7, 'Mahamud Hasan', '2025-01-10 21:06:36', '2025-01-10 21:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `body`, `author_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'My Updated First Blog', 'My First Blog Body Content...', 2, 2, '2025-01-10 21:31:46', '2025-01-10 21:40:08'),
(2, 'How To Do Tech Yourself', 'Body content of how to do tech yourself...', 5, 5, '2025-01-10 21:52:57', '2025-01-10 22:19:04'),
(3, 'Look Great in Summer', 'Body content of look great in summer...', 3, 4, '2025-01-10 21:52:57', '2025-01-10 21:52:57'),
(4, '10 Tips for Budget Travel', 'Body content of 10 tips for budget travel...', 4, 5, '2025-01-10 21:52:57', '2025-01-10 21:52:57'),
(5, 'Learn These Programming Languages', 'Body content of learn programming...', 5, 6, '2025-01-10 21:52:57', '2025-01-10 21:52:57'),
(6, 'Best Tips on Convincing Your Manager', 'Body content of convincing your manager', 7, 7, '2025-01-10 21:52:57', '2025-01-10 21:52:57'),
(7, '15 Tips to Manage Your Day', 'Body content of manage your day...', 6, 3, '2025-01-10 21:52:57', '2025-01-10 21:52:57');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(2, 'Health & Wellness', '2025-01-10 21:06:58', '2025-01-10 21:06:58'),
(3, 'Lifestyle', '2025-01-10 21:06:58', '2025-01-10 21:06:58'),
(4, 'Recipes', '2025-01-10 21:06:58', '2025-01-10 21:24:23'),
(5, 'Education', '2025-01-10 21:06:58', '2025-01-10 21:06:58'),
(6, 'Uncategorized', '2025-01-10 21:06:58', '2025-01-10 21:06:58'),
(7, 'Infotainment', '2025-01-10 21:23:52', '2025-01-10 21:23:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blogs_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
