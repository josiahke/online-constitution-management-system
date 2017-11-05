-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Dec 08, 2011 at 12:33 PM
-- Server version: 5.0.45
-- PHP Version: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `e-law`
-- 
CREATE DATABASE `e-law` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `e-law`;

-- --------------------------------------------------------

-- 
-- Table structure for table `chapters`
-- 

CREATE TABLE `chapters` (
  `id` int(11) NOT NULL auto_increment,
  `capno` varchar(50) NOT NULL,
  `title` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `chapters`
-- 

INSERT INTO `chapters` (`id`, `capno`, `title`) VALUES 
(1, 'I', 'PRELIMINARY'),
(2, 'XXVI', 'OFFENCES ALLIED TO STEALING.'),
(3, 'XXIII', 'ASSAULTS.'),
(4, 'XX', 'OFFENCES CONNECTED WITH MURDER AND SUICIDE.');

-- --------------------------------------------------------

-- 
-- Table structure for table `clauses`
-- 

CREATE TABLE `clauses` (
  `id` int(11) NOT NULL auto_increment,
  `clno` varchar(50) NOT NULL,
  `secno` varchar(50) NOT NULL,
  `title` text NOT NULL,
  `capno` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- 
-- Dumping data for table `clauses`
-- 

INSERT INTO `clauses` (`id`, `clno`, `secno`, `title`, `capno`) VALUES 
(1, 'a', '1', 'This Code shall be interpreted in accordance with the principles of legal\r\ninterpretation obtaining in England, and expressions used in it shall be\r\npresumed, so far as is consistent with their context, and except as may be\r\notherwise expressly provided, to be used with the meaning attaching to them\r\nin English criminal law and shall be construed in accordance therewith', 'I'),
(2, 'a', '2', 'In this Code, unless the context otherwise requiresâ€”\r\n(a) â€œCodeâ€ means this Penal Code;', 'I'),
(3, 'b', '2', 'â€œcourtâ€ means a court of competent jurisdiction;', 'I'),
(4, 'c', '2', 'â€œdangerous harmâ€ means harm endangering life;', 'I'),
(5, 'd', '2', 'â€œdwelling houseâ€ includes any building or structure or part of a\r\nbuilding or structure which is for the time being kept by the\r\nowner or occupier for his or her residence or that of his or her\r\nfamily or servants or any of them, and it is immaterial that it is\r\nfrom time to time uninhabited; a building or structure adjacent to\r\nor occupied with a dwelling house is deemed to be part of the\r\ndwelling house if there is a communication between such\r\nbuilding or structure and the dwelling house, either immediate or\r\nby means of a covered and enclosed passage leading from the one\r\nto the other, but not otherwise;', 'I'),
(6, 'e', '2', 'â€œfelonyâ€ means an offence which is declared by law to be a\r\nfelony or, if not declared to be a misdemeanour, is punishable,\r\nwithout proof of previous conviction, with death or with\r\nimprisonment for three years or more;', 'I'),
(7, 'a', '204', 'Any person whoâ€”\r\n(a) attempts unlawfully to cause the death of another; or\r\n(b) with intent unlawfully to cause the death of another, does any act\r\nor omits to do any act, which it is his or her duty to do, such act\r\nor omission being of such a nature as to be likely to endanger\r\nhuman life,\r\ncommits a felony and is liable to imprisonment for life.', 'XX'),
(8, 'a', '205', 'Any person who, being under sentence of imprisonment for three years or\r\nmore, attempts to commit murder is liable to imprisonment for life, with or\r\nwithout corporal punishment.', 'XX'),
(9, 'a', '206', 'Any person who becomes an accessory after the fact to murder commits a\r\nfelony and is liable to imprisonment for seven years.', 'XX');

-- --------------------------------------------------------

-- 
-- Table structure for table `sections`
-- 

CREATE TABLE `sections` (
  `id` int(11) NOT NULL auto_increment,
  `secno` varchar(50) NOT NULL,
  `capno` varchar(50) NOT NULL,
  `title` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `sections`
-- 

INSERT INTO `sections` (`id`, `secno`, `capno`, `title`) VALUES 
(1, '1', 'I', 'General rule of construction.'),
(2, '2', 'I', 'Interpretation.'),
(3, '276.', 'XXVI', 'Concealing registers.'),
(4, '235', 'XXIII', 'Common assault.'),
(5, '236', 'XXIII', 'Assaults causing actual bodily harm.'),
(6, '237', 'XXIII', 'Assaults on persons protecting wreck.'),
(7, '238', 'XXIII', 'Assaults punishable with two yearsâ€™ imprisonment.'),
(8, '204', 'XX', 'Attempt to murder.'),
(9, '205', 'XX', 'Attempt to murder by convict.'),
(10, '206', 'XX', 'Accessory after the fact to murder.');

-- --------------------------------------------------------

-- 
-- Table structure for table `user`
-- 

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `cat` varchar(50) NOT NULL,
  `emailcon` varchar(100) NOT NULL,
  `secqsn` varchar(100) NOT NULL,
  `secans` varchar(50) NOT NULL,
  `datein` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `user`
-- 

INSERT INTO `user` (`id`, `username`, `password`, `fname`, `lname`, `cat`, `emailcon`, `secqsn`, `secans`, `datein`) VALUES 
(1, 'josiah', 'c4ca4238a0b923820dcc509a6f75849b', 'josiah', 'ngige', 'admin', 'josina08@gmail.com', 'what did you meet your spouse?', '025c4eba4d5157f49c69ab781baf1d5a', '2011-12-06 15:54:04');
