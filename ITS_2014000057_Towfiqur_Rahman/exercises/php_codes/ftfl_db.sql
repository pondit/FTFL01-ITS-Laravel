-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2014 at 10:19 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ftfl_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `courses_id` int(255) NOT NULL AUTO_INCREMENT,
  `courses_title` varchar(255) NOT NULL,
  `courses_code` varchar(255) NOT NULL,
  `courses_modified` date NOT NULL,
  `courses_created` date NOT NULL,
  PRIMARY KEY (`courses_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`courses_id`, `courses_title`, `courses_code`, `courses_modified`, `courses_created`) VALUES
(1, 'LARAVEL', 'P-002', '2014-08-10', '2014-08-10'),
(2, 'PHOTOSHOP', 'D-003', '2014-08-10', '2014-08-10'),
(3, 'UNITY 3D', 'G-004', '2014-08-10', '2014-08-10'),
(4, 'ASP.NET', 'A-004', '2014-08-10', '2014-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `student's_courses`
--

CREATE TABLE IF NOT EXISTS `student's_courses` (
  `student's_courses_id` int(255) NOT NULL AUTO_INCREMENT,
  `students_id` int(255) NOT NULL,
  `courses_id` int(255) NOT NULL,
  `student's_courses_modified` date NOT NULL,
  `student's_courses_created` date NOT NULL,
  PRIMARY KEY (`student's_courses_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `student's_courses`
--

INSERT INTO `student's_courses` (`student's_courses_id`, `students_id`, `courses_id`, `student's_courses_modified`, `student's_courses_created`) VALUES
(1, 1, 1, '2014-08-10', '2014-08-10'),
(2, 1, 2, '2014-08-10', '2014-08-10'),
(3, 2, 1, '2014-08-10', '2014-08-10'),
(4, 2, 2, '2014-08-10', '2014-08-10'),
(5, 2, 3, '2014-08-10', '2014-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `students_id` int(255) NOT NULL AUTO_INCREMENT,
  `students_name` varchar(255) NOT NULL,
  `students_modified` date NOT NULL,
  `students_created` date NOT NULL,
  PRIMARY KEY (`students_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`students_id`, `students_name`, `students_modified`, `students_created`) VALUES
(1, 'SAJIA', '2014-08-10', '2014-08-10'),
(2, 'TANJIM', '2014-08-10', '2014-08-10'),
(3, 'DOHA', '2014-08-10', '2014-08-10'),
(4, 'JAHANGIR', '2014-08-10', '2014-08-10');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
