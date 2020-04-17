-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2015 at 08:26 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `final_result_processing_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `course_code` varchar(30) NOT NULL,
  `course_title` varchar(50) NOT NULL,
  `course_credit` varchar(20) NOT NULL,
  `course` varchar(30) NOT NULL,
  `session` varchar(20) NOT NULL,
  `year` varchar(30) NOT NULL,
  `semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_code`, `course_title`, `course_credit`, `course`, `session`, `year`, `semester`) VALUES
('IT 103', 'Information Tecnology Fundamentals', '3', 'Theory', '2009-10', '1st Year', '1st Semester'),
('IT 105', 'Introduction to Programming Environment', '3', 'Theory', '2009-10', '1st Year', '1st Semester'),
('IT 107', 'Communicative English', '3', 'Theory', '2009-10', '1st Year', '1st Semester'),
('IT 109', 'Electronic Devices & Circuits', '3', 'Theory', '2009-10', '1st Year', '1st Semester'),
('IT 102', 'Structured Programming Language Lab with C', '1.5', 'Lab', '2009-10', '1st Year', '1st Semester'),
('IT 104', 'Electronic Devices & Circuits Lab', '1.5', 'Lab', '2009-10', '1st Year', '1st Semester'),
('IT 100', 'Semester Project - I and Viva', '1', 'Project & Viva', '2009-10', '1st Year', '1st Semester'),
('IT 201', 'Mathematics - II', '3', 'Theory', '2009-10', '1st Year', '2nd Semester'),
('IT 203', 'Data Structures', '3', 'Theory', '2009-10', '1st Year', '2nd Semester'),
('IT 205', 'Economics', '3', 'Theory', '2009-10', '1st Year', '2nd Semester'),
('IT 207', 'Accounting', '3', 'Theory', '2009-10', '1st Year', '2nd Semester'),
('IT 209', 'Discrete Mathematics', '3', 'Theory', '2009-10', '1st Year', '2nd Semester'),
('IT 202', 'Data Sturctures Lab', '1.5', 'Lab', '2009-10', '1st Year', '2nd Semester'),
('IT 204', 'Object Oriented Programming Language Lab with C++', '1.5', 'Lab', '2009-10', '1st Year', '2nd Semester'),
('IT 200', 'Semester Project - II and Viva', '1', 'Project & Viva', '2009-10', '1st Year', '2nd Semester'),
('IT 301', 'Algorithm Analysis', '3', 'Theory', '2009-10', '2nd Year', '1st Semester'),
('IT 303', 'Statistics & Probability Theory', '3', 'Theory', '2009-10', '2nd Year', '1st Semester'),
('IT 101', 'Mathematics - I', '3', 'Theory', '2009-10', '1st Year', '1st Semester');

-- --------------------------------------------------------

--
-- Table structure for table `course_mark`
--

CREATE TABLE IF NOT EXISTS `course_mark` (
  `session` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `semester` varchar(30) NOT NULL,
  `class_roll` int(10) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `course_credit` varchar(10) NOT NULL,
  `exam_roll` int(10) NOT NULL,
  `examiner_1` float NOT NULL,
  `examiner_2` float NOT NULL,
  `examiner_3` float NOT NULL,
  `average` float NOT NULL,
  `tutorial` float NOT NULL,
  `lab_final` float NOT NULL,
  `project` float NOT NULL,
  `viva` float NOT NULL,
  `total` float NOT NULL,
  `grade_letter` varchar(5) NOT NULL,
  `grade_point` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_mark`
--

INSERT INTO `course_mark` (`session`, `year`, `semester`, `class_roll`, `course_code`, `course_credit`, `exam_roll`, `examiner_1`, `examiner_2`, `examiner_3`, `average`, `tutorial`, `lab_final`, `project`, `viva`, `total`, `grade_letter`, `grade_point`) VALUES
('2009-10', '4th Year', '2nd Semester', 427, 'IT 701', '3', 120012, 44, 34, 0, 39, 44, 0, 0, 0, 83, 'A+', 4),
('2009-10', '4th Year', '2nd Semester', 428, 'IT 701', '3', 140001, 33, 43, 0, 38, 40, 0, 0, 0, 78, 'A', 3.75),
('2009-10', '4th Year', '2nd Semester', 430, 'IT 701', '3', 140002, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
('2009-10', '4th Year', '2nd Semester', 431, 'IT 701', '3', 140003, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
('2009-10', '4th Year', '2nd Semester', 432, 'IT 701', '3', 140004, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
('2009-10', '4th Year', '2nd Semester', 429, 'IT 701', '3', 140013, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
('2009-10', '4th Year', '2nd Semester', 0, 'IT 701', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
('2009-10', '4th Year', '2nd Semester', 427, 'IT 701', '3', 120012, 44, 44, 0, 44, 44, 0, 0, 0, 83, 'A+', 4),
('2009-10', '4th Year', '2nd Semester', 428, 'IT 701', '3', 140001, 33, 37, 0, 35, 40, 0, 0, 0, 78, 'A', 3.75),
('2009-10', '4th Year', '2nd Semester', 430, 'IT 701', '3', 140002, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
('2009-10', '4th Year', '2nd Semester', 431, 'IT 701', '3', 140003, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
('2009-10', '4th Year', '2nd Semester', 432, 'IT 701', '3', 140004, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
('2009-10', '4th Year', '2nd Semester', 429, 'IT 701', '3', 140013, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
('2009-10', '4th Year', '2nd Semester', 0, 'IT 701', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gpa`
--

CREATE TABLE IF NOT EXISTS `gpa` (
  `session` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class_roll` varchar(10) NOT NULL,
  `exam_roll` varchar(10) NOT NULL,
  `s1` varchar(25) NOT NULL,
  `gp1` varchar(10) NOT NULL,
  `s2` varchar(25) NOT NULL,
  `gp2` varchar(10) NOT NULL,
  `s3` varchar(25) NOT NULL,
  `gp3` varchar(10) NOT NULL,
  `s4` varchar(25) NOT NULL,
  `gp4` varchar(10) NOT NULL,
  `s5` varchar(25) NOT NULL,
  `gp5` varchar(10) NOT NULL,
  `s6` varchar(25) NOT NULL,
  `gp6` varchar(10) NOT NULL,
  `s7` varchar(25) NOT NULL,
  `gp7` varchar(10) NOT NULL,
  `s8` varchar(25) NOT NULL,
  `gp8` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gpa`
--

INSERT INTO `gpa` (`session`, `name`, `class_roll`, `exam_roll`, `s1`, `gp1`, `s2`, `gp2`, `s3`, `gp3`, `s4`, `gp4`, `s5`, `gp5`, `s6`, `gp6`, `s7`, `gp7`, `s8`, `gp8`) VALUES
('2009-10', 'Mst. Alema Khatun', '427', '140012', '1st Year 1st Semester', '3.84', '1st Year 2nd Semester', '3.88', '2nd Year 1st Semester', '3.67', '2nd Year 2nd Semester', '3.88', '3rd Year 1st Semester', '3.77', '3rd Year 2nd Semester', '3.89', '4th Year 1st Semester', '3.88', '4th Year 2ns Semester', '3.79');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE IF NOT EXISTS `marks` (
  `session` varchar(10) NOT NULL,
  `year` varchar(20) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class_roll` varchar(10) NOT NULL,
  `exam_roll` varchar(10) NOT NULL,
  `course1` varchar(10) NOT NULL,
  `c1_ex1` varchar(10) NOT NULL,
  `c1_ex2` varchar(10) NOT NULL,
  `c1_ex3` varchar(10) NOT NULL,
  `c1_av` varchar(10) NOT NULL,
  `c1_tu` varchar(10) NOT NULL,
  `c1_to` varchar(10) NOT NULL,
  `c1_gl` varchar(10) NOT NULL,
  `c1_gp` varchar(10) NOT NULL,
  `course2` varchar(10) NOT NULL,
  `c2_ex1` varchar(10) NOT NULL,
  `c2_ex2` varchar(10) NOT NULL,
  `c2_ex3` varchar(10) NOT NULL,
  `c2_av` varchar(10) NOT NULL,
  `c2_tu` varchar(10) NOT NULL,
  `c2_to` varchar(10) NOT NULL,
  `c2_gl` varchar(10) NOT NULL,
  `c2_gp` varchar(10) NOT NULL,
  `course3` varchar(10) NOT NULL,
  `c3_ex1` varchar(10) NOT NULL,
  `c3_ex2` varchar(10) NOT NULL,
  `c3_ex3` varchar(10) NOT NULL,
  `c3_av` varchar(10) NOT NULL,
  `c3_tu` varchar(10) NOT NULL,
  `c3_to` varchar(10) NOT NULL,
  `c3_gl` varchar(10) NOT NULL,
  `c3_gp` varchar(10) NOT NULL,
  `course4` varchar(10) NOT NULL,
  `c4_ex1` varchar(10) NOT NULL,
  `c4_ex2` varchar(10) NOT NULL,
  `c4_ex3` varchar(10) NOT NULL,
  `c4_av` varchar(10) NOT NULL,
  `c4_tu` varchar(10) NOT NULL,
  `c4_to` varchar(10) NOT NULL,
  `c4_gl` varchar(10) NOT NULL,
  `c4_gp` varchar(10) NOT NULL,
  `course5` varchar(10) NOT NULL,
  `c5_ex1` varchar(10) NOT NULL,
  `c5_ex2` varchar(10) NOT NULL,
  `c5_ex3` varchar(10) NOT NULL,
  `c5_av` varchar(10) NOT NULL,
  `c5_tu` varchar(10) NOT NULL,
  `c5_to` varchar(10) NOT NULL,
  `c5_gl` varchar(10) NOT NULL,
  `c5_gp` varchar(10) NOT NULL,
  `course6` varchar(10) NOT NULL,
  `c6_tu` varchar(10) NOT NULL,
  `c6_lab` varchar(10) NOT NULL,
  `c6_to` varchar(10) NOT NULL,
  `c6_gl` varchar(10) NOT NULL,
  `c6_gp` varchar(10) NOT NULL,
  `course7` varchar(10) NOT NULL,
  `c7_tu` varchar(10) NOT NULL,
  `c7_lab` varchar(10) NOT NULL,
  `c7_to` varchar(10) NOT NULL,
  `c7_gl` varchar(10) NOT NULL,
  `c7_gp` varchar(10) NOT NULL,
  `course8` varchar(10) NOT NULL,
  `c8_tu` varchar(10) NOT NULL,
  `c8_lab` varchar(10) NOT NULL,
  `c8_to` varchar(10) NOT NULL,
  `c8_gl` varchar(10) NOT NULL,
  `c8_gp` varchar(10) NOT NULL,
  `course9` varchar(10) NOT NULL,
  `c9_tu` varchar(10) NOT NULL,
  `c9_lab` varchar(10) NOT NULL,
  `c9_to` varchar(10) NOT NULL,
  `c9_gl` varchar(10) NOT NULL,
  `c9_gp` varchar(10) NOT NULL,
  `course10` varchar(10) NOT NULL,
  `c10_pro` varchar(10) NOT NULL,
  `c10_viva` varchar(10) NOT NULL,
  `c10_to` varchar(10) NOT NULL,
  `c10_gl` varchar(10) NOT NULL,
  `c10_gp` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`session`, `year`, `semester`, `name`, `class_roll`, `exam_roll`, `course1`, `c1_ex1`, `c1_ex2`, `c1_ex3`, `c1_av`, `c1_tu`, `c1_to`, `c1_gl`, `c1_gp`, `course2`, `c2_ex1`, `c2_ex2`, `c2_ex3`, `c2_av`, `c2_tu`, `c2_to`, `c2_gl`, `c2_gp`, `course3`, `c3_ex1`, `c3_ex2`, `c3_ex3`, `c3_av`, `c3_tu`, `c3_to`, `c3_gl`, `c3_gp`, `course4`, `c4_ex1`, `c4_ex2`, `c4_ex3`, `c4_av`, `c4_tu`, `c4_to`, `c4_gl`, `c4_gp`, `course5`, `c5_ex1`, `c5_ex2`, `c5_ex3`, `c5_av`, `c5_tu`, `c5_to`, `c5_gl`, `c5_gp`, `course6`, `c6_tu`, `c6_lab`, `c6_to`, `c6_gl`, `c6_gp`, `course7`, `c7_tu`, `c7_lab`, `c7_to`, `c7_gl`, `c7_gp`, `course8`, `c8_tu`, `c8_lab`, `c8_to`, `c8_gl`, `c8_gp`, `course9`, `c9_tu`, `c9_lab`, `c9_to`, `c9_gl`, `c9_gp`, `course10`, `c10_pro`, `c10_viva`, `c10_to`, `c10_gl`, `c10_gp`) VALUES
('2009-10', '1st Year', '1st Semester', 'Mst. Alema Khatun', '427', '120012', 'IT 101', '43', '33', '', '38', '34', '72', 'A-', '3.5', 'IT 103', '44', '54', '', '49', '40', '89', 'A+', '4', 'IT 105', '55', '33', '33', '40.33', '40', '80.33', 'A+', '4', 'IT 107', '40', '33', '', '36.5', '39', '75.5', 'A', '3.75', 'IT 109', '44', '34', '', '39', '34', '73', 'A-', '3.5', 'IT 102', '57', '34', '91', 'A+', '4', 'IT 104', '56', '33', '89', 'A+', '4', '', '', '', '', '', '', '', '', '', '', '', '', 'IT 100', '45', '33', '78', 'A', '3.75'),
('2009-10', '1st Year', '1st Semester', 'Taski Noor Turna', '428', '140001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('2009-10', '1st Year', '1st Semester', 'Salma Parvin', '430', '140002', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('2009-10', '1st Year', '1st Semester', 'Tanjea Ane', '431', '140003', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('2009-10', '1st Year', '1st Semester', 'Sultana Jahan Soheli', '432', '140004', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('2009-10', '1st Year', '1st Semester', 'Jannatun Nahar', '429', '140013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('2009-10', '1st Year', '1st Semester', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE IF NOT EXISTS `master` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`username`, `password`) VALUES
('admin2', 'admin2');

-- --------------------------------------------------------

--
-- Table structure for table `minput`
--

CREATE TABLE IF NOT EXISTS `minput` (
  `session` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `class_roll` int(20) NOT NULL,
  `exam_roll` int(20) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `ex1` float NOT NULL,
  `ex2` float NOT NULL,
  `ex3` float NOT NULL,
  `tutorial` float NOT NULL,
  `average` float NOT NULL,
  `total` float NOT NULL,
  `grade_letter` varchar(20) NOT NULL,
  `grade_point` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minput`
--

INSERT INTO `minput` (`session`, `year`, `semester`, `class_roll`, `exam_roll`, `course_code`, `ex1`, `ex2`, `ex3`, `tutorial`, `average`, `total`, `grade_letter`, `grade_point`) VALUES
('2009-10', '1st Year', '1st Semester', 428, 0, 'IT 101', 23, 22, 100, 33, 22.5, 55.5, 'B-', 2.75),
('2009-10', '1st Year', '1st Semester', 430, 0, 'IT 101', 34, 21, 33, 22, 25.3333, 47.3333, 'D', 2.25),
('2009-10', '1st Year', '1st Semester', 431, 0, 'IT 101', 34, 22, 43, 33, 26, 59, 'B-', 2.75),
('2009-10', '1st Year', '1st Semester', 432, 0, 'IT 101', 43, 33, 100, 33, 38, 71, 'A-', 3.5),
('2009-10', '1st Year', '1st Semester', 427, 0, 'IT 101', 35, 43, 100, 33, 39, 72, 'A-', 3.5),
('2009-10', '1st Year', '1st Semester', 429, 0, 'IT 101', 54, 33, 25, 23, 47, 70, 'A-', 3.5),
('2009-10', '1st Year', '1st Semester', 428, 0, 'IT 103', 22, 33, 100, 33, 27.5, 60.5, 'B', 3),
('2009-10', '1st Year', '1st Semester', 430, 0, 'IT 103', 23, 32, 100, 43, 27.5, 70.5, 'A-', 3.5),
('2009-10', '1st Year', '1st Semester', 431, 0, 'IT 103', 43, 44, 100, 22, 43.5, 65.5, 'B+', 3.25),
('2009-10', '1st Year', '1st Semester', 432, 0, 'IT 103', 33, 32, 100, 32, 32.5, 64.5, 'B', 3),
('2009-10', '1st Year', '1st Semester', 427, 0, 'IT 103', 45, 33, 33, 34, 41, 75, 'A', 3.75),
('2009-10', '1st Year', '1st Semester', 429, 0, 'IT 103', 54, 43, 100, 33, 48.5, 81.5, 'A+', 4);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `session` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`session`) VALUES
('2009-10');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `class_roll` int(20) NOT NULL,
  `exam_roll` int(20) NOT NULL,
  `name` varchar(60) NOT NULL,
  `session` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `hall` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`class_roll`, `exam_roll`, `name`, `session`, `gender`, `hall`, `email`, `phone`) VALUES
(427, 120012, 'Mst. Alema Khatun', '2009-10', 'Female', 'Faijunnesa Hall', 'alema@gmail.com', '01722345678'),
(428, 140001, 'Taski Noor Turna', '2009-10', 'Female', '', '', ''),
(430, 140002, 'Salma Parvin', '2009-10', 'Female', '', '', ''),
(431, 140003, 'Tanjea Ane', '2009-10', 'Female', '', '', ''),
(432, 140004, 'Sultana Jahan Soheli', '2009-10', 'Female', '', '', ''),
(429, 140013, 'Jannatun Nahar', '2009-10', 'Female', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `t_name` varchar(50) NOT NULL,
  `department` varchar(30) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`t_name`, `department`, `designation`, `username`, `password`) VALUES
('ee', 'IIT', 'Lecturer', 'ss', '11'),
('Dr. Md. Shamim Kaiser', 'IIT', 'Assistant Professor', 'msk', 'iitju'),
('Shamim AL Mamun', 'IIT', 'Assistant Professor', 'sam ', 'iit');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
