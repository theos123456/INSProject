-- phpMyAdmin SQL Dump
-- version 2.11.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 28, 2019 at 06:11 PM
-- Server version: 5.0.45
-- PHP Version: 5.2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `adverts`
--

CREATE TABLE `adverts` (
  `ads_id` int(11) NOT NULL auto_increment,
  `image` varchar(255) NOT NULL,
  `time` date NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY  (`ads_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `adverts`
--

INSERT INTO `adverts` (`ads_id`, `image`, `time`, `description`) VALUES
(19, 'uploads/download (3) (3).jpg', '2019-06-19', ''),
(20, 'uploads/download (3) (4).jpg', '2019-06-19', ''),
(21, 'uploads/download (3) (5).jpg', '2019-06-19', 'hey');

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

CREATE TABLE `publication` (
  `house_id` int(11) NOT NULL auto_increment,
  `district` varchar(255) NOT NULL,
  `sector` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `rooms` int(11) NOT NULL,
  `limitation` int(11) NOT NULL,
  `washing-room` int(11) NOT NULL,
  `kitchen` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `userid` int(9) NOT NULL,
  `bank_account` varchar(255) NOT NULL,
  PRIMARY KEY  (`house_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`house_id`, `district`, `sector`, `image`, `rooms`, `limitation`, `washing-room`, `kitchen`, `type`, `description`, `price`, `userid`, `bank_account`) VALUES
(12, 'gasabo', 'kimironko', 'uploads/house2.jpg', 20, 40, 10, 3, 'tower', 'it is on paved road', '29999900', 3, ''),
(13, 'nyarugenge', 'nyamirambo', 'uploads/house10.jpg', 9, 7, 2, 2, 'tower', 'near market', '3800000', 3, ''),
(14, 'kicukiro', 'kicukiro', 'uploads/house12.jpeg', 5, 3, 2, 1, 'tower', 'have a pool', '28999996', 3, ''),
(15, 'gasabo', 'janja', 'uploads/house10 (1).jpg', 9, 5, 2, 3, 'single', 'near kigali hospital', '45000000', 3, '00068-88858-9999');

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `reserve_id` int(11) NOT NULL auto_increment,
  `house_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `slip` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL,
  `starting_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY  (`reserve_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `reserve`
--

INSERT INTO `reserve` (`reserve_id`, `house_id`, `email`, `slip`, `names`, `starting_date`, `end_date`) VALUES
(7, 12, 'byagutangaza@gmail.com', 'uploaded_slip/house11.jpg', 'byagutangaza theoneste', '2019-06-28', '2019-07-05'),
(6, 8, 'byagutangaza@gmail.com', 'uploaded_slip/how-to-build-a-theoretical-model (1).jpg', 'byagutangaza theoneste', '2019-06-26', '2019-06-29'),
(5, 1, 'byagutangaza@gmail.com', 'uploaded_slip/download (10).jpg', 'byagutangaza theoneste', '2019-06-28', '2019-06-29'),
(8, 12, 'byagutangaza@gmail.com', '', 'mdd dd', '2019-09-26', '2019-09-28'),
(9, 0, 'btheoneste@alphacomputer.rw', 'uploaded_slip/10003.jpg', 'kwibuka theo', '2019-09-25', '2019-09-26'),
(10, 0, 'btheoneste@alphacomputer.rw', 'uploaded_slip/10001 (1).jpg', 'kkkw kkwk', '2019-09-24', '2019-09-26'),
(11, 13, 'btheoneste@alphacomputer.rw', 'uploaded_slip/10003 (2).jpg', 'kwibuka pacific', '2019-09-25', '2019-09-26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(9) NOT NULL auto_increment,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `fname`, `lname`, `location`, `email`, `phone`, `username`, `password`, `type`) VALUES
(1, 'kwibuka', 'theo', 'kigali', 'theo@theo.com', '722783947', 'theos', 'theos', 'publisher'),
(2, 'jojo', 'jojo', 'kigali', 'jojo@gmail.com', '+25789658999', 'jojo', 'jojo', 'admin'),
(3, 'josiane', 'josian', 'gikondo', 'josial@gmail.com', '+250722783947', 'josiane', 'josiane', 'publisher'),
(4, 'lydia', 'lydia', 'gasabo', 'lydia@lydia.com', '0789170894', 'lydia', 'lydia', 'publisher'),
(5, 'lydia', 'lydia', 'kigali', 'lydia@gmail.com', '0789170894', 'lydia1', 'lydia1', 'publisher');
