-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 04, 2022 at 03:01 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `fdid` int(5) NOT NULL AUTO_INCREMENT,
  `uid` int(5) NOT NULL COMMENT 'foreignkey',
  `feedback` text NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`fdid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fdid`, `uid`, `feedback`, `date`) VALUES
(1, 1, 'good site', '2022-02-09'),
(3, 1, 'awsome', '2022-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `greg`
--

CREATE TABLE IF NOT EXISTS `greg` (
  `gid` int(5) NOT NULL AUTO_INCREMENT,
  `gname` text NOT NULL,
  `g_owner_name` text NOT NULL,
  `g_lic_num` text NOT NULL,
  `lic_img` text NOT NULL,
  `gaddress` text NOT NULL,
  `gphno` text NOT NULL,
  `gmailid` text NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `greg`
--

INSERT INTO `greg` (`gid`, `gname`, `g_owner_name`, `g_lic_num`, `lic_img`, `gaddress`, `gphno`, `gmailid`) VALUES
(1, 'Dhanya', 'Rajeev', '5878787', 'images/licenseimg/rajdhanya@gmail.com.jpg', 'anchal', '6887557744', 'rajdhanya@gmail.com'),
(2, 'AnanyaStores', 'Raju', '58787878', 'images/licenseimg/raju@gmail.com.jpg', 'Kollam', '8547764105', 'raju@gmail.com'),
(3, 'Freshmart', 'manoj', '8786545', 'images/licenseimg/freshmart@gmail.com.jpg', 'Palathara,Kollam', '8547764199', 'freshmart@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `itemid` int(5) NOT NULL AUTO_INCREMENT,
  `gid` int(5) NOT NULL COMMENT 'foreignkey',
  `itemname` text NOT NULL,
  `itemrate` text NOT NULL,
  `details` text NOT NULL,
  `itemstatus` int(5) NOT NULL,
  `itempic` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemid`, `gid`, `itemname`, `itemrate`, `details`, `itemstatus`, `itempic`) VALUES
(1, 1, 'Sunflower Oil', '80', 'Oil for Cooking', 1, 'uploads/1_Sunflower Oil.jpg'),
(2, 1, 'Prawn Chammanthi podi', '180', 'Chammanthi podi', 1, 'uploads/1_Prawn Chammanthi podi.jpg'),
(3, 1, 'puttu podi', '30', 'Puttu podi', 1, 'uploads/1_puttu podi.jpg'),
(4, 1, 'Banana Chips', '60', 'Banana chips', 1, 'uploads/1_Banana Chips.jpg'),
(5, 1, 'Sharkkara varatti', '45', 'Sharkkara varatti', 1, 'uploads/1_Sharkkara varatti.jpg'),
(6, 1, 'Banana Chips', '80', 'Banana Chips', 1, 'uploads/1_Banana Chips.jpg'),
(7, 1, 'Kuzhalappam', '40', 'Kuzhalappam', 1, 'uploads/1_Kuzhalappam.jpg'),
(8, 1, 'Potato Chips', '40', 'Potato chips', 1, 'uploads/1_Potato Chips.jpg'),
(9, 1, 'pakkavada', '40', 'Pakkavada', 1, 'uploads/1_pakkavada.jpg'),
(10, 1, 'Rice murukku', '40', 'Rice murukku', 1, 'uploads/1_Rice murukku.jpg'),
(11, 1, 'Chakka vattal', '60', 'Chakka vattal', 1, 'uploads/1_Chakka vattal.jpg'),
(12, 1, 'Cake', '40', 'Cake', 1, 'uploads/1_Cake.jpg'),
(13, 2, 'lemon Pickle', '50', 'Lemon pickle', 1, 'uploads/2_lemon Pickle.jpg'),
(14, 2, 'Manjal podi', '40', 'Manjal podi', 1, 'uploads/2_Manjal podi.jpg'),
(15, 2, 'Mothakam', '30', '5 pieces in a pack', 1, 'uploads/2_Mothakam.jpg'),
(16, 2, 'Rice murukku', '45', 'Rice murukku', 1, 'uploads/2_Rice murukku.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` text NOT NULL,
  `password` text NOT NULL,
  `type` text NOT NULL,
  `status` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `type`, `status`) VALUES
('admin@gmail.com', 'admin', 'admin', 1),
('san@gmail.com', 'San@12345', 'user', 1),
('rajdhanya@gmail.com', 'Raj@12345', 'groceryshop', 1),
('pushkaransunitha@gmail.com', 'Jijo@2000', 'user', 1),
('raju@gmail.com', 'Raju@123', 'groceryshop', 1),
('freshmart@gmail.com', 'Fresh@12', 'groceryshop', 0);

-- --------------------------------------------------------

--
-- Table structure for table `markers`
--

CREATE TABLE IF NOT EXISTS `markers` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `markers`
--

INSERT INTO `markers` (`id`, `name`, `address`, `lat`, `lng`, `type`) VALUES
(5, 'Kottiyam, Kollam', 'Kottiyam, Kollam', 8.865900, 76.670898, '');

-- --------------------------------------------------------

--
-- Table structure for table `ordermain`
--

CREATE TABLE IF NOT EXISTS `ordermain` (
  `orderid` int(5) NOT NULL AUTO_INCREMENT,
  `uid` int(5) NOT NULL COMMENT 'foreignkey',
  `orderaddress` text NOT NULL,
  `longitude` text NOT NULL,
  `latitude` text NOT NULL,
  `gid` int(5) NOT NULL COMMENT 'foreignkey',
  `orderitem` text NOT NULL,
  `orderqty` text NOT NULL,
  `total` text NOT NULL,
  `pstatus` int(5) NOT NULL,
  `dstatus` int(5) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ordermain`
--

INSERT INTO `ordermain` (`orderid`, `uid`, `orderaddress`, `longitude`, `latitude`, `gid`, `orderitem`, `orderqty`, `total`, `pstatus`, `dstatus`, `date`) VALUES
(3, 1, 'Lekshmi,Palathara,Thattamala P O,Kollam\r\nPalathara', '8.868936_N', '76.643635_E', 1, 'Sunflower Oil', '1', '80', 0, 0, '2022-05-04'),
(4, 1, 'Lekshmi,Palathara,Thattamala P O,Kollam\r\nPalathara', '8.868936_N', '76.643635_E', 2, 'Manjal podi', '2', '80', 0, 0, '2022-05-04'),
(5, 2, 'Kottiyam, Kollam', '8.8659N', '76.6709E', 1, 'Banana Chips', '3', '180', 0, 0, '2022-05-04');

-- --------------------------------------------------------

--
-- Table structure for table `ureg`
--

CREATE TABLE IF NOT EXISTS `ureg` (
  `uid` int(5) NOT NULL AUTO_INCREMENT,
  `uname` text NOT NULL,
  `uaddress` text NOT NULL,
  `uphno` text NOT NULL,
  `umailid` text NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ureg`
--

INSERT INTO `ureg` (`uid`, `uname`, `uaddress`, `uphno`, `umailid`) VALUES
(1, 'Sanish', 'anchal', '9895391004', 'san@gmail.com'),
(2, 'JIJO', 'Jijo\r\nPalathara', '8547764198', 'pushkaransunitha@gmail.com');
