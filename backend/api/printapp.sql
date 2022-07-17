-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 17, 2022 at 06:11 PM
-- Server version: 5.7.34-log
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `printapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `myfolderid` int(20) NOT NULL,
  `userid` int(200) NOT NULL,
  `updatedat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`id`, `name`, `link`, `type`, `myfolderid`, `userid`, `updatedat`) VALUES
(1, 'File1.docx', 'https://voicifer.club/files/File1.docx', 'Document', 2, 1, ''),
(2, 'File2.pdf', 'https://voicifer.club/files/File2.pdf', 'PDF', 2, 1, ''),
(3, 'File3.ppt', 'https://voicifer.club/files/File3.ppt', 'PPT', 2, 1, ''),
(4, 'File4.xls', 'https://voicifer.club/files/File4.xls', 'Excel', 2, 1, ''),
(5, 'Project1.pdf', 'https://voicifer.club/files/Project1.pdf', 'PDF', 1, 1, ''),
(6, 'Project2.docx', 'https://voicifer.club/files/Project2.docx', 'Document', 1, 1, ''),
(7, 'Project3.xls', 'https://voicifer.club/files/Project3.xls', 'Excel', 1, 1, ''),
(8, 'Project4.ppt', 'https://voicifer.club/files/Project4.ppt', 'PPT', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `myfolder`
--

CREATE TABLE `myfolder` (
  `id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `userid` varchar(200) NOT NULL,
  `updated at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `myfolder`
--

INSERT INTO `myfolder` (`id`, `name`, `userid`, `updated at`) VALUES
(1, 'Personal Projects', '1', ''),
(2, 'Minor Projects', '1', ''),
(3, 'Posters', '1', ''),
(4, 'Major Projects', '1', ''),
(5, 'Business Models', '1', ''),
(6, 'School Documents', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `printjob`
--

CREATE TABLE `printjob` (
  `id` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  `myfolderid` int(20) NOT NULL,
  `vendorid` int(20) NOT NULL,
  `status` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `printjob`
--

INSERT INTO `printjob` (`id`, `userid`, `myfolderid`, `vendorid`, `status`) VALUES
(1, 1, 1, 1, 0),
(2, 1, 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `printstatus`
--

CREATE TABLE `printstatus` (
  `id` int(20) NOT NULL,
  `printid` int(20) NOT NULL,
  `docid` int(20) NOT NULL,
  `status` int(20) NOT NULL,
  `userid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `printstatus`
--

INSERT INTO `printstatus` (`id`, `printid`, `docid`, `status`, `userid`) VALUES
(1, 1, 5, 1, 1),
(2, 1, 6, 1, 1),
(3, 1, 7, -1, 1),
(4, 1, 8, 0, 1),
(5, 2, 1, 0, 1),
(6, 2, 2, 0, 1),
(7, 2, 3, 0, 1),
(8, 2, 4, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `myfolderid` varchar(200) DEFAULT NULL,
  `created at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `myfolderid`, `created at`) VALUES
(1, 'Ritek', 'ritekrounak1@gmail.com', 'password', '1', '2022-07-16 07:24:59.637669'),
(2, 'John Doe', 'johndoe@gmail.com', 'johndoe', '3', '2022-07-18 15:28:17.000000');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `name`, `address`) VALUES
(1, 'Printing Press Ltd', 'Lucknow'),
(2, 'Mohan Prints', 'Lucknow'),
(3, 'Ram Printing Enterprises ', 'Lucknow');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myfolder`
--
ALTER TABLE `myfolder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `printjob`
--
ALTER TABLE `printjob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `printstatus`
--
ALTER TABLE `printstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `myfolderid` (`myfolderid`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `myfolder`
--
ALTER TABLE `myfolder`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `printjob`
--
ALTER TABLE `printjob`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `printstatus`
--
ALTER TABLE `printstatus`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
