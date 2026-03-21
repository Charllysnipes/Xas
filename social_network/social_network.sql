-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2019 at 10:22 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `post_id`, `user_id`, `comment`, `comment_author`, `date`) VALUES
(1, 4, 3, 'Nice pic', '0', '2019-12-02 11:21:51'),
(2, 5, 4, 'NICE PICS', '0', '2019-12-05 14:45:13'),
(3, 6, 5, 'I think charles lodge is the perfect place', 'dav_nick_278609', '2019-12-10 14:41:25'),
(4, 7, 5, 'cute u', 'dav_nick_278609', '2019-12-10 14:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_content` varchar(255) NOT NULL,
  `upload_image` varchar(255) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post_content`, `upload_image`, `post_date`) VALUES
(3, 3, 'HAPPY WEEKENDS GUYS', '', '2019-11-29 08:55:28'),
(4, 3, 'NEW BORN', 'Baby7.jpg.93', '2019-12-02 11:21:31'),
(5, 4, 'HAPPY', 'baby1x.jpg.97', '2019-12-05 14:44:06'),
(7, 5, 'Uche baby', 'Baby.JPG.91', '2019-12-10 14:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `user_name` text NOT NULL,
  `describe_user` varchar(255) NOT NULL,
  `Relationship` text NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_country` text NOT NULL,
  `user_gender` text NOT NULL,
  `user_birthday` text NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_cover` varchar(255) NOT NULL,
  `user_reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` text NOT NULL,
  `posts` varchar(3) NOT NULL,
  `recovery_account` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `f_name`, `l_name`, `user_name`, `describe_user`, `Relationship`, `user_pass`, `user_email`, `user_country`, `user_gender`, `user_birthday`, `user_image`, `user_cover`, `user_reg_date`, `status`, `posts`, `recovery_account`) VALUES
(3, 'King', 'Charles', 'king_charles_441887', 'Hello Xas.This is my default status!', '...', '12345678', 'ezehcharles19@gmail.com', 'Nigeria', 'Male', '1995-11-20', 'baby4.jpg.44', 'woods.jpg', '2019-11-29 08:50:46', 'verified', 'yes', 'iwanttoputadingintheuniverse.'),
(4, 'Ben', 'Joshua', 'ben_joshua_178260', 'Hello Xas.This is my default status!', '...', 'CCC333', 'ngenejoshua05@gmail.com', 'Nigeria', 'Male', '1998-11-29', 'baby1.jpg.20', 'woods.jpg', '2019-12-05 14:41:46', 'verified', 'yes', 'iwanttoputadingintheuniverse.'),
(5, 'dav', 'nick', 'dav_nick_278609', 'Hello Xas.This is my default status!', '...', 'nickdav', 'nickdav@gmail.com', 'Nigeria', 'Male', '2004-11-18', 'head3.jpg', 'woods.jpg', '2019-12-10 14:33:49', 'verified', 'yes', 'iwanttoputadingintheuniverse.');

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `msg_body` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `msg_seen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_messages`
--

INSERT INTO `user_messages` (`id`, `user_to`, `user_from`, `msg_body`, `date`, `msg_seen`) VALUES
(1, 3, 4, '0', '0000-00-00 00:00:00', '0'),
(2, 3, 5, '0', '0000-00-00 00:00:00', '0'),
(3, 5, 3, '0', '0000-00-00 00:00:00', '0'),
(4, 5, 3, '0', '0000-00-00 00:00:00', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
