-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 27, 2023 at 12:18 PM
-- Server version: 8.0.11
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pilarmedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `pengirim` varchar(255) NOT NULL,
  `penerima` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `priority` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `uuid`, `pengirim`, `penerima`, `alamat`, `priority`, `createdAt`, `updatedAt`) VALUES
(2, '97175736-1fa5-4d62-9cf6-a907830239f0', 'pengirim2', 'penerima2', 'alamat2', 2, '2023-08-27 11:36:28', '2023-08-27 11:36:28'),
(3, '3b6b548f-edd0-493d-ac84-a42d656e3db6', 'pengirim3', 'penerima3', 'alamat3', 3, '2023-08-27 11:57:42', '2023-08-27 11:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('_DaNkYnTDF0AAUPPbnzrRBAIderL2_vF', '2023-08-28 10:35:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-27 10:35:42', '2023-08-27 10:35:42'),
('0mAeC4_nciTblDwA0cLbVOSlWlgh8UjD', '2023-08-28 11:59:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-27 11:59:48', '2023-08-27 11:59:48'),
('2dPRx-QaZeRGq8CXjjLSaMnr5YJ04FlI', '2023-08-28 10:11:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-27 10:11:33', '2023-08-27 10:11:33'),
('5EnQ-5frInFZLiyLgO9uxiU478_beDnG', '2023-08-28 10:11:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-27 10:11:32', '2023-08-27 10:11:32'),
('ATD5cCLvn1VDH6ycYUSt4Ll_j3Kj1Vp8', '2023-08-28 11:57:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-27 11:57:42', '2023-08-27 11:57:42'),
('dLVdp_AL7VpMleg9ALU-8X6PMFyLozJ-', '2023-08-28 10:32:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-27 10:32:37', '2023-08-27 10:32:37'),
('f1FM6m9z_StvCa4LXnh5A8FQayCgm0xT', '2023-08-28 10:32:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-27 10:32:24', '2023-08-27 10:32:24'),
('Gjpsr61x3i75zxbXhd4wbr86AR7HNe4u', '2023-08-28 10:34:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-27 10:34:28', '2023-08-27 10:34:28'),
('gONRe62s1NHHKT7P9RcHqTSpPEZGjEQt', '2023-08-28 11:37:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"2bd0fd80-37b6-44ed-a069-522e59eaed32\"}', '2023-08-27 07:21:00', '2023-08-27 11:37:24'),
('GWA2MKVMBJKuH0v_lNwChXW_4q7mUxWA', '2023-08-28 10:36:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-27 10:36:17', '2023-08-27 10:36:17'),
('hqC9DJXBHbYtvCCPX6ceSLV0wk7r3Fbv', '2023-08-28 07:11:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-27 07:11:15', '2023-08-27 07:11:29'),
('LsiwjQxuGcZ9JZNt0HsZdo7sFOs4Ejnw', '2023-08-28 10:29:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-27 10:29:31', '2023-08-27 10:29:31'),
('N8j2acBRNeXpIvyCFBZw74QQH3c1LbM2', '2023-08-28 10:29:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-27 10:29:31', '2023-08-27 10:29:31'),
('nv4ra8jAv3-21i1yeJaaUq6uXsNR1VOU', '2023-08-28 10:33:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-27 10:33:11', '2023-08-27 10:33:11'),
('nZmxH-astXjmpBnEoDXlDDFFwx9YAcfN', '2023-08-28 10:33:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-27 10:33:17', '2023-08-27 10:33:17'),
('RN6LrLSwxuaaPCGM5QJjimARdq4D4RjS', '2023-08-28 10:32:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-27 10:32:09', '2023-08-27 10:32:09'),
('ubSH10KSrNDrDFCOSYQ9g9Pfihlme9yU', '2023-08-28 10:35:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-27 10:35:52', '2023-08-27 10:35:52'),
('UqtN-gneia334AAKXAvzwZlM7UG2KZ2S', '2023-08-28 10:11:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"9f356260-bd7f-4640-9a8a-3d17f32695e9\"}', '2023-08-27 10:11:59', '2023-08-27 10:11:59'),
('Uutf87hcrB41rAXJpJuLFaaQ8l3WP_av', '2023-08-28 06:08:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-27 06:08:15', '2023-08-27 06:08:15'),
('XW557RigC-jWbKa7GYGWcPUrkXVFYoAw', '2023-08-28 12:02:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"2bd0fd80-37b6-44ed-a069-522e59eaed32\"}', '2023-08-27 10:32:37', '2023-08-27 12:02:55'),
('z7oOqgfmuiyV9LGJLwBrTRvSbWXzgviC', '2023-08-28 10:35:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-27 10:35:22', '2023-08-27 10:35:22'),
('zgTATS4oT9Am-k6kym8ujMTTMFIV_Lnz', '2023-08-28 10:11:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-08-27 10:11:59', '2023-08-27 10:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(2, '2bd0fd80-37b6-44ed-a069-522e59eaed32', 'admin', 'admin@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$Vsk26T9os3N0pdKNIpQ8mA$13oD1VWGQ4TkyzX9M6ruDKfEDddxtGeZZgfYHZpioW8', 'admin', '2023-08-27 06:36:56', '2023-08-27 07:04:48'),
(3, '35405a42-f529-496d-8484-35c3589c2515', 'user', 'user@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$1XKW1dDc2aXcZMzrg4mycw$LRwLqxAtKH7HOTtUjYduC1szrSXs9IqvSCkKYP4eYOw', 'user', '2023-08-27 06:37:11', '2023-08-27 07:05:08'),
(5, '9f356260-bd7f-4640-9a8a-3d17f32695e9', 'gani', 'gani@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$gT5SUC5XRf1gEE+7IMAgDQ$IkTSd9xn9iThHG8C5BnLVqJd+O7BjsnovBz0pgF4oHU', 'user', '2023-08-27 07:08:12', '2023-08-27 07:08:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
