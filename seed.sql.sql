-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2020 at 03:08 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prot_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
  `id` int(11) NOT NULL,
  `user_story_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `originated` varchar(50) NOT NULL,
  `assign_to` int(11) NOT NULL,
  `fix_by` int(11) NOT NULL,
  `caught_by` int(11) NOT NULL,
  `description` text NOT NULL,
  `priority_id` int(11) NOT NULL,
  `initial_date` date NOT NULL,
  `submited_date` date DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `is_deleted`, `secret`) VALUES
(1, 'Account', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2, 'HR', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(3, 'Sales and Marketing', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(4, 'Product', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(5, 'Admin', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `is_deleted`, `secret`) VALUES
(1, 'Software Engineer', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2, 'Technical Lead', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(3, 'Team Lead', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(4, 'Project Lead', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(5, 'Project Manager', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(6, 'Vice President', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(7, 'Quality Assurance', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(8, 'Business Analyst', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `file` varchar(512) DEFAULT NULL,
  `secret` varchar(50) DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `file`, `secret`) VALUES
(1, 'uploads/files/1-d1.jpg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2, 'uploads/files/2-d2.jpg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(3, 'uploads/files/3-d1.jpg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(4, 'uploads/files/4-d1.jpg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(5, 'uploads/files/5-d1.jpg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(6, 'uploads/files/6-d1.jpg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(7, 'uploads/files/7-d1.jpg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(8, 'uploads/files/8-d1.jpg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(9, 'uploads/files/9-d1.jpg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(10, 'uploads/files/10-d1.jpg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(11, 'uploads/files/11-d1.jpg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(12, 'uploads/files/12-d2.jpg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(13, 'uploads/files/13-d1.jpg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(14, 'uploads/files/14-d1.jpg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(15, 'uploads/files/15-d1.jpg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(16, 'uploads/files/16-10-12.jpg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(17, 'uploads/files/17-10-12.jpg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(18, 'uploads/files/18-IMG_20191222_212826__01.jpg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(19, 'uploads/files/19-IMG_20191222_212826__01.jpg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(20, 'uploads/files/20-WhatsApp Image 2020-02-08 at 21.06.19.jpeg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(21, 'uploads/files/21-DSC01405 copy--.jpg', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(22, 'uploads/files/22-images (1).png', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(23, 'uploads/files/23-images (1).png', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(24, 'uploads/files/24-images (1).png', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(25, 'uploads/files/25-images (1).png', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(26, 'uploads/files/26-images (1).png', '206b2dbe-ecc9-490b-b81b-83767288bc5e');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `is_active`, `is_deleted`, `secret`) VALUES
(1, 'ninja', 1, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2, 'prot', 1, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `application_date` date NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `reason` tinytext NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT 22,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `user_id`, `application_date`, `start_date`, `end_date`, `leave_type_id`, `reason`, `status_id`, `is_deleted`, `secret`) VALUES
(21, 3, '2020-01-31', '2020-01-31', '2020-01-31', 1, 'N.A.', 1, 1, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(24, 5, '2020-01-31', '2020-01-31', '2020-02-04', 3, 'ankit', 7, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(25, 3, '2020-02-03', '2020-02-04', '2020-02-05', 4, 'N.A.', 1, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(26, 3, '2020-02-03', '2020-02-04', '2020-02-05', 5, 'ankit', 27, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(27, 5, '2020-02-03', '2020-02-04', '2020-02-05', 5, 'exam', 26, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(32, 5, '2020-02-05', '2020-02-03', '2020-02-05', 5, 'hello', 25, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(33, 5, '2020-02-25', '2020-02-12', '2020-02-20', 2, 'aaaaa', 22, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(34, 6, '2020-02-28', '2020-02-28', '2020-03-19', 1, 'For Work', 22, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL,
  `name_type` varchar(50) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `name_type`, `is_deleted`, `secret`) VALUES
(1, 'Casual ', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2, 'Maternity', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(3, 'Paternity', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(4, 'Medical', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(5, 'Study', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(6, 'Pay', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e');

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

CREATE TABLE `milestones` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `initial_date` date NOT NULL,
  `due_date` date NOT NULL,
  `amout` float NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `release_date` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `milestones`
--

INSERT INTO `milestones` (`id`, `title`, `initial_date`, `due_date`, `amout`, `project_id`, `user_group_id`, `release_date`, `is_active`, `is_deleted`, `secret`) VALUES
(1, 'part-1', '0000-00-00', '0000-00-00', 100000, 1, 1, '0000-00-00 00:00:00', 1, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2, 'part-2', '0000-00-00', '0000-00-00', 40000, 1, 1, '0000-00-00 00:00:00', 1, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `license` varchar(15) NOT NULL DEFAULT 'basic',
  `validity` datetime NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `theme_bg` varchar(20) DEFAULT NULL,
  `theme_col` varchar(20) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `org_secret` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `email`, `license`, `validity`, `logo`, `theme_bg`, `theme_col`, `is_active`, `org_secret`, `secret`) VALUES
(1, 'Default Organization', 'superadmin@example.com', 'super', '0000-01-01 00:00:00', NULL, NULL, NULL, 1, '206b2dbe-ecc9-490b-b81b-83767288bc5e', '206b2dbe-ecc9-490b-b81b-83767288bc5e');

-- --------------------------------------------------------

--
-- Table structure for table `priorities`
--

CREATE TABLE `priorities` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `priorities`
--

INSERT INTO `priorities` (`id`, `type`, `is_deleted`, `secret`) VALUES
(1, 'High', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2, 'Medium', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(3, 'Low', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` bigint(15) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `theme_bg` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_col` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` varchar(20) COLLATE utf8_unicode_ci DEFAULT '0',
  `secret` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `first_name`, `last_name`, `image`, `address`, `dob`, `gender`, `contact`, `department_id`, `designation_id`, `theme_bg`, `theme_col`, `is_deleted`, `secret`) VALUES
(4, 6, 'Chirag', 'Patel', 'uploads/files/21-DSC01405 copy--.jpg', 'A 34 Akruti Society Jodphur Gam Road\nSatellite', '1998-11-29', 'Male', 9586897203, 2, 7, NULL, NULL, '0', '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(5, 3, 'Hasmukh', 'Patel', 'uploads/files/26-images (1).png', 'Jodphur Gam Road\nA-34 Akruti Soc', '1984-11-29', 'Male', 9228117772, 1, 8, NULL, NULL, '0', '206b2dbe-ecc9-490b-b81b-83767288bc5e');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `initial_date` date NOT NULL,
  `due_date` date NOT NULL,
  `budget` float NOT NULL,
  `logo_image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `initial_date`, `due_date`, `budget`, `logo_image`, `description`, `user_group_id`, `status_id`, `is_deleted`, `secret`) VALUES
(1, 'Jazzmusic', '0000-00-00', '0000-00-00', 500000, '1.jpg', 'This project is of online music system', 1, 8, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2, 'online election system', '0000-00-00', '0000-00-00', 200000, '2.jpg', 'This project is of online election system ', 1, 9, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `salary` float NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id`, `user_id`, `salary`, `is_deleted`, `secret`) VALUES
(1, 3, 50000, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `type` varchar(55) NOT NULL,
  `name` varchar(30) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `type`, `name`, `is_deleted`, `secret`) VALUES
(1, 'Bug', 'OnHold', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2, 'Bug', 'In Progress', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(3, 'Bug', 'Pending', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(4, 'Bug', 'Review', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(5, 'Bug', 'Solve', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(6, 'Bug', 'Reopened', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(7, 'Bug', 'Rejected', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(8, 'Project', 'Active', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(9, 'Project', 'In progress', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(10, 'Project', 'Delayed', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(11, 'Project', 'In testing', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(12, 'Project', 'OnHold', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(13, 'Project', 'Approved', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(14, 'Project', 'Cancelled', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(15, 'Project', 'Completed', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(16, 'Task', 'Pending', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(17, 'Task ', 'Completed', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(18, 'Task', 'Started', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(19, 'Task', 'Unassigned', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(20, 'Task', 'In progress', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(21, 'user_story', 'Progress', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(22, 'user_story', 'Pending', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(23, 'user_story', 'Completed', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(24, 'Leave', 'Pendding', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(25, 'Leave', 'Approved', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(26, 'Leave', 'Rejected', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(27, 'Leave', 'OnHold', 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `initial_date` date NOT NULL,
  `due_date` date NOT NULL,
  `status_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `assign_to` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL,
  `user_story_id` int(11) NOT NULL,
  `priority_id` int(11) NOT NULL,
  `estimated_hour` time NOT NULL,
  `actual_hour` time NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timesheets`
--

CREATE TABLE `timesheets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time_from` time NOT NULL,
  `time_to` time NOT NULL,
  `comment` text NOT NULL,
  `submit_date` datetime NOT NULL,
  `total_hours` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timesheets`
--

INSERT INTO `timesheets` (`id`, `user_id`, `time_from`, `time_to`, `comment`, `submit_date`, `total_hours`, `is_active`, `is_deleted`, `secret`) VALUES
(1, 3, '09:00:01', '15:00:00', 'i have completed particular task', '2020-08-08 00:00:00', '06:00:00', 1, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2, 6, '07:00:00', '11:00:00', 'worl', '2020-02-26 00:00:00', '00:00:04', 1, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(3, 6, '11:00:00', '12:20:00', 'Hello', '2020-02-27 00:00:00', '00:00:01', 1, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(4, 6, '11:00:00', '13:00:00', 'Devlopment', '2020-02-27 00:00:00', '00:00:02', 1, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(5, 2, '12:00:00', '09:00:00', 'Work', '2020-02-27 00:00:00', '00:00:03', 1, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(6, 3, '12:00:00', '13:50:00', 'Work', '2020-03-02 00:00:00', '00:00:01', 1, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(7, 3, '08:55:00', '12:54:00', 'wd', '2020-03-02 00:00:00', '00:00:03', 1, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(8, 3, '12:20:00', '16:29:00', 'sdkjk', '2020-03-02 00:00:00', '00:00:04', 1, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(9, 3, '07:00:00', '10:30:00', 'sdkok', '2020-03-02 00:00:00', '00:00:03', 1, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(10, 3, '07:00:00', '12:20:00', 'Work', '2020-03-02 00:00:00', '5.333333333333333 hours', 1, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(11, 3, '12:00:00', '13:00:00', 'wd', '2020-03-02 00:00:00', '1 hours', 1, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '00000000-00000-0000-0000-000000000000',
  `lease` datetime NOT NULL DEFAULT '0000-01-01 00:00:00',
  `role` varchar(50) DEFAULT 'user',
  `is_active` tinyint(1) DEFAULT 1,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `token`, `lease`, `role`, `is_active`, `secret`) VALUES
(1, 'superadmin@example.com', 'superadmin', '17c4520f6cfd1ab53d8745e84681eb49', '1', '0000-00-00 00:00:00', 'superadmin', 1, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2, 'admin@example.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '36c21c90-66d2-4b67-bfce-d23e995824b9', '2020-03-02 09:52:37', 'admin', 1, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(3, 'user@example.com', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'e375854c-170e-4ed1-9445-55f1dd4de805', '2020-03-02 09:53:23', 'user', 1, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(5, 'user1@example.com', 'Ankit Patil', '24c9e15e52afc47c225b757e7bee1f9d', '26753ccf-81c4-463d-9e91-71c79ed524ea', '2020-02-25 09:12:22', 'user', 1, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(6, 'chirag@example.com', 'Chirag', 'e3a214873911a417fe414006f0be1bb6', '05b26c09-7b41-492a-a910-2f004a081750', '2020-02-28 11:01:43', 'user', 1, '206b2dbe-ecc9-490b-b81b-83767288bc5e');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `user_id`, `group_id`, `is_active`, `is_deleted`, `secret`) VALUES
(1, 3, 1, 1, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2, 3, 2, 1, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e');

-- --------------------------------------------------------

--
-- Table structure for table `user_stories`
--

CREATE TABLE `user_stories` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `projects_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_stories`
--

INSERT INTO `user_stories` (`id`, `title`, `description`, `projects_id`, `status_id`, `is_deleted`, `secret`) VALUES
(1, 'login ', 'i want to login', 1, 21, 0, '206b2dbe-ecc9-490b-b81b-83767288bc5e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_story_id` (`user_story_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `assign_to` (`assign_to`),
  ADD KEY `fix_by` (`fix_by`),
  ADD KEY `caught_by` (`caught_by`),
  ADD KEY `priority_id` (`priority_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_type_id` (`leave_type_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milestones`
--
ALTER TABLE `milestones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_group_id` (`user_group_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `org_secret` (`org_secret`);

--
-- Indexes for table `priorities`
--
ALTER TABLE `priorities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `designation_id` (`designation_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_group_id` (`user_group_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assign_to` (`assign_to`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `user_story_id` (`user_story_id`),
  ADD KEY `priority_id` (`priority_id`);

--
-- Indexes for table `timesheets`
--
ALTER TABLE `timesheets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `user_stories`
--
ALTER TABLE `user_stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_id` (`projects_id`),
  ADD KEY `status_id` (`status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `milestones`
--
ALTER TABLE `milestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `priorities`
--
ALTER TABLE `priorities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `timesheets`
--
ALTER TABLE `timesheets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_stories`
--
ALTER TABLE `user_stories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bugs`
--
ALTER TABLE `bugs`
  ADD CONSTRAINT `bugs_ibfk_3` FOREIGN KEY (`user_story_id`) REFERENCES `user_stories` (`id`),
  ADD CONSTRAINT `bugs_ibfk_5` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `bugs_ibfk_6` FOREIGN KEY (`assign_to`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bugs_ibfk_7` FOREIGN KEY (`fix_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bugs_ibfk_8` FOREIGN KEY (`caught_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bugs_ibfk_9` FOREIGN KEY (`priority_id`) REFERENCES `priorities` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leaves_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`),
  ADD CONSTRAINT `leaves_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `leaves_ibfk_4` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `milestones`
--
ALTER TABLE `milestones`
  ADD CONSTRAINT `milestones_ibfk_1` FOREIGN KEY (`user_group_id`) REFERENCES `user_groups` (`id`),
  ADD CONSTRAINT `milestones_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `profiles_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `profiles_ibfk_3` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`user_group_id`) REFERENCES `user_groups` (`id`),
  ADD CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`assign_to`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `tasks_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tasks_ibfk_4` FOREIGN KEY (`user_story_id`) REFERENCES `user_stories` (`id`),
  ADD CONSTRAINT `tasks_ibfk_5` FOREIGN KEY (`priority_id`) REFERENCES `priorities` (`id`);

--
-- Constraints for table `timesheets`
--
ALTER TABLE `timesheets`
  ADD CONSTRAINT `timesheets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD CONSTRAINT `user_groups_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_groups_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);

--
-- Constraints for table `user_stories`
--
ALTER TABLE `user_stories`
  ADD CONSTRAINT `user_stories_ibfk_1` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `user_stories_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
