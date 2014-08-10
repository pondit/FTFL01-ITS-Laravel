-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2014 at 08:23 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ftfl_exercise`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `code`, `created`, `modified`) VALUES
(1, 'LARAVEL', 'P-002', '2014-08-10 11:42:30', '2014-08-10 11:42:30'),
(2, 'Photoshop', 'D-003', '2014-08-10 11:42:30', '2014-08-10 11:42:30'),
(3, 'Unity 3D', 'G-004', '2014-08-10 11:42:53', '2014-08-10 11:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `final_results`
--

CREATE TABLE IF NOT EXISTS `final_results` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `student_id` int(255) NOT NULL,
  `gpa` float NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `final_results`
--

INSERT INTO `final_results` (`id`, `student_id`, `gpa`, `created`, `modified`) VALUES
(1, 11, 5, '2014-08-10 09:15:18', '2014-08-10 09:15:18'),
(2, 12, 4.5, '2014-08-10 09:15:18', '2014-08-10 09:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE IF NOT EXISTS `results` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `student_id` int(255) NOT NULL,
  `exam_level` varchar(15) NOT NULL,
  `gpa` float NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `student_id`, `exam_level`, `gpa`, `created`, `modified`) VALUES
(1, 11, 'SSC', 5, '2014-08-10 09:20:43', '2014-08-10 09:20:43'),
(2, 11, 'HSC', 3.5, '2014-08-10 09:20:43', '2014-08-10 09:20:43'),
(3, 11, 'Ba', 4, '2014-08-10 09:21:39', '2014-08-10 09:21:39'),
(6, 12, 'HSC', 4.5, '2014-08-10 09:49:51', '2014-08-10 09:49:20');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Sajia', '2014-08-10 11:57:27', '2014-08-10 11:57:27'),
(2, 'Tanjim', '2014-08-10 11:57:49', '2014-08-10 11:57:49'),
(11, 'Sajia', '2014-08-10 09:12:57', '2014-08-10 09:12:57'),
(12, 'Daisy', '2014-08-10 09:12:57', '2014-08-10 09:12:57');

-- --------------------------------------------------------

--
-- Table structure for table `students_courses`
--

CREATE TABLE IF NOT EXISTS `students_courses` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `student_id` int(255) NOT NULL,
  `course_id` int(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `students_courses`
--

INSERT INTO `students_courses` (`id`, `student_id`, `course_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 2, 3);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `final_results`
--
ALTER TABLE `final_results`
  ADD CONSTRAINT `final_results_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `students_courses`
--
ALTER TABLE `students_courses`
  ADD CONSTRAINT `students_courses_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `students_courses_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
