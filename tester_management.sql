-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 12, 2017 at 06:39 AM
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
-- Table structure for table `tbl_projects`
--

CREATE TABLE `tbl_projects` (
  `proj_id` int(10) NOT NULL,
  `proj_name` varchar(100) NOT NULL,
  `proj_desc` varchar(500) NOT NULL,
  `proj_tool` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_projects`
--

INSERT INTO `tbl_projects` (`proj_id`, `proj_name`, `proj_desc`, `proj_tool`) VALUES
(1, 'Zeus TEchnologies', 'The company grew rapidly during the excesses of the Dot-com boom. In June 2000 Zeus Technology was nominated one of the top 50 most important privately held companies.', 'Selenium tool'),
(2, 'Raw data technologies', 'As competitors matured and Windows NT platforms became more commonplace in the web serving environment.', 'Automation');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ranking`
--

CREATE TABLE `tbl_ranking` (
  `ranking_id` int(10) NOT NULL,
  `user_list` varchar(50) NOT NULL,
  `project_id` int(10) NOT NULL,
  `active_status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_ranking`
--

INSERT INTO `tbl_ranking` (`ranking_id`, `user_list`, `project_id`, `active_status`) VALUES
(1, 'tester 2', 1, 1),
(2, 'tester 3', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reporting`
--

CREATE TABLE `tbl_reporting` (
  `reporting_id` int(10) NOT NULL,
  `bug_name` varchar(100) NOT NULL,
  `solution` varchar(500) NOT NULL,
  `proj_id` int(10) NOT NULL,
  `comments` varchar(50) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_reporting`
--

INSERT INTO `tbl_reporting` (`reporting_id`, `bug_name`, `solution`, `proj_id`, `comments`, `status`) VALUES
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
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  ADD PRIMARY KEY (`proj_id`);

--
-- Indexes for table `tbl_ranking`
--
ALTER TABLE `tbl_ranking`
  ADD PRIMARY KEY (`ranking_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `tbl_reporting`
--
ALTER TABLE `tbl_reporting`
  ADD PRIMARY KEY (`reporting_id`),
  ADD KEY `proj_id` (`proj_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  MODIFY `proj_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_ranking`
--
ALTER TABLE `tbl_ranking`
  MODIFY `ranking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_reporting`
--
ALTER TABLE `tbl_reporting`
  MODIFY `reporting_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_ranking`
--
ALTER TABLE `tbl_ranking`
  ADD CONSTRAINT `tbl_ranking_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `tbl_projects` (`proj_id`);

--
-- Constraints for table `tbl_reporting`
--
ALTER TABLE `tbl_reporting`
  ADD CONSTRAINT `tbl_reporting_ibfk_1` FOREIGN KEY (`proj_id`) REFERENCES `tbl_projects` (`proj_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
