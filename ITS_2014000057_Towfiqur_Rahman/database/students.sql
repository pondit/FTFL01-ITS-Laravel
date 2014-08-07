-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2014 at 01:03 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ftfl`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ftfl_id` varchar(23) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(31) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `day1_date` date DEFAULT NULL,
  `day1_presence` tinyint(1) DEFAULT NULL,
  `day2_date` date DEFAULT NULL,
  `day2_presence` tinyint(1) DEFAULT NULL,
  `day3_date` date DEFAULT NULL,
  `day3_presence` tinyint(1) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `ftfl_id`, `name`, `email`, `phone`, `day1_date`, `day1_presence`, `day2_date`, `day2_presence`, `day3_date`, `day3_presence`, `modified`, `created`) VALUES
(1, 'ITS-2014000057', 'Towfiqur Rahman', 'towfiqpiash@gmail.com', '01722486102', '2014-08-04', 1, '2014-08-05', 1, '2014-08-06', 0, '2014-08-07 16:11:19', '2014-08-07 16:14:20'),
(2, 'ITS-2014000058', 'Jasmin Azad', 'jas22@gmail.com', '01912636997', '2014-08-04', 0, '2014-08-05', 1, '2014-08-06', 1, '2014-08-07 16:11:31', '2014-08-07 16:14:36');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
