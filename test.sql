-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 24, 2024 at 07:27 AM
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
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `student_name` varchar(200) NOT NULL,
  `age` int(11) NOT NULL,
  `city` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `student_name`, `age`, `city`) VALUES
(1, 'Yahoo Baba', 25, 'Delhi'),
(2, 'Salman Khan', 24, 'Agra'),
(3, 'Shahid Kapoor', 24, 'Bhopal'),
(4, 'Juhi Chawla', 26, 'Delhi'),
(5, 'Anil Kapoor', 25, 'Mumbai'),
(6, 'Kumar Sanu', 23, 'Goa'),
(7, 'Sonu Nigam', 24, 'Mumbai'),
(8, 'Sonam Kapoor', 23, 'Goa'),
(9, 'Sharukh Khan', 26, 'Delhi'),
(10, 'Abhijeet Kumar', 25, 'Bhopal'),
(11, 'Sanjoy mahato', 24, 'PURULIYA'),
(12, 'raju murmu', 25, 'durapur'),
(13, 'ram', 24, 'kalkata'),
(14, 'Sanjoy', 24, 'PURULIYA'),
(15, 'Sanjoy', 24, 'PURULIYA');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `cid` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`cid`, `class_name`) VALUES
(1, 'B.COM'),
(2, 'B.Sc');

-- --------------------------------------------------------

--
-- Table structure for table `country_tb`
--

CREATE TABLE `country_tb` (
  `cid` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `country_tb`
--

INSERT INTO `country_tb` (`cid`, `cname`) VALUES
(1, 'India'),
(2, 'Pakistan'),
(3, 'Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` varchar(50) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `country` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `name`, `age`, `gender`, `country`) VALUES
(27, 'Sanjoy mahato', '1', 'male', 'india'),
(28, 'Sanjoy mahato', '1', 'male', 'india'),
(29, 'Sanjoy mahato', '1', 'male', 'india'),
(30, 'Sanjoy mahato', '1', 'male', 'india'),
(31, 'Sanjoy mahato', '1', 'male', 'india'),
(32, 'Sanjoy mahato', '1', 'male', 'india'),
(33, 'Sanjoy mahato', '1', 'male', 'india'),
(34, 'Sanjoy mahato', '1', 'male', 'india'),
(35, 'Sanjoy mahato', '1', 'male', 'india'),
(36, 'Sanjoy mahato', '1', 'male', 'india'),
(37, 'Sanjoy mahato', '1', 'male', 'india'),
(38, 'Sanjoy mahato', '1', 'male', 'india'),
(39, 'Sanjoy mahato', '1', 'male', 'india'),
(40, 'Sanjoy mahato', '1', 'male', 'india'),
(41, 'Sanjoy mahato', '1', 'male', 'india'),
(42, 'Sanjoy mahato', '1', 'male', 'india'),
(43, 'Sanjoy mahato', '1', 'male', 'india'),
(44, 'Sanjoy mahato', '1', 'male', 'india'),
(45, 'Sanjoy mahato', '1', 'male', 'india'),
(46, 'Sanjoy mahato', '1', 'male', 'india'),
(47, 'Sanjoy mahato', '1', 'male', 'india'),
(48, 'Sanjoy mahato', '1', 'male', 'india'),
(49, 'Sanjoy mahato', '1', 'male', 'india'),
(50, 'Sanjoy mahato', '1', 'male', 'india'),
(51, 'Sanjoy mahato', '1', 'male', 'india'),
(52, 'Sanjoy mahato', '1', 'male', 'india'),
(53, 'Sanjoy mahato', '1', 'male', 'india'),
(54, 'Sanjoy mahato', '1', 'male', 'india'),
(55, 'Sanjoy mahato', '1', 'male', 'india'),
(56, 'Sanjoy mahato', '1', 'male', 'india'),
(57, 'Sanjoy mahato', '1', 'male', 'india'),
(58, 'Sanjoy mahato', '1', 'male', 'india'),
(59, 'Sanjoy mahato', '1', 'male', 'india'),
(60, 'Sanjoy mahato', '1', 'male', 'india'),
(61, 'Sanjoy mahato', '1', 'male', 'india'),
(62, 'desi', '2', 'male', 'india'),
(63, 'desi', '13', 'female', 'india'),
(69, 'Shahid Kapoors', '11', 'male', 'india'),
(70, 'lichu ram mahato', '22', 'male', 'india'),
(75, '', '', '', ''),
(76, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lang`
--

CREATE TABLE `lang` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `language` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lang`
--

INSERT INTO `lang` (`id`, `name`, `language`) VALUES
(1, '[sanjoy]', '[]'),
(2, 'sanjoy', ''),
(3, 'desi', 'PHP,Python,C++'),
(4, 'sanjoy', 'PHP'),
(5, 'ray', 'JavaScript');

-- --------------------------------------------------------

--
-- Table structure for table `state_tb`
--

CREATE TABLE `state_tb` (
  `sid` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `country` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `state_tb`
--

INSERT INTO `state_tb` (`sid`, `sname`, `country`) VALUES
(1, 'Haryana', 1),
(2, 'Gujrat', 1),
(3, 'Uttar Pradesh', 1),
(4, 'Maharashtra', 1),
(5, 'Rajasthan', 1),
(6, 'Madhya Pradesh', 1),
(7, 'Balochistan', 2),
(8, 'Punjab', 2),
(9, 'Sindh', 2),
(10, 'Barisal', 3),
(11, 'Chittagong', 3),
(12, 'Dhaka', 3),
(13, 'Khulna', 3);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `class` int(10) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `first_name`, `last_name`, `class`, `city`) VALUES
(1, 'Yahoo', 'Baba', 1, 'Mumbai'),
(2, 'Salim', 'Khan', 2, 'Delhi'),
(3, 'Shahid', 'Kapoor', 1, 'Indore'),
(4, 'Anil', 'Kapoor', 2, 'Chandigarh'),
(5, 'Katrina', 'kaif', 1, 'Mumbai'),
(6, 'Kishor', 'Kumar', 2, 'Chennai'),
(7, 'Kumar', 'Sanu', 1, 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`) VALUES
(1, 'sanju', 'Baba'),
(2, 'Salman', 'Khan'),
(3, 'Shahid', 'Kapoor'),
(4, 'Sanjoy', 'mahato'),
(5, 'raju', 'murmu'),
(7, 'lali', 'mahato'),
(8, 'Sanjoy', 'mahato'),
(9, 'Sanjoy', 'mahato'),
(10, 'Sanjoy', 'mahato');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `s_no` int(11) NOT NULL,
  `file_name` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `phone` int(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `image`, `country`, `gender`) VALUES
(1, 'Sanjoy', 'mahato', 'sanjoy99prl@gmail.com', '64fa1750be0c61694111568.jpeg', 'India', 'male'),
(2, 'niyna', 'mahato', 'sanjoy99prl@gmail.com', '64fa1b639cc311694112611.jpeg', 'India', 'female'),
(3, 'Sanjoy', 'mahato', 'sanjoy99prl@gmail.com', '64fa246de00641694114925.jpeg', 'India', 'male'),
(4, 'Sanjoy', 'mahato', 'sanjoy99prl@gmail.com', '64fa259ab79491694115226.jpg', 'India', 'male'),
(5, 'Sanjoy', 'mahato', 'sanjoy99prl@gmail.com', '64fde0b555e2c1694359733.jpg', 'India', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `country_tb`
--
ALTER TABLE `country_tb`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lang`
--
ALTER TABLE `lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state_tb`
--
ALTER TABLE `state_tb`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `country_tb`
--
ALTER TABLE `country_tb`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `lang`
--
ALTER TABLE `lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `state_tb`
--
ALTER TABLE `state_tb`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
