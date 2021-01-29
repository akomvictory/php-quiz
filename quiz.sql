-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 29, 2021 at 03:53 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `choices_tak`
--

CREATE TABLE `choices_tak` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(4) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `choices_tak`
--

INSERT INTO `choices_tak` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 0, 'Africa'),
(2, 1, 0, 'Where is America'),
(3, 1, 0, 'North America'),
(4, 1, 1, 'Where is England '),
(5, 1, 0, 'Europe'),
(6, 2, 1, 'Joe Biden'),
(7, 2, 0, 'Kamara Hariss'),
(8, 2, 0, 'Obama'),
(9, 2, 0, 'Trump'),
(10, 2, 0, 'Buhari');

-- --------------------------------------------------------

--
-- Table structure for table `questions_tak`
--

CREATE TABLE `questions_tak` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions_tak`
--

INSERT INTO `questions_tak` (`question_number`, `text`) VALUES
(1, 'Where is Nigeria'),
(2, 'President of America ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choices_tak`
--
ALTER TABLE `choices_tak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions_tak`
--
ALTER TABLE `questions_tak`
  ADD PRIMARY KEY (`question_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `choices_tak`
--
ALTER TABLE `choices_tak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
