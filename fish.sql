-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2018 at 03:21 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fish`
--

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `uid` int(11) NOT NULL,
  `ans1` varchar(100) NOT NULL,
  `ans2` varchar(100) NOT NULL,
  `ans3` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`uid`, `ans1`, `ans2`, `ans3`) VALUES
(1, 'Thiruvanthapuram is the southern Air Command of Indian Air Force!', 'hello! congtnseu roy won! have a nice day!', 'kjscecodecellozckxyyjn_rocks!!');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `uid` int(11) NOT NULL,
  `n1` varchar(45) NOT NULL,
  `n2` varchar(45) NOT NULL,
  `team` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `clg` varchar(45) NOT NULL,
  `cntct` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`uid`, `n1`, `n2`, `team`, `email`, `clg`, `cntct`) VALUES
(159, 'mansi goel', 'sanjana goel', 'techkriti', 'goel.mansi98@gmail.com', 'igdtu', 9044047581),
(161, 'Dikshant Yadav', 'Anuj Bakshi', 'Mustafa', '19abakshi@gmail.com', 'MSIT', 9555868182),
(162, 'paras jain', 'himanshu bhaskar', 'parhim1810', 'jain.paras1810@gmail.com', 'msit', 7835818487),
(163, 'Ankush Garg', 'Aditya Garg', 'Radon', '1998anky@gmail.com', 'Maharaja Surajmal Institute of Technology', 7838765583),
(165, 'Jap Leen Kaur Jolly', 'Sarah Shrivastava', 'JS', 'jap.jolly@gmail.com', 'IGDTUW', 8527209610),
(166, 'djnhhg', 'fjoh', 'ioujfg', 'fuh@gmal.cvo', 'fuy', 6783984679),
(168, 'ATIMA SYAL', 'ISHWEEN KAUR', 'DECIPHERERS', 'ishween1999@gmail.com', 'IGDTUW', 9540305678),
(169, 'Nikhil Sharma', 'Jaskirat Kaur', 'AQUILA', 'nikhil722sharma@gmail.com', 'Guru Tegh Bahadur Institute Of Technology', 918802387533),
(170, 'shubhpreet kaur', 'vaishali gupta', 'The Ultimate', 'vaishalig503@gmail.com', 'GTBIT', 8127086014),
(171, 'Jashan Preet Singh', 'Gaurav', 'Code Lagake Haisha', 'jashanpreet@khalsa.com', 'GTBIT, New Delhi', 9782078700),
(172, 'Pruthivi Raj', 'Puneet Kansal', 'GTBITHunters', 'pruthiviraj71@gmail.com', 'GTBIT', 9654946512),
(173, 'Puranjay', 'Pranjal', 'crucio bros', 'puranjay.makhija@gmail.com', 'MSIT', 9654582928),
(174, 'akshay kumar', 'abhishek singh', 'ak008', 'abhishekyagami@gmail.com', 'msit', 9999512360),
(175, 'Jashan Preet Singh', 'Gaurav', 'Code Lagake Haisha', 'jashanpreet@khalsa.com', 'GTBIT, New Delhi', 9782078700),
(176, 'Taranjot Singh', '-', 'Yodaiam', 'taranzz25@gmail.com', 'GTBIT', 9582012354),
(177, 'rtfy', 'rfu', 'ftug', 'fuygi@df.com', 'cthgbi', 9876545436),
(178, 'anja', 'iuy', 'hyhjj', 'anjalimalik383@gmail.com', 'unmj', 9879875567),
(179, 'asfg', 'q@#$$', 'qwer', 'anjalimalik83960@gmail.com', 'igdtuw', 9876543210),
(180, 'abc', 'qw', 'qwe', 'anjalimalik83960@gmail.com', 'e', 347887678909),
(181, 'aaa', 'qqq', 'aaa', 'anjalimalik83960@gmail.com', 'aaaa', 98766543210),
(182, 'aa', 'ww', 'rty', 'anjalimalik83960@gmail.com', 'rfyghb', 98766543210),
(183, 'yy', 'gg', 'iuu', 'anjalimalik383@gmail.com', 'lll', 98766543210),
(184, 'kk', 'll', 'nn', 'anjalimalik83960@gmail.com', 'iuy', 9),
(185, 'oo', 'pp', 'kkkk', 'anjalimalik83960@gmail.com', 'kkkk', 98766543210);

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `sid` int(11) NOT NULL,
  `team` varchar(45) NOT NULL,
  `score` int(10) NOT NULL DEFAULT '0',
  `on1` varchar(5) NOT NULL DEFAULT 'n',
  `on2` varchar(5) NOT NULL DEFAULT 'n',
  `on3` varchar(5) NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`sid`, `team`, `score`, `on1`, `on2`, `on3`) VALUES
(96, 'techkriti', 0, 'n', 'n', 'n'),
(98, 'Mustafa', 0, 'n', 'n', 'n'),
(99, 'parhim1810', 0, 'n', 'n', 'n'),
(100, 'Radon', 0, 'n', 'n', 'n'),
(102, 'JS', 0, 'n', 'n', 'n'),
(105, 'DECIPHERERS', 0, 'n', 'n', 'n'),
(106, 'AQUILA', 0, 'n', 'n', 'n'),
(107, 'The Ultimate', 0, 'n', 'n', 'n'),
(108, 'Code Lagake Haisha', 0, 'n', 'n', 'n'),
(109, 'GTBITHunters', 0, 'n', 'n', 'n'),
(110, 'crucio bros', 0, 'n', 'n', 'n'),
(111, 'ak008', 0, 'n', 'n', 'n'),
(112, 'Code Lagake Haisha', 0, 'n', 'n', 'n'),
(113, 'Yodaiam', 0, 'n', 'n', 'n'),
(114, 'ftug', 0, 'n', 'n', 'n'),
(115, 'hyhjj', 0, 'n', 'n', 'n'),
(116, 'qwer', 0, 'n', 'n', 'n'),
(117, 'qwe', 0, 'n', 'n', 'n'),
(118, 'aaa', 0, 'n', 'n', 'n'),
(119, 'rty', 0, 'n', 'n', 'n'),
(120, 'iuu', 0, 'n', 'n', 'n'),
(121, 'nn', 0, 'n', 'n', 'n'),
(122, 'kkkk', 0, 'n', 'n', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `timer`
--

CREATE TABLE `timer` (
  `time` int(10) NOT NULL DEFAULT '3600000',
  `team` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timer`
--

INSERT INTO `timer` (`time`, `team`) VALUES
(3550000, ''),
(3600000, 'chikoo'),
(3600000, 'vishu'),
(3540000, 'hjdhsdh'),
(3520000, 'malik'),
(3590000, 'qwer'),
(3600000, 'snjka'),
(3480000, 'astro'),
(2100000, 'chikoo1'),
(3420000, 'sddffg'),
(3060000, 'zxvcnb'),
(3600000, 'wjhdgjh'),
(3550000, ''),
(2630000, 'abcd'),
(3550000, ''),
(3600000, 'puppy parinde'),
(3540000, 'anushka'),
(3360000, 'jhgs'),
(3420000, 'Hola'),
(3540000, 'lol'),
(3240000, 'vcs'),
(3300000, 'tyu'),
(3120000, 'kiol'),
(3420000, 'cvgy'),
(3420000, 'zxvf'),
(3540000, 'bnhj'),
(3360000, 'dscw'),
(3550000, ''),
(3480000, 'xscdv'),
(3180000, 'tyuw'),
(3540000, 'Agent'),
(3540000, 'shield'),
(3480000, 'fes'),
(2400000, 'ewe'),
(2630000, 'abcd'),
(2640000, 'marvel'),
(3580000, 'r'),
(3495000, 'FEE'),
(3290000, 'das'),
(3520000, 'f'),
(3590000, 'gfrgfd'),
(3590000, 'tytr'),
(3570000, 'etet'),
(3550000, ''),
(3590000, 'rwer'),
(3570000, 'ho'),
(3530000, 'check2'),
(3530000, 'check3'),
(3580000, 'check4'),
(3580000, 'gg'),
(3600000, 'vh2ck6'),
(3560000, '7'),
(3590000, '43'),
(3570000, 'wqw'),
(3590000, 'ewsr'),
(10000, 'fghjk'),
(0, 'wersdhfgj'),
(-20000, 'wertyghj'),
(-10000, 'rsdtf'),
(2880000, 'ghf'),
(3600000, 'eyg'),
(3600000, 'rsetdyfugkh'),
(3600000, 'gjh'),
(3570000, 'htdfygh'),
(3600000, 'nmdfxgchvjb'),
(3570000, 'cee'),
(3080000, 'dwdwddwd'),
(3500000, 'kk'),
(3570000, 'ronika'),
(3550000, 'tyi'),
(3580000, 'eq'),
(3520000, 'f'),
(3470000, 'jhh'),
(3560000, '52345'),
(3570000, 'serdtfgh'),
(3580000, 'coder'),
(3570000, 'code'),
(3580000, 'r'),
(3220000, 'fhygjh'),
(3560000, 'hhh'),
(3410000, 'ljfdksd'),
(3550000, 'DHSGJKG'),
(3590000, 'ooo'),
(3580000, 'hgdiikhg'),
(3470000, 'techkriti'),
(3590000, 'crucio bros'),
(3540000, 'Mustafa'),
(3380000, 'parhim1810'),
(3460000, 'Radon'),
(3580000, 'ak007'),
(3480000, 'JS'),
(3520000, 'ioujfg'),
(3520000, 'malik'),
(3550000, 'DECIPHERERS'),
(3590000, 'AQUILA'),
(3590000, 'The Ultimate'),
(3470000, 'Code Lagake Haisha'),
(3500000, 'GTBITHunters'),
(3590000, 'crucio bros'),
(3560000, 'ak008'),
(3470000, 'Code Lagake Haisha'),
(3550000, 'Yodaiam'),
(3600000, 'ftug'),
(3600000, 'hyhjj'),
(3590000, 'qwer'),
(3600000, 'qwe'),
(3600000, 'kkkk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `team` (`team`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `team_idx` (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;
--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
