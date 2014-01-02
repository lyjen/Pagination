-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 02, 2014 at 06:43 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sample`
--
CREATE DATABASE `sample` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sample`;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(25) NOT NULL,
  `emp_address` varchar(25) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `emp_address`, `date_added`) VALUES
(1, 'Lovely Jen Lovendino', 'Calamba, Laguna', '2014-01-02 05:43:18'),
(2, 'Lyjen Lovendino', 'Sto.Tomas, Batangas', '2014-01-02 05:43:54'),
(3, 'Eljay Yun', 'Calamba, Laguna', '2014-01-02 05:44:17'),
(4, 'Lygrace Lovendino', 'Sto.Tomas, Batangas', '2014-01-02 05:44:08'),
(5, 'Jonavi Lozano', 'Calamba, Laguna', '2014-01-02 05:45:45'),
(6, 'Jeanette Vivas', 'Calamba, Laguna', '2014-01-02 05:45:49'),
(9, 'Christian Dela Cruz', 'Lipa, Batangas', '2014-01-02 05:48:18'),
(10, 'Jear Endrinal', 'Cale, Batangas', '2014-01-02 05:48:18'),
(11, 'Bing Dipasupil', 'Sto.Tomas, Batangas', '2014-01-02 05:50:23'),
(12, 'Joan Centeno', 'Sto.Tomas, Batangas', '2014-01-02 05:50:05');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
