-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 15, 2017 at 11:07 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tester_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `proj_id` int(11) NOT NULL,
  `proj_name` varchar(100) NOT NULL,
  `proj_desc` varchar(500) NOT NULL,
  `proj_tool` varchar(50) NOT NULL,
  `proj_progress` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`proj_id`, `proj_name`, `proj_desc`, `proj_tool`, `proj_progress`) VALUES
(1, 'Zeus TEchnologies', 'The company grew rapidly during the excesses of the Dot-com boom. In June 2000 Zeus Technology was nominated one of the top 50 most important privately held companies.', 'Selenium tool', 57),
(2, 'Raw data technologies', 'As competitors matured and Windows NT platforms became more commonplace in the web serving environment.', 'Automation', 34);

-- --------------------------------------------------------

--
-- Table structure for table `rankings`
--

CREATE TABLE `rankings` (
  `ranking_id` int(10) NOT NULL,
  `user_list` varchar(50) NOT NULL,
  `project_id` int(10) NOT NULL,
  `active_status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rankings`
--

INSERT INTO `rankings` (`ranking_id`, `user_list`, `project_id`, `active_status`) VALUES
(1, 'tester 2', 1, 1),
(2, 'tester 3', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `reporting_id` int(10) NOT NULL,
  `bug_name` varchar(100) NOT NULL,
  `solution` varchar(500) NOT NULL,
  `proj_id` int(10) NOT NULL,
  `comments` varchar(50) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`reporting_id`, `bug_name`, `solution`, `proj_id`, `comments`, `status`) VALUES
(1, 'UI_bug', 'Each and every release can have certain set of requirements. Generally the clients prepare to request for changes in the user interface or just the UI very often.', 2, 'set of requirements', 1),
(2, 'data_bug', 'Each and every release can have certain set of requirements. Generally the clients prepare to request for changes in the user interface or just the UI very often.', 2, 'set of requirements', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(120) NOT NULL,
  `lastname` varchar(120) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(120) NOT NULL,
  `proj_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `firstname`, `lastname`, `email`, `password`, `proj_id`) VALUES
(1, 'tninh', 'Tri', 'Ninh', 'tninh@gmail.com', 'tninh123', 1),
(2, 'mshah', 'Meet', 'Shah', 'ms@hotmail.com', 'ms123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`proj_id`);

--
-- Indexes for table `rankings`
--
ALTER TABLE `rankings`
  ADD PRIMARY KEY (`ranking_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`reporting_id`),
  ADD KEY `proj_id` (`proj_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `proj_id` (`proj_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `proj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rankings`
--
ALTER TABLE `rankings`
  MODIFY `ranking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `reporting_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `rankings`
--
ALTER TABLE `rankings`
  ADD CONSTRAINT `rankings_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`proj_id`);

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`proj_id`) REFERENCES `projects` (`proj_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`proj_id`) REFERENCES `projects` (`proj_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
