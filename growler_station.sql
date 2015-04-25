-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2015 at 10:32 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `growler_station`
--
CREATE DATABASE IF NOT EXISTS `growler_station` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `growler_station`;

-- --------------------------------------------------------

--
-- Table structure for table `beer`
--

CREATE TABLE IF NOT EXISTS `beer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(64) NOT NULL,
  `BREWERY` varchar(64) NOT NULL,
  `STYLE` varchar(64) NOT NULL,
  `PRICING` varchar(64) NOT NULL,
  `POUR_SIZE` int(11) NOT NULL,
  `ABV` double NOT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `DATE_ADDED` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brewery`
--

CREATE TABLE IF NOT EXISTS `brewery` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(32) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `DATE_ADDED` date NOT NULL,
  `LOCATION` varchar(128) DEFAULT NULL,
  `URL` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `brewery`
--

INSERT INTO `brewery` (`ID`, `NAME`, `DESCRIPTION`, `DATE_ADDED`, `LOCATION`, `URL`) VALUES
(2, 'Budweiser', 'This Bud''s for you!', '2015-04-24', 'St Louis', 'http://www.budweiser.com'),
(3, 'Deschutes', 'Established 1988', '2015-04-24', 'Portland, Oregon', 'http://www.deschutesbrewery.com/'),
(4, 'Stone', 'Great Beer!', '2015-04-24', 'Escondido, CA', 'http://stonebrewing.com'),
(5, 'Goose Island', 'Brewed at Goose Island', '2015-04-24', 'Chicago, IL', 'http://gooseisland.com'),
(7, 'Noobles', 'This Noob is for you!', '2015-04-24', 'Noobland', 'http://n00b.com');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE IF NOT EXISTS `store` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(32) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `LOCATION` varchar(256) NOT NULL,
  `DATE_ADDED` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `store_beer`
--

CREATE TABLE IF NOT EXISTS `store_beer` (
  `STORE_ID` int(11) NOT NULL,
  `BEER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
