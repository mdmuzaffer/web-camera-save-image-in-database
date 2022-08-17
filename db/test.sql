-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2022 at 02:43 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

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
-- Table structure for table `rms_cities`
--

CREATE TABLE `rms_cities` (
  `id` int(11) NOT NULL,
  `city` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rms_resume_details`
--

CREATE TABLE `rms_resume_details` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `userid` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `rms_cities` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_resume_details`
--

INSERT INTO `rms_resume_details` (`id`, `name`, `userid`, `email`, `rms_cities`) VALUES
(1, 'dev', '1', 'demo@yopmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rms_user`
--

CREATE TABLE `rms_user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `dob` varchar(250) DEFAULT NULL,
  `mobile` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `filename` varchar(250) NOT NULL,
  `lastLoginDate` varchar(250) NOT NULL,
  `userid` varchar(250) NOT NULL,
  `rms_cities` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_user`
--

INSERT INTO `rms_user` (`id`, `firstname`, `dob`, `mobile`, `city`, `filename`, `lastLoginDate`, `userid`, `rms_cities`) VALUES
(1, 'demo', '12-05-1991', '8976542345', 'Mohali', 'test.jpg', '', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `webcam`
--

CREATE TABLE `webcam` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webcam`
--

INSERT INTO `webcam` (`id`, `name`, `image`, `created_at`) VALUES
(1, 'Muzaffer', '62de7da2a2321.png', '2022-07-25 11:25:22'),
(2, 'PHP', '62de7dc354844.png', '2022-07-25 11:25:55'),
(3, 'dffgdfgd', '62de7fc77909b.png', '2022-07-25 11:34:31'),
(4, 'Muzaffer', '62e3b16457b9d.png', '2022-07-29 10:07:32'),
(5, 'developer', '62e3b195cbeaa.png', '2022-07-29 10:08:21'),
(6, '', '62e7f9e46c45d.png', '2022-08-01 16:05:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rms_cities`
--
ALTER TABLE `rms_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rms_resume_details`
--
ALTER TABLE `rms_resume_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rms_user`
--
ALTER TABLE `rms_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webcam`
--
ALTER TABLE `webcam`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rms_cities`
--
ALTER TABLE `rms_cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rms_resume_details`
--
ALTER TABLE `rms_resume_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rms_user`
--
ALTER TABLE `rms_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `webcam`
--
ALTER TABLE `webcam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
