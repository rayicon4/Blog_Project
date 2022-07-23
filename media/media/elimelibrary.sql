-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2021 at 09:49 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elimelibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `datas`
--

CREATE TABLE `datas` (
  `id` int(10) NOT NULL,
  `pid` int(6) NOT NULL,
  `sid` int(10) NOT NULL,
  `ref` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sub` int(6) NOT NULL,
  `abbrv` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_books`
--

CREATE TABLE `library_books` (
  `id` int(10) NOT NULL,
  `title` varchar(120) NOT NULL,
  `author` varchar(120) NOT NULL,
  `category` int(10) DEFAULT NULL,
  `active` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_books`
--

INSERT INTO `library_books` (`id`, `title`, `author`, `category`, `active`) VALUES
(1, 'Introduction to Economics', 'Abraham Kim Jun', 3, 0),
(2, 'Nok Art', 'Bitrus maigari', 5, 0),
(3, '', '', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `library_category`
--

CREATE TABLE `library_category` (
  `id` int(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `quantity` int(20) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_category`
--

INSERT INTO `library_category` (`id`, `name`, `quantity`, `active`) VALUES
(1, 'applied science', 0, 0),
(2, 'engineering', 0, 0),
(3, 'management science', 0, 0),
(4, 'information and communication technology', 0, 0),
(5, 'public administration', 0, 1),
(6, 'health technology', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `library_category_content`
--

CREATE TABLE `library_category_content` (
  `id` int(6) NOT NULL,
  `source` int(10) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_category_content`
--

INSERT INTO `library_category_content` (`id`, `source`, `content`, `status`, `active`) VALUES
(1, 1, 'Computer Science', 0, 0),
(2, 1, 'Science Lab Technology', 0, 0),
(3, 1, 'Biochemistry', 0, 0),
(4, 1, 'Statistics', 0, 0),
(5, 2, 'Electrical Electronics', 0, 0),
(6, 2, 'Computer Engineering', 0, 0),
(7, 3, 'Accountancy', 0, 0),
(8, 3, 'Business Administration and Management', 0, 0),
(9, 3, 'Banking and Finance', 0, 0),
(10, 3, 'Public Administration', 0, 0),
(11, 3, 'Marketing', 0, 0),
(12, 4, 'Mass Communication', 0, 0),
(13, 6, 'Environmental Health', 0, 0),
(14, 6, 'Medical Laboratory', 0, 0),
(15, 6, 'Nursing', 0, 0),
(16, 6, 'Pharmacy Technology', 0, 0),
(17, 6, 'Public Health', 0, 0),
(18, 1, 'Physics', 0, 0),
(19, 1, 'Microbiology', 0, 0),
(20, 1, 'Biology', 0, 0),
(21, 1, 'Inorganic Chemistry', 0, 0),
(22, 1, 'Organic Chemistry', 0, 0),
(23, 3, 'Mass Communication', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `library_content`
--

CREATE TABLE `library_content` (
  `id` int(6) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` int(50) DEFAULT NULL,
  `quantity` int(50) DEFAULT NULL,
  `example` varchar(140) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_content`
--

INSERT INTO `library_content` (`id`, `name`, `type`, `quantity`, `example`, `active`) VALUES
(1, 'Author', 1, NULL, 'Surname, First name M; Benjamin, Patrick M; Goodluck, Jonathan E;', 0),
(2, 'Book Title', 1, NULL, 'Introduction to Chemistry', 0),
(3, 'City', 1, NULL, 'Manchester', 0),
(4, 'Year', 2, NULL, '1970', 0),
(5, 'Publisher', 1, NULL, 'Oxford press', 0),
(6, 'Editor', 1, NULL, 'Surname, First name M; Benjamin, Patrick M; Goodluck, Jonathan E;', 0),
(7, 'Volume', 1, NULL, 'III', 0),
(8, 'Number Of Volumes', 1, NULL, 'VI', 0),
(9, 'Edition', 1, NULL, '3rd Edition', 0),
(10, 'Keywords', 1, NULL, 'School, Medicine, Heart', 0),
(11, 'Supervisor', 1, NULL, 'Dr. Emeka Kolade', 0),
(12, 'Isbn', 1, NULL, '12345345WEE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `library_data`
--

CREATE TABLE `library_data` (
  `id` int(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `type` int(6) NOT NULL,
  `data` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_data`
--

INSERT INTO `library_data` (`id`, `key`, `type`, `data`) VALUES
(1, '1', 1, 'John Meda J;'),
(7, '1', 2, 'Introduction to Chemistry'),
(8, '1', 3, 'Manchester'),
(9, '1', 4, '2009'),
(10, '1', 5, 'Wale Press'),
(21, '1', 7, '12211'),
(22, '1', 12, '1223221');

-- --------------------------------------------------------

--
-- Table structure for table `library_key`
--

CREATE TABLE `library_key` (
  `id` int(100) NOT NULL,
  `source` int(10) NOT NULL,
  `category` int(100) NOT NULL,
  `categoryname` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `data` longtext NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  `coverlink` varchar(200) DEFAULT NULL,
  `dateCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `level` int(4) DEFAULT '1',
  `veiws` int(10) NOT NULL,
  `author` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_key`
--

INSERT INTO `library_key` (`id`, `source`, `category`, `categoryname`, `title`, `data`, `link`, `coverlink`, `dateCreated`, `level`, `veiws`, `author`) VALUES
(1, 4, 2, 0, 'Nok Art', '', NULL, 'img/pdf.png', '2017-04-10 02:32:41', 1, 2, NULL),
(5, 2, 2, 0, 'Introduction to Management', '', NULL, 'img/doc.png', '2017-05-21 06:50:57', 1, 12, NULL),
(9, 1, 1, 0, 'Windows 7 Install to Secure', '', 'document/9.pdf', '../cover/9_c.jpg', '2017-05-21 08:07:14', 1, 2, 'Jennie howie; liam phelam'),
(10, 1, 1, 0, 'Policing Cyber Crime', '', 'document/10.pdf', '../cover/10_c.jpg', '2017-05-21 08:07:25', 1, 3, 'Petter Gottschalk'),
(14, 2, 1, 0, 'Flowers', '', 'document/14.docx', 'cover/14_c.png', '2017-07-16 20:00:06', 1, 0, 'Menschok Pen'),
(15, 2, 3, 0, 'Flowers', '', 'document/15.docx', 'cover/15_c.png', '2017-07-16 20:05:55', 1, 0, 'Menschok Pen'),
(16, 3, 4, 0, 'Major Chem', '', NULL, NULL, '2017-07-16 20:07:19', 1, 0, 'Patrick Muen'),
(17, 3, 4, 0, 'Major Chem', '', NULL, NULL, '2017-07-16 20:07:51', 1, 1, 'Patrick Muen'),
(20, 3, 5, 0, 'Art Books', '', 'document/20.pdf', '../cover/20_c.png', '2017-08-17 11:30:54', 1, 1, 'Me Books'),
(23, 3, 2, 0, 'Music', '', 'picture/23.jpg', '../cover/23_c.jpg', '2017-08-17 11:38:55', 1, 0, 'Mas Media'),
(24, 1, 5, 0, 'Read', '', 'picture/24.jpg', '../cover/24_c.jpg', '2017-08-17 11:56:10', 1, 0, 'Reader'),
(25, 1, 3, 0, '2015_Management and HRM_FINAL', '', 'document/25.pdf', '../cover/25_c.jpg', '2018-04-06 05:28:07', 1, 0, 'Professor David G. Lloyd'),
(26, 1, 7, 0, 'Analytics for Managerial Decision Making', '', 'document/26.pdf', '../cover/26_c.jpg', '2018-04-06 06:39:52', 1, 0, 'Christopher J. Skousen; Larry M. Walther'),
(27, 1, 7, 0, 'Basics of Accounting & Information Processing', '', 'document/27.pdf', '../cover/27_c.jpg', '2018-04-06 06:59:21', 1, 0, 'Christopher J. Skousen; Larry M. Walther'),
(28, 1, 3, 0, 'Biopharmaceuticals_Biochemistry', '', 'document/28.pdf', '../cover/28_c.jpg', '2018-04-06 07:06:52', 1, 0, 'Gary_Walsh'),
(29, 1, 8, 0, 'Armstrongs Handbook of Management and Leadership', '', 'document/29.pdf', '../cover/29_c.jpg', '2018-04-06 07:23:18', 1, 0, 'michael armstrong'),
(30, 1, 2, 0, '_Fundamental_Food_Microbiology(BookFi.org)', '', 'document/30.pdf', '../cover/30_c.jpg', '2018-04-06 07:30:05', 1, 0, '[Bibek_Ray]'),
(31, 7, 1, 0, 'creative powerpoint writeups6', '', 'picture/31.jpg', '../cover/31_c.jpg', '2018-04-09 02:43:54', 1, 0, ''),
(32, 7, 1, 0, 'creative powerpoint writeups1', '', 'picture/32.jpg', '../cover/32_c.jpg', '2018-04-09 02:47:09', 1, 0, 'abraham lincoln'),
(33, 7, 1, 0, 'creative powerpoint writeups2', '', 'picture/33.jpg', '../cover/33_c.jpg', '2018-04-09 02:47:31', 1, 0, ''),
(34, 7, 1, 0, 'creative powerpoint writeups3', '', 'picture/34.jpg', '../cover/34_c.jpg', '2018-04-09 02:47:52', 1, 0, ''),
(35, 7, 1, 0, 'creative powerpoint writeups4', '', 'picture/35.jpg', '../cover/35_c.jpg', '2018-04-09 02:48:25', 1, 0, ''),
(36, 7, 1, 0, 'creative powerpoint writeups5', '', 'picture/36.jpg', '../cover/36_c.jpg', '2018-04-09 02:48:46', 1, 0, ''),
(37, 1, 1, 0, 'What Is Computer Science', '', 'document/37.pdf', '../cover/37_c.jpg', '2018-04-09 02:52:05', 1, 0, ''),
(38, 1, 1, 0, 'Intro to the art of computer science', '', 'document/38.pdf', '../cover/38_c.jpg', '2018-04-09 02:54:11', 1, 0, ''),
(39, 1, 1, 0, '40 key computer science concepts explained in layman terms', '', 'document/39.pdf', '../cover/39_c.jpg', '2018-04-09 02:56:01', 1, 0, 'chalcheo.com'),
(40, 1, 1, 0, 'Good Digital Hygiene', '', 'document/40.pdf', '../cover/40_c.jpg', '2018-04-09 03:03:20', 1, 0, 'Dr Eduardo Gelbstein'),
(41, 1, 1, 0, 'Computer Programming Environment', '', 'document/41.pdf', '../cover/41_c.jpg', '2018-04-09 03:04:40', 1, 0, 'tutorial point'),
(42, 1, 1, 0, 'Computer Programming Overview', '', 'document/42.pdf', '../cover/42_c.jpg', '2018-04-09 03:06:02', 1, 0, 'tutorial point'),
(43, 1, 1, 0, 'Recap of Python Essentials', '', 'document/43.pdf', '../cover/43_c.jpg', '2018-04-09 03:07:40', 1, 0, ''),
(44, 1, 1, 0, 'What Is Programming', '', 'document/44.pdf', '../cover/44_c.jpg', '2018-04-09 03:08:50', 1, 0, ''),
(45, 1, 1, 0, 'Google Developers- Python Introduction ', '', 'document/45.pdf', '../cover/45_c.jpg', '2018-04-09 03:10:25', 1, 0, 'Google Developers'),
(46, 1, 1, 0, 'Python Lists Â _Â  Google for Education Â _Â  Google Developers', '', 'document/46.pdf', '../cover/46_c.jpg', '2018-04-09 03:12:23', 1, 0, 'Google Developers'),
(47, 1, 1, 0, 'Digital Thinking and Mobile Teaching', '', 'document/47.pdf', '../cover/47_c.jpg', '2018-04-09 03:33:48', 1, 0, 'Dr Julie Reinhart; Dr Renee Robinson'),
(48, 1, 1, 0, 'Building Information Modeling', '', 'document/48.pdf', '../cover/48_c.jpg', '2018-04-09 03:36:19', 1, 0, 'Yusuf Arayici'),
(49, 1, 7, 0, 'Analytics for Managerial Decision Making', '', 'document/49.pdf', '../cover/49_c.jpg', '2018-04-09 04:02:36', 1, 0, 'Christopher J. Skousen; Larry M. Walther'),
(50, 1, 7, 0, 'Basics of Accounting & Information Processing', '', 'document/50.pdf', '../cover/50_c.jpg', '2018-04-09 04:03:37', 1, 0, 'Christopher J. Skousen; Larry M. Walther'),
(51, 1, 7, 0, 'Budgeting_ Planning for Success', '', 'document/51.pdf', '../cover/51_c.jpg', '2018-04-09 04:04:15', 1, 0, 'Christopher J. Skousen; Larry M. Walther'),
(52, 1, 7, 0, 'Cost Analysis', '', 'document/52.pdf', '../cover/52_c.jpg', '2018-04-09 04:04:53', 1, 0, 'Christopher J. Skousen; Larry M. Walther'),
(53, 1, 7, 0, 'Current Assets', '', 'document/53.pdf', '../cover/53_c.jpg', '2018-04-09 04:05:33', 1, 0, 'Christopher J. Skousen; Larry M. Walther'),
(54, 1, 7, 0, 'Income Measurement & The Reporting Cycle', '', 'document/54.pdf', '../cover/54_c.jpg', '2018-04-09 04:06:17', 1, 0, 'Christopher J. Skousen; Larry M. Walther'),
(55, 1, 7, 0, 'Introduction to Managerial Accounting', '', 'document/55.pdf', '../cover/55_c.jpg', '2018-04-09 04:07:00', 1, 0, 'Christopher J. Skousen; Larry M. Walther'),
(56, 1, 7, 0, 'Job Costing', '', 'document/56.pdf', '../cover/56_c.jpg', '2018-04-09 04:07:35', 1, 0, 'Christopher J. Skousen; Larry M. Walther'),
(57, 1, 7, 0, 'Liabilities and Equity', '', 'document/57.pdf', '../cover/57_c.jpg', '2018-04-09 04:08:15', 1, 0, 'Christopher J. Skousen; Larry M. Walther'),
(58, 1, 7, 0, 'Long-Term Assets', '', 'document/58.pdf', '../cover/58_c.jpg', '2018-04-09 04:08:53', 1, 0, 'Christopher J. Skousen; Larry M. Walther'),
(59, 1, 7, 0, 'Managerial and Cost Accounting', '', 'document/59.pdf', '../cover/59_c.jpg', '2018-04-09 04:09:26', 1, 0, 'Christopher J. Skousen; Larry M. Walther'),
(60, 1, 7, 0, 'Process and Activity-Based Costing', '', 'document/60.pdf', '../cover/60_c.jpg', '2018-04-09 04:09:58', 1, 0, 'Christopher J. Skousen; Larry M. Walther'),
(61, 1, 7, 0, 'Reporting Techniques', '', 'document/61.pdf', '../cover/61_c.jpg', '2018-04-09 04:10:28', 1, 0, 'Christopher J. Skousen; Larry M. Walther'),
(62, 1, 7, 0, 'The Accounting Cycle', '', 'document/62.pdf', '../cover/62_c.jpg', '2018-04-09 04:11:05', 1, 0, 'Christopher J. Skousen; Larry M. Walther'),
(63, 1, 7, 0, 'Tools for Enterprise Performance Evaluation', '', 'document/63.pdf', '../cover/63_c.jpg', '2018-04-09 04:11:36', 1, 0, 'Christopher J. Skousen; Larry M. Walther'),
(64, 1, 7, 0, 'Using Accounting Information', '', 'document/64.pdf', '../cover/64_c.jpg', '2018-04-09 04:12:18', 1, 0, 'Christopher J. Skousen; Larry M. Walther'),
(65, 1, 5, 0, 'Buying_for_Bus', '', 'document/65.pdf', '../cover/65_c.jpg', '2018-04-09 04:14:58', 1, 0, 'Christopher_Barrat_Mark_Whitehead'),
(66, 1, 5, 0, 'High_Reliability_Magnetic', '', 'document/66.pdf', '../cover/66_c.jpg', '2018-04-09 04:16:00', 1, 0, 'Colonel_Wm._T._McLyman'),
(67, 1, 5, 0, '[Committee_on_the_Societal_and_Economic_Impacts', '', 'document/67.pdf', '../cover/67_c.jpg', '2018-04-09 04:17:25', 1, 0, 'national academics press'),
(68, 1, 5, 0, 'electronic control of switched reluctance machines', '', 'document/68.pdf', '../cover/68_c.jpg', '2018-04-09 04:18:52', 1, 0, 'Enrique_Acha_Vassilios_Agelidis_Olimpo_Anaya_TJE'),
(69, 1, 5, 0, 'Electromagnetic_fields_in_mec', '', 'document/69.pdf', '../cover/69_c.jpg', '2018-04-09 04:19:31', 1, 0, 'et_al,_A._Krawczyk'),
(70, 1, 5, 0, '[Inst_of_Electrical__Electronics_Engineers]_IEEE_', '', 'document/70.pdf', '../cover/70_c.jpg', '2018-04-09 04:20:47', 1, 0, 'Inst_of_Electrical__Electronics_Engineers'),
(71, 1, 5, 0, 'Institute_of_Electrical_and_Electronics_Engineers (2)', '', 'document/71.pdf', '../cover/71_c.jpg', '2018-04-09 04:26:38', 1, 0, 'Institute_of_Electrical_and_Electronics_Engineers'),
(72, 1, 5, 0, '[Institute_of_Electrical_and_Electronics_Engineers', '', 'document/72.pdf', '../cover/72_c.jpg', '2018-04-09 04:27:18', 1, 0, 'nstitute_of_Electrical_and_Electronics_Engineers'),
(73, 1, 5, 0, 'Electric_Power_Transformer_Engin', '', 'document/73.pdf', '../cover/73_c.jpg', '2018-04-09 04:28:07', 1, 0, 'James_H._Harlow'),
(74, 1, 5, 0, 'Advanced_Electrical_and_Electronics_Eng', '', 'document/74.pdf', '../cover/74_c.jpg', '2018-04-09 04:28:43', 1, 0, 'Jian_Lee'),
(75, 1, 5, 0, 'Electric_Power_Substations_Engi', '', 'document/75.pdf', '../cover/75_c.jpg', '2018-04-09 04:29:31', 1, 0, 'John_D._McDonald'),
(76, 1, 5, 0, 'An_Assessment_of_the_N', '', 'document/76.pdf', '../cover/76_c.jpg', '2018-04-09 04:30:18', 1, 0, 'National_Research_Counci'),
(77, 1, 5, 0, 'Electronics,_Power_Electronics,_(BookFi.org)', '', 'document/77.pdf', '../cover/77_c.jpg', '2018-04-09 04:30:54', 1, 0, 'Richard_C._Dorf'),
(79, 1, 4, 0, 'Inferential Statistics', '', 'document/79.pdf', '../cover/79_c.jpg', '2018-04-09 05:16:00', 1, 0, 'Leif mejibro'),
(80, 1, 4, 0, 'Sequences and Power Series', '', 'document/80.pdf', '../cover/80_c.jpg', '2018-04-09 05:19:37', 1, 0, 'Leif mejibro'),
(81, 1, 4, 0, 'Real Functions in One Variable', '', 'document/81.pdf', '../cover/81_c.jpg', '2018-04-09 05:35:29', 1, 0, 'leif majibro'),
(84, 1, 2, 0, 'Benson''s_Microbiological_Applicat', '', 'document/84.pdf', '../cover/84_c.jpg', '2018-04-09 07:18:48', 1, 0, 'Alfred_E_Brown'),
(85, 1, 2, 0, 'Fundamental_Food_Microbiology', '', 'document/85.pdf', '../cover/85_c.jpg', '2018-04-09 07:19:32', 1, 0, 'Bibek_Ray'),
(86, 1, 2, 0, 'Handbook_of_Water_an', '', 'document/86.pdf', '../cover/86_c.jpg', '2018-04-09 07:20:18', 1, 0, 'Duncan_Mara,_Nigel_J._Horan'),
(87, 1, 2, 0, 'Encyclopedia_of_environmental_mic', '', 'document/87.pdf', '../cover/87_c.jpg', '2018-04-09 07:21:03', 1, 0, 'Gabriel_Bitton'),
(88, 1, 2, 0, 'Wastewater_Microbiology', '', 'document/88.pdf', '../cover/88_c.jpg', '2018-04-09 07:21:52', 1, 0, 'Gabriel_Bitton'),
(89, 1, 2, 0, 'Modern_Food_Microbiology', '', 'document/89.pdf', '../cover/89_c.jpg', '2018-04-09 07:22:31', 1, 0, 'James_M._Jay'),
(90, 1, 2, 0, 'Microbiology', '', 'document/90.pdf', '../cover/90_c.jpg', '2018-04-09 07:23:14', 1, 0, 'M._Kelly_Cowan,_Kathleen_P._Talaro'),
(91, 1, 2, 0, 'Viruses', '', 'document/91.pdf', '../cover/91_c.jpg', '2018-04-09 07:23:56', 1, 0, 'Marianne_Manchester,_Nicole_F._Steinmetz'),
(92, 1, 2, 0, 'Practical_Handbook_of_Microbiology', '', 'document/92.pdf', '../cover/92_c.jpg', '2018-04-09 07:24:29', 1, 0, 'Melvyn_Kay'),
(93, 1, 2, 0, 'Human_Microbiology', '', 'document/93.pdf', '../cover/93_c.jpg', '2018-04-09 07:25:11', 1, 0, 'Simon_P_Hardy'),
(94, 1, 2, 0, 'Agricultural Entomology', '', 'document/94.pdf', '../cover/94_c.jpg', '2018-04-09 07:26:02', 1, 0, 'David V.Alford'),
(95, 1, 2, 0, 'Biology 6th ed - Raven Johnson', '', 'document/95.pdf', '../cover/95_c.jpg', '2018-04-09 07:26:49', 1, 0, 'Raven Johnson'),
(96, 1, 2, 0, 'Botany Illustrated (2nd Ed)', '', 'document/96.pdf', '../cover/96_c.jpg', '2018-04-09 07:28:13', 1, 0, 'JAnice Glam-lacy; Peter B.Kaufman'),
(97, 1, 2, 0, 'Botany.Illustrated', '', 'document/97.pdf', '../cover/97_c.jpg', '2018-04-09 07:28:59', 1, 0, 'JAnice Glam-lacy; Peter B.Kaufman'),
(98, 1, 2, 0, 'Cell Biology A Short Course 2d ed - ', '', 'document/98.pdf', '../cover/98_c.jpg', '2018-04-09 07:29:35', 1, 0, 'Stephen R. Bolsover, Jeremy S. Hyams'),
(99, 1, 2, 0, 'Animal_Sciences_(vol._1)_(2002)(en)(226s)', '', 'document/99.pdf', '../cover/99_c.jpg', '2018-04-09 07:30:14', 1, 0, 'Cobb_A.B.'),
(100, 1, 2, 0, 'Animal_Sciences_(vol._2)_(2002)(en)(222s)', '', 'document/100.pdf', '../cover/100_c.jpg', '2018-04-09 07:30:51', 1, 0, 'Cobb_A.B.'),
(101, 1, 2, 0, 'Essencials Microbiology', '', 'document/101.pdf', '../cover/101_c.jpg', '2018-04-09 07:31:22', 1, 0, 'Stuart Hogg'),
(102, 1, 2, 0, 'Essential Cell Biology,Volume 2', '', 'document/102.pdf', '../cover/102_c.jpg', '2018-04-09 07:32:07', 1, 0, 'John Davey and Mike Lord'),
(103, 1, 2, 0, 'Essentials of Animal Physiology 4th Ed. -  (New Age, 2007)', '', 'document/103.pdf', '../cover/103_c.jpg', '2018-04-09 07:32:39', 1, 0, 'S.C. Rastogi'),
(104, 1, 2, 0, 'Fundamental Food Microbiology', '', 'document/104.pdf', '../cover/104_c.jpg', '2018-04-09 07:33:16', 1, 0, 'Bibek_Ray'),
(105, 1, 2, 0, 'Genetics Vol 2, E-I - Macmillan Science Library', '', 'document/105.pdf', '../cover/105_c.jpg', '2018-04-09 07:33:51', 1, 0, 'Macmillan Science Library'),
(106, 1, 2, 0, 'Gunning_B.E.S.,_._Plant_Cell_Biology_(1996)(en)(210s)', '', 'document/106.pdf', '../cover/106_c.jpg', '2018-04-09 07:34:36', 1, 0, 'Steer_M.W'),
(107, 1, 2, 0, 'Lehninger Principles of Biochemistry, Fourth Edition - ', '', 'document/107.pdf', '../cover/107_c.jpg', '2018-04-09 07:35:08', 1, 0, 'David L. Nelson, Michael M. Cox'),
(108, 1, 2, 0, 'Medical Microbiology for the New Curriculum (2007)', '', 'document/108.pdf', '../cover/108_c.jpg', '2018-04-09 07:35:55', 1, 0, 'Robert Carey'),
(109, 1, 2, 0, 'Modern Microbial Genetics 2d ed - ', '', 'document/109.pdf', '../cover/109_c.jpg', '2018-04-09 07:36:23', 1, 0, 'Uldis N. Streips'),
(110, 1, 2, 0, 'Pharmaceutical_Microbiology_6th_ed_-_(Blackwell,_1998)_WW', '', 'document/110.pdf', '../cover/110_c.jpg', '2018-04-09 07:36:57', 1, 0, 'W._Hugo,_A._Russell_'),
(111, 1, 2, 0, 'Plant Cell Biology - ', '', 'document/111.pdf', '../cover/111_c.jpg', '2018-04-09 07:37:26', 1, 0, 'William V. Dashek'),
(112, 1, 2, 0, 'Plant_Anatomy_(2002)(en)(239s)', '', 'document/112.pdf', '../cover/112_c.jpg', '2018-04-09 07:38:00', 1, 0, 'Roberts_A.'),
(113, 1, 2, 0, 'Plant_Sciences_(vol._1)_(2001)(en)(191s)', '', 'document/113.pdf', '../cover/113_c.jpg', '2018-04-09 07:38:35', 1, 0, 'Robinson_R._(ed.)_'),
(114, 1, 2, 0, 'Plant_Sciences_(vol._2)_(2001)(en)(229s)', '', 'document/114.pdf', '../cover/114_c.jpg', '2018-04-09 07:39:08', 1, 0, 'Robinson_R._(ed.)_'),
(115, 1, 2, 0, 'Plant_Sciences_(vol._3)_(2001)(en)(223s)', '', 'document/115.pdf', '../cover/115_c.jpg', '2018-04-09 07:39:39', 1, 0, 'Robinson_R._(ed.)_'),
(116, 1, 12, 0, 'the-upside-down-guide-to-writing-for-the-press', '', 'document/116.pdf', '../cover/116_c.jpg', '2018-04-09 07:45:24', 1, 0, 'Peter Rose'),
(117, 1, 12, 0, 'The Government Factor', '', 'document/117.pdf', '../cover/117_c.jpg', '2018-04-09 07:46:45', 1, 0, 'Richard T.Kaplar; Patrick D.Maines'),
(118, 1, 12, 0, 'Data Journalism Book', '', 'document/118.pdf', '../cover/118_c.jpg', '2018-04-09 07:47:43', 1, 0, 'Elena Egawhary; Cynthia O.Murchu'),
(119, 1, 3, 0, 'Analytical_biochemistry', '', 'document/119.pdf', '../cover/119_c.jpg', '2018-04-09 07:50:40', 1, 0, 'David_Holme,_Hazel_Peck'),
(120, 1, 3, 0, 'Physical_Biochemistry_Principles', '', 'document/120.pdf', '../cover/120_c.jpg', '2018-04-09 07:51:18', 1, 0, 'David_Sheehan'),
(121, 1, 3, 0, 'Biopharmaceuticals._Biochemistry', '', 'document/121.pdf', '../cover/121_c.jpg', '2018-04-09 07:51:52', 1, 0, 'Gary_Walsh'),
(122, 1, 3, 0, 'Biopharmaceuticals_Biochemistry_and_', '', 'document/122.pdf', '../cover/122_c.jpg', '2018-04-09 07:52:32', 1, 0, 'Gary_Walsh'),
(123, 1, 3, 0, '_Basic_Concepts_in_Biochemistry_A_(BookFi.org)', '', 'document/123.pdf', '../cover/123_c.jpg', '2018-04-09 07:53:05', 1, 0, '[Hiram_Gilbert]'),
(124, 1, 3, 0, 'Basic_Concepts_in_Biochemistry_A_S(BookFi.org)', '', 'document/124.pdf', '../cover/124_c.jpg', '2018-04-09 07:53:35', 1, 0, '[Hiram_Gilbert]_'),
(125, 1, 3, 0, 'inorganic polyphosphates', '', 'document/125.pdf', '../cover/125_c.jpg', '2018-04-09 07:54:48', 1, 0, '[Igor_S._Kulaev,_Vladimir_Vagabov,_Tatiana_Kulakov'),
(126, 1, 8, 0, '2015_Management and HRM_FINAL_(web)', '', 'document/126.pdf', '../cover/126_c.jpg', '2018-04-09 07:58:09', 1, 0, 'university of south australia'),
(127, 1, 8, 0, 'Business Construction Management', '', 'document/127.pdf', '../cover/127_c.jpg', '2018-04-09 07:59:12', 1, 0, 'Nick Ganaway'),
(128, 1, 8, 0, 'DE-Manual_on_organising-and_managing_a_chamber_of_commerce-ZDH-2000', '', 'document/128.pdf', '../cover/128_c.jpg', '2018-04-09 08:00:09', 1, 0, 'Judy Tan Lan Eng'),
(129, 1, 8, 0, 'Factiva-Effective-Communication-Knowledge-Profs', '', 'document/129.pdf', '../cover/129_c.jpg', '2018-04-09 08:01:21', 1, 0, 'JAN SYKES'),
(130, 1, 8, 0, 'Fifty Keyfigures in Management', '', 'document/130.pdf', '../cover/130_c.jpg', '2018-04-09 08:02:04', 1, 0, 'morgen witzel'),
(131, 1, 8, 0, 'Information Resources Management 2', '', 'document/131.pdf', '../cover/131_c.jpg', '2018-04-09 08:02:45', 1, 0, 'Information Resources Management 2'),
(132, 1, 8, 0, 'Information Resources Management 3', '', 'document/132.pdf', '../cover/132_c.jpg', '2018-04-09 08:03:46', 1, 0, 'BUREAU OF LAND MANAGEMENT'),
(133, 1, 8, 0, 'Information Resources Management Strategic Plan', '', 'document/133.pdf', '../cover/133_c.jpg', '2018-04-09 08:04:41', 1, 0, 'Office of the Chief Information Officer'),
(134, 1, 8, 0, 'Information Resources Management', '', 'document/134.pdf', '../cover/134_c.jpg', '2018-04-09 08:05:26', 1, 0, 'Eileen M. Trauth'),
(135, 1, 8, 0, 'Knowledge, Management, and Organizational Learning', '', 'document/135.pdf', '../cover/135_c.jpg', '2018-04-09 08:06:17', 1, 0, 'William R. King'),
(136, 1, 8, 0, 'Organizational Mindfulness', '', 'document/136.pdf', '../cover/136_c.jpg', '2018-04-09 08:07:04', 1, 0, 'TIMOTHY J. VOGUS Vanderbilt University KATHLEEN M. SUTCLIFFE University of Michigan'),
(137, 2, 8, 0, 'Accounting education at vocational high schools', '', 'document/137.pdf', '../cover/137_c.jpg', '2018-04-09 08:12:10', 1, 0, 'BÃ¼yÃ¼kipekÃ§i and Ã‡etin'),
(138, 2, 8, 0, 'an assessment of the economic viability of ecological cofee processing technology in cameroon', '', 'document/138.pdf', '../cover/138_c.jpg', '2018-04-09 08:15:13', 1, 0, 'Musebe et al'),
(139, 2, 8, 0, 'external debt and economic growth in the east africa community', '', 'document/139.pdf', '../cover/139_c.jpg', '2018-04-09 08:17:55', 1, 0, 'Babu et al'),
(140, 2, 8, 0, 'the influence of age and gender on entrepreneurial behavior characteristics of students and professionals of business administration', '', 'document/140.pdf', '../cover/140_c.jpg', '2018-04-09 08:20:41', 1, 0, 'Lima et al'),
(141, 1, 4, 0, 'descriptive statistics', '', 'document/141.pdf', '../cover/141_c.jpg', '2018-04-20 11:03:54', 1, 0, 'Mohammed A.Shayib'),
(142, 1, 4, 0, 'Real Functions in One Variable ', '', 'document/142.pdf', '../cover/142_c.jpg', '2018-04-20 11:07:17', 1, 0, 'Taylor''s...'),
(143, 1, 9, 0, 'accession-to-the-wto-part-i', '', 'picture/143.jpg', NULL, '2018-04-24 13:13:40', 1, 0, 'Igor Eromenko'),
(144, 1, 9, 0, 'accession-to-the-wto-part-ii', '', 'picture/144.jpg', NULL, '2018-04-24 13:17:05', 1, 0, 'Igor Eromenko'),
(145, 1, 9, 0, 'advanced-macroeconomics', '', 'picture/145.jpg', NULL, '2018-04-24 13:20:23', 1, 0, 'Sanjay Rode'),
(146, 1, 1, 0, 'troduction to Chemi', '', 'document/146.pdf', '../cover/146_c.jpg', '2019-08-29 11:23:57', 1, 0, 'troduction to Chemi'),
(147, 1, 13, 0, 'A Community Guide to Environmental Health', '', 'document/147.pdf', '../cover/147_c.jpg', '2020-12-16 13:03:46', 1, 0, 'Pam Fadem'),
(148, 1, 13, 0, 'Advances in Environmental Control Technology  Health and Toxicology', '', 'document/148.pdf', '../cover/148_c.jpg', '2020-12-16 13:05:23', 1, 0, 'Paul N'),
(149, 1, 13, 0, 'Advances in water and wastewater treatment technology', '', 'document/149.pdf', '../cover/149_c.jpg', '2020-12-16 13:06:43', 1, 0, 'K. Kanaki'),
(150, 1, 13, 0, 'Advances in Water Resources Management', '', 'document/150.pdf', '../cover/150_c.jpg', '2020-12-16 13:09:41', 1, 0, 'Lawrence K Wang'),
(151, 1, 13, 0, 'Air Pollution Health and Environmental Impacts', '', 'document/151.pdf', '../cover/151_c.jpg', '2020-12-16 13:11:09', 1, 0, 'Chandra Ojha'),
(152, 1, 13, 0, 'Behavior, Health, and Environmental Stress ', '', 'document/152.pdf', '../cover/152_c.jpg', '2020-12-16 13:12:36', 1, 0, 'David Krantz'),
(153, 1, 13, 0, 'Best practices for environmental health environmental pollution, protection', '', 'document/153.pdf', '../cover/153_c.jpg', '2020-12-16 13:14:13', 1, 0, 'Herman Koren'),
(154, 1, 13, 0, ' Environmental Health and Toxicology ', '', 'document/154.pdf', '../cover/154_c.jpg', '2020-12-16 13:17:33', 1, 0, 'Mathew Lapogata'),
(155, 1, 13, 0, 'Development of Commercial Wood Preservatives. Efficacy, Environmental, and Health Issues', '', 'document/155.pdf', '../cover/155_c.jpg', '2020-12-16 13:20:18', 1, 0, 'Shultz T'),
(156, 1, 13, 0, 'Ecosystems and human health_ toxicology and environmental hazards', '', 'document/156.pdf', '../cover/156_c.jpg', '2020-12-16 13:21:25', 1, 0, 'Richard Philip'),
(157, 1, 13, 0, 'Environmental and health & safety management _ a guide to compliance', '', 'document/157.pdf', '../cover/157_c.jpg', '2020-12-16 13:24:29', 1, 0, 'Nicholas P. C'),
(158, 1, 13, 0, 'Environmental and Health Impact of Solid Waste Management Activities', '', 'document/158.pdf', '../cover/158_c.jpg', '2020-12-16 13:25:38', 1, 0, 'R. M. Harrison'),
(159, 1, 13, 0, 'Environmental and Health Risk Assessment and Management Principles and Practices', '', 'document/159.pdf', '../cover/159_c.jpg', '2020-12-16 13:27:08', 1, 0, 'Paolo Ricci'),
(160, 1, 13, 0, 'Environmental and Human Health Risk Management in Developing Countries', '', 'document/160.pdf', '../cover/160_c.jpg', '2020-12-16 13:28:31', 1, 0, 'E. Emmanuel'),
(161, 1, 13, 0, 'Environmental Contamination Health Risks and Ecological Restoration', '', 'document/161.pdf', '../cover/161_c.jpg', '2020-12-16 13:31:50', 1, 0, 'Ming Wong'),
(162, 1, 13, 0, 'Environmental Determinants of Human Health', '', 'document/162.pdf', '../cover/162_c.jpg', '2020-12-16 13:33:04', 1, 0, 'Elisabeth Pacyna'),
(163, 1, 13, 0, 'Environmental Engineering', '', 'document/163.pdf', '../cover/163_c.jpg', '2020-12-16 13:34:18', 1, 0, 'Ruth Weiner'),
(164, 1, 13, 0, 'Environmental engineering. Water, wastewater, soil, and groundwater and treatment', '', 'document/164.pdf', '../cover/164_c.jpg', '2020-12-16 13:35:59', 1, 0, 'Joseph Salvato'),
(165, 1, 13, 0, 'Environmental Engineering_ Environmental Health and Safety for Municipal Infrastructure', '', 'document/165.pdf', '../cover/165_c.jpg', '2020-12-16 13:38:31', 1, 0, 'Joseph Salvato'),
(166, 1, 13, 0, 'Environmental Epidemiology, Volume 1_ Public Health and Hazardous Waste', '', 'document/166.pdf', '../cover/166_c.jpg', '2020-12-16 13:47:56', 1, 0, 'Environmental Epidemiology'),
(167, 1, 13, 0, 'Environmental Handbook_ Volume II_ Documentation on monitoring and evaluating environmental impacts', '', 'document/167.pdf', '../cover/167_c.jpg', '2020-12-16 13:53:40', 1, 0, 'German Federal Ministry'),
(168, 1, 13, 0, 'Environmental Health & Biomedicine', '', 'document/168.pdf', '../cover/168_c.jpg', '2020-12-16 13:55:27', 1, 0, 'C. A. Brebbia'),
(169, 1, 13, 0, 'environmental health', '', 'document/169.pdf', '../cover/169_c.jpg', '2020-12-16 13:56:24', 1, 0, 'Howard Frumkin'),
(170, 1, 13, 0, 'Environmental Health and Nursing Practice', '', 'document/170.pdf', '../cover/170_c.jpg', '2020-12-16 13:58:38', 1, 0, 'Babara Sattler'),
(171, 1, 13, 0, 'Environmental Health and Safety Audits', '', 'document/171.pdf', '../cover/171_c.jpg', '2020-12-16 13:59:48', 1, 0, 'Raymond Kane'),
(172, 1, 13, 0, 'Environmental Health Ethics', '', 'document/172.pdf', '../cover/172_c.jpg', '2020-12-16 14:00:49', 1, 0, 'David Resnik'),
(173, 1, 13, 0, 'Environmental Health for All_ Risk Assess', '', 'document/173.pdf', '../cover/173_c.jpg', '2020-12-16 14:02:15', 1, 0, 'Environmental Health'),
(174, 1, 13, 0, 'Environmental Health Impacts of Transport and Mobility', '', 'document/174.pdf', '../cover/174_c.jpg', '2020-12-16 14:03:20', 1, 0, 'C.V. Howard'),
(175, 1, 13, 0, 'Environmental Health Literacy ', '', 'document/175.pdf', '../cover/175_c.jpg', '2020-12-16 14:04:14', 1, 0, 'Symma Finn'),
(176, 1, 13, 0, 'Environmental Health Perspectives on Human Health', '', 'document/176.pdf', '../cover/176_c.jpg', '2020-12-16 14:05:12', 1, 0, 'Henry Anderson'),
(177, 1, 13, 0, 'Environmental Health Perspectives', '', 'document/177.pdf', '../cover/177_c.jpg', '2020-12-16 14:06:06', 1, 0, 'Rudd Bryan'),
(178, 1, 13, 0, 'Environmental Health Policy (Understandin Public Health) ', '', 'document/178.pdf', '../cover/178_c.jpg', '2020-12-16 14:22:45', 1, 0, 'David Ball'),
(179, 1, 13, 0, 'Environmental Health Procedures (Clay''s Library of Health and the Environment) ', '', 'document/179.pdf', '../cover/179_c.jpg', '2020-12-16 14:23:58', 1, 0, 'CLay''s Library'),
(180, 1, 13, 0, 'Environmental Health Project', '', 'document/180.pdf', '../cover/180_c.jpg', '2020-12-16 14:24:57', 1, 0, 'Patricia Taylor'),
(181, 1, 13, 0, 'Environmental health science _ recognition and  evaluation', '', 'document/181.pdf', '../cover/181_c.jpg', '2020-12-16 14:27:47', 1, 0, 'Richard Schlesinger'),
(182, 1, 13, 0, 'Environmental health sourcebook', '', 'document/182.pdf', '../cover/182_c.jpg', '2020-12-16 14:29:12', 1, 0, 'Source Book'),
(183, 1, 13, 0, 'Environmental Health_ From Global to Local  ', '', 'document/183.pdf', '../cover/183_c.jpg', '2020-12-16 14:30:38', 1, 0, 'Howard Frumkin'),
(184, 1, 13, 0, 'Environmental Health_ From Global to Local (Public Health Environmental Health) ', '', 'document/184.pdf', '../cover/184_c.jpg', '2020-12-16 14:36:42', 1, 0, 'Howard Frumkin'),
(185, 1, 13, 0, 'Environmental Modeling and Health Risk Analysis ', '', 'document/185.pdf', '../cover/185_c.jpg', '2020-12-16 14:37:57', 1, 0, 'Mustafa Aral'),
(186, 1, 13, 0, 'Environmental Policy and Public Health, Second Edition ', '', 'document/186.pdf', '../cover/186_c.jpg', '2020-12-16 14:39:26', 1, 0, 'Barry Johnson'),
(187, 1, 13, 0, 'Environmental Policy and Public Health_ Air Pollution, Global Climate Change, and Wilderness (Public Health Environmental Health) ', '', 'document/187.pdf', '../cover/187_c.jpg', '2020-12-16 14:41:03', 1, 0, 'William Rom'),
(188, 1, 13, 0, 'Environmental Protection Strategies for Sustainable Development  ', '', 'document/188.pdf', '../cover/188_c.jpg', '2020-12-16 14:42:05', 1, 0, 'Abdul Malik'),
(189, 1, 13, 0, 'Environmental Technology and Innovations_ Proceedings of the 1st International Conference', '', 'document/189.pdf', '../cover/189_c.jpg', '2020-12-16 14:52:39', 1, 0, 'Vladimir Koci'),
(190, 1, 13, 0, 'Environmental tobacco smoke _ measuring exposures and assessing health effects', '', 'document/190.pdf', '../cover/190_c.jpg', '2020-12-16 14:54:44', 1, 0, 'National Academy Press'),
(191, 1, 13, 0, 'Environmental toxicants_ human exposures and their health effects', '', 'document/191.pdf', '../cover/191_c.jpg', '2020-12-16 14:55:52', 1, 0, 'Ministry of Health'),
(192, 1, 13, 0, 'Environmental_book', '', 'document/192.pdf', '../cover/192_c.jpg', '2020-12-16 14:58:04', 1, 0, 'Jefrey Pierce'),
(193, 1, 13, 0, 'Environmental_Health ', '', 'document/193.pdf', '../cover/193_c.jpg', '2020-12-16 14:59:12', 1, 0, 'Third Edition'),
(194, 1, 13, 0, 'Essentials of Environmental Epidemiology for Health Protection_ A handbook for field professionals ', '', 'document/194.pdf', '../cover/194_c.jpg', '2020-12-16 15:00:15', 1, 0, 'Irene Kreis'),
(195, 1, 13, 0, 'Essentials of Environmental Health', '', 'document/195.pdf', '../cover/195_c.jpg', '2020-12-16 15:01:10', 1, 0, 'Robert Friis'),
(196, 1, 13, 0, 'Essentials of environmental toxicology _ the effects of environmentally hazardous substances on human health ', '', 'document/196.pdf', '../cover/196_c.jpg', '2020-12-16 15:02:06', 1, 0, 'Wililiam Hughes'),
(197, 1, 13, 0, 'Facing Global Environmental Change_ Environmental, Human, Energy, Food, Health and Water ', '', 'document/197.pdf', '../cover/197_c.jpg', '2020-12-16 15:03:11', 1, 0, 'John Grin'),
(198, 1, 13, 0, 'Guidelines for Evaluation of Environmental Health Services_ Environmental Health Services in Europe 5  ', '', 'document/198.pdf', '../cover/198_c.jpg', '2020-12-16 15:04:05', 1, 0, 'Christina Drew'),
(199, 1, 13, 0, 'Handbook of Ecological Indicators for Assessment of Ecosystem Health, Second Edition ', '', 'document/199.pdf', '../cover/199_c.jpg', '2020-12-16 15:05:20', 1, 0, 'Fu-Liu Xu'),
(200, 1, 13, 0, 'Handbook of environmental health and safety ', '', 'document/200.pdf', '../cover/200_c.jpg', '2020-12-16 15:06:20', 1, 0, 'Herman Koren'),
(201, 1, 13, 0, 'Handbook of Environmental Health, Fourth Edition, Volume I ', '', 'document/201.pdf', '../cover/201_c.jpg', '2020-12-16 15:07:41', 1, 0, 'Herman Koren'),
(202, 1, 13, 0, 'Handbook of Environmental Health_ Biological,Chemical,and Physical Agents of Environmental, Volume 1 ', '', 'document/202.pdf', '../cover/202_c.jpg', '2020-12-16 15:08:42', 1, 0, 'Herman Koren'),
(203, 1, 13, 0, 'Handbook_of_Environmental_Health_and_Safety_Principles', '', 'document/203.pdf', '../cover/203_c.jpg', '2020-12-16 15:10:00', 1, 0, 'Raquel Davidson'),
(204, 1, 13, 0, 'Health and Environmental Effects Profile', '', 'document/204.pdf', '../cover/204_c.jpg', '2020-12-16 15:11:10', 1, 0, 'Office of research and dv USA'),
(205, 1, 13, 0, 'Health and Environmental Safety of Nanomaterials_ Polymer Nancomposites  ', '', 'document/205.pdf', '../cover/205_c.jpg', '2020-12-16 15:12:19', 1, 0, 'James Njuguna'),
(206, 1, 13, 0, 'Health and Safety, Environment and Quality Audits _ A Risk-based Approach  ', '', 'document/206.pdf', '../cover/206_c.jpg', '2020-12-16 15:13:10', 1, 0, 'Stephen Asbury'),
(207, 1, 13, 0, 'Health, Safety & Environmental Manual ', '', 'document/207.pdf', '../cover/207_c.jpg', '2020-12-16 15:14:10', 1, 0, 'stuatolson'),
(208, 1, 13, 0, 'Health, Safety and Environmental Manual', '', 'document/208.pdf', '../cover/208_c.jpg', '2020-12-16 15:15:11', 1, 0, 'Cirks construction'),
(209, 1, 13, 0, 'Health, Safety, and Environmental Management in Offshore and Petroleum Engineering ', '', 'document/209.pdf', '../cover/209_c.jpg', '2020-12-16 15:16:16', 1, 0, 'Srinivana Chandra'),
(210, 1, 13, 0, 'Identifying and reducing environmental health risks of chemicals in our society ', '', 'document/210.pdf', '../cover/210_c.jpg', '2020-12-16 15:17:30', 1, 0, 'Robert Pool'),
(211, 1, 13, 0, 'Improving Health Trhough Behaviour Change', '', 'document/211.pdf', '../cover/211_c.jpg', '2020-12-16 15:18:37', 1, 0, 'Bureau for Global Health'),
(212, 1, 13, 0, 'Improving urban health equity through action on the social and environmental determinants of health', '', 'document/212.pdf', '../cover/212_c.jpg', '2020-12-16 15:19:48', 1, 0, 'Rockefeller Foundation'),
(213, 1, 13, 0, 'Indoor Air Quality Engineering_ Environmental Health and Control of Indoor Pollutants  ', '', 'document/213.pdf', '../cover/213_c.jpg', '2020-12-16 15:20:39', 1, 0, 'John Cimbala'),
(214, 1, 13, 0, 'InServ Accident Prevention Safety Manual', '', 'document/214.pdf', '../cover/214_c.jpg', '2020-12-16 15:21:35', 1, 0, 'Inserve'),
(215, 1, 13, 0, 'Introduction to Occupational Health in Public Health Practice ', '', 'document/215.pdf', '../cover/215_c.jpg', '2020-12-16 15:22:38', 1, 0, 'Kenneth Walker'),
(216, 1, 13, 0, 'Introduction to the Health, Savings and Environmental Benefits of Structured Water  ', '', 'document/216.pdf', '../cover/216_c.jpg', '2020-12-16 15:23:29', 1, 0, 'Clayton Nolte'),
(217, 1, 13, 0, 'Environmental Management, Sustainable Development and Human Health (2009)', '', 'document/217.pdf', '../cover/217_c.jpg', '2020-12-16 15:24:33', 1, 0, 'LABOY Nieves'),
(218, 1, 13, 0, 'Living with the Earth, Third Edition _ Concepts in Environmental Health Science ', '', 'document/218.pdf', '../cover/218_c.jpg', '2020-12-16 15:25:23', 1, 0, 'Gary Moore'),
(219, 1, 13, 0, 'ln_human_waste_final', '', 'document/219.pdf', '../cover/219_c.jpg', '2020-12-16 15:26:17', 1, 0, 'Kebede Faris'),
(220, 1, 13, 0, 'Ministry of Environmental and sustainable develpment-Republic of Senegal', '', 'document/220.pdf', '../cover/220_c.jpg', '2020-12-16 15:27:35', 1, 0, 'Contour Global'),
(221, 1, 13, 0, 'Monitoring the Health of Populations_ Statistical Principles and Methods for Public Health Surveillance ', '', 'document/221.pdf', '../cover/221_c.jpg', '2020-12-16 15:28:47', 1, 0, 'Ron Brookmeyer'),
(222, 1, 13, 0, 'Nanotechnology_ Health and Environmental Risks (Perspectives in Nanotechnology)  ', '', 'document/222.pdf', '../cover/222_c.jpg', '2020-12-16 15:29:44', 1, 0, 'Jo Anne Shatkin'),
(223, 1, 13, 0, 'Occupational and environmental health _ recognizing and preventing disease and injury ', '', 'document/223.pdf', '../cover/223_c.jpg', '2020-12-16 15:30:45', 1, 0, ' environmental health org'),
(224, 1, 13, 0, 'Occupational and Environmental Health_ Recognizing and Preventing Disease and Injury ', '', 'document/224.pdf', '../cover/224_c.jpg', '2020-12-16 15:31:52', 1, 0, 'Barry Levy'),
(225, 1, 13, 0, 'Occupational and Environmental Safety and Health ', '', 'document/225.pdf', '../cover/225_c.jpg', '2020-12-16 15:32:48', 1, 0, 'Pedro Arezes'),
(226, 1, 13, 0, 'one-health-one-medicine', '', 'document/226.pdf', '../cover/226_c.jpg', '2020-12-16 15:34:04', 1, 0, 'Jeffery watts'),
(227, 1, 13, 0, 'Pollution_ Causes, Effects and Control', '', 'document/227.pdf', '../cover/227_c.jpg', '2020-12-16 15:35:04', 1, 0, 'Roy Harrison'),
(228, 1, 13, 0, 'Public Health Informatics and Information Systems ', '', 'document/228.pdf', '../cover/228_c.jpg', '2020-12-16 15:36:02', 1, 0, 'J. A. Magnuson'),
(229, 1, 13, 0, 'Research Progress on Environmental, Health, and Safety Aspects of Engineered Nanomaterials ', '', 'document/229.pdf', '../cover/229_c.jpg', '2020-12-16 15:37:20', 1, 0, 'National Academic Press'),
(230, 1, 13, 0, 'Reviews of Environmental Contamination and Toxicology_ Continuation of Residue Reviews', '', 'document/230.pdf', '../cover/230_c.jpg', '2020-12-16 15:38:26', 1, 0, 'George Ware'),
(231, 1, 13, 0, 'Risk Assessment for Environmental Health  ', '', 'document/231.pdf', '../cover/231_c.jpg', '2020-12-16 15:39:19', 1, 0, 'Mark Robson'),
(232, 1, 13, 0, 'Safety Health & Environmental Compliance ', '', 'document/232.pdf', '../cover/232_c.jpg', '2020-12-16 15:40:20', 1, 0, 'Jerry Haba'),
(233, 1, 13, 0, 'Safety, Health, and Environmental Auditing_ A Practical Guide ', '', 'document/233.pdf', '../cover/233_c.jpg', '2020-12-16 15:41:12', 1, 0, 'Simon Pain'),
(234, 1, 13, 0, 'Safety, Health, and Environmental Concepts for the Process Industry ', '', 'document/234.pdf', '../cover/234_c.jpg', '2020-12-16 15:42:03', 1, 0, 'Michael Speegle'),
(235, 1, 13, 0, 'safety-health-environmental-handbook', '', 'document/235.pdf', '../cover/235_c.jpg', '2020-12-16 15:42:55', 1, 0, 'industrial contractors'),
(236, 1, 13, 0, 'Social Determinants, Health Disparities and Linkages to Health and Health Care  ', '', 'document/236.pdf', '../cover/236_c.jpg', '2020-12-16 15:43:50', 1, 0, 'Jennie Jacobs'),
(237, 1, 13, 0, 'Soil Health and Land Use Management', '', 'document/237.pdf', '../cover/237_c.jpg', '2020-12-16 15:44:52', 1, 0, 'Marta C'),
(238, 1, 13, 0, 'Sustainable Food Production Includes Human and Environmental Health ', '', 'document/238.pdf', '../cover/238_c.jpg', '2020-12-16 15:45:41', 1, 0, 'Bruce Campbell'),
(239, 1, 13, 0, 'Tables of composition and nutritional value of feed materials)', '', 'document/239.pdf', '../cover/239_c.jpg', '2020-12-16 15:46:28', 1, 0, 'D. Sauvant'),
(240, 1, 13, 0, 'Teaching Environmental Health to Children_ An Interdisciplinary Approach  ', '', 'document/240.pdf', '../cover/240_c.jpg', '2020-12-16 15:47:14', 1, 0, 'David Hursh'),
(241, 1, 13, 0, 'The Handbook of Environmental Health ', '', 'document/241.pdf', '../cover/241_c.jpg', '2020-12-16 15:48:03', 1, 0, 'Frank Spellman'),
(242, 1, 13, 0, 'The Local Board of Health Environmental Health Primer', '', 'document/242.pdf', '../cover/242_c.jpg', '2020-12-16 15:49:00', 1, 0, 'Carrie Hriber'),
(243, 1, 14, 0, 'Medical Laboratory Sciences Medical Bacteriology ', '', 'document/243.pdf', '../cover/243_c.jpg', '2020-12-16 15:51:15', 1, 0, 'Jananie K'),
(244, 1, 14, 0, 'Bachelor of Science in Medical Laboratory Technology (B.Sc. MLT) ', '', 'document/244.pdf', '../cover/244_c.jpg', '2020-12-16 15:52:10', 1, 0, 'Pokhara University'),
(245, 1, 14, 0, 'Document Resume', '', 'document/245.pdf', '../cover/245_c.jpg', '2020-12-16 15:53:03', 1, 0, 'Thompson Joselyn'),
(246, 1, 14, 0, 'medical laboratory sciences college ', '', 'document/246.pdf', '../cover/246_c.jpg', '2020-12-16 15:54:04', 1, 0, 'dr. manikandan palanisamy'),
(247, 1, 14, 0, 'Elsevierâ€™s Medical Laboratory Science Examination Review ', '', 'document/247.pdf', '../cover/247_c.jpg', '2020-12-16 15:55:02', 1, 0, 'Linda Graeter'),
(248, 1, 14, 0, 'Emotional Intelligence in Medical Laboratory Science', '', 'document/248.pdf', '../cover/248_c.jpg', '2020-12-16 15:56:06', 1, 0, 'Travis Miles'),
(249, 1, 14, 0, 'Evaluation of Different Serological Methods', '', 'document/249.pdf', '../cover/249_c.jpg', '2020-12-16 15:57:06', 1, 0, 'Baha Eldin'),
(250, 1, 14, 0, 'Evaluation of MEdical Laboratory Science Program', '', 'document/250.pdf', '../cover/250_c.jpg', '2020-12-16 15:57:57', 1, 0, 'Weber state university'),
(251, 1, 14, 0, 'Immunohematology for Medical Laboratory Technicians', '', 'document/251.pdf', '../cover/251_c.jpg', '2020-12-16 15:58:53', 1, 0, 'Sheryl Whitlock'),
(252, 1, 14, 0, 'Incorporation of Molecular Diagnostics into Medical Laboratory Sc', '', 'document/252.pdf', '../cover/252_c.jpg', '2020-12-16 15:59:45', 1, 0, 'Babara Kraj'),
(253, 1, 14, 0, 'Introduction to Medical Laboratory Technology ', '', 'document/253.pdf', '../cover/253_c.jpg', '2020-12-16 16:00:40', 1, 0, 'Behanu Seyoun'),
(254, 1, 14, 0, 'LAB._SCIENCES_CURRI_FINAL_APPR._BY_MH&FW_MAY_2017_102', '', 'document/254.pdf', '../cover/254_c.jpg', '2020-12-16 16:01:36', 1, 0, 'Ministry of Health'),
(255, 1, 14, 0, 'Linne & Ringsrudâ€™s Clinical Laboratory Science_ Concepts, Procedures, and Clinical Application ', '', 'document/255.pdf', '../cover/255_c.jpg', '2020-12-16 16:02:34', 1, 0, 'Mary Loiuse'),
(256, 1, 14, 0, 'M.Phil Medical Laboratory Sciences Two Years Degree ( PDFDrive )', '', 'document/256.pdf', '../cover/256_c.jpg', '2020-12-16 16:03:26', 1, 0, 'M.Phil '),
(257, 1, 14, 0, 'medical laboratory science ', '', 'document/257.pdf', '../cover/257_c.jpg', '2020-12-16 16:04:37', 1, 0, 'School of /medicine and health'),
(258, 1, 14, 0, 'MEDICAL LABORATORY SCIENCE Clinical Handbook ', '', 'document/258.pdf', 'img/pdf.png', '2020-12-16 16:05:19', 1, 0, 'Baptist College'),
(259, 1, 14, 0, 'MEDICAL LABORATORY SCIENCE Clinical Handbook ', '', 'document/259.pdf', '../cover/259_c.jpg', '2020-12-16 16:05:19', 1, 0, 'Baptist College'),
(260, 1, 14, 0, 'Medical Laboratory Science Review  ', '', 'document/260.pdf', '../cover/260_c.jpg', '2020-12-16 16:06:20', 1, 0, 'Robert Harr'),
(261, 1, 14, 0, 'Medical Laboratory Sciences Program Handbook ', '', 'document/261.pdf', '../cover/261_c.jpg', '2020-12-16 16:07:19', 1, 0, 'Hillsborough community college'),
(262, 1, 14, 0, 'MedicalLab Technology', '', 'document/262.pdf', '../cover/262_c.jpg', '2020-12-16 16:08:12', 1, 0, 'Behanu Seyoun'),
(263, 1, 14, 0, 'Mycobacteria. Institute of Medical Laboratory Sciences Monographs  ', '', 'document/263.pdf', '../cover/263_c.jpg', '2020-12-16 16:09:07', 1, 0, 'F. J Baker'),
(264, 1, 14, 0, 'odu_mt_student_handbook_final_7-5-17', '', 'document/264.pdf', '../cover/264_c.jpg', '2020-12-16 16:10:03', 1, 0, 'Old Dominion University'),
(265, 1, 14, 0, 'Predictors of Success Medical Lab Associate in Science Degree Program', '', 'document/265.pdf', '../cover/265_c.jpg', '2020-12-16 16:11:00', 1, 0, 'Nila Maden'),
(266, 1, 14, 0, 'Punjab Technical University - Medical Laboratory Science', '', 'document/266.pdf', '../cover/266_c.jpg', '2020-12-16 16:11:43', 1, 0, 'Punjab Technical University'),
(267, 1, 14, 0, 'Quick Review Cards for Medical Laboratory Science  ', '', 'document/267.pdf', '../cover/267_c.jpg', '2020-12-16 16:12:40', 1, 0, 'Valerie Polansky'),
(268, 1, 14, 0, 'RMH_2018_School_of_Laboratory_Science_Curriculum', '', 'document/268.pdf', '../cover/268_c.jpg', '2020-12-16 16:13:26', 1, 0, 'Sentara'),
(269, 1, 14, 0, 'STUDENTâ€ŸS HAND BOOK Medical Laboratory Sciences  ', '', 'document/269.pdf', '../cover/269_c.jpg', '2020-12-16 16:15:31', 1, 0, 'University of Jafna'),
(270, 1, 14, 0, 'The New Zealand Journal- Med Lab Tech Vol 22 No 1', '', 'document/270.pdf', '../cover/270_c.jpg', '2020-12-16 16:16:22', 1, 0, 'John Case'),
(271, 1, 14, 0, 'The New Zealand Journal- Med Lab Tech Vol 26 No 1', '', 'document/271.pdf', '../cover/271_c.jpg', '2020-12-16 16:17:07', 1, 0, 'R. D. Alan'),
(272, 1, 14, 0, 'The science of laboratory diagnosis ', '', 'document/272.pdf', '../cover/272_c.jpg', '2020-12-16 16:18:08', 1, 0, 'John Crocker'),
(273, 1, 14, 0, 'transfusion medicine and hemostasis clinical and laboratory aspects', '', 'document/273.pdf', '../cover/273_c.jpg', '2020-12-16 16:19:00', 1, 0, 'Christopher Hilllyer'),
(274, 1, 15, 0, '10-Strategies-to-Improve-Your-Nursing-Care', '', 'document/274.pdf', '../cover/274_c.jpg', '2020-12-16 16:23:34', 1, 0, 'Ed4'),
(275, 1, 15, 0, '2014 Lippincottâ€™s Nursing Drug Guide ', '', 'document/275.pdf', '../cover/275_c.jpg', '2020-12-16 16:24:29', 1, 0, 'Amy Karch'),
(276, 1, 15, 0, 'A Comparison Between Emergency Nursing Stress and Completion', '', 'document/276.pdf', '../cover/276_c.jpg', '2020-12-16 16:25:27', 1, 0, 'Sheryl L'),
(277, 1, 15, 0, 'A TEXT BOOK FOR THE COMMUNITY HEALTH NURSING ', '', 'document/277.pdf', '../cover/277_c.jpg', '2020-12-16 16:26:27', 1, 0, 'Swamy B'),
(278, 1, 15, 0, 'AACN Essentials of Critical Care Nursing ', '', 'document/278.pdf', '../cover/278_c.jpg', '2020-12-16 16:27:26', 1, 0, 'Mariana Chulay'),
(279, 1, 15, 0, 'Adult Infectious Diseases Over 200 Case Studies_ Intended For_ Medical Students', '', 'document/279.pdf', '../cover/279_c.jpg', '2020-12-16 16:28:36', 1, 0, 'Robert Hulberg'),
(280, 1, 15, 0, 'All-in-One Nursing Care Planning Resource_ Medical-Surgical, Pediatric, Maternity, and Psychiatric-Mental Health ', '', 'document/280.pdf', '../cover/280_c.jpg', '2020-12-16 16:29:29', 1, 0, 'Pamela S'),
(281, 1, 15, 0, 'Anatomy and Physiology for Nurses at a Glance ', '', 'document/281.pdf', '../cover/281_c.jpg', '2020-12-16 16:30:31', 1, 0, 'Ian Peate'),
(282, 1, 15, 0, 'Applied-Psychology-for-Nurses', '', 'document/282.pdf', '../cover/282_c.jpg', '2020-12-16 16:31:18', 1, 0, 'Mary Porter'),
(283, 1, 15, 0, 'Approach to Internal Medicine_ A Resource Book for Clinical Practice ', '', 'document/283.pdf', '../cover/283_c.jpg', '2020-12-16 16:32:08', 1, 0, 'David Hui'),
(284, 1, 15, 0, 'Behind the Veil_ An Australian Nurse in Saudi Arabia  ', '', 'document/284.pdf', '../cover/284_c.jpg', '2020-12-16 16:32:59', 1, 0, 'Lydia Laube'),
(285, 1, 15, 0, 'BSc Nursing (Mental Health) skills book ', '', 'document/285.pdf', '../cover/285_c.jpg', '2020-12-16 16:33:51', 1, 0, 'University of Essex'),
(286, 1, 15, 0, 'Clinical Applications of Nursing Diagnosis ', '', 'document/286.pdf', '../cover/286_c.jpg', '2020-12-16 16:34:45', 1, 0, 'Helen Cox'),
(287, 1, 15, 0, 'college of nursing 6769univ', '', 'document/287.pdf', '../cover/287_c.jpg', '2020-12-16 16:35:47', 1, 0, 'College of Nursing Chicago'),
(288, 1, 15, 0, 'Community Health Nursing_ Promoting and Protecting the Public''s Health, 7th Edition  ', '', 'document/288.pdf', '../cover/288_c.jpg', '2020-12-16 16:36:51', 1, 0, 'Judith Ann'),
(289, 1, 15, 0, 'Community_Public Health Nursing ', '', 'document/289.pdf', '../cover/289_c.jpg', '2020-12-16 16:37:59', 1, 0, 'Mary Nies'),
(290, 1, 15, 0, 'Dietetics for Nurses', '', 'document/290.pdf', '../cover/290_c.jpg', '2020-12-16 16:39:01', 1, 0, 'Fairfax P'),
(291, 1, 15, 0, 'English for Nurses - Free ebook  ', '', 'document/291.pdf', '../cover/291_c.jpg', '2020-12-16 16:40:00', 1, 0, 'V. Naidu'),
(292, 1, 15, 0, 'Essential Calculation Skills for Nurses and Midwives ', '', 'document/292.pdf', '../cover/292_c.jpg', '2020-12-16 16:40:57', 1, 0, 'Meriel Hutton'),
(293, 1, 15, 0, 'Ethical and legal issues for doctoral nursing students_ a textbook for students and reference for nurse leaders ', '', 'document/293.pdf', '../cover/293_c.jpg', '2020-12-16 16:41:50', 1, 0, 'Annie Pierce'),
(294, 1, 15, 0, 'Evaluation and Testing in Nursing Education_ Third Edition (Springer Series on the Teaching of Nursing)  ', '', 'document/294.pdf', '../cover/294_c.jpg', '2020-12-16 16:42:45', 1, 0, 'Marilyn O'),
(295, 1, 15, 0, 'Fast Facts for the Critical Care Nurse_ Critical Care Nursing in a Nutshell  ', '', 'document/295.pdf', '../cover/295_c.jpg', '2020-12-16 16:43:37', 1, 0, 'Michele Angele'),
(296, 1, 15, 0, 'Fit Nurse_ Your Total Plan for Getting Fit and Living Well  ', '', 'document/296.pdf', '../cover/296_c.jpg', '2020-12-16 16:44:33', 1, 0, 'Gary Scholar'),
(297, 1, 15, 0, 'Florence Nightingale--Notes on nursing', '', 'document/297.pdf', '../cover/297_c.jpg', '2020-12-16 16:45:23', 1, 0, 'Florence Nightingale'),
(298, 1, 15, 0, 'HEALTH PROMOTION AND HEALTH EDUCATION_ NURSING STUDENTS_ PERSPECT', '', 'document/298.pdf', '../cover/298_c.jpg', '2020-12-16 16:47:29', 1, 0, 'Kathleen A'),
(299, 1, 15, 0, 'Hepatitis C-A Nursing Guide', '', 'document/299.pdf', '../cover/299_c.jpg', '2020-12-16 16:48:33', 1, 0, 'Canadian Nurses Association'),
(300, 1, 15, 0, 'Humanistic-Nursing', '', 'document/300.pdf', '../cover/300_c.jpg', '2020-12-16 16:49:29', 1, 0, 'Josephine Paterson'),
(301, 1, 15, 0, 'Introduction to Critical Care Nursing ', '', 'document/301.pdf', '../cover/301_c.jpg', '2020-12-16 16:50:23', 1, 0, 'Sole'),
(302, 1, 15, 0, 'Leadership Roles and Management Functions in Nursing_ Theory and Application , Seventh Edition ', '', 'document/302.pdf', '../cover/302_c.jpg', '2020-12-16 16:51:27', 1, 0, 'Bessie Marquis'),
(303, 1, 15, 0, 'Marinoâ€™s The ICU Book_ Print + Ebook with Updates  ', '', 'document/303.pdf', '../cover/303_c.jpg', '2020-12-16 16:53:13', 1, 0, 'Marino'),
(304, 1, 15, 0, 'Maternal-newborn nursing demystified ', '', 'document/304.pdf', '../cover/304_c.jpg', '2020-12-16 16:54:04', 1, 0, 'Joyce Johnson'),
(305, 1, 15, 0, 'Medical-Surgical Nursing ', '', 'document/305.pdf', '../cover/305_c.jpg', '2020-12-16 16:55:00', 1, 0, 'Annie Marie'),
(306, 1, 15, 0, 'Middle Range Theory for Nursing_ Third Edition ', '', 'document/306.pdf', '../cover/306_c.jpg', '2020-12-16 16:55:58', 1, 0, 'Mary Jane Smith'),
(307, 1, 15, 0, 'Mosby''s Pocket Guide to Nursing Skills & Procedures ', '', 'document/307.pdf', '../cover/307_c.jpg', '2020-12-16 16:57:43', 1, 0, 'Perry Potter'),
(308, 1, 15, 0, 'Nanda''s Nursing Diagnoses', '', 'document/308.pdf', '../cover/308_c.jpg', '2020-12-16 16:58:26', 1, 0, 'Nanda''s Nursing Diagnoses'),
(309, 1, 15, 0, 'Notes on Nursing', '', 'document/309.pdf', '../cover/309_c.jpg', '2020-12-16 16:59:17', 1, 0, 'Florence Nightingale'),
(310, 1, 15, 0, 'Nurse Anesthesia 2016-2017 ', '', 'document/310.pdf', '../cover/310_c.jpg', '2020-12-16 17:00:27', 1, 0, 'Franes Payn Bolton School Of Nursing'),
(311, 1, 15, 0, 'Nurse to nurse. Nursing management ', '', 'document/311.pdf', '../cover/311_c.jpg', '2020-12-16 17:01:16', 1, 0, 'Linda Knodel'),
(312, 1, 15, 0, 'Nursing Care Plans and Documentation_ Nursing Diagnoses and Collaborative Problems ', '', 'document/312.pdf', '../cover/312_c.jpg', '2020-12-16 17:02:29', 1, 0, 'Nursing documentation '),
(313, 1, 15, 0, 'Nursing Informatics for the Advanced Practice Nurse_ Patient Safety, Quality', '', 'document/313.pdf', '../cover/313_c.jpg', '2020-12-16 17:04:07', 1, 0, 'Susan Mcbride'),
(314, 1, 15, 0, 'Nursing Leadership for Patient-Centered Care_ Authenticity Presence Intuition Expertise  ', '', 'document/314.pdf', '../cover/314_c.jpg', '2020-12-16 17:04:59', 1, 0, 'Harriet Foreman'),
(315, 1, 15, 0, 'nursing personnel 00 unit', '', 'document/315.pdf', '../cover/315_c.jpg', '2020-12-16 17:05:59', 1, 0, 'US public health service'),
(316, 1, 15, 0, 'Nursing Research Using Data Analysis_ Qualitative Designs and Methods in Nursing  ', '', 'document/316.pdf', '../cover/316_c.jpg', '2020-12-16 17:06:44', 1, 0, 'Mary Chesnay'),
(317, 1, 15, 0, 'Nursing Research_ Methods and Critical Appraisal for Evidence-Based Practice ', '', 'document/317.pdf', '../cover/317_c.jpg', '2020-12-16 17:07:37', 1, 0, 'Judith Haber'),
(318, 1, 15, 0, 'Nursing 2012 Drug Handbook, 32nd Edition', '', 'document/318.pdf', '../cover/318_c.jpg', '2020-12-16 17:08:42', 1, 0, 'Walter Kluwer'),
(319, 1, 15, 0, 'Nursing as Caring', '', 'document/319.pdf', '../cover/319_c.jpg', '2020-12-16 17:09:40', 1, 0, 'Ann Boykin'),
(320, 1, 15, 0, 'Nutrition Essentials for Nursing Practice  ', '', 'document/320.pdf', '../cover/320_c.jpg', '2020-12-16 17:10:38', 1, 0, 'Susan Dudek'),
(321, 1, 15, 0, 'Obstetrical Nursing', '', 'document/321.pdf', '../cover/321_c.jpg', '2020-12-16 17:11:33', 1, 0, 'Carolyn Conant'),
(322, 1, 15, 0, 'OET Nursing_ Official OET Practice Book 1 ', '', 'document/322.pdf', '../cover/322_c.jpg', '2020-12-16 17:12:36', 1, 0, 'Practise book'),
(323, 1, 15, 0, 'Oxford English for Careers_ Nursing', '', 'document/323.pdf', '../cover/323_c.jpg', '2020-12-16 17:22:52', 1, 0, 'Tony Grice'),
(324, 1, 15, 0, 'Oxford Handbook of Clinical Skills in Adult Nursing  ', '', 'document/324.pdf', '../cover/324_c.jpg', '2020-12-16 17:23:55', 1, 0, 'Martyn Bradbury'),
(325, 1, 15, 0, 'Pharmacology Mnemonics for the Family Nurse Practitioner  ', '', 'document/325.pdf', '../cover/325_c.jpg', '2020-12-16 17:27:29', 1, 0, 'Nichole Johnson'),
(326, 1, 15, 0, 'Pocket Guide to Psychiatric Nursing ', '', 'document/326.pdf', '../cover/326_c.jpg', '2020-12-16 17:28:24', 1, 0, 'Mary Townsend'),
(327, 1, 15, 0, 'Psychiatric Nursing Certification Review Guide for the Generalist and Advanced Practice ', '', 'document/327.pdf', '../cover/327_c.jpg', '2020-12-16 17:29:34', 1, 0, 'Victoria Mosack'),
(328, 1, 15, 0, 'Psychology for Nurses and the Caring Professions (Social Science for Nurses and the Caring Professions) ', '', 'document/328.pdf', '../cover/328_c.jpg', '2020-12-16 17:30:53', 1, 0, 'Social science for nurses');
INSERT INTO `library_key` (`id`, `source`, `category`, `categoryname`, `title`, `data`, `link`, `coverlink`, `dateCreated`, `level`, `veiws`, `author`) VALUES
(329, 1, 15, 0, 'Psychology for Nurses and the Caring Professions 2nd Edition', '', 'document/329.pdf', '../cover/329_c.jpg', '2020-12-16 17:32:00', 1, 0, 'Jan Waker'),
(330, 1, 15, 0, 'Resource Manual for Nursing Research_ Generating and Assessing Evidence for Nursing Practice  ', '', 'document/330.pdf', '../cover/330_c.jpg', '2020-12-16 17:32:52', 1, 0, 'Denise Polit'),
(331, 1, 15, 0, 'Smart Nursing_ How to Create a Positive Work Environment that Empowers and Retains Nurses ', '', 'document/331.pdf', '../cover/331_c.jpg', '2020-12-16 17:33:41', 1, 0, 'June Fabre'),
(332, 1, 15, 0, 'Smart Nursing_ Nurse Retention & Patient Safety Improvement Strategies, Second Edition ', '', 'document/332.pdf', '../cover/332_c.jpg', '2020-12-16 17:34:34', 1, 0, 'June Fabre'),
(333, 1, 15, 0, 'standards for school north', '', 'document/333.pdf', '../cover/333_c.jpg', '2020-12-16 17:36:13', 1, 0, 'North carolina board of nursing schools'),
(334, 1, 15, 0, 'Study Guide for Pharmacology_ A Patient-Centered Nursing Process Approach ', '', 'document/334.pdf', '../cover/334_c.jpg', '2020-12-16 17:37:00', 1, 0, 'Kee'),
(335, 1, 15, 0, 'Study Skills for Nursing and Midwifery Students - Sucessful Studying ', '', 'document/335.pdf', '../cover/335_c.jpg', '2020-12-16 17:37:55', 1, 0, 'Phillip Scullion'),
(336, 1, 15, 0, 'The Art of Communication in Nursing and Health Care_ An Interdisciplinary Approach', '', 'document/336.pdf', '../cover/336_c.jpg', '2020-12-16 17:39:13', 1, 0, 'Theresa Raphael Grimm'),
(337, 1, 15, 0, 'The Challenges of Nursing Stroke Management in Rehabilitation Centres  ', '', 'document/337.pdf', '../cover/337_c.jpg', '2020-12-16 17:40:05', 1, 0, 'Bianca Buijck'),
(338, 1, 15, 0, 'The Essentials of Biostatistics for Physicians, Nurses, and Clinicians ', '', 'document/338.pdf', '../cover/338_c.jpg', '2020-12-16 17:41:03', 1, 0, 'Michael Chernick'),
(339, 1, 15, 0, 'The Public Health Nurse Publication', '', 'document/339.pdf', '../cover/339_c.jpg', '2020-12-16 17:42:30', 1, 0, 'cleavelanc ohio nursing publication'),
(340, 1, 15, 0, 'Theoretical Basis for Nursing, Third Edition ', '', 'document/340.pdf', '../cover/340_c.jpg', '2020-12-16 17:43:24', 1, 0, 'Melani Mcewen'),
(341, 1, 15, 0, 'The Student Nurse-s Bible', '', 'document/341.pdf', '../cover/341_c.jpg', '2020-12-16 17:44:22', 1, 0, 'Peter Conway'),
(342, 1, 15, 0, 'Workhouse Nursing', '', 'document/342.pdf', '../cover/342_c.jpg', '2020-12-16 17:45:12', 1, 0, 'Macmillan and Co.'),
(343, 1, 16, 0, '9th International Conference on â€œInnovative Research in Technology, Pharmacy, Managemen ', '', 'document/343.pdf', '../cover/343_c.jpg', '2020-12-16 17:47:19', 1, 0, 'Lakshmi Larain'),
(344, 1, 16, 0, 'An introduction to pharmaceutical sciences_ Production, chemistry, techniques and technology ', '', 'document/344.pdf', '../cover/344_c.jpg', '2020-12-16 17:48:26', 1, 0, 'Author'),
(345, 1, 16, 0, 'Applied Microbiology ', '', 'document/345.pdf', '../cover/345_c.jpg', '2020-12-16 18:52:59', 1, 0, 'Sanjai Saxena'),
(346, 1, 16, 0, 'Improved penetration using active passive methods', '', 'document/346.pdf', '../cover/346_c.jpg', '2020-12-16 18:55:26', 1, 0, 'Bakonyi Monika  '),
(347, 1, 16, 0, 'Biopharmaceutics', '', 'document/347.pdf', '../cover/347_c.jpg', '2020-12-16 18:56:44', 1, 0, 'Dr. A.A Yas'),
(348, 1, 16, 0, 'Biotechnology and Pharmacy ', '', 'document/348.pdf', '../cover/348_c.jpg', '2020-12-16 18:58:07', 1, 0, 'John Pezutto'),
(349, 1, 16, 0, 'Bsc Pharmacy English', '', 'document/349.pdf', '../cover/349_c.jpg', '2020-12-16 18:58:57', 1, 0, 'Jordan University'),
(350, 1, 16, 0, 'Canadian Phamarcy Services Framework', '', 'document/350.pdf', '../cover/350_c.jpg', '2020-12-16 18:59:47', 1, 0, 'cacds'),
(351, 1, 16, 0, 'Clinical Risk Management in Community Pharmacy', '', 'document/351.pdf', '../cover/351_c.jpg', '2020-12-16 19:00:39', 1, 0, 'Henk Buurma'),
(352, 1, 16, 0, 'Cyclodextrins in Pharmacy ', '', 'document/352.pdf', '../cover/352_c.jpg', '2020-12-16 19:01:44', 1, 0, 'D. Davies'),
(353, 1, 16, 0, 'Developing Solid Oral Dosage Forms_ Pharmaceutical Theory and Practice ', '', 'document/353.pdf', '../cover/353_c.jpg', '2020-12-16 19:02:37', 1, 0, 'Lirong Liu'),
(354, 1, 16, 0, 'Durgin & Hanan''s Pharmacy Practice for Technicians, 4th Edition ', '', 'document/354.pdf', '../cover/354_c.jpg', '2020-12-16 19:03:36', 1, 0, 'Durgin & Hanan'),
(355, 1, 16, 0, 'Encyclopedia of Pharmaceutical Technology, Volume 20', '', 'document/355.pdf', '../cover/355_c.jpg', '2020-12-16 19:04:39', 1, 0, 'Marcel Dekker'),
(356, 1, 16, 0, 'Essentials of Law and Ethics for Pharmacy Technicians, Third Edition ', '', 'document/356.pdf', '../cover/356_c.jpg', '2020-12-16 19:05:43', 1, 0, 'Kenneth Standberg'),
(357, 1, 16, 0, 'Faculty of Pharmacy in Hradec Kralove', '', 'document/357.pdf', '../cover/357_c.jpg', '2020-12-16 19:06:42', 1, 0, ' Hradec Kralove'),
(358, 1, 16, 0, 'Gale Encyclopedia of Alternative Medicine. Vol. 1 ', '', 'document/358.pdf', '../cover/358_c.jpg', '2020-12-16 19:07:42', 1, 0, 'Thomson Gale'),
(359, 1, 16, 0, 'Health Economics (Pharmacy Business Administration Series) ', '', 'document/359.pdf', '../cover/359_c.jpg', '2020-12-16 19:08:40', 1, 0, 'Jordan Braverman'),
(360, 1, 16, 0, 'HITE-CT Pharmacy Survey Report - Connecticut Institute for Clinical ', '', 'document/360.pdf', '../cover/360_c.jpg', '2020-12-16 19:09:29', 1, 0, 'Minakshi tikoo'),
(361, 1, 16, 0, 'Hospital pharmacy and the patient_ Proceedings of a symposium held at the University of York, England, 7â€“9 July 1982 ', '', 'document/361.pdf', '../cover/361_c.jpg', '2020-12-16 19:10:48', 1, 0, 'Tom Bradley'),
(362, 1, 16, 0, 'Improvement in the Solubility and Bioavailability of Loratadine by Phamaceutical Methods', '', 'document/362.pdf', '../cover/362_c.jpg', '2020-12-16 19:11:46', 1, 0, 'Dr Agnes Nacsa'),
(363, 1, 16, 0, 'Information technology development needs in community pharmacies', '', 'document/363.pdf', '../cover/363_c.jpg', '2020-12-16 19:12:42', 1, 0, 'Anna Westerlinn'),
(364, 1, 16, 0, 'Information Technology in Pharmacy - An Integrated Approach - S. Goundrey-Smith (Springer, 2013)  ', '', 'document/364.pdf', '../cover/364_c.jpg', '2020-12-16 19:13:54', 1, 0, 'Stephen Smith'),
(365, 1, 16, 0, 'Information Technology in Pharmacy_ An Integrated Approach ', '', 'document/365.pdf', '../cover/365_c.jpg', '2020-12-16 19:14:43', 1, 0, 'Stephen Smith'),
(366, 1, 16, 0, 'Inquiry in the establishment of phamarcy council', '', 'document/366.pdf', '../cover/366_c.jpg', '2020-12-16 19:16:41', 1, 0, 'Queensland parliamentary committee'),
(367, 1, 16, 0, 'Inside Pharmacy_ The Anatomy of a Profession  ', '', 'document/367.pdf', '../cover/367_c.jpg', '2020-12-16 19:17:39', 1, 0, 'Gosellin, Raymond A'),
(368, 1, 16, 0, 'L.M. COLLEGE OF PHARMACY - MyPharmaGuide ', '', 'document/368.pdf', '../cover/368_c.jpg', '2020-12-16 19:18:45', 1, 0, 'Sanjay Modi'),
(369, 1, 16, 0, 'L.M. COLLEGE OF PHARMACY - MyPharmaGuide ', '', 'document/369.pdf', '../cover/369_c.jpg', '2020-12-16 21:58:01', 1, 0, 'college of pharmacy'),
(370, 1, 16, 0, 'Managing pharmacy practice_ principles, strategies, and systems ', '', 'document/370.pdf', '../cover/370_c.jpg', '2020-12-16 21:59:54', 1, 0, 'Andrew Peterson'),
(371, 1, 16, 0, 'Medical imaging for health professionals_ technologies and clinical applications', '', 'document/371.pdf', '../cover/371_c.jpg', '2020-12-16 22:00:58', 1, 0, 'Raymnd Reilly'),
(372, 1, 16, 0, 'Pharmaceutical Biotechnology_ Concepts and Applications ', '', 'document/372.pdf', '../cover/372_c.jpg', '2020-12-16 22:01:48', 1, 0, 'Gary Walsh'),
(373, 1, 16, 0, 'Pharmaceutical Suspensions_ From Formulation Development to Manufacturing ', '', 'document/373.pdf', '../cover/373_c.jpg', '2020-12-16 22:03:03', 1, 0, 'Onkah Singh'),
(374, 1, 16, 0, 'Pharmaceutical Technology Division Department of Pharmacy University of Helsinki Finland ', '', 'document/374.pdf', '../cover/374_c.jpg', '2020-12-16 22:04:00', 1, 0, 'Kobonson M'),
(375, 1, 16, 0, 'Pharmacy _ What It Is and How It Works  ', '', 'document/375.pdf', '../cover/375_c.jpg', '2020-12-16 22:07:23', 1, 0, 'William Kelly'),
(376, 1, 16, 0, 'Pharmacy and the U.S. Health Care System, Third Edition ', '', 'document/376.pdf', '../cover/376_c.jpg', '2020-12-16 22:09:16', 1, 0, 'US healthcare'),
(377, 1, 16, 0, 'Pharmacy Informatics ', '', 'document/377.pdf', '../cover/377_c.jpg', '2020-12-16 22:10:24', 1, 0, 'Philip Anderson'),
(378, 1, 16, 0, 'Pharmacy Service Design Case  ', '', 'document/378.pdf', '../cover/378_c.jpg', '2020-12-16 22:11:21', 1, 0, 'Iris T'),
(379, 1, 16, 0, 'Pharmacy system needs additional capabilities', '', 'document/379.pdf', '../cover/379_c.jpg', '2020-12-16 22:12:26', 1, 0, 'GAO'),
(380, 1, 16, 0, 'Pharmacy_Management ', '', 'document/380.pdf', '../cover/380_c.jpg', '2020-12-16 22:13:27', 1, 0, 'Shane D'),
(381, 1, 16, 0, 'pharmacy-practice-experiential-manual', '', 'document/381.pdf', '../cover/381_c.jpg', '2020-12-16 22:15:21', 1, 0, 'Mark Gibson'),
(382, 1, 16, 0, 'Pharmacy Technician', '', 'document/382.pdf', '../cover/382_c.jpg', '2020-12-16 22:16:32', 1, 0, 'Kingsborough community college'),
(383, 1, 16, 0, 'pharmtech_student manual', '', 'document/383.pdf', '../cover/383_c.jpg', '2020-12-16 22:17:47', 1, 0, 'Horry Georgetown techical college'),
(384, 1, 16, 0, 'Practicals in pharmaceutical technology - Prescription Pharmacy ', '', 'document/384.pdf', '../cover/384_c.jpg', '2020-12-16 22:19:02', 1, 0, 'Judit Varadi'),
(385, 1, 16, 0, 'References Appendices', '', 'document/385.pdf', '../cover/385_c.jpg', '2020-12-16 22:19:52', 1, 0, 'Michael B'),
(386, 1, 16, 0, 'Revised Syllabus for Master of PHARMACY I and II Year (Sem. I to IV) ', '', 'document/386.pdf', '../cover/386_c.jpg', '2020-12-16 22:20:58', 1, 0, 'Shivaji University, Kolhapur'),
(387, 1, 16, 0, 'Roadmap for pharmacy health information technology integration', '', 'document/387.pdf', '../cover/387_c.jpg', '2020-12-16 22:22:07', 1, 0, 'US healthcare'),
(388, 1, 16, 0, 'Solid dispersion.A Strategy For Solubility Enhancement', '', 'document/388.pdf', '../cover/388_c.jpg', '2020-12-16 22:23:38', 1, 0, 'Kurukshetra University India'),
(389, 1, 16, 0, 'student handbook', '', 'document/389.pdf', '../cover/389_c.jpg', '2020-12-16 22:24:40', 1, 0, 'Pharm tech'),
(390, 1, 16, 0, 'Suggestible You_ The Curious Science of Your Brainâ€™s Ability to Deceive, Transform, and Heal ', '', 'document/390.pdf', '../cover/390_c.jpg', '2020-12-16 22:25:33', 1, 0, 'Erik Vance'),
(391, 1, 16, 0, 'The formulation of technology in dispersible tablets', '', 'document/391.pdf', '../cover/391_c.jpg', '2020-12-16 22:26:26', 1, 0, 'Christine Elisabeth'),
(392, 1, 16, 0, 'The Pharmacy Technician_ A Comprehensive Approach , Second Edition  ', '', 'document/392.pdf', '../cover/392_c.jpg', '2020-12-16 22:27:27', 1, 0, 'Jahangir moini'),
(393, 1, 16, 0, 'Thesis_Katona', '', 'document/393.pdf', '../cover/393_c.jpg', '2020-12-16 22:28:22', 1, 0, 'Dr Gabor Katonar'),
(394, 1, 17, 0, 'A Century of Homeopaths_ Their Influence on Medicine and Health', '', 'document/394.pdf', '../cover/394_c.jpg', '2020-12-16 22:34:11', 1, 0, 'Jonathan Davidson'),
(395, 1, 17, 0, 'a critical study of impact of patent law on pharmaceutical sector and public health in india', '', 'document/395.pdf', '../cover/395_c.jpg', '2020-12-16 22:35:05', 1, 0, 'Sandhyna Ram'),
(396, 1, 17, 0, 'A Practical Manual of Public Health Dentistry ', '', 'document/396.pdf', '../cover/396_c.jpg', '2020-12-16 22:36:08', 1, 0, 'C M Marya'),
(397, 1, 13, 0, 'A Public Health Perspective on End of Life Care ', '', 'document/397.pdf', '../cover/397_c.jpg', '2020-12-16 22:37:07', 1, 0, 'Joachim Cohen'),
(398, 1, 17, 0, 'A Public Health Strategy for Living, Aging and Dying Well in America _ Designing Elder-Centered and Palliative Systems of Care, ', '', 'document/398.pdf', '../cover/398_c.jpg', '2020-12-16 22:38:13', 1, 0, 'Mary Beth'),
(399, 1, 17, 0, 'Application of Systems Thinking to Health Policy & Public Health Ethics', '', 'document/399.pdf', '../cover/399_c.jpg', '2020-12-16 22:39:32', 1, 0, 'Michele Battle-Fisher'),
(400, 1, 17, 0, 'Basics of Human Andrology _ A Textbook ', '', 'document/400.pdf', '../cover/400_c.jpg', '2020-12-16 22:40:25', 1, 0, 'Anand Kumar'),
(401, 1, 17, 0, 'Biostatistics for clinical and public health research ', '', 'document/401.pdf', '../cover/401_c.jpg', '2020-12-16 22:41:26', 1, 0, 'Melody Goodman'),
(402, 1, 17, 0, 'Biostatistics for Epidemiology and Public Health Using R ', '', 'document/402.pdf', '../cover/402_c.jpg', '2020-12-16 22:42:21', 1, 0, 'Betram Chan'),
(403, 1, 17, 0, 'Biostatistics in public health using STATA  ', '', 'document/403.pdf', '../cover/403_c.jpg', '2020-12-16 22:43:13', 1, 0, 'Erik Suarez'),
(404, 1, 17, 0, 'Children of Addiction_ Research, Health, and Public Policy Issues ', '', 'document/404.pdf', '../cover/404_c.jpg', '2020-12-16 22:44:55', 1, 0, 'Barry Lester'),
(405, 1, 17, 0, 'community health nursing', '', 'document/405.pdf', '../cover/405_c.jpg', '2020-12-17 11:41:50', 1, 0, 'Daniel Mengistu'),
(406, 1, 17, 0, 'Community Health Nursing_ Frameworks for Practice 2nd Edition ', '', 'document/406.pdf', '../cover/406_c.jpg', '2020-12-17 11:42:42', 1, 0, 'Diane Watkins'),
(407, 1, 17, 0, 'Community Health Nursing_ Promoting and Protecting the Public''s Health, 7th Edition ', '', 'document/407.pdf', '../cover/407_c.jpg', '2020-12-17 11:43:34', 1, 0, 'Judith Ann'),
(408, 1, 17, 0, 'Community_Public Health Nursing ', '', 'document/408.pdf', '../cover/408_c.jpg', '2020-12-17 11:44:26', 1, 0, 'Mary Nies'),
(409, 1, 17, 0, 'Crosswalk core competencies and essential services', '', 'document/409.pdf', '../cover/409_c.jpg', '2020-12-17 11:45:53', 1, 0, 'The council of linkagee'),
(410, 1, 17, 0, 'Department of Nutrition, Food Studies & Public Health COURSE BOOK ', '', 'document/410.pdf', '../cover/410_c.jpg', '2020-12-17 11:47:30', 1, 0, 'NYU steinhart'),
(411, 1, 17, 0, 'Diagnosing Medical Parasites_ A Public Health Officers Guide  ', '', 'document/411.pdf', '../cover/411_c.jpg', '2020-12-17 11:48:28', 1, 0, 'Michael C'),
(412, 1, 17, 0, 'Disability and Public Health ', '', 'document/412.pdf', '../cover/412_c.jpg', '2020-12-17 11:49:58', 1, 0, 'Charles Drum'),
(413, 1, 17, 0, 'Dispensing Medical Countermeasures for Public Health Emergencies_ Workshop Summary ', '', 'document/413.pdf', '../cover/413_c.jpg', '2020-12-17 11:52:44', 1, 0, 'Miriam Davis'),
(414, 1, 17, 0, 'Division of public health', '', 'document/414.pdf', '../cover/414_c.jpg', '2020-12-17 11:53:53', 1, 0, 'commonwealth healthcare corporation'),
(415, 1, 17, 0, 'Impact of oral health education on dental plaque', '', 'document/415.pdf', '../cover/415_c.jpg', '2020-12-17 11:55:53', 1, 0, 'Dr. Kyende Evangeline Mwikali 2015'),
(416, 1, 17, 0, 'Ecosystem Change and Public Health_ A Global Perspective  ', '', 'document/416.pdf', '../cover/416_c.jpg', '2020-12-17 11:56:44', 1, 0, 'Joan Aron'),
(417, 2, 17, 0, 'Electronic health record requirements for public health agencies', '', 'document/417.pdf', '../cover/417_c.jpg', '2020-12-17 11:58:25', 1, 0, 'public health informatics institute'),
(418, 1, 17, 0, 'Elements of Hygiene and Public Health. For the Use of Medical Students and Practitioners  ', '', 'document/418.pdf', '../cover/418_c.jpg', '2020-12-17 11:59:39', 1, 0, 'E.J O''meara'),
(419, 1, 17, 0, 'Emergency Care and the Public''s Health ', '', 'document/419.pdf', '../cover/419_c.jpg', '2020-12-17 12:00:27', 1, 0, 'Jesse Pines'),
(420, 1, 17, 0, 'Emerging and Re-emerging Viral Infections_ Advances in Microbiology, Infectious Diseases and Public Health ', '', 'document/420.pdf', '../cover/420_c.jpg', '2020-12-17 12:01:26', 1, 0, 'Giovanni Rezzza'),
(421, 1, 17, 0, 'Emerging Public Health Problems in Ethiopia_ Chronic Non-Communicable Diseases ', '', 'document/421.pdf', '../cover/421_c.jpg', '2020-12-17 12:02:19', 1, 0, 'CDC'),
(422, 1, 17, 0, 'Encyclopedia of Aging and Public Health ', '', 'document/422.pdf', '../cover/422_c.jpg', '2020-12-17 12:03:10', 1, 0, 'Sana Loue'),
(423, 1, 17, 0, 'Encyclopedia of Diets - A Guide to Health and Nutrition ', '', 'document/423.pdf', '../cover/423_c.jpg', '2020-12-17 12:04:16', 1, 0, 'Encyclopedia '),
(424, 1, 17, 0, 'Environmental Epidemiology, Volume 1_ Public Health and Hazardous Wastes ', '', 'document/424.pdf', '../cover/424_c.jpg', '2020-12-17 12:08:05', 1, 0, 'The National Academics'),
(425, 1, 17, 0, 'Environmental Health_ From Global to Local  ', '', 'document/425.pdf', '../cover/425_c.jpg', '2020-12-17 12:08:54', 1, 0, 'Howard Frumkin'),
(426, 1, 17, 0, 'Environmental Policy and Public Health_ Air Pollution, Global Climate Change, and Wilderness  ', '', 'document/426.pdf', '../cover/426_c.jpg', '2020-12-17 12:09:37', 1, 0, 'William Rom'),
(427, 1, 17, 0, 'Environmental, Public  Health and Global', '', 'document/427.pdf', 'img/pdf.png', '2020-12-17 12:10:49', 1, 0, 'E. M Tansay'),
(428, 1, 17, 0, 'Evaluation of the public health agency of canada', '', 'document/428.pdf', '../cover/428_c.jpg', '2020-12-17 12:11:50', 1, 0, ' public health agency of canada'),
(429, 1, 17, 0, 'Family Health Care Nursing_ Theory, Practice, and Research ', '', 'document/429.pdf', '../cover/429_c.jpg', '2020-12-17 12:12:40', 1, 0, 'Joanna Rowe'),
(430, 1, 17, 0, 'Final Public Health TOT Manual', '', 'document/430.pdf', '../cover/430_c.jpg', '2020-12-17 12:13:49', 1, 0, 'Public health trainers material'),
(431, 1, 17, 0, 'From Justice to Protection_ A Proposal for Public Health Bioethics ', '', 'document/431.pdf', '../cover/431_c.jpg', '2020-12-17 12:14:41', 1, 0, 'Miguel Kottow'),
(432, 1, 17, 0, 'Fungal diseases _ an emerging threat to human, animal, and plant health _ workshop summar ', '', 'document/432.pdf', '../cover/432_c.jpg', '2020-12-17 12:15:44', 1, 0, 'Institute of medicine'),
(433, 1, 17, 0, 'Genetically Modified Organisms in Food_ Production, Safety, Regulation and Public Health ', '', 'document/433.pdf', '../cover/433_c.jpg', '2020-12-17 12:16:38', 1, 0, 'Ronald Ross'),
(434, 1, 17, 0, 'Geographic Information Systems and Public Health_ Eliminating Perinatal Disparity ', '', 'document/434.pdf', '../cover/434_c.jpg', '2020-12-17 12:17:35', 1, 0, 'AndrewKurtis'),
(435, 1, 17, 0, 'Global public health vigilance_ creating a world on alert ', '', 'document/435.pdf', '../cover/435_c.jpg', '2020-12-17 12:18:23', 1, 0, 'Lona Weir'),
(436, 1, 17, 0, 'Handbook of helminthiasis for public health ', '', 'document/436.pdf', '../cover/436_c.jpg', '2020-12-17 12:19:17', 1, 0, 'Lorenzo Savioli'),
(437, 1, 17, 0, 'Health Care and Public Policy ', '', 'document/437.pdf', '../cover/437_c.jpg', '2020-12-17 12:20:06', 1, 0, 'Public Policy '),
(438, 1, 17, 0, 'Health Care Information Systems_ A Practical Approach for Health Care Management. Second Edition ', '', 'document/438.pdf', '../cover/438_c.jpg', '2020-12-17 12:20:52', 1, 0, 'Karen Wager'),
(439, 1, 17, 0, 'Health Communication_ From Theory to Practice ', '', '/439.PDF', '../cover/439_c.jpg', '2020-12-17 12:22:20', 1, 0, 'Jossey Bass'),
(440, 1, 17, 0, 'High-Yield Biostatistics, Epidemiology, and Public Health ', '', 'document/440.pdf', '../cover/440_c.jpg', '2020-12-17 12:23:17', 1, 0, 'Anthony glaser'),
(441, 1, 17, 0, 'Human Resource Development in the Public Sector_ The Case of Health and Social Care  ', '', 'document/441.pdf', '../cover/441_c.jpg', '2020-12-17 12:24:08', 1, 0, 'Sally Sambrook'),
(442, 1, 17, 0, 'IFRC_Public_Health_Guide', '', 'document/442.pdf', '../cover/442_c.jpg', '2020-12-17 12:25:07', 1, 0, 'John hopkins'),
(443, 1, 17, 0, 'integrated food safety and veterinary public health ', '', 'document/443.pdf', '../cover/443_c.jpg', '2020-12-17 12:27:30', 1, 0, 'Vertirinary public health'),
(444, 1, 17, 0, 'International Handbook on Adolescent Health and Development_ The Public Health Response ', '', 'document/444.pdf', '../cover/444_c.jpg', '2020-12-17 12:28:27', 1, 0, 'Andrew cherry'),
(445, 1, 17, 0, 'Introduction to Occupational Health in Public Health Practice (Public Health Environmental Health) ', '', 'document/445.pdf', '../cover/445_c.jpg', '2020-12-17 12:30:09', 1, 0, 'Bradley Haeley'),
(446, 1, 17, 0, 'Introduction to Public Health ', '', 'document/446.pdf', '../cover/446_c.jpg', '2020-12-17 12:31:00', 1, 0, 'Mary Jane Schneider'),
(447, 1, 17, 0, 'Introductory Biostatistics for the Health Sciences ', '', 'document/447.pdf', '../cover/447_c.jpg', '2020-12-17 12:44:36', 1, 0, 'Michael Chernick'),
(448, 1, 17, 0, 'Jekelâ€™s Epidemiology, Biostatistics, Preventive Medicine, and Public Health ', '', 'document/448.pdf', '../cover/448_c.jpg', '2020-12-17 12:45:32', 1, 0, 'David Katz'),
(449, 1, 17, 0, 'Juvenal Majoro - University if Rwanda', '', 'document/449.pdf', '../cover/449_c.jpg', '2020-12-17 12:47:04', 1, 0, 'Juvenal Majoro'),
(450, 1, 17, 0, 'Living Well with Chronic Disease_ A Call for Public Health Action ', '', 'document/450.pdf', '../cover/450_c.jpg', '2020-12-17 12:48:18', 1, 0, 'The National Academics'),
(451, 1, 17, 0, 'Living Well with Chronic Disease_ A Call for Public Health Action ', '', 'document/451.pdf', '../cover/451_c.jpg', '2020-12-17 12:51:17', 1, 0, 'The National Academics'),
(452, 1, 17, 0, 'Malaria_ Poverty, Race, and Public Health in the United States ', '', 'document/452.pdf', '../cover/452_c.jpg', '2020-12-17 12:53:37', 1, 0, 'Margaret Humphreys'),
(453, 1, 17, 0, 'Managerial Epidemiology for Health Care Organizations ', '', 'document/453.pdf', '../cover/453_c.jpg', '2020-12-17 12:54:24', 1, 0, 'Peter Fss'),
(454, 1, 17, 0, 'Managing Health Programs and Projects ', '', 'document/454.pdf', '../cover/454_c.jpg', '2020-12-17 12:55:23', 1, 0, 'Beaufort B'),
(455, 1, 17, 0, 'Master of Public Health Program Manual ', '', 'document/455.pdf', '../cover/455_c.jpg', '2020-12-17 12:56:14', 1, 0, 'John hopkins'),
(456, 1, 17, 0, 'Mastering Pharmacogenomics_ A Nurseâ€™s Handbook for Success ', '', 'document/456.pdf', '../cover/456_c.jpg', '2020-12-17 12:57:07', 1, 0, 'Dale Halsey'),
(457, 1, 17, 0, 'Medical Entomology_ A Textbook on Public Health and Veterinary Problems Caused by Arthropods ', '', 'document/457.pdf', '../cover/457_c.jpg', '2020-12-17 12:58:15', 1, 0, 'Bruce F'),
(458, 1, 17, 0, 'Medical geography in public health and tropical medicine_  case s', '', 'document/458.pdf', '../cover/458_c.jpg', '2020-12-17 13:00:14', 1, 0, 'Lousianna state university'),
(459, 1, 17, 0, 'Mel and Zuckerman college of Public Health', '', 'document/459.pdf', '../cover/459_c.jpg', '2020-12-17 13:00:58', 1, 0, 'Mel and Zuckerman'),
(460, 1, 17, 0, 'Mobile Communications and Public Health ', '', 'document/460.pdf', '../cover/460_c.jpg', '2020-12-17 13:02:09', 1, 0, 'Marko Markov'),
(461, 1, 17, 0, 'Needs assessment in public health_ a practical guide for students and professionals ', '', 'document/461.pdf', '../cover/461_c.jpg', '2020-12-17 13:02:57', 1, 0, 'Donna Peterson'),
(462, 1, 17, 0, 'Nutrition in Public Health_ Principles, Policies, and Practice ', '', 'document/462.pdf', '../cover/462_c.jpg', '2020-12-17 13:03:43', 1, 0, 'Arlene Spark'),
(463, 1, 17, 0, 'Nutrition, Knwledge, Attitude and Practise of Public Health Nurses', '', 'document/463.pdf', '../cover/463_c.jpg', '2020-12-17 13:04:37', 1, 0, 'The University of British Columbia'),
(464, 1, 17, 0, 'Occupational Health and Safety Management Perceptions', '', 'document/464.pdf', '../cover/464_c.jpg', '2020-12-17 13:05:57', 1, 0, 'B. Abdullah'),
(465, 1, 17, 0, 'Oxford handbook of public health practice ', '', 'document/465.pdf', '../cover/465_c.jpg', '2020-12-17 13:06:43', 1, 0, 'Charles Guest'),
(466, 1, 17, 0, 'Oxford Textbook of Global Public Health ', '', 'document/466.pdf', '../cover/466_c.jpg', '2020-12-17 13:07:41', 1, 0, 'Roger Detels'),
(467, 1, 17, 0, 'Oxford textbook of public health ', '', 'document/467.pdf', '../cover/467_c.jpg', '2020-12-17 13:09:44', 1, 0, 'C. Dokey'),
(468, 1, 17, 0, 'Paediatrics and Child Health  ', '', 'document/468.pdf', '../cover/468_c.jpg', '2020-12-17 13:11:25', 1, 0, 'Mary Rudolf'),
(469, 1, 17, 0, 'Pediatric Nursing and Health Care', '', 'document/469.pdf', '../cover/469_c.jpg', '2020-12-17 13:12:27', 1, 0, 'Jimma University'),
(470, 1, 17, 0, 'Pesticides and their application', '', 'document/470.pdf', '../cover/470_c.jpg', '2020-12-17 13:13:24', 1, 0, 'World Health Organisation'),
(471, 1, 17, 0, 'Physical activity and public health practice ', '', 'document/471.pdf', '../cover/471_c.jpg', '2020-12-17 13:14:44', 1, 0, 'Public health system'),
(472, 1, 17, 0, 'Preparing the Public Health Workforce_ Educational Pathways for the Field and the Classroom ', '', 'document/472.pdf', '../cover/472_c.jpg', '2020-12-17 13:15:32', 1, 0, 'Rosemary Caron'),
(473, 1, 17, 0, 'Preventive medicine and Public Health', '', 'document/473.pdf', '../cover/473_c.jpg', '2020-12-17 13:16:24', 1, 0, 'Sylvie Ratelle'),
(474, 1, 17, 0, 'Principles of Epidemiology in Public Health Practice, Third Edition ', '', 'document/474.pdf', '../cover/474_c.jpg', '2020-12-17 13:17:20', 1, 0, 'CDC'),
(475, 1, 17, 0, 'principles of epidemiology in public health practise', '', 'document/475.pdf', '../cover/475_c.jpg', '2020-12-17 13:18:12', 1, 0, 'CDC'),
(476, 1, 17, 0, 'Probability, Statistics and Modelling in Public Health  ', '', 'document/476.pdf', '../cover/476_c.jpg', '2020-12-17 13:19:03', 1, 0, 'Mikhail Nikulin'),
(477, 1, 17, 0, 'Processing of the international congress on noise as a public health problem', '', 'document/477.pdf', '../cover/477_c.jpg', '2020-12-17 13:19:59', 1, 0, 'Dubrovnik'),
(478, 1, 17, 0, 'Promoting Oral Health. the Use of Salt Fluoridation to Prevent Dental Caries ', '', 'document/478.pdf', '../cover/478_c.jpg', '2020-12-17 13:21:03', 1, 0, 'Kellog Foundation'),
(479, 1, 17, 0, 'Public Health & EHIE  FINAL', '', 'document/479.pdf', '../cover/479_c.jpg', '2020-12-17 13:22:19', 1, 0, 'DCHD'),
(480, 1, 17, 0, 'Public Health Advocacy and Tobacco Control_ Making Smoking History  ', '', 'document/480.pdf', '../cover/480_c.jpg', '2020-12-17 13:49:03', 1, 0, 'Robert Wallace'),
(481, 1, 17, 0, 'Public Health and Veterinary Occupations  ', '', 'document/481.pdf', '../cover/481_c.jpg', '2020-12-17 13:51:03', 1, 0, 'Army Medicine'),
(482, 1, 17, 0, 'Public Health and Welfare_ Concepts, Methodologies, Tools, and Applications', '', 'document/482.pdf', '../cover/482_c.jpg', '2020-12-17 13:52:01', 1, 0, 'TGI'),
(483, 1, 17, 0, 'Public health engineering ', '', 'document/483.pdf', '../cover/483_c.jpg', '2020-12-17 13:52:58', 1, 0, 'Medicine Sans Frontiers'),
(484, 1, 17, 0, 'Public Health for the 21st Century ', '', 'document/484.pdf', '../cover/484_c.jpg', '2020-12-17 13:54:04', 1, 0, 'Judy Orme'),
(485, 1, 17, 0, 'PUBLIC HEALTH GLOSSARY_ A Terms and Definitions Guide for US Air Force Public Health ', '', 'document/485.pdf', '../cover/485_c.jpg', '2020-12-17 13:55:02', 1, 0, 'Michael J'),
(486, 1, 17, 0, 'Public Health Implications of Excessive Use of the Internet', '', 'document/486.pdf', '../cover/486_c.jpg', '2020-12-17 13:55:52', 1, 0, 'World Health Organisation'),
(487, 1, 17, 0, 'Public Health in History (Understanding Public Health) ', '', 'document/487.pdf', '../cover/487_c.jpg', '2020-12-17 13:56:50', 1, 0, 'Virginia Berrige'),
(488, 1, 17, 0, 'Public health in public housing', '', 'document/488.pdf', '../cover/488_c.jpg', '2020-12-17 13:57:45', 1, 0, 'National Workshop'),
(489, 1, 17, 0, 'Public Health Interventions - Applications for Public Health Nursing ', '', 'document/489.pdf', '../cover/489_c.jpg', '2020-12-17 13:58:45', 1, 0, 'Minnesota Department of Health'),
(490, 1, 17, 0, 'Public Health Law and Ethics_ A Reader ', '', 'document/490.pdf', '../cover/490_c.jpg', '2020-12-17 13:59:33', 1, 0, 'Lawrence Gostin'),
(491, 1, 17, 0, 'Public Health Law_ Power, Duty, Restraint, Revised and Expanded Second Edition ', '', 'document/491.pdf', '../cover/491_c.jpg', '2020-12-17 14:00:23', 1, 0, 'Lawrence Gostin'),
(492, 1, 17, 0, 'Public health nursing _ a textbook for health visitors, school nurses and occupational health nurses ', '', 'document/492.pdf', '../cover/492_c.jpg', '2020-12-17 14:01:16', 1, 0, 'Greta Thonbury'),
(493, 1, 17, 0, 'Public health nutrition ', '', 'document/493.pdf', '../cover/493_c.jpg', '2020-12-17 14:02:14', 1, 0, 'Judith Butris'),
(494, 1, 17, 0, 'Public Health Research Journal - Durham University', '', 'document/494.pdf', '../cover/494_c.jpg', '2020-12-17 14:03:12', 1, 0, 'Durham University'),
(495, 1, 17, 0, 'Public Health Skills_ A Practical Guide for nurses and public health practitioners ', '', 'document/495.pdf', '../cover/495_c.jpg', '2020-12-17 14:03:58', 1, 0, 'Blackwell Publishing'),
(496, 1, 17, 0, 'Public health_ ethical issues - Nuffield Council on Bioethics  ', '', 'document/496.pdf', '../cover/496_c.jpg', '2020-12-17 14:04:45', 1, 0, 'Nuffield Council on Bioethics  '),
(497, 1, 17, 0, 'Public Mental Health_ Global Perspectives ', '', 'document/497.pdf', '../cover/497_c.jpg', '2020-12-17 14:05:35', 1, 0, 'Lee Knifton'),
(498, 1, 17, 0, 'Public-Health-Consequences-of-E-Cigarettes', '', 'document/498.pdf', '../cover/498_c.jpg', '2020-12-17 14:06:24', 1, 0, 'National Academic Press'),
(499, 1, 17, 0, 'Public-health-ethical-issues', '', 'document/499.pdf', '../cover/499_c.jpg', '2020-12-17 14:07:07', 1, 0, 'Nuffield Council on Bioethics  '),
(500, 1, 17, 0, 'Putting the public into public health', '', 'document/500.pdf', '../cover/500_c.jpg', '2020-12-17 14:07:55', 1, 0, 'Steven Sylvester'),
(501, 1, 17, 0, 'Qualitative Methods In Public Health. A field guide for applied research  ', '', 'document/501.pdf', '../cover/501_c.jpg', '2020-12-17 14:08:48', 1, 0, 'Jossey Bass'),
(502, 1, 17, 0, 'Research Progress on Environmental, Health, and Safety Aspects of Engineered Nanomaterials  ', '', 'document/502.pdf', '../cover/502_c.jpg', '2020-12-17 14:09:40', 1, 0, 'AP'),
(503, 1, 17, 0, 'Risk Management Handbook for Health Care Organizations, Student Edition ', '', 'document/503.pdf', '../cover/503_c.jpg', '2020-12-17 14:22:09', 1, 0, 'Robert Carrol'),
(504, 1, 17, 0, 'ROI in Public Health Policy_ Supporting Decision Making  ', '', 'document/504.pdf', '../cover/504_c.jpg', '2020-12-17 14:23:39', 1, 0, 'Lesley Owen'),
(505, 1, 17, 0, 'School of public health and preventive medicine', '', 'document/505.pdf', '../cover/505_c.jpg', '2020-12-17 14:24:39', 1, 0, 'Monash University'),
(506, 1, 17, 0, 'Skills Training in Communication and Related Topics_ Pt. 2 ', '', 'document/506.pdf', '../cover/506_c.jpg', '2020-12-17 14:25:37', 1, 0, 'Ellen Belza'),
(507, 1, 17, 0, 'Social Marketing and Public Health', '', 'document/507.pdf', '../cover/507_c.jpg', '2020-12-17 14:26:23', 1, 0, 'Jacob Peterson'),
(508, 1, 17, 0, 'Social Neuroscience and Public Health_ Foundations for the Science of Chronic Disease Prevention ', '', 'document/508.pdf', '../cover/508_c.jpg', '2020-12-17 14:27:51', 1, 0, 'Peter Hall'),
(509, 1, 17, 0, 'social-marketing-guide-public-health', '', 'document/509.pdf', '../cover/509_c.jpg', '2020-12-17 14:28:42', 1, 0, 'Ecdc'),
(510, 1, 17, 0, 'Standards of Practice for Dental Public Health ', '', 'document/510.pdf', '../cover/510_c.jpg', '2020-12-17 14:31:55', 1, 0, 'Tennesse Department of Health'),
(511, 1, 17, 0, 'Suicide prevention and Public health', '', 'document/511.pdf', '../cover/511_c.jpg', '2020-12-17 14:33:59', 1, 0, 'George P'),
(512, 1, 17, 0, 'Taxing Soda for Public Health_ A Canadian Perspective ', '', 'document/512.pdf', '../cover/512_c.jpg', '2020-12-17 14:35:13', 1, 0, 'Yan Bodo'),
(513, 1, 17, 0, 'Teaching Epidemiology_ A guide for teachers in epidemiology, public health and clinical medicine ', '', 'document/513.pdf', '../cover/513_c.jpg', '2020-12-17 14:36:31', 1, 0, 'Jorn Olsen'),
(514, 1, 17, 0, 'Text Book of Public Health and Community Medicine ', '', 'document/514.pdf', '../cover/514_c.jpg', '2020-12-17 14:37:39', 1, 0, 'Goya'),
(515, 1, 17, 0, 'The Added Value of Geographical Information Systems in Public and Environmental Health   ', '', 'document/515.pdf', '../cover/515_c.jpg', '2020-12-17 14:38:32', 1, 0, 'Marion J.C'),
(516, 1, 17, 0, 'The Economics of Health and Health Care ', '', 'document/516.pdf', '../cover/516_c.jpg', '2020-12-17 14:39:21', 1, 0, 'Sherman Folland'),
(517, 1, 17, 0, 'The Economics of Public Health Care', '', 'document/517.pdf', '../cover/517_c.jpg', '2020-12-17 14:40:07', 1, 0, 'Benedict Clement'),
(518, 1, 17, 0, 'The New Public Health and STD_HIV Prevention_ Personal, Public and Health Systems Approaches ', '', 'document/518.pdf', '../cover/518_c.jpg', '2020-12-17 14:41:02', 1, 0, 'Sevgi A.'),
(519, 1, 17, 0, 'The New Public Health, Second Edition ', '', 'document/519.pdf', '../cover/519_c.jpg', '2020-12-17 14:42:07', 1, 0, 'Theodore Thulchinsky'),
(520, 1, 17, 0, 'The Patient Nurse ', '', 'document/520.pdf', '../cover/520_c.jpg', '2020-12-17 14:43:05', 1, 0, 'Diana Palmer'),
(521, 1, 17, 0, 'The Political Economy of HIVAIDS in Developing Countries TRIPS, Public Health Systems and Free Access   ', '', 'document/521.pdf', '../cover/521_c.jpg', '2020-12-17 14:44:22', 1, 0, 'Banjamin Coriat'),
(522, 1, 17, 0, 'The Psychology of Habit_ Theory, Mechanisms, Change, and Contexts  ', '', 'document/522.pdf', '../cover/522_c.jpg', '2020-12-17 14:45:22', 1, 0, 'Bas Verplanken'),
(523, 1, 17, 0, 'The World Health Report 2008_ Primary Health Care now more than ever', '', 'document/523.pdf', '../cover/523_c.jpg', '2020-12-17 14:46:15', 1, 0, ' World Health Report'),
(524, 1, 17, 0, 'Theory and Research in Promoting Public Health ', '', 'document/524.pdf', '../cover/524_c.jpg', '2020-12-17 14:55:38', 1, 0, 'Sarah Earle'),
(525, 1, 17, 0, 'Transdisciplinary public health _ research, education, and practice ', '', 'document/525.pdf', '../cover/525_c.jpg', '2020-12-17 14:56:30', 1, 0, 'Debra Joshu'),
(526, 1, 17, 0, 'Vaccine and public health', '', 'document/526.pdf', '../cover/526_c.jpg', '2020-12-17 14:57:44', 1, 0, 'National institute of alllergy Bethesda, Maryland'),
(527, 1, 17, 0, 'Veterinary Contributions to Public Health Extend Beyond the Clinic with the US Army Public Health ', '', 'document/527.pdf', '../cover/527_c.jpg', '2020-12-17 14:58:34', 1, 0, 'Dawn Bull'),
(528, 1, 17, 0, 'Violence against Women_ The Health Sector Responds (Occasional Publication No. 12) ', '', 'document/528.pdf', '../cover/528_c.jpg', '2020-12-17 14:59:34', 1, 0, 'Pan American Health Organisation'),
(529, 1, 17, 0, 'Working in Public Health_ An introduction to careers in public health  ', '', 'document/529.pdf', '../cover/529_c.jpg', '2020-12-17 15:00:24', 1, 0, 'Fiona Simm'),
(530, 1, 13, 0, 'Workload of public health nurses', '', 'document/530.pdf', '../cover/530_c.jpg', '2020-12-17 15:01:20', 1, 0, 'Kannan'),
(531, 1, 17, 0, 'zoonoses â€“protection of public and animal health ', '', 'document/531.pdf', '../cover/531_c.jpg', '2020-12-17 15:02:30', 1, 0, 'Prof Ing Ivan Ciznar'),
(532, 1, 7, 0, 'ACCA Accountant in business', '', 'document/532.pdf', '../cover/532_c.jpg', '2020-12-28 15:49:19', 1, 0, 'learning house media'),
(533, 1, 7, 0, 'ACCA F3 - Financial Accounting (INT) Study Text - STIMUL ', '', 'document/533.pdf', '../cover/533_c.jpg', '2020-12-28 15:50:32', 1, 0, 'learning house media'),
(534, 1, 7, 0, 'ACCOUNTING Accounting Control Best Practices 0471356395 ', '', 'document/534.pdf', '../cover/534_c.jpg', '2020-12-28 15:51:22', 1, 0, 'steven bragg'),
(535, 1, 7, 0, 'Accounting All-in-One For Dummies ', '', 'document/535.pdf', '../cover/535_c.jpg', '2020-12-28 15:52:34', 1, 0, 'ken boyd'),
(536, 1, 7, 0, 'Accounting and finance for business analysis', '', 'document/536.pdf', '../cover/536_c.jpg', '2020-12-28 15:54:39', 1, 0, 'DELTACPE LLC'),
(537, 1, 7, 0, 'Accounting and Finance for Non-Specialists ', '', 'document/537.pdf', '../cover/537_c.jpg', '2020-12-28 15:55:58', 1, 0, 'peter atrill'),
(538, 1, 7, 0, 'Accounting and Finance Foundations  ', '', 'document/538.pdf', '../cover/538_c.jpg', '2020-12-28 15:59:26', 1, 0, 'kenturkey accounting'),
(539, 1, 7, 0, 'Accounting for Non-Accountants, 3E_ The Fast and Easy Way to Learn the Basics  ', '', 'document/539.pdf', '../cover/539_c.jpg', '2020-12-28 16:00:23', 1, 0, 'wayne a. label'),
(540, 1, 7, 0, 'Accounting Information Systems for Decision Making ', '', 'document/540.pdf', '../cover/540_c.jpg', '2020-12-28 16:01:15', 1, 0, 'Daniela Mancini'),
(541, 1, 7, 0, 'Accounting Information Systems', '', 'document/541.pdf', '../cover/541_c.jpg', '2020-12-28 16:02:05', 1, 0, 'James Hall'),
(542, 1, 7, 0, 'Accounting Made Simple_ Accounting Explained in 100 Pages or Less ', '', 'document/542.pdf', '../cover/542_c.jpg', '2020-12-28 16:02:52', 1, 0, 'Mike Piper'),
(543, 1, 7, 0, 'Accounting Principles  ', '', 'document/543.pdf', '../cover/543_c.jpg', '2020-12-28 16:07:27', 1, 0, 'weygandt kimel'),
(544, 1, 7, 0, 'Accounting Principles Kieso_9 ', '', 'document/544.pdf', '../cover/544_c.jpg', '2020-12-28 16:08:29', 1, 0, 'weygandt kimel'),
(545, 1, 7, 0, 'Accounting the Easy Way (E-Z Accounting ', '', 'document/545.pdf', '../cover/545_c.jpg', '2020-12-28 16:09:29', 1, 0, 'Barrons'),
(546, 1, 7, 0, 'accounting theory and practice ', '', 'document/546.pdf', '../cover/546_c.jpg', '2020-12-28 16:10:59', 1, 0, 'Himalaya Publishing House'),
(547, 1, 7, 0, 'accounting', '', 'document/547.pdf', '../cover/547_c.jpg', '2020-12-28 16:12:07', 1, 0, 'IQN global'),
(548, 1, 7, 0, 'Accounting_Best_Practices,_3rd_Ed._Steven_M._Bragg._2004', '', 'document/548.pdf', '../cover/548_c.jpg', '2020-12-28 16:12:59', 1, 0, 'steven bragg'),
(549, 1, 7, 0, 'Accounting-Principles-Vol.-1', '', 'document/549.pdf', '../cover/549_c.jpg', '2020-12-28 16:13:50', 1, 0, 'Roger Hermanson'),
(550, 1, 7, 0, 'advanced accounting and financial reporting ', '', 'document/550.pdf', '../cover/550_c.jpg', '2020-12-28 16:15:03', 1, 0, 'institute of chartered accountant pakistlan'),
(551, 1, 7, 0, 'Advanced Accounting Vol. 2', '', 'document/551.pdf', '../cover/551_c.jpg', '2020-12-28 16:36:35', 1, 0, 'board of studies new delhi'),
(552, 1, 7, 0, 'ADVANCES IN MANAGEMENT ACCOUNTING ', '', 'document/552.pdf', '../cover/552_c.jpg', '2020-12-28 16:37:21', 1, 0, 'mary epstein'),
(553, 1, 7, 0, 'An Introduction to Accounting Theory ', '', 'document/553.pdf', '../cover/553_c.jpg', '2020-12-28 16:38:08', 1, 0, 'Gabriel Donleavy'),
(554, 1, 7, 0, 'Audit and Accounting Guide_ Life and Health Insurance Entities 2018', '', 'document/554.pdf', '../cover/554_c.jpg', '2020-12-28 16:39:47', 1, 0, 'AICPA'),
(555, 1, 7, 0, 'business accounting ', '', 'document/555.pdf', '../cover/555_c.jpg', '2020-12-28 16:40:40', 1, 0, 'Frank Wood'),
(556, 1, 7, 0, 'C02_ Fundamentals of Financial Accounting  ', '', 'document/556.pdf', '../cover/556_c.jpg', '2020-12-28 16:41:32', 1, 0, 'Henry Lunt'),
(557, 1, 7, 0, 'Cost And Management Accounting', '', 'document/557.pdf', '../cover/557_c.jpg', '2020-12-28 16:42:48', 1, 0, 'company secretaries of india'),
(558, 1, 7, 0, 'Excel for Accountants_ Tips, Tricks & Techniques ', '', 'document/558.pdf', '../cover/558_c.jpg', '2020-12-28 16:43:54', 1, 0, 'Conrad Calberg'),
(559, 1, 7, 0, 'Financial Accounting and Reporting', '', 'document/559.pdf', '../cover/559_c.jpg', '2020-12-28 16:44:58', 1, 0, 'SAP'),
(560, 1, 7, 0, 'Financial and Management Accounting ', '', 'document/560.pdf', '../cover/560_c.jpg', '2020-12-28 16:46:15', 1, 0, 'SAP'),
(561, 1, 7, 0, 'Foundation-Paper2-Revised', '', 'document/561.pdf', '../cover/561_c.jpg', '2020-12-28 16:47:14', 1, 0, 'ICMAI'),
(562, 1, 7, 0, 'fraud_auditing_and_forensic_accounting', '', 'document/562.pdf', '../cover/562_c.jpg', '2020-12-28 16:48:12', 1, 0, 'Tommie Singleton'),
(563, 1, 7, 0, 'FUNDAMENTALS OF ACCOUNTING AND AUDITING -  ', '', 'document/563.pdf', '../cover/563_c.jpg', '2020-12-28 16:54:55', 1, 0, ' ICSI'),
(564, 1, 7, 0, 'FUNDAMENTALS OF FINANCIAL ACCOUNTING ', '', 'document/564.pdf', '../cover/564_c.jpg', '2020-12-28 16:58:01', 1, 0, 'CIMA'),
(565, 1, 7, 0, 'Intermediate Financial Accounting ', '', 'document/565.pdf', '../cover/565_c.jpg', '2020-12-28 16:58:43', 1, 0, 'Glenn Arnold'),
(566, 1, 7, 0, 'intermediate-accounting-ifrs-edition-vol-1-the-accounting-information-system', '', 'document/566.pdf', '../cover/566_c.jpg', '2020-12-28 16:59:36', 1, 0, 'Coby Harmon'),
(567, 1, 7, 0, 'international_finance_and_accounting_handbook_3rd_edition', '', 'document/567.pdf', '../cover/567_c.jpg', '2020-12-28 17:00:26', 1, 0, 'Fredrick Choi'),
(568, 1, 7, 0, 'introduction to accounting ', '', 'document/568.pdf', '../cover/568_c.jpg', '2020-12-28 17:01:16', 1, 0, 'CA pakistan'),
(569, 1, 7, 0, 'Introduction to Financial Accounting ', '', 'document/569.pdf', '../cover/569_c.jpg', '2020-12-28 17:02:15', 1, 0, 'Henry Dauderis'),
(570, 1, 7, 0, 'Introduction to Financial Accounting', '', 'document/570.pdf', '../cover/570_c.jpg', '2020-12-28 17:03:08', 1, 0, 'David Annand'),
(571, 1, 7, 0, 'Management Accounting _ Principles and Applications  ', '', 'document/571.pdf', '../cover/571_c.jpg', '2020-12-28 17:03:56', 1, 0, 'David Hobbs'),
(572, 1, 7, 0, 'Management Accounting Best Practices_ A Guide for the Professional Accountant  ', '', 'document/572.pdf', '../cover/572_c.jpg', '2020-12-28 17:04:48', 1, 0, 'steven bragg'),
(573, 1, 7, 0, 'Management and Cost Accounting ', '', 'document/573.pdf', '../cover/573_c.jpg', '2020-12-28 17:05:56', 1, 0, 'Colin Drury'),
(574, 1, 7, 0, 'Mastering Bookkeeping_ A Complete Guide to the Principles and Practice of Business Accounting  ', '', 'document/574.pdf', '../cover/574_c.jpg', '2020-12-28 17:06:44', 1, 0, 'Dr Peter Marshall'),
(575, 1, 7, 0, 'New Trends in Finance and Accounting ', '', 'document/575.pdf', '../cover/575_c.jpg', '2020-12-28 17:07:44', 1, 0, 'David Prochazka'),
(576, 1, 7, 0, 'Nonprofit Bookkeeping & Accounting for Dummies  ', '', 'document/576.pdf', '../cover/576_c.jpg', '2020-12-28 17:08:29', 1, 0, 'Sharon Farris'),
(577, 1, 7, 0, 'Research on Professional Responsibility and Ethics in Accounting', '', 'document/577.pdf', '../cover/577_c.jpg', '2020-12-28 17:09:31', 1, 0, 'Cynthia Jeffrey'),
(578, 1, 7, 0, 'TBQ_PA_Accounting_managerial', '', 'document/578.pdf', '../cover/578_c.jpg', '2020-12-28 17:10:38', 1, 0, 'Hermanson, Edwards'),
(579, 1, 7, 0, 'The Accounting Game; Basic Accounting Fresh from the Lemonade Stand, 2008 Edition', '', 'document/579.pdf', '../cover/579_c.jpg', '2020-12-28 17:11:33', 1, 0, 'Derrel Mullis'),
(580, 1, 7, 0, 'The Accounting Picture Book - intermediate accounting ', '', 'document/580.pdf', '../cover/580_c.jpg', '2020-12-28 17:12:43', 1, 0, 'Michael Fitzgerald'),
(581, 1, 7, 0, 'The Everything Accounting Book ', '', 'document/581.pdf', '../cover/581_c.jpg', '2020-12-28 17:13:45', 1, 0, 'Michele Cagan'),
(582, 1, 7, 0, 'Understanding Business Accounting for Dummies, Second UK Edition ', '', 'document/582.pdf', '../cover/582_c.jpg', '2020-12-28 17:14:41', 1, 0, 'John Tracy'),
(583, 1, 7, 0, 'Warren Buffett Accounting Book_ Reading Financial Statements for Value Investing ', '', 'document/583.pdf', '../cover/583_c.jpg', '2020-12-28 17:15:32', 1, 0, 'Stig Brodersen'),
(584, 1, 7, 0, 'Wiley Accounting and Finance for Your Small Business 2nd', '', 'document/584.pdf', '../cover/584_c.jpg', '2020-12-28 17:16:08', 1, 0, 'steven bragg'),
(585, 1, 1, 0, 'Algorithms - Mathematics & Computer Science ', '', 'document/585.pdf', '../cover/585_c.jpg', '2020-12-28 17:21:24', 1, 0, 'Daagupta C'),
(586, 1, 1, 0, 'Basics of computer networking', '', 'document/586.pdf', '../cover/586_c.jpg', '2020-12-28 17:22:14', 1, 0, 'Thomas Robertazzi'),
(587, 1, 7, 0, 'Beginning Data Science in R_ Data Analysis, Visualization, and Modelling for the Data Scientist ', '', 'document/587.pdf', '../cover/587_c.jpg', '2020-12-28 17:23:12', 1, 0, 'Thomas Mailund'),
(588, 1, 1, 0, 'But How Do It Know_ - The Basic Principles of Computers for Everyone ', '', 'document/588.pdf', '../cover/588_c.jpg', '2020-12-28 17:24:04', 1, 0, 'Clark Scott'),
(589, 1, 1, 0, 'Cambridge IGCSE Computer Science ', '', 'document/589.pdf', '../cover/589_c.jpg', '2020-12-28 17:24:59', 1, 0, 'David Watson'),
(590, 1, 1, 0, 'Classic Computer Science Problems in Python ', '', 'document/590.pdf', '../cover/590_c.jpg', '2020-12-28 17:25:47', 1, 0, 'David Kopec'),
(591, 1, 1, 0, 'Fundamentals of Theoretical Computer Science  ', '', 'document/591.pdf', '../cover/591_c.jpg', '2020-12-28 17:27:07', 1, 0, 'Martin Davis'),
(592, 1, 1, 0, 'Computer Forensics_ Investigating Network Intrusions and Cyber Crime ', '', 'document/592.pdf', '../cover/592_c.jpg', '2020-12-28 17:28:14', 1, 0, 'CENGAGE learning'),
(593, 1, 1, 0, 'Computer Hacking_ A beginners guide to computer hacking ', '', 'document/593.pdf', '../cover/593_c.jpg', '2020-12-28 17:29:29', 1, 0, 'Anonymous author'),
(594, 1, 1, 0, 'computer networking and internet protocol', '', 'document/594.pdf', '../cover/594_c.jpg', '2020-12-28 17:30:13', 1, 0, 'Raj Jain'),
(595, 1, 1, 0, 'Computer networks ', '', 'document/595.pdf', '../cover/595_c.jpg', '2020-12-28 17:31:13', 1, 0, 'Tanenbaum'),
(596, 1, 1, 0, 'Computer Networks And Internets ', '', 'document/596.pdf', '../cover/596_c.jpg', '2020-12-28 17:32:01', 1, 0, 'Douglas Comer'),
(597, 1, 1, 0, 'Computer Science Made Simple ', '', 'document/597.pdf', '../cover/597_c.jpg', '2020-12-28 17:32:52', 1, 0, 'Anton Spraul'),
(598, 1, 1, 0, 'Computer Science One', '', 'document/598.pdf', '../cover/598_c.jpg', '2020-12-28 17:33:47', 1, 0, 'Dr Chris Burke'),
(599, 1, 1, 0, 'Computing handbook _ computer science and software engineering ', '', 'document/599.pdf', '../cover/599_c.jpg', '2020-12-28 17:36:22', 1, 0, 'Teofilo Gonzalez'),
(600, 1, 1, 0, 'concepts of concurrent programming', '', 'document/600.pdf', '../cover/600_c.jpg', '2020-12-28 17:37:06', 1, 0, 'David Bustard'),
(601, 1, 1, 0, 'Cyber Crime Investigations  ', '', 'document/601.pdf', '../cover/601_c.jpg', '2020-12-28 17:38:21', 1, 0, 'Anthony Reyes'),
(602, 1, 1, 0, 'data_communication_computer_network_tutorial', '', 'document/602.pdf', '../cover/602_c.jpg', '2020-12-28 17:39:13', 1, 0, 'tutorials point'),
(603, 1, 1, 0, 'design and analysis of algorithms', '', 'document/603.pdf', '../cover/603_c.jpg', '2020-12-28 17:40:09', 1, 0, 'Mr S. K Sathua'),
(604, 1, 1, 0, 'Digital Evidence and Computer Crime, Third Edition_ Forensic Science, Computers, and the Internet ', '', 'document/604.pdf', '../cover/604_c.jpg', '2020-12-28 17:41:00', 1, 0, 'Eoghan Casey'),
(605, 1, 1, 0, 'Discrete Mathematics for Computer Science ', '', 'document/605.pdf', '../cover/605_c.jpg', '2020-12-28 17:41:45', 1, 0, 'Gary Haggard'),
(606, 1, 1, 0, 'Encyclopedia_of_Computer_Science_and_Technology', '', 'document/606.pdf', '../cover/606_c.jpg', '2020-12-28 17:42:35', 1, 0, 'Encyclopedia '),
(607, 1, 1, 0, 'Foundations of Computer Science  ', '', 'document/607.pdf', '../cover/607_c.jpg', '2020-12-28 17:43:44', 1, 0, 'Behrouz Forouzan'),
(608, 1, 1, 0, 'fundamentals of computer networking and internetworking', '', 'document/608.pdf', '../cover/608_c.jpg', '2020-12-28 17:44:43', 1, 0, 'Prof Douglas Comer'),
(609, 1, 1, 0, 'fundamentals-of-computer-science-using-java', '', 'document/609.pdf', '../cover/609_c.jpg', '2020-12-28 17:45:42', 1, 0, 'David Hughes'),
(610, 1, 1, 0, 'Hacking_ Beginner to Expert Guide to Computer Hacking, Basic Security, and Penetration ', '', 'document/610.pdf', '../cover/610_c.jpg', '2020-12-28 17:46:32', 1, 0, 'James Patterson'),
(611, 1, 1, 0, 'How to Hack Computers ', '', 'document/611.pdf', '../cover/611_c.jpg', '2020-12-28 17:56:41', 1, 0, 'Joel Tope'),
(612, 1, 1, 0, 'IGCSE_O-Level Computer Science - Iteach ', '', 'document/612.pdf', '../cover/612_c.jpg', '2020-12-28 17:57:31', 1, 0, 'M. Mushtaq'),
(613, 1, 1, 0, 'intensive introduction to computer science', '', 'document/613.pdf', '../cover/613_c.jpg', '2020-12-28 17:58:17', 1, 0, 'David Sullivan'),
(614, 1, 1, 0, 'Internet Infrastructure_ Networking, Web Services, and Cloud Computing ', '', 'document/614.pdf', '../cover/614_c.jpg', '2020-12-28 17:59:06', 1, 0, 'Richard Fox'),
(615, 1, 1, 0, 'introduction to artificial intelligence', '', 'document/615.pdf', '../cover/615_c.jpg', '2020-12-28 17:59:54', 1, 0, 'Prof Bojana Balbelo'),
(616, 1, 1, 0, 'Introduction to Computational Science_ Modeling and Simulation for the Sciences ', '', 'document/616.pdf', '../cover/616_c.jpg', '2020-12-28 18:00:42', 1, 0, 'Angela Shiflet'),
(617, 1, 1, 0, 'Introduction to Computer Science  ', '', 'document/617.pdf', '../cover/617_c.jpg', '2020-12-28 18:01:31', 1, 0, 'Aron Kumar'),
(618, 1, 1, 0, 'Learn Computer Science with Swift ', '', 'document/618.pdf', '../cover/618_c.jpg', '2020-12-28 18:02:38', 1, 0, 'Jesse Feiler'),
(619, 1, 1, 0, 'Logic, Mathematics, and Computer Science_ Modern Foundations with Practical Applications ', '', 'document/619.pdf', '../cover/619_c.jpg', '2020-12-28 18:03:38', 1, 0, 'Yves Nieivergelt'),
(620, 1, 1, 0, 'Mathematical Foundation of Computer Science ', '', 'document/620.pdf', '../cover/620_c.jpg', '2020-12-28 18:04:37', 1, 0, 'Y. N Singh'),
(621, 1, 1, 0, 'Neural Networks for Pattern Recognition - Computer Science ', '', 'document/621.pdf', '../cover/621_c.jpg', '2020-12-28 18:05:31', 1, 0, 'Clarendon Press'),
(622, 1, 1, 0, 'notes on data structure and programming', '', 'document/622.pdf', '../cover/622_c.jpg', '2020-12-28 18:06:28', 1, 0, 'James A.'),
(623, 1, 1, 0, 'object oriented programming_from_Univ_KwaZulu-Natal', '', 'document/623.pdf', '../cover/623_c.jpg', '2020-12-28 18:07:27', 1, 0, 'Univ_KwaZulu-Natal'),
(624, 1, 1, 0, 'Practical Programming - An Introduction to Computer Science Using Python 3 2E ', '', 'document/624.pdf', '../cover/624_c.jpg', '2020-12-28 18:08:18', 1, 0, 'Paul Gries'),
(625, 1, 1, 0, 'Practical Programming_ An Introduction to Computer Science Using Python 3.6 ', '', 'document/625.pdf', '../cover/625_c.jpg', '2020-12-28 18:09:21', 1, 0, 'Paul Gries'),
(626, 1, 1, 0, 'Python Programming_ An Introduction to Computer Science ', '', 'document/626.pdf', '../cover/626_c.jpg', '2020-12-28 18:10:10', 1, 0, 'John Zelle'),
(627, 1, 1, 0, 'SQL_ Easy SQL Programming & Database Management For Beginners', '', 'document/627.pdf', '../cover/627_c.jpg', '2020-12-28 18:11:07', 1, 0, 'Felix Alvaro'),
(628, 1, 1, 0, 'The Computer Book_ From the Abacus to Artificial Intelligence, 250 Milestones in the History of Computer Science ', '', 'document/628.pdf', '../cover/628_c.jpg', '2020-12-28 18:12:05', 1, 0, 'Simson Garfinkel');
INSERT INTO `library_key` (`id`, `source`, `category`, `categoryname`, `title`, `data`, `link`, `coverlink`, `dateCreated`, `level`, `veiws`, `author`) VALUES
(629, 1, 1, 0, 'The Elements of Computing Systems_ Building a Modern Computer from First Principles ', '', 'document/629.pdf', '../cover/629_c.jpg', '2020-12-28 18:12:55', 1, 0, 'Noam Nisam'),
(630, 1, 1, 0, 'The Handy Science Answer Book ', '', 'document/630.pdf', '../cover/630_c.jpg', '2020-12-28 18:14:13', 1, 0, 'Carnegie Library of Pittburg'),
(631, 1, 1, 0, 'The Internet book_ everything you need to know about computer networking and how the Internet works  ', '', 'document/631.pdf', '../cover/631_c.jpg', '2020-12-28 18:15:06', 1, 0, 'Douglas Comer'),
(632, 1, 1, 0, 'Theory of Computer Science (Automata, Languages and Computation) Third Edition ', '', 'document/632.pdf', '../cover/632_c.jpg', '2020-12-28 18:16:12', 1, 0, 'K. L. P. Mishra'),
(633, 1, 1, 0, 'understanding computer simulaton', '', 'document/633.pdf', '../cover/633_c.jpg', '2020-12-28 18:16:58', 1, 0, 'Roger McHaney'),
(634, 1, 1, 0, 'Web Technologies - A Computer Science Perspective - ', '', 'document/634.pdf', '../cover/634_c.jpg', '2020-12-28 18:17:51', 1, 0, 'J. Jackson  '),
(635, 1, 1, 0, 'Wireless Crime and Forensic Investigation ', '', 'document/635.pdf', '../cover/635_c.jpg', '2020-12-28 18:18:47', 1, 0, 'G. Kipper - Auerbach, 2007 '),
(636, 1, 5, 0, 'A Textbook of Electrical Technology Volume I â€“ Basic Electrical Engineering ', '', 'document/636.pdf', '../cover/636_c.jpg', '2020-12-28 19:58:46', 1, 0, 'B.L. Teraja'),
(637, 1, 5, 0, 'Advanced Electrical and Electronics Engineering  ', '', 'document/637.pdf', '../cover/637_c.jpg', '2020-12-28 20:00:21', 1, 0, 'Jian Lee'),
(638, 1, 5, 0, 'All-in-One Electronics Guide ', '', 'document/638.pdf', '../cover/638_c.jpg', '2020-12-28 20:02:03', 1, 0, 'Cammen Chan'),
(639, 1, 5, 0, 'B.E. ( ELECTRICAL AND ELECTRONICS ENGINEERING - BIT  ', '', 'document/639.pdf', '../cover/639_c.jpg', '2020-12-28 20:02:59', 1, 0, 'Bannari Amman inst of Tech'),
(640, 1, 5, 0, 'B.E. Electrical and Electronics Engineering - Anna University ', '', 'document/640.pdf', '../cover/640_c.jpg', '2020-12-28 20:03:57', 1, 0, 'Anna University Chennai'),
(641, 1, 5, 0, 'B.Tech. Electrical and Electronics Engineering  ', '', 'document/641.pdf', '../cover/641_c.jpg', '2020-12-28 20:05:02', 1, 0, 'Pondicherry University'),
(642, 1, 5, 0, 'Basic Electrical and Electronics Engineering Lab ', '', 'document/642.pdf', '../cover/642_c.jpg', '2020-12-28 20:06:03', 1, 0, 'SRM university'),
(643, 1, 5, 0, 'Basic electrical and electronics engineering ', '', 'document/643.pdf', '../cover/643_c.jpg', '2020-12-28 20:07:06', 1, 0, 'Group of institutions India'),
(644, 1, 5, 0, 'Basics of electrical, electronics and communication engineering', '', 'document/644.pdf', '../cover/644_c.jpg', '2020-12-28 20:07:51', 1, 0, 'Rajath Publishers'),
(645, 1, 5, 0, 'Control of Induction Motors (Electrical and Electronic Engineering) ', '', 'document/645.pdf', '../cover/645_c.jpg', '2020-12-28 20:08:51', 1, 0, 'Andrzej M'),
(646, 1, 5, 0, 'Dawn of the Electronic Age', '', 'document/646.pdf', '../cover/646_c.jpg', '2020-12-28 20:12:42', 1, 0, 'Frederik Nebeker'),
(647, 1, 5, 0, 'Department of Electrical and Electronics Engineering ', '', 'document/647.pdf', '../cover/647_c.jpg', '2020-12-28 20:13:43', 1, 0, 'B. Satish'),
(648, 1, 5, 0, 'DIVISION OF ELECTRICAL & ELECTRONICS ENGINEERING  ', '', 'document/648.pdf', '../cover/648_c.jpg', '2020-12-28 20:14:44', 1, 0, 'KArunya University'),
(649, 1, 5, 0, 'EEE', '', 'document/649.pdf', '../cover/649_c.jpg', '2020-12-28 20:15:42', 1, 0, 'Calicut University Thenhipalam'),
(650, 1, 5, 0, 'Electrical & Electronic Engineering - College of Engineering Munnar  ', '', 'document/650.pdf', '../cover/650_c.jpg', '2020-12-28 20:16:33', 1, 0, 'Cochen University'),
(651, 1, 5, 0, 'Electrical and Electronic Engineering Concepts and Applications ', '', 'document/651.pdf', '../cover/651_c.jpg', '2020-12-28 20:17:19', 1, 0, 'Jeremy Glamatti'),
(652, 1, 5, 0, 'Electrical and Electronic Principles and Technology, 6th Edition ', '', 'document/652.pdf', '../cover/652_c.jpg', '2020-12-28 20:18:06', 1, 0, 'John Bird'),
(653, 1, 5, 0, 'Electrical and Electronic Principles and Technology, Fourth Edition ', '', 'document/653.pdf', '../cover/653_c.jpg', '2020-12-28 20:18:57', 1, 0, 'John Bird'),
(654, 1, 5, 0, 'Electrical And Electronics Engineering-  ', '', 'document/654.pdf', '../cover/654_c.jpg', '2020-12-28 20:19:44', 1, 0, 'U. Bakshi, V. Bakshi '),
(655, 1, 5, 0, 'electrical and electronics engineering', '', 'document/655.pdf', '../cover/655_c.jpg', '2020-12-28 20:20:44', 1, 0, 'elect elect'),
(656, 1, 5, 0, 'Electrical and electronics engineering-academic regulations and structure', '', 'document/656.pdf', '../cover/656_c.jpg', '2020-12-28 20:21:49', 1, 0, 'University of Kakinada'),
(657, 1, 5, 0, 'Electrical and Electronics Measurements and Instrumentation  ', '', 'document/657.pdf', '../cover/657_c.jpg', '2020-12-28 20:22:46', 1, 0, 'P. Purkait'),
(658, 1, 5, 0, 'Electrical, Electronics, and Digital Hardware Essentials for Scientists and Engineers ', '', 'document/658.pdf', '../cover/658_c.jpg', '2020-12-28 20:23:40', 1, 0, 'R. Abhari'),
(659, 1, 5, 0, 'electrical_manulal12013 ', '', 'document/659.pdf', '../cover/659_c.jpg', '2020-12-28 20:24:38', 1, 0, 'Nasim Zayed'),
(660, 1, 5, 0, 'electrical-and-electronic-principles-tech', '', 'document/660.pdf', '../cover/660_c.jpg', '2020-12-28 20:25:18', 1, 0, 'John Bird'),
(661, 1, 5, 0, ' electrical-power', '', 'document/661.pdf', '../cover/661_c.jpg', '2020-12-28 20:26:13', 1, 0, 'W. Pooler'),
(662, 1, 5, 0, 'electric-drive-dimensioning-and-tuning', '', 'document/662.pdf', '../cover/662_c.jpg', '2020-12-28 20:27:03', 1, 0, 'Valery V'),
(663, 1, 5, 0, 'electricity-magnetism-optics-and-modern-physics', '', 'document/663.pdf', '../cover/663_c.jpg', '2020-12-28 20:27:49', 1, 0, 'Daniel G.'),
(664, 1, 5, 0, 'Electronic and Electrical Servicing, Second Edition_ Consumer and Commercial Electronics ', '', 'document/664.pdf', '../cover/664_c.jpg', '2020-12-28 20:28:34', 1, 0, 'John Dunton'),
(665, 1, 5, 0, 'Fundamentals of Electronics_ Book 1_ Electronic Devices and Circuit Applications ', '', 'document/665.pdf', '../cover/665_c.jpg', '2020-12-28 20:29:23', 1, 0, 'Earnest Kim'),
(666, 1, 5, 0, 'Graded Exercises in Electrical and Electronic Engineering  ', '', 'document/666.pdf', '../cover/666_c.jpg', '2020-12-28 21:23:25', 1, 0, 'Christopher Robertson'),
(667, 1, 5, 0, 'IARE_FEE_LECTURE_NOTES', '', 'document/667.pdf', '../cover/667_c.jpg', '2020-12-28 21:24:22', 1, 0, 'K. Roddy'),
(668, 1, 5, 0, 'introduction-to-electronic-engineering', '', 'document/668.pdf', '../cover/668_c.jpg', '2020-12-28 21:25:17', 1, 0, 'Valery V'),
(669, 1, 5, 0, 'introduction-to-elecytric-circuits1', '', 'document/669.pdf', '../cover/669_c.jpg', '2020-12-28 21:26:02', 1, 0, 'Ray Powell'),
(670, 1, 5, 0, 'introduction-to-power-electronics', '', 'document/670.pdf', '../cover/670_c.jpg', '2020-12-28 21:26:51', 1, 0, 'Valery V'),
(671, 1, 5, 0, 'IVSem_Handbook2017-2018', '', 'document/671.pdf', '../cover/671_c.jpg', '2020-12-28 21:27:57', 1, 0, 'Anna University Chennai'),
(672, 1, 5, 0, 'Mastering Mathematics for Electrical and Electronic Engineering ', '', 'document/672.pdf', '../cover/672_c.jpg', '2020-12-28 21:28:56', 1, 0, 'Noel Morris'),
(673, 1, 5, 0, 'Mechatronics with Experiments', '', 'document/673.pdf', '../cover/673_c.jpg', '2020-12-28 21:29:49', 1, 0, 'Sabri Cetinkunt'),
(674, 1, 5, 0, 'Mechatronics. Electronic Control Systems in Mechanical and Electrical Engineering ', '', 'document/674.pdf', '../cover/674_c.jpg', '2020-12-28 21:30:36', 1, 0, 'William Bolton'),
(675, 1, 5, 0, 'Modern diesel technology _ electricity & electronics  ', '', 'document/675.pdf', '../cover/675_c.jpg', '2020-12-28 21:31:48', 1, 0, 'Joel Bell'),
(676, 1, 5, 0, 'Modern Electric, Hybrid Electric, and Fuel Cell Vehicles_ Fundamentals ', '', 'document/676.pdf', '../cover/676_c.jpg', '2020-12-28 21:33:17', 1, 0, 'Yimin Gao'),
(677, 1, 5, 0, 'Multiple Choice Questions in Electronics and Electrical Engineering ', '', 'document/677.pdf', '../cover/677_c.jpg', '2020-12-28 21:34:18', 1, 0, 'Thomas Davies'),
(678, 1, 5, 0, 'Power Electronics_ Circuit Analysis and Design ', '', 'document/678.pdf', '../cover/678_c.jpg', '2020-12-28 21:35:08', 1, 0, 'Ahmad Harb'),
(679, 1, 5, 0, 'SYLLABUS_DIPLOMA_IN_ELECTRICAL_AND_ELECT', '', 'document/679.pdf', '../cover/679_c.jpg', '2020-12-28 21:36:02', 1, 0, 'Government of Tamilnadu'),
(680, 1, 5, 0, 'The Electronics Handbook, Second Edition (Electrical Engineering Handbook) ', '', 'document/680.pdf', '../cover/680_c.jpg', '2020-12-28 21:36:51', 1, 0, 'Jerry Whitaker'),
(681, 1, 5, 0, 'three-phase-electrical-circuit-analysis', '', 'document/681.pdf', '../cover/681_c.jpg', '2020-12-28 21:37:44', 1, 0, 'Craig S'),
(682, 1, 5, 0, 'Unifying Electrical Engineering and Electronics Engineering ', '', 'document/682.pdf', '../cover/682_c.jpg', '2020-12-28 21:38:50', 1, 0, 'Song Xing'),
(683, 1, 5, 0, 'Wiley Electrical and Electronics Engineering Dictionary ', '', 'document/683.pdf', '../cover/683_c.jpg', '2020-12-28 21:39:54', 1, 0, 'Steven Kaplan'),
(684, 1, 5, 0, 'Written English - A Guide for Electrical and Electronic Students and Engineers ', '', 'document/684.pdf', '../cover/684_c.jpg', '2020-12-28 21:42:37', 1, 0, 'Steve  Hart'),
(685, 1, 11, 0, '85 Inspiring Ways to Market Your Small Business', '', 'document/685.pdf', '../cover/685_c.jpg', '2020-12-28 21:44:58', 1, 0, 'Jackie Jarvis'),
(686, 1, 11, 0, '101 Ways to Market Your Business_ Building a Successful Business with Creative Marketing  ', '', 'document/686.pdf', '../cover/686_c.jpg', '2020-12-28 21:46:00', 1, 0, 'Andrew Grifiths'),
(687, 1, 11, 0, 'A Concise Guide to Market Research  ', '', 'document/687.pdf', '../cover/687_c.jpg', '2020-12-28 21:46:53', 1, 0, 'Erik Mooi'),
(688, 1, 7, 0, 'An Introduction to Market & Social Research ', '', 'document/688.pdf', '../cover/688_c.jpg', '2020-12-28 21:47:52', 1, 0, 'karen adams'),
(689, 1, 7, 0, 'Asking Questions_ The Definitive Guide to Questionnaire Design ', '', 'document/689.pdf', '../cover/689_c.jpg', '2020-12-28 21:49:02', 1, 0, 'Norman Bradburn'),
(690, 1, 11, 0, 'Basic Marketing Research ', '', 'document/690.pdf', '../cover/690_c.jpg', '2020-12-28 21:49:57', 1, 0, 'Scott M'),
(691, 1, 7, 0, 'Beat the Market_ Win with Proven Stock Selection and Market Timing Tools ', '', 'document/691.pdf', '../cover/691_c.jpg', '2020-12-28 21:50:50', 1, 0, 'Gerald Appel'),
(692, 1, 11, 0, 'book_event__marketing', '', 'document/692.pdf', '../cover/692_c.jpg', '2020-12-29 05:40:03', 1, 0, 'leonard_h'),
(693, 1, 11, 0, 'Breakthrough Strategies for Predicting Any Market ', '', 'document/693.pdf', '../cover/693_c.jpg', '2020-12-29 05:41:07', 1, 0, ' Elliott Wave, Lucas, Fibonacci, Gann'),
(694, 1, 11, 0, 'Core-Concepts-of-Marketing', '', 'document/694.pdf', '../cover/694_c.jpg', '2020-12-29 05:42:02', 1, 0, 'John Burnett'),
(695, 1, 11, 0, 'Customer Manipulation_ How to Influence your Customers to Buy More  ', '', 'document/695.pdf', '../cover/695_c.jpg', '2020-12-29 05:43:14', 1, 0, 'Chloe Thomas'),
(696, 1, 11, 0, 'Email Marketing By the Numbers_ How to Use the World''s Greatest Marketing Tool', '', 'document/696.pdf', '../cover/696_c.jpg', '2020-12-29 05:44:24', 1, 0, 'Chris Bagott'),
(697, 1, 11, 0, 'Entrepreneurship theory and practice ', '', 'document/697.pdf', '../cover/697_c.jpg', '2020-12-29 05:45:21', 1, 0, 'Rui Baptista'),
(698, 1, 11, 0, 'Event Marketing_ How to Successfully Promote Events, Festivals, Conventions, and Expositions ', '', 'document/698.pdf', '../cover/698_c.jpg', '2020-12-29 05:46:14', 1, 0, 'leonard_h'),
(699, 1, 11, 0, 'Fibonacci_and_Gann_Applications', '', 'document/699.pdf', '../cover/699_c.jpg', '2020-12-29 05:47:12', 1, 0, 'George Maclean'),
(700, 1, 11, 0, 'Getting Everything New', '', 'document/700.pdf', '../cover/700_c.jpg', '2020-12-29 05:48:01', 1, 0, 'Jay Abraham'),
(701, 1, 11, 0, 'Guerrilla Profits_ 10 Powerful Strategies to Increase Cashflow, Boost Earnings & Get More Business ', '', 'document/701.pdf', '../cover/701_c.jpg', '2020-12-29 05:48:58', 1, 0, 'Jay Conrad'),
(702, 1, 11, 0, 'Guerrilla Selling 2 - Guerrilla Marketing Expert  ', '', 'document/702.pdf', '../cover/702_c.jpg', '2020-12-29 05:49:43', 1, 0, 'Jay Conrad'),
(703, 1, 11, 0, 'How to gain customers and increase profits with B2B marketing ', '', 'document/703.pdf', '../cover/703_c.jpg', '2020-12-29 05:50:37', 1, 0, 'Lisa Shepherd'),
(704, 1, 11, 0, 'How to Win Every Argument ', '', 'document/704.pdf', '../cover/704_c.jpg', '2020-12-29 05:51:33', 1, 0, 'Madsen Pirie'),
(705, 1, 11, 0, 'how-to-out-sell-out-market-out-promote-out-advertise-everyone-else ', '', 'document/705.pdf', '../cover/705_c.jpg', '2020-12-29 05:52:49', 1, 0, 'Paul Gorman'),
(706, 1, 11, 0, 'Marketing Book', '', 'document/706.pdf', '../cover/706_c.jpg', '2020-12-29 05:53:37', 1, 0, 'Michael B'),
(707, 1, 11, 0, 'Marketing Insights from A to Z_ 80 Concepts Every Manager Needs to Know  ', '', 'document/707.pdf', '../cover/707_c.jpg', '2020-12-29 05:54:29', 1, 0, 'Philip Kotler'),
(708, 1, 11, 0, 'Marketing Management, Millenium Edition ', '', 'document/708.pdf', '../cover/708_c.jpg', '2020-12-29 05:55:14', 1, 0, 'Philip Kotler'),
(709, 1, 11, 0, 'Marketing Strategy Masterclass_ Implementing Market Strategies ', '', 'document/709.pdf', '../cover/709_c.jpg', '2020-12-29 05:56:05', 1, 0, 'Paul Fifield'),
(710, 1, 11, 0, 'Measuring Customer Experience_ How to Develop and Execute the Most Profitable Customer Experience Strategies ', '', 'document/710.pdf', '../cover/710_c.jpg', '2020-12-29 05:57:05', 1, 0, 'Phil Klaus'),
(711, 1, 11, 0, 'Mind Over Markets_ Power Trading with Market Generated Information, Updated Edition ', '', 'document/711.pdf', '../cover/711_c.jpg', '2020-12-29 05:57:56', 1, 0, 'James Dalton'),
(712, 1, 11, 0, 'Niche Marketing for Coaches_ A Practical Handbook for Building a Life Coaching ', '', 'document/712.pdf', '../cover/712_c.jpg', '2020-12-29 05:58:54', 1, 0, 'Jonathan Jay'),
(713, 1, 11, 0, 'Principles of Marketing (14th Edition) ', '', 'document/713.pdf', '../cover/713_c.jpg', '2020-12-29 05:59:48', 1, 0, 'Philip Kotler'),
(714, 1, 11, 0, 'Profit with the Market Profile_ Identifying Market Value in Real Time ', '', 'document/714.pdf', '../cover/714_c.jpg', '2020-12-29 06:00:39', 1, 0, 'John Keppler'),
(715, 1, 11, 0, 'promoting-and-marketing-events-theory-and-practice', '', 'document/715.pdf', '../cover/715_c.jpg', '2020-12-29 06:01:38', 1, 0, 'Nigel Jackson'),
(716, 1, 11, 0, 'relationship-marketing', '', 'document/716.pdf', '../cover/716_c.jpg', '2020-12-29 06:03:46', 1, 0, 'Adrian Payne'),
(717, 1, 11, 0, 'Stop Acting Like a Seller and Start Thinking Like a Buyer_ Improve Sales Effectiveness by Helping Customers Buy ', '', 'document/717.pdf', '../cover/717_c.jpg', '2020-12-29 06:04:45', 1, 0, 'Jerry Acuff'),
(718, 1, 11, 0, 'Strategic Customer Service_ Managing the Customer Experience to Increase Positive Word of Mouth, Build Loyalt ', '', 'document/718.pdf', '../cover/718_c.jpg', '2020-12-29 06:05:42', 1, 0, 'John Goodman'),
(719, 1, 11, 0, 'Strategic Marketing Planning ', '', 'document/719.pdf', '../cover/719_c.jpg', '2020-12-29 06:06:29', 1, 0, 'Collin Giligan'),
(720, 1, 11, 0, 'Strategic Marketing_ Planning and Control, Second Edition ', '', 'document/720.pdf', '../cover/720_c.jpg', '2020-12-29 06:07:21', 1, 0, 'G. Drummond'),
(721, 1, 11, 0, 'strategic_marketing', '', 'document/721.pdf', '../cover/721_c.jpg', '2020-12-29 06:08:09', 1, 0, 'G. Drummond'),
(722, 1, 11, 0, 'The Art Of Thinking In Systems ', '', 'document/722.pdf', '../cover/722_c.jpg', '2020-12-29 06:09:10', 1, 0, 'Steven Shuster'),
(723, 1, 11, 0, 'The Cult of the Customer ', '', 'document/723.pdf', '../cover/723_c.jpg', '2020-12-29 06:10:01', 1, 0, 'Shep Hyken'),
(724, 1, 11, 0, 'The Guru Guide to Marketing_ A Concise Guide to the Best Ideas from Today''s Top Marketers  ', '', 'document/724.pdf', '../cover/724_c.jpg', '2020-12-29 06:10:50', 1, 0, 'Philip Kotler'),
(725, 1, 11, 0, 'The New Rules of Marketing & PR  ', '', 'document/725.pdf', '../cover/725_c.jpg', '2020-12-29 06:12:09', 1, 0, 'David Meerman'),
(726, 1, 11, 0, 'The Opt-Out Effect_ Marketing Strategies that Empower Consumers and Win Customer-Driven Brand Loyalty ', '', 'document/726.pdf', '../cover/726_c.jpg', '2020-12-29 06:12:59', 1, 0, 'Gerald Smith'),
(727, 1, 11, 0, 'The Psychology of Selling ', '', 'document/727.pdf', '../cover/727_c.jpg', '2020-12-29 06:13:46', 1, 0, 'Brian Tracy'),
(728, 1, 11, 0, 'The ultimate book of sales techniques _ 75 ways to master cold calling ', '', 'document/728.pdf', '../cover/728_c.jpg', '2020-12-29 06:14:47', 1, 0, 'Stephan S.'),
(729, 1, 11, 0, 'The Ultimate Sales Letter_ Attract New Customers. Boost Your Sales ', '', 'document/729.pdf', '../cover/729_c.jpg', '2020-12-29 06:15:36', 1, 0, 'Dan Kennedy'),
(730, 1, 11, 0, 'the-ultimate-guide-to-network-marketing', '', 'document/730.pdf', '../cover/730_c.jpg', '2020-12-29 06:16:24', 1, 0, 'Dr Joe Rubino'),
(731, 1, 11, 0, 'Think like your customer_ a winning strategy to maximize sales by understanding how and why your customers buy ', '', 'document/731.pdf', '../cover/731_c.jpg', '2020-12-29 06:17:22', 1, 0, 'Bill Stinnet'),
(732, 1, 11, 0, 'Timing the Market - How to Profit in the Stock Market Using the Yield Curve ', '', 'document/732.pdf', '../cover/732_c.jpg', '2020-12-29 06:18:14', 1, 0, 'Deborah Weir'),
(733, 1, 11, 0, 'Total Relationship Marketing, Third Edition ', '', 'document/733.pdf', '../cover/733_c.jpg', '2020-12-29 06:19:21', 1, 0, 'Evert Gummesson'),
(734, 1, 11, 0, 'Who Stole My Customer ', '', 'document/734.pdf', '../cover/734_c.jpg', '2020-12-29 06:20:16', 1, 0, 'Michael Hammer'),
(735, 1, 18, 0, '3,000 Solved Problems in Physics ', '', 'document/735.pdf', '../cover/735_c.jpg', '2020-12-29 06:26:07', 1, 0, 'Robert Oman'),
(736, 1, 18, 0, '20th-century-physics', '', 'document/736.pdf', '../cover/736_c.jpg', '2020-12-29 06:26:56', 1, 0, 'Mike Cowin'),
(737, 1, 18, 0, '1000-Solved-Problems-in-Classical-Physics-An-Exercise-Book', '', 'document/737.pdf', '../cover/737_c.jpg', '2020-12-29 06:27:49', 1, 0, 'Ahmad Kamal'),
(738, 1, 18, 0, 'Advanced Level Physics ', '', 'document/738.pdf', '../cover/738_c.jpg', '2020-12-29 06:28:40', 1, 0, 'M. Nelkon'),
(739, 1, 18, 0, 'advanced-topics-in-electrodynamics', '', 'document/739.pdf', '../cover/739_c.jpg', '2020-12-29 06:29:32', 1, 0, 'Walter Wilcox'),
(740, 1, 18, 0, 'Applied Physics, System Science and Computers ', '', 'document/740.pdf', '../cover/740_c.jpg', '2020-12-29 06:30:30', 1, 0, 'Klimis Ntalianis'),
(741, 1, 18, 0, 'BEGIN G PHYSICS 11 Waves, Electromagnetism, Optics, and Modern Physics ', '', 'document/741.pdf', '../cover/741_c.jpg', '2020-12-29 06:32:04', 1, 0, 'Alvin Halpern'),
(742, 1, 18, 0, 'Cambridge IGCSE Physics', '', 'document/742.pdf', '../cover/742_c.jpg', '2020-12-29 06:33:02', 1, 0, 'Duncan, Tom '),
(743, 1, 18, 0, ' Physics (0625) Past paper questions and answers ', '', 'document/743.pdf', '../cover/743_c.jpg', '2020-12-29 06:33:54', 1, 0, 'Cambridge IGCSE'),
(744, 1, 18, 0, 'chemical-thermodynamics', '', 'document/744.pdf', '../cover/744_c.jpg', '2020-12-29 06:34:46', 1, 0, 'Leo Lue'),
(745, 1, 18, 0, 'College Physics - Physics and Astronomy ', '', 'document/745.pdf', '../cover/745_c.jpg', '2020-12-29 06:35:48', 1, 0, 'Openstax college'),
(746, 1, 18, 0, 'Computational Physics', '', 'document/746.pdf', '../cover/746_c.jpg', '2020-12-29 06:36:51', 1, 0, 'Konstantinos A'),
(747, 1, 18, 0, 'Computational Problems for Physics ', '', 'document/747.pdf', '../cover/747_c.jpg', '2020-12-29 06:37:49', 1, 0, 'Rubin Landau'),
(748, 1, 18, 0, 'concepts-in-scientific-writing', '', 'document/748.pdf', '../cover/748_c.jpg', '2020-12-29 06:38:48', 1, 0, 'Dr. J Clifford Jones'),
(749, 1, 18, 0, 'Cracking the SAT Physics Subject Test ', '', 'document/749.pdf', '../cover/749_c.jpg', '2020-12-29 06:40:12', 1, 0, 'The Princeton'),
(750, 1, 18, 0, 'electricity-magnetism-optics-and-modern-physics', '', 'document/750.pdf', '../cover/750_c.jpg', '2020-12-29 06:40:59', 1, 0, 'Daniel G.'),
(751, 1, 18, 0, 'ELEMENTARY TEXTBOOK ON PHYSICS VOLUME 3  ', '', 'document/751.pdf', '../cover/751_c.jpg', '2020-12-29 06:42:08', 1, 0, 'Mir Publishers Moscow'),
(752, 1, 18, 0, 'elementary-physics-i', '', 'document/752.pdf', '../cover/752_c.jpg', '2020-12-29 06:43:12', 1, 0, 'Prof Satindar Bhagat'),
(753, 1, 18, 0, 'elementary-physics-ii', '', 'document/753.pdf', '../cover/753_c.jpg', '2020-12-29 06:44:10', 1, 0, 'Prof Satindar Bhagat'),
(754, 1, 18, 0, 'engineering thermodynamics solutions manual', '', 'document/754.pdf', '../cover/754_c.jpg', '2020-12-29 06:45:19', 1, 0, 'Tarik Al-Shemmeri'),
(755, 1, 18, 0, 'Experiments in Physics Physics 1291 General Physics I Lab  ', '', 'document/755.pdf', '../cover/755_c.jpg', '2020-12-29 06:46:17', 1, 0, 'Columbia University'),
(756, 1, 18, 0, 'foundation of physics for scientists engineers', '', 'document/756.pdf', '../cover/756_c.jpg', '2020-12-29 06:47:28', 1, 0, 'Ali Fazely'),
(757, 1, 18, 0, 'Fundamentals of Physics Extended 10th Edition Instructor''s Solutions Manual ', '', 'document/757.pdf', '../cover/757_c.jpg', '2020-12-29 06:48:24', 1, 0, 'Jearl Walker'),
(758, 1, 18, 0, 'Fundamentals of Physics II_ Electromagnetism, Optics, and Quantum Mechanics ', '', 'document/758.pdf', '../cover/758_c.jpg', '2020-12-29 06:49:13', 1, 0, 'R. Shankar'),
(759, 1, 18, 0, 'Fundamentals of Physics_ Mechanics, Relativity, and Thermodynamics  ', '', 'document/759.pdf', '../cover/759_c.jpg', '2020-12-29 06:50:02', 1, 0, 'R. Shankar'),
(760, 1, 18, 0, 'Gravitation, Cosmology, and Cosmic-Ray Physics  ', '', 'document/760.pdf', '../cover/760_c.jpg', '2020-12-29 06:51:14', 1, 0, 'National Academy Press'),
(761, 1, 18, 0, 'Hjorth-Jensen_lecture notes', '', 'document/761.pdf', '../cover/761_c.jpg', '2020-12-29 06:52:24', 1, 0, 'Hjorth-Jensen'),
(762, 1, 18, 0, 'intro_physics_1', '', 'document/762.pdf', '../cover/762_c.jpg', '2020-12-29 06:53:16', 1, 0, 'Robert Brown'),
(763, 1, 18, 0, 'Introduction to the Basic Concepts of Modern Physics ', '', 'document/763.pdf', '../cover/763_c.jpg', '2020-12-29 06:54:21', 1, 0, 'Carlo mecchi'),
(764, 1, 18, 0, 'Introduction to the Physics of Matter_ Basic atomic, molecular, and solid-state physics  ', '', 'document/764.pdf', '../cover/764_c.jpg', '2020-12-29 07:02:19', 1, 0, 'Nicola Manini'),
(765, 1, 18, 0, 'introduction-to-particle-physics', '', 'document/765.pdf', '../cover/765_c.jpg', '2020-12-29 07:03:12', 1, 0, 'Jacob Linda'),
(766, 1, 18, 0, 'Introductory Physics I - Duke Physics - Duke University ', '', 'document/766.pdf', '../cover/766_c.jpg', '2020-12-29 07:04:03', 1, 0, 'Robert Brown'),
(767, 1, 18, 0, '  irodov-problems_in_general_physics', '', 'document/767.pdf', '../cover/767_c.jpg', '2020-12-29 07:05:09', 1, 0, 'I.E.Irodov'),
(768, 1, 18, 0, 'Mathematical Physics', '', 'document/768.pdf', '../cover/768_c.jpg', '2020-12-29 07:06:08', 1, 0, 'Bruce Kusse'),
(769, 1, 18, 0, 'Modern classical physics_ optics, fluids, plasmas, elasticity, relativity, and statistical physics ', '', 'document/769.pdf', '../cover/769_c.jpg', '2020-12-29 07:07:00', 1, 0, 'Kip Thorne'),
(770, 1, 18, 0, 'Modern Physics Discussions on I E Irodov solutions Problems in General Physics by D B Singh Arihant  ', '', 'document/770.pdf', '../cover/770_c.jpg', '2020-12-29 07:07:52', 1, 0, 'I.E.Irodov'),
(771, 1, 18, 0, 'Modern Physics, 3rd Edition ', '', 'document/771.pdf', '../cover/771_c.jpg', '2020-12-29 07:08:43', 1, 0, 'Kenneth Krane'),
(772, 1, 18, 0, 'Nuclear Physics_ Exploring the Heart of Matter ', '', 'document/772.pdf', '../cover/772_c.jpg', '2020-12-29 07:10:08', 1, 0, 'National Academic Press'),
(773, 1, 18, 0, 'ordinary level secondary education physics', '', 'document/773.pdf', '../cover/773_c.jpg', '2020-12-29 07:11:11', 1, 0, 'Prof Hamisi D.'),
(774, 1, 18, 0, 'Physics (Class 9) ', '', 'document/774.pdf', '../cover/774_c.jpg', '2020-12-29 07:12:00', 1, 0, 'Pearson'),
(775, 1, 18, 0, 'Physics (Class 10) ', '', 'document/775.pdf', '../cover/775_c.jpg', '2020-12-29 07:12:51', 1, 0, 'Pearson'),
(776, 1, 18, 0, 'Physics 2000 and Calculus 2000_ modern college-level calculus-based physics ', '', 'document/776.pdf', '../cover/776_c.jpg', '2020-12-29 07:13:58', 1, 0, 'E R. Huggins'),
(777, 1, 18, 0, 'Physics for Engineers and Scientists ', '', 'document/777.pdf', '../cover/777_c.jpg', '2020-12-29 07:14:46', 1, 0, 'Hans Ohanian'),
(778, 1, 18, 0, 'Physics II For Dummies ', '', 'document/778.pdf', '../cover/778_c.jpg', '2020-12-29 07:15:41', 1, 0, 'Stevev H.'),
(779, 1, 18, 0, 'physics-workbook-for-dummies', '', 'document/779.pdf', '../cover/779_c.jpg', '2020-12-29 07:16:34', 1, 0, 'Steven H.'),
(780, 1, 18, 0, 'PhysTEC eBook optimized', '', 'document/780.pdf', '../cover/780_c.jpg', '2020-12-29 07:17:27', 1, 0, 'David E.'),
(781, 1, 18, 0, 'Solid-state Physics  ', '', 'document/781.pdf', '../cover/781_c.jpg', '2020-12-29 07:18:12', 1, 0, 'James Patterson'),
(782, 1, 18, 0, 'study-notes-for-statistical-physics', '', 'document/782.pdf', '../cover/782_c.jpg', '2020-12-29 07:19:06', 1, 0, 'W. David McComb'),
(783, 1, 18, 0, 'Understanding physics. Electricity & Magnetism ', '', 'document/783.pdf', '../cover/783_c.jpg', '2020-12-29 07:19:56', 1, 0, 'DC Pandey'),
(784, 1, 18, 0, 'Understanding physics. Mechanics, part 2  ', '', 'document/784.pdf', '../cover/784_c.jpg', '2020-12-29 07:20:48', 1, 0, 'DC Pandey'),
(785, 1, 18, 0, 'University Physics Volume1', '', 'document/785.pdf', '../cover/785_c.jpg', '2020-12-29 07:21:43', 1, 0, 'Openstax college'),
(786, 1, 4, 0, 'A feel for statistics', '', 'document/786.pdf', '../cover/786_c.jpg', '2020-12-29 07:27:58', 1, 0, 'Ivan Lowe'),
(787, 1, 4, 0, 'Advanced Calculus with Applications in Statistics ', '', 'document/787.pdf', '../cover/787_c.jpg', '2020-12-29 07:28:49', 1, 0, 'Andr Khuri'),
(788, 1, 4, 0, 'A Handbook Of Statistics', '', 'document/788.pdf', '../cover/788_c.jpg', '2020-12-29 07:30:05', 1, 0, 'Darius S.'),
(789, 1, 4, 0, 'All of Statistics - A Concise Course in Statistical Inference ', '', 'document/789.pdf', '../cover/789_c.jpg', '2020-12-29 07:30:58', 1, 0, 'Larry Wassserman'),
(790, 1, 4, 0, 'An-Introduction-to-Mathematical-Statistics', '', 'document/790.pdf', '../cover/790_c.jpg', '2020-12-29 07:31:57', 1, 0, 'Amsterdan University Press'),
(791, 1, 4, 0, 'an-introduction-to-partial-differential-equations', '', 'document/791.pdf', '../cover/791_c.jpg', '2020-12-29 07:32:45', 1, 0, 'R.S. Johnson'),
(792, 1, 4, 0, 'Applied Statistics', '', 'document/792.pdf', '../cover/792_c.jpg', '2020-12-29 07:33:43', 1, 0, 'Mohammed S.'),
(793, 1, 4, 0, 'Bayesian Statistics_ An Introduction', '', 'document/793.pdf', '../cover/793_c.jpg', '2020-12-29 08:43:22', 1, 0, 'Peter Lee'),
(794, 1, 4, 0, 'beginning statistics', '', 'document/794.pdf', '../cover/794_c.jpg', '2020-12-29 08:45:07', 1, 0, 'Douglas Shaufer'),
(795, 1, 4, 0, 'Common Errors in Statistics ', '', 'document/795.pdf', '../cover/795_c.jpg', '2020-12-29 08:46:39', 1, 0, 'Philip Good'),
(796, 1, 4, 0, 'demographic statistics', '', 'document/796.pdf', '../cover/796_c.jpg', '2020-12-29 08:47:49', 1, 0, 'Nicholas N.'),
(797, 1, 4, 0, 'descriptive-statistics-the-basics-volume-1', '', 'document/797.pdf', '../cover/797_c.jpg', '2020-12-29 08:48:45', 1, 0, 'Mohammed Shayib'),
(798, 1, 4, 0, 'Differential_Geometrical_Theory_of_Statistics', '', 'document/798.pdf', '../cover/798_c.jpg', '2020-12-29 08:49:55', 1, 0, 'Frederick Barbaresco'),
(799, 1, 4, 0, 'elementary-algebra-and-calculus', '', 'document/799.pdf', '../cover/799_c.jpg', '2020-12-29 08:50:49', 1, 0, 'Larissa Fradkin'),
(800, 1, 4, 0, 'Elements of Statistical Mechanics, 3rd edition ', '', 'document/800.pdf', '../cover/800_c.jpg', '2020-12-29 08:51:40', 1, 0, 'D ter Haar'),
(801, 1, 4, 0, 'Essentials of statistics-exercise-book', '', 'document/801.pdf', '../cover/801_c.jpg', '2020-12-29 08:52:30', 1, 0, 'David Brink'),
(802, 1, 4, 0, 'Even you can learn statistics_ a guide for everyone who has ever been afraid of statistics  ', '', 'document/802.pdf', '../cover/802_c.jpg', '2020-12-29 08:53:24', 1, 0, 'David Levine'),
(803, 1, 4, 0, 'exercises-in-statistical-inference', '', 'document/803.pdf', '../cover/803_c.jpg', '2020-12-29 08:54:15', 1, 0, 'Robert Jonsson'),
(804, 1, 4, 0, 'From Finite Sample to Asymptotic Methods in Statistics ', '', 'document/804.pdf', '../cover/804_c.jpg', '2020-12-29 08:55:16', 1, 0, 'Pranab Sen'),
(805, 1, 4, 0, 'Getting Familiar With Excel ', '', 'document/805.pdf', '../cover/805_c.jpg', '2020-12-29 08:56:58', 1, 0, 'know excel'),
(806, 1, 4, 0, 'Illustrating Statistical Procedures. Finding Meaning in Quantitative Data ', '', 'document/806.pdf', '../cover/806_c.jpg', '2020-12-29 08:57:52', 1, 0, 'Ray Cooksey'),
(807, 1, 4, 0, 'introduction to statistical thought', '', 'document/807.pdf', '../cover/807_c.jpg', '2020-12-29 08:58:48', 1, 0, 'Michael Lavine'),
(808, 1, 4, 0, 'introduction-to-statistical-data-analysis-with-r', '', 'document/808.pdf', '../cover/808_c.jpg', '2020-12-29 08:59:41', 1, 0, 'Mathias Kohl'),
(809, 1, 4, 0, 'introductory nonparametrics', '', 'document/809.pdf', '../cover/809_c.jpg', '2020-12-29 09:00:46', 1, 0, 'J.C.W. Rayner'),
(810, 1, 4, 0, 'Introductory Statistics ', '', 'document/810.pdf', '../cover/810_c.jpg', '2020-12-29 09:02:16', 1, 0, 'Mark B.'),
(811, 1, 4, 0, 'Intuitive Introductory Statistics ', '', 'document/811.pdf', '../cover/811_c.jpg', '2020-12-29 09:03:10', 1, 0, 'Douglas Wolfe'),
(812, 1, 4, 0, 'Large Sample Techniques for Statistics ', '', 'document/812.pdf', '../cover/812_c.jpg', '2020-12-29 09:04:04', 1, 0, 'Jiming Jiang'),
(813, 1, 4, 0, 'Mathematical Statistics Basic Ideas and Selected Topics Volume I  ', '', 'document/813.pdf', '../cover/813_c.jpg', '2020-12-29 09:04:47', 1, 0, 'Peter Bickel'),
(814, 1, 4, 0, 'mathematical statistics', '', 'document/814.pdf', '../cover/814_c.jpg', '2020-12-29 09:05:52', 1, 0, 'Sara Van de Gaar'),
(815, 1, 4, 0, 'Mathematical Statistics_ Basic Ideas and Selected Topics, Vol 1', '', 'document/815.pdf', '../cover/815_c.jpg', '2020-12-29 09:06:46', 1, 0, 'Peter Bickel'),
(816, 1, 4, 0, 'Mathematical_Statistics_with_Mathematica', '', 'document/816.pdf', '../cover/816_c.jpg', '2020-12-29 09:07:37', 1, 0, 'Colin Rose'),
(817, 1, 4, 0, 'Matrix Algebra_ Theory, Computations and Applications in Statistics ', '', 'document/817.pdf', '../cover/817_c.jpg', '2020-12-29 09:08:26', 1, 0, 'James Gentle'),
(818, 1, 4, 0, 'Matrix Differential Calculus with Applications in Statistics and Econometrics ', '', 'document/818.pdf', '../cover/818_c.jpg', '2020-12-29 09:09:21', 1, 0, 'David Bollding'),
(819, 1, 4, 0, 'Probability and mathematical statistics', '', 'document/819.pdf', '../cover/819_c.jpg', '2020-12-29 09:10:17', 1, 0, 'Prasanna Sahoo'),
(820, 1, 4, 0, 'Probability and Statistics for Engineering and the Sciences, 8th Edition   ', '', 'document/820.pdf', '../cover/820_c.jpg', '2020-12-29 09:11:04', 1, 0, 'Jay Devore'),
(821, 1, 4, 0, 'Springer Handbook of Engineering Statistics  ', '', 'document/821.pdf', '../cover/821_c.jpg', '2020-12-29 09:12:03', 1, 0, 'Hoang Pham'),
(822, 1, 4, 0, 'stability-analysis-via-matrix-functions-method', '', 'document/822.pdf', '../cover/822_c.jpg', '2020-12-29 09:12:59', 1, 0, 'A. Martynyuk'),
(823, 1, 4, 0, 'Starting statistics. A short, clear guide ', '', 'document/823.pdf', '../cover/823_c.jpg', '2020-12-29 09:14:01', 1, 0, 'Neil Burdess'),
(824, 1, 4, 0, 'Statistical methods ', '', 'document/824.pdf', '../cover/824_c.jpg', '2020-12-29 09:14:54', 1, 0, 'Rudolf Freund'),
(825, 1, 4, 0, 'Statistical tools for finance and insurance ', '', 'document/825.pdf', '../cover/825_c.jpg', '2020-12-29 09:15:41', 1, 0, 'R. Weron'),
(826, 1, 4, 0, 'statistical-thermodynamics-and-spectroscopy', '', 'document/826.pdf', '../cover/826_c.jpg', '2020-12-29 09:16:29', 1, 0, 'Wolfgang Shartl'),
(827, 1, 4, 0, 'statistics for people who hate statistics ', '', 'document/827.pdf', '../cover/827_c.jpg', '2020-12-29 09:18:10', 1, 0, 'Neil Salkind'),
(828, 1, 4, 0, 'Statistics in Medicine ', '', 'document/828.pdf', '../cover/828_c.jpg', '2020-12-29 09:19:13', 1, 0, 'R.H. Riffenburg'),
(829, 1, 4, 0, 'statistics-compendium', '', 'document/829.pdf', '../cover/829_c.jpg', '2020-12-29 09:19:57', 1, 0, 'David Brink'),
(830, 1, 4, 0, 'statistics-for-health-schools-and-professionals', '', 'document/830.pdf', '../cover/830_c.jpg', '2020-12-29 09:20:43', 1, 0, 'Nicholas N.'),
(831, 1, 4, 0, 'stats-practically-short-and-simple', '', 'document/831.pdf', '../cover/831_c.jpg', '2020-12-29 09:21:27', 1, 0, 'Sydney Tyrrell'),
(832, 1, 4, 0, 'The Elements of Statistical Learning ', '', 'document/832.pdf', '../cover/832_c.jpg', '2020-12-29 09:22:24', 1, 0, 'Trevor Hastie'),
(833, 1, 4, 0, 'theoretical-probability-distributions', '', 'document/833.pdf', '../cover/833_c.jpg', '2020-12-29 09:23:05', 1, 0, 'Nicholas N.'),
(834, 1, 4, 0, 'understand statistics', '', 'document/834.pdf', '../cover/834_c.jpg', '2020-12-29 09:23:53', 1, 0, 'Store Holm '),
(835, 1, 4, 0, 'Using Statistics_ A Gentle Introduction_ A Gentle Guide  ', '', 'document/835.pdf', '../cover/835_c.jpg', '2020-12-29 09:24:38', 1, 0, 'Gordon Rogg'),
(836, 1, 19, 0, 'Microbiology Self Study Report', '', 'document/836.pdf', '../cover/836_c.jpg', '2020-12-29 09:33:51', 1, 0, 'Acharya Nagarjuna University'),
(837, 1, 19, 0, 'Applied Microbiology ', '', 'document/837.pdf', '../cover/837_c.jpg', '2020-12-29 11:38:38', 1, 0, 'Sanjai Saxena'),
(838, 1, 19, 0, 'Basic Medical Microbiology ', '', 'document/838.pdf', '../cover/838_c.jpg', '2020-12-29 11:42:11', 1, 0, 'Patrick Murray'),
(839, 1, 19, 0, 'Case Files_ Microbiology (Case Files), 2nd edition ', '', 'document/839.pdf', '../cover/839_c.jpg', '2020-12-29 11:43:17', 1, 0, 'Lange'),
(840, 1, 19, 0, 'Coronavirus Replication and Reverse Genetics ', '', 'document/840.pdf', '../cover/840_c.jpg', '2020-12-29 11:44:18', 1, 0, 'L. Enjuanes'),
(841, 1, 19, 0, 'Current Topics in Microbiology and Immunology  ', '', 'document/841.pdf', '../cover/841_c.jpg', '2020-12-29 11:45:11', 1, 0, 'Oystein B.'),
(842, 1, 19, 0, 'DIAGNOSTIC-MEDICAL-MICROBIOLOGY-PRACTICAL', '', 'document/842.pdf', '../cover/842_c.jpg', '2020-12-29 11:46:21', 1, 0, 'Dr. A. Elmanama'),
(843, 1, 19, 0, 'Environmental Microbiology  ', '', 'document/843.pdf', '../cover/843_c.jpg', '2020-12-29 11:47:30', 1, 0, 'K. Josephson'),
(844, 1, 19, 0, 'Essential Microbiology ', '', 'document/844.pdf', '../cover/844_c.jpg', '2020-12-29 11:48:37', 1, 0, 'Stuart Hogg'),
(845, 1, 19, 0, 'Essential Microbiology for Pharmacy and Pharmaceutical Science ', '', 'document/845.pdf', '../cover/845_c.jpg', '2020-12-29 11:49:44', 1, 0, 'Geoffrey Hanlon'),
(846, 1, 19, 0, 'essential_microbiology', '', 'document/846.pdf', '../cover/846_c.jpg', '2020-12-29 11:50:46', 1, 0, 'Stuart Hogg'),
(847, 1, 19, 0, 'Essentials of Medical Microbiology ', '', 'document/847.pdf', '../cover/847_c.jpg', '2020-12-29 11:52:58', 1, 0, 'Rajwsh Bhatia'),
(848, 1, 19, 0, 'Fermentation Microbiology and Biotechnology ', '', 'document/848.pdf', '../cover/848_c.jpg', '2020-12-29 11:54:49', 1, 0, 'El-Mansi'),
(849, 1, 19, 0, 'Food Microbiology  ', '', 'document/849.pdf', '../cover/849_c.jpg', '2020-12-29 11:57:56', 1, 0, 'Garret Cooper'),
(850, 1, 19, 0, 'food-microbiology ', '', 'document/850.pdf', '../cover/850_c.jpg', '2020-12-29 11:58:50', 1, 0, 'Martin Adams'),
(851, 1, 19, 0, 'Fundamentals of Microbiology ', '', 'document/851.pdf', '../cover/851_c.jpg', '2020-12-29 11:59:58', 1, 0, 'Bharathiar University'),
(852, 1, 19, 0, 'Generalov-II_Medical Microbiology Virology Immunology ', '', 'document/852.pdf', '../cover/852_c.jpg', '2020-12-29 12:03:01', 1, 0, 'D.V Tapalsky'),
(853, 1, 19, 0, 'Handbook of Water and Wastewater Microbiology ', '', 'document/853.pdf', '../cover/853_c.jpg', '2020-12-29 12:03:52', 1, 0, 'Duncan Mara'),
(854, 1, 19, 0, 'Hugo and Russell''s Pharmaceutical Microbiology ', '', 'document/854.pdf', '../cover/854_c.jpg', '2020-12-29 12:04:47', 1, 0, 'Stephen Denyer'),
(855, 1, 19, 0, 'Industrial-Microbiology-An-Introduction', '', 'document/855.pdf', '../cover/855_c.jpg', '2020-12-29 12:06:56', 1, 0, 'Michael Waites'),
(856, 1, 19, 0, 'Introduction& history of microbiology ', '', 'document/856.pdf', '../cover/856_c.jpg', '2020-12-29 12:28:49', 1, 0, 'Prof. Akram Hossain'),
(857, 1, 19, 0, 'Laboratory Manual for General Microbiology ', '', 'document/857.pdf', '../cover/857_c.jpg', '2020-12-29 12:29:36', 1, 0, 'Mathew J.'),
(858, 1, 19, 0, 'Laboratory_manual_in_general_microbiology', '', 'document/858.pdf', '../cover/858_c.jpg', '2020-12-29 12:30:27', 1, 0, 'John Wiley'),
(859, 1, 19, 0, 'Lippincott''s Illustrated Q&A Review of Microbiology and Immunology ', '', 'document/859.pdf', '../cover/859_c.jpg', '2020-12-29 12:32:39', 1, 0, 'Bonnie Buxton'),
(860, 1, 19, 0, 'Medical Microbiology and Infection at a Glance ', '', 'document/860.pdf', '../cover/860_c.jpg', '2020-12-29 12:33:57', 1, 0, 'Stephen Gilespie'),
(861, 1, 19, 0, 'medical-microbiology', '', 'document/861.pdf', '../cover/861_c.jpg', '2020-12-29 12:34:58', 1, 0, 'F. H. Kaser'),
(862, 1, 19, 0, 'MICROBIAL BIOTECHNOLOGY_ Fundamentals of Applied Microbiology, Second Edition ', '', 'document/862.pdf', '../cover/862_c.jpg', '2020-12-29 12:35:57', 1, 0, 'Alexander N.'),
(863, 1, 19, 0, 'Microbiology - Laboratory Exercises - justmed.eu ', '', 'document/863.pdf', '../cover/863_c.jpg', '2020-12-29 12:36:56', 1, 0, 'Harley Prescott'),
(864, 1, 19, 0, 'Microbiology (Lippincottâ€™s Illustrated Reviews)  ', '', 'document/864.pdf', '../cover/864_c.jpg', '2020-12-29 12:38:52', 1, 0, 'Richard Harvey'),
(865, 1, 19, 0, 'Microbiology _ PreTest Self-Assessment & Review ', '', 'document/865.pdf', '../cover/865_c.jpg', '2020-12-29 12:39:49', 1, 0, 'Richard Tillton'),
(866, 1, 19, 0, 'Microbiology and Immunology (Board Review Series) ', '', 'document/866.pdf', '../cover/866_c.jpg', '2020-12-29 12:40:42', 1, 0, 'Loiuse Howley'),
(867, 1, 19, 0, 'Microbiology and technology of fermented foods ', '', 'document/867.pdf', '../cover/867_c.jpg', '2020-12-29 12:41:30', 1, 0, 'Robert Hotkins'),
(868, 1, 19, 0, 'Microbiology Demystified ', '', 'document/868.pdf', '../cover/868_c.jpg', '2020-12-29 12:42:31', 1, 0, ' Tom Betsy, James Keogh'),
(869, 1, 19, 0, 'microbiology immunology', '', 'document/869.pdf', '../cover/869_c.jpg', '2020-12-29 12:44:16', 1, 0, 'Brigham N.'),
(870, 1, 19, 0, 'Microbiology_ Laboratory Theory and Application ', '', 'document/870.pdf', '../cover/870_c.jpg', '2020-12-29 12:45:08', 1, 0, 'Michael L.'),
(871, 1, 19, 0, 'Microbiology', '', 'document/871.pdf', '../cover/871_c.jpg', '2020-12-29 12:46:13', 1, 0, 'Modern Asia'),
(872, 1, 19, 0, 'Microorganisms in Foods 7_ Microbiological Testing in Food Safety Management ', '', 'document/872.pdf', '../cover/872_c.jpg', '2020-12-29 12:47:11', 1, 0, 'Springer'),
(873, 1, 19, 0, 'Modern Biotechnology ', '', 'document/873.pdf', '../cover/873_c.jpg', '2020-12-29 12:48:07', 1, 0, 'Nathan Mosier'),
(874, 1, 19, 0, 'Modern Industrial Microbiology and Biotechnology ', '', 'document/874.pdf', '../cover/874_c.jpg', '2020-12-29 12:49:18', 1, 0, 'Nduka Okafor, Benedict C. Okeke'),
(875, 1, 19, 0, 'Modern Industrial Microbiology Biotechnology', '', 'document/875.pdf', '../cover/875_c.jpg', '2020-12-29 12:50:46', 1, 0, 'Nduka Okafor'),
(876, 1, 19, 0, 'Molecular Microbiology_ Diagnostic Principles and Practice ', '', 'document/876.pdf', '../cover/876_c.jpg', '2020-12-29 12:51:37', 1, 0, 'David Persing'),
(877, 1, 19, 0, 'Pharmaceutical Microbiology ', '', 'document/877.pdf', '../cover/877_c.jpg', '2020-12-29 12:52:47', 1, 0, 'W.B. Hugo'),
(878, 1, 19, 0, 'Pharmaceutical microbiology _ essentials for quality assurance and quality control ', '', 'document/878.pdf', '../cover/878_c.jpg', '2020-12-29 12:53:46', 1, 0, 'Tim Sanddle'),
(879, 1, 19, 0, 'Practical Microbiology ', '', 'document/879.pdf', '../cover/879_c.jpg', '2020-12-29 12:54:54', 1, 0, 'Erika M.'),
(880, 1, 19, 0, 'Sherris Medical Microbiology _ An Introduction to Infectious Diseases ', '', 'document/880.pdf', '../cover/880_c.jpg', '2020-12-29 12:55:45', 1, 0, 'Kenneth Ryan'),
(881, 1, 19, 0, 'Soil Microbiology, Ecology and Biochemistry', '', 'document/881.pdf', '../cover/881_c.jpg', '2020-12-29 12:56:37', 1, 0, 'Eldor Paul'),
(882, 1, 19, 0, 'Textbook of Microbiology  ', '', 'document/882.pdf', '../cover/882_c.jpg', '2020-12-29 12:57:50', 1, 0, 'Surinder Kumar'),
(883, 1, 19, 0, 'Textbook of Microbiology ', '', 'document/883.pdf', '../cover/883_c.jpg', '2020-12-29 13:00:48', 1, 0, 'C.K. Panicker'),
(884, 1, 19, 0, 'Veterinary Microbiology and Microbial Disease  ', '', 'document/884.pdf', '../cover/884_c.jpg', '2020-12-29 13:01:39', 1, 0, 'P.J. Quinn'),
(885, 1, 8, 0, 'Administrative Behavior ', '', 'document/885.pdf', '../cover/885_c.jpg', '2020-12-29 16:28:30', 1, 0, 'Herbert Simon'),
(886, 1, 8, 0, 'an-introduction-to-business', '', 'document/886.pdf', '../cover/886_c.jpg', '2020-12-29 16:37:10', 1, 0, 'v1.0'),
(887, 1, 8, 0, 'Business Administration ', '', 'document/887.pdf', '../cover/887_c.jpg', '2020-12-29 16:38:20', 1, 0, 'Burapha Uni'),
(888, 1, 8, 0, 'Business Administration', '', 'document/888.pdf', '../cover/888_c.jpg', '2020-12-29 16:39:32', 1, 0, 'College of south africa'),
(889, 1, 8, 0, 'Business Administration and Management ', '', 'document/889.pdf', '../cover/889_c.jpg', '2020-12-29 16:41:27', 1, 0, 'National board for tech education Nigeria'),
(890, 1, 8, 0, 'business administration', '', 'document/890.pdf', '../cover/890_c.jpg', '2020-12-29 16:42:21', 1, 0, 'Prof Dr. Ulrich D'),
(891, 1, 8, 0, 'Business and Administration ', '', 'document/891.pdf', '../cover/891_c.jpg', '2020-12-29 16:43:14', 1, 0, 'skills CFA'),
(892, 1, 8, 0, 'Business and management', '', 'document/892.pdf', '../cover/892_c.jpg', '2020-12-29 16:44:04', 1, 0, 'Edward Elgar'),
(893, 1, 8, 0, 'Business Management and Administration Practicum ', '', 'document/893.pdf', '../cover/893_c.jpg', '2020-12-29 16:45:45', 1, 0, 'Texas education agency'),
(894, 1, 9, 0, 'An Introduction to Banking_ Liquidity Risk and Asset-Liability Management', '', 'document/894.pdf', '../cover/894_c.jpg', '2020-12-31 17:17:55', 1, 0, 'Moorad C.'),
(895, 1, 9, 0, 'Artificial intelligence in Nigeria financial sector', '', 'document/895.pdf', '../cover/895_c.jpg', '2020-12-31 17:18:48', 1, 0, 'Research Gate'),
(896, 1, 9, 0, 'BANK AND BANKING Modern_Banking', '', 'document/896.pdf', '../cover/896_c.jpg', '2020-12-31 17:19:54', 1, 0, 'Shelagh H.'),
(897, 1, 9, 0, 'Banking Beyond Banks and Money_ A Guide to Banking Services in the Twenty-First Century ', '', 'document/897.pdf', '../cover/897_c.jpg', '2020-12-31 17:21:05', 1, 0, 'Paolo Tasca'),
(898, 1, 9, 0, 'Banking on the Future_ The Fall and Rise of Central Banking ', '', 'document/898.pdf', '../cover/898_c.jpg', '2020-12-31 17:22:17', 1, 0, 'Howard Davies'),
(899, 1, 9, 0, 'Business Finance_ Theory and Practice ', '', 'document/899.pdf', '../cover/899_c.jpg', '2020-12-31 17:24:32', 1, 0, 'Eddie Mclaney'),
(900, 1, 9, 0, 'Money, Banking, and Financial System ', '', 'document/900.pdf', '../cover/900_c.jpg', '2020-12-31 17:34:42', 1, 0, 'Glenn Hubbard'),
(901, 1, 9, 0, 'The Principles of Banking ', '', 'document/901.pdf', '../cover/901_c.jpg', '2020-12-31 17:39:38', 1, 0, 'Moorad C.'),
(902, 1, 9, 0, 'Risk Management in Banking ', '', 'document/902.pdf', '../cover/902_c.jpg', '2020-12-31 17:40:30', 1, 0, 'Joel Bessis'),
(903, 1, 9, 0, 'New Challenges in Banking and Finance', '', 'document/903.pdf', '../cover/903_c.jpg', '2020-12-31 17:41:34', 1, 0, 'Nesrin O.'),
(904, 1, 9, 0, 'Money, Banking, and International Finance', '', 'document/904.pdf', '../cover/904_c.jpg', '2020-12-31 17:42:41', 1, 0, 'Kenneth R. S.'),
(905, 1, 9, 0, 'Emerging Trends in Banking and Finance ', '', 'document/905.pdf', '../cover/905_c.jpg', '2020-12-31 17:43:43', 1, 0, 'Nesrin O.'),
(906, 1, 9, 0, 'Encyclopedia of Finance ', '', 'document/906.pdf', '../cover/906_c.jpg', '2020-12-31 17:56:17', 1, 0, 'Cheng Few-Lee'),
(907, 1, 9, 0, 'Encyclopedic Dictionary of International Finance and Banking ', '', 'document/907.pdf', '../cover/907_c.jpg', '2020-12-31 17:57:28', 1, 0, 'Jae Shim'),
(908, 1, 9, 0, 'Basics of finance', '', 'document/908.pdf', '../cover/908_c.jpg', '2020-12-31 17:58:58', 1, 0, 'corvinus'),
(909, 1, 9, 0, 'Managing Risks in Commercial and Retail Banking ', '', 'document/909.pdf', '../cover/909_c.jpg', '2021-01-01 03:05:31', 1, 0, 'Amalendu Ghosh'),
(910, 1, 9, 0, 'Fundamentals of Financial Management_ Concise Sixth Edition ', '', 'document/910.pdf', '../cover/910_c.jpg', '2021-01-01 03:07:19', 1, 0, 'Eugene Brigham'),
(911, 1, 9, 0, 'Financial Modeling_ An Introductory Guide to Excel and VBA Applications in Finance ', '', 'document/911.pdf', '../cover/911_c.jpg', '2021-01-01 03:08:38', 1, 0, 'Joachim Hacker'),
(912, 1, 9, 0, 'Financial Markets, Banking, and Monetary Policy ', '', 'document/912.pdf', '../cover/912_c.jpg', '2021-01-01 03:09:53', 1, 0, 'Thomas Simpson'),
(913, 1, 9, 0, 'Investment Banking_ Valuation, Leveraged Buyouts, and Mergers and Acquisitions ', '', 'document/913.pdf', '../cover/913_c.jpg', '2021-01-01 03:11:31', 1, 0, 'Joshua Rosenbaum'),
(914, 1, 9, 0, 'Dictionary of Banking and Finance_ Over 9,000 terms clearly defined ', '', 'document/914.pdf', '../cover/914_c.jpg', '2021-01-01 03:12:53', 1, 0, 'A & C Black'),
(915, 1, 9, 0, 'Don''t Break the Bank_ A Student''s Guide to Managing Money ( PDFDrive )y', '', 'document/915.pdf', '../cover/915_c.jpg', '2021-01-01 03:13:50', 1, 0, 'Peterson'),
(916, 1, 9, 0, 'Assessment of the impact of universal banking on bank performance in Nigeria', '', 'document/916.pdf', '../cover/916_c.jpg', '2021-01-01 03:15:09', 1, 0, 'Agbo Joel, Christopher Onu'),
(917, 1, 9, 0, 'Between Debt and the Devil_ Money, Credit, and Fixing Global Finance ', '', 'document/917.pdf', '../cover/917_c.jpg', '2021-01-01 03:16:03', 1, 0, 'Adair Turner'),
(918, 1, 9, 0, 'Financing Development (Global Finance) ', '', 'document/918.pdf', '../cover/918_c.jpg', '2021-01-01 03:17:03', 1, 0, 'Michael F.'),
(919, 1, 9, 0, 'Living with Debt ', '', 'document/919.pdf', '../cover/919_c.jpg', '2021-01-01 03:19:05', 1, 0, 'Edward S.'),
(920, 1, 9, 0, ' The Wealth and the Poverty of Nations', '', 'document/920.pdf', '../cover/920_c.jpg', '2021-01-01 03:20:38', 1, 0, 'David Landes'),
(921, 1, 9, 0, 'Handbook of Recent Advances in Commodity and Financial Modeling ', '', 'document/921.pdf', '../cover/921_c.jpg', '2021-01-01 03:21:55', 1, 0, 'Giogio Consigli'),
(922, 1, 9, 0, 'Mergers, Acquisitions, Divestitures, and Other Restructurings', '', 'document/922.pdf', '../cover/922_c.jpg', '2021-01-01 03:22:57', 1, 0, 'Paul Pignataro'),
(923, 1, 9, 0, 'Money Magnet_ How to Attract Investors to Your Business ', '', 'document/923.pdf', '../cover/923_c.jpg', '2021-01-01 03:23:59', 1, 0, 'J.B. Loewen'),
(924, 1, 9, 0, 'Oxford Dictionary of Finance and Banking ', '', 'document/924.pdf', '../cover/924_c.jpg', '2021-01-01 03:25:27', 1, 0, 'Oxford Dictionary'),
(925, 1, 9, 0, 'Money_ A Userâ€™s Guide ', '', 'document/925.pdf', '../cover/925_c.jpg', '2021-01-01 03:26:26', 1, 0, 'Laura Whateley'),
(926, 1, 9, 0, 'finance-banking-and-money ', '', 'document/926.pdf', '../cover/926_c.jpg', '2021-01-01 03:28:23', 1, 0, 'v.2.0'),
(927, 1, 9, 0, 'Risk Management in Finance ', '', 'document/927.pdf', '../cover/927_c.jpg', '2021-01-01 03:29:38', 1, 0, 'Anthony Tarantino'),
(928, 1, 9, 0, 'Business Math For Dummies  ', '', 'document/928.pdf', '../cover/928_c.jpg', '2021-01-01 03:30:34', 1, 0, 'Mary Jane Sterling'),
(929, 1, 9, 0, 'Treasury Finance and Development Banking ', '', 'document/929.pdf', '../cover/929_c.jpg', '2021-01-01 03:31:44', 1, 0, 'Biagio Mazzi'),
(930, 1, 9, 0, 'banking & finance law  ', '', 'document/930.pdf', '../cover/930_c.jpg', '2021-01-01 03:33:20', 1, 0, 'Lawrence Jones'),
(931, 1, 9, 0, 'Banking and Finance', '', 'document/931.pdf', '../cover/931_c.jpg', '2021-01-01 03:34:06', 1, 0, 'Banking and Finance'),
(932, 1, 9, 0, 'The Future of Finance', '', 'document/932.pdf', '../cover/932_c.jpg', '2021-01-01 03:35:01', 1, 0, 'Moorad C.'),
(933, 1, 9, 0, 'The law of corporate finance general principles', '', 'document/933.pdf', '../cover/933_c.jpg', '2021-01-01 03:36:05', 1, 0, 'Petri M.'),
(934, 1, 9, 0, 'The Oxford Handbook of Banking ', '', 'document/934.pdf', '../cover/934_c.jpg', '2021-01-01 03:37:00', 1, 0, 'Allen Berger'),
(935, 1, 9, 0, 'The Quality of Public Finances ', '', 'document/935.pdf', '../cover/935_c.jpg', '2021-01-01 03:38:12', 1, 0, 'Servaas Deroose'),
(936, 1, 9, 0, 'the-complete-idiots-guide-to-personal-finance-in-your-20s-and-30s', '', 'document/936.pdf', '../cover/936_c.jpg', '2021-01-01 03:39:28', 1, 0, 'Sarah Young'),
(937, 1, 9, 0, 'Personal Finance', '', 'document/937.pdf', '../cover/937_c.jpg', '2021-01-01 03:40:22', 1, 0, 'Personal Finance'),
(938, 1, 9, 0, 'international_finance', '', 'document/938.pdf', '../cover/938_c.jpg', '2021-01-01 03:41:33', 1, 0, 'Plot S.'),
(939, 1, 9, 0, 'PRACTICE OF BANKING-BFN 301 ', '', 'document/939.pdf', '../cover/939_c.jpg', '2021-01-01 03:42:39', 1, 0, 'National open university'),
(940, 1, 9, 0, 'Elements of banking-National Open University Nigeria', '', 'document/940.pdf', '../cover/940_c.jpg', '2021-01-01 03:44:14', 1, 0, 'Dr Ofe I.'),
(941, 1, 20, 0, 'A New Biology for the 21st Century ', '', 'document/941.pdf', '../cover/941_c.jpg', '2021-01-01 13:44:35', 1, 0, 'National Research Council'),
(942, 1, 20, 0, 'Biology for NTSE Science Olympiads Pre Foundation and Board ', '', 'document/942.pdf', '../cover/942_c.jpg', '2021-01-01 13:46:25', 1, 0, 'Diamond Career institute'),
(943, 1, 20, 0, 'aging_theory_introduction', '', 'document/943.pdf', '../cover/943_c.jpg', '2021-01-01 13:47:28', 1, 0, 'Theodore Goldsmith'),
(944, 1, 20, 0, 'Essential Forensic Biology ', '', 'document/944.pdf', '../cover/944_c.jpg', '2021-01-01 13:48:30', 1, 0, 'Alan Gunm'),
(945, 1, 20, 0, 'Cognitive Psychology ', '', 'document/945.pdf', '../cover/945_c.jpg', '2021-01-01 13:49:41', 1, 0, 'Nick Braisby'),
(946, 1, 20, 0, 'Molecular Biology ', '', 'document/946.pdf', '../cover/946_c.jpg', '2021-01-01 13:50:56', 1, 0, 'David Clark'),
(947, 1, 20, 0, 'The Biology Book_ From the Origin of Life ', '', 'document/947.pdf', '../cover/947_c.jpg', '2021-01-01 13:52:24', 1, 0, 'Michael Gerald');
INSERT INTO `library_key` (`id`, `source`, `category`, `categoryname`, `title`, `data`, `link`, `coverlink`, `dateCreated`, `level`, `veiws`, `author`) VALUES
(948, 1, 20, 0, 'Handbook of Vitamins  ', '', 'picture/948.jpg', '../cover/948_c.jpg', '2021-01-01 13:54:37', 1, 0, 'Janos Zemplani'),
(949, 1, 20, 0, 'The Handy Biology Answer Book  ', '', 'document/949.pdf', '../cover/949_c.jpg', '2021-01-01 13:56:12', 1, 0, 'Naomi Balalban'),
(950, 1, 20, 0, 'Handbook of Vitamins  ', '', 'document/950.pdf', '../cover/950_c.jpg', '2021-01-01 13:59:15', 1, 0, 'Janos Zemplani'),
(951, 1, 20, 0, 'practice book biology', '', 'document/951.pdf', '../cover/951_c.jpg', '2021-01-01 16:49:14', 1, 0, 'Ets.org'),
(952, 1, 20, 0, 'Advances in Biology and Ecology of Nitrogen Fixation ', '', 'document/952.pdf', '../cover/952_c.jpg', '2021-01-01 16:50:55', 1, 0, 'Takuji O.'),
(953, 1, 20, 0, 'aging_by_design', '', 'document/953.pdf', '../cover/953_c.jpg', '2021-01-01 16:51:56', 1, 0, 'Theodore Goldsmith'),
(954, 1, 1, 0, 'Basic and Applied Phytoplankton Biology ', '', 'document/954.pdf', '../cover/954_c.jpg', '2021-01-01 21:01:21', 1, 0, 'Perumal S.'),
(955, 1, 20, 0, 'Behave_ The Biology of Humans at Our Best and Worst_files', '', 'document/955.pdf', '../cover/955_c.jpg', '2021-01-01 21:02:22', 1, 0, 'Robert Sapolsky'),
(956, 1, 20, 0, 'biology (zoology)  ', '', 'document/956.pdf', '../cover/956_c.jpg', '2021-01-01 21:03:27', 1, 0, 'Tamil Nadu'),
(957, 1, 20, 0, 'Biology of Kundalini_ Exploring the Fire of Life ', '', 'document/957.pdf', '../cover/957_c.jpg', '2021-01-01 21:04:50', 1, 0, 'Jana D.'),
(958, 1, 20, 0, 'Biology Dictionary ', '', 'document/958.pdf', '../cover/958_c.jpg', '2021-01-01 21:05:58', 1, 0, 'M. Abercrombie'),
(959, 1, 20, 0, 'Biology For Dummies, 2nd Edition ', '', 'document/959.pdf', '../cover/959_c.jpg', '2021-01-01 21:06:58', 1, 0, 'Rene F.'),
(960, 1, 20, 0, 'Biology of Nutrition in Growing Animals ', '', 'document/960.pdf', '../cover/960_c.jpg', '2021-01-01 21:07:54', 1, 0, 'R. Mosenthin'),
(961, 1, 20, 0, 'Biology Science Notebook ', '', 'document/961.pdf', '../cover/961_c.jpg', '2021-01-01 21:08:58', 1, 0, 'Douglas R.'),
(962, 1, 20, 0, 'Cambridge IGCSE Biology - Papers - XtremePapers ', '', 'document/962.pdf', '../cover/962_c.jpg', '2021-01-01 21:10:11', 1, 0, 'University of Cambridge'),
(963, 1, 20, 0, 'Campbell Biology 10th edition  ', '', 'document/963.pdf', '../cover/963_c.jpg', '2021-01-01 21:11:11', 1, 0, 'Chul-Su Yang'),
(964, 1, 20, 0, 'Cell Biology and Translational Medicine, Volume 4 ', '', 'document/964.pdf', '../cover/964_c.jpg', '2021-01-01 21:12:19', 1, 0, 'Kursad Turksen'),
(965, 1, 20, 0, 'Cell Biology Protocols ', '', 'document/965.pdf', '../cover/965_c.jpg', '2021-01-01 21:13:10', 1, 0, 'Robbin Harris'),
(966, 1, 20, 0, 'Encyclopedia of Biology  ', '', 'document/966.pdf', '../cover/966_c.jpg', '2021-01-01 21:14:18', 1, 0, 'Don R.  and Timothy'),
(967, 1, 20, 0, 'Basic Techniques in Molecular Biology ', '', 'document/967.pdf', '../cover/967_c.jpg', '2021-01-01 21:15:08', 1, 0, 'Springer'),
(968, 1, 20, 0, 'Biology', '', 'document/968.pdf', '../cover/968_c.jpg', '2021-01-01 21:16:03', 1, 0, 'Govindjee'),
(969, 1, 20, 0, 'DNA Sequencing Protocols (Methods in Molecular Biology Vol 23) ', '', 'document/969.pdf', '../cover/969_c.jpg', '2021-01-01 21:16:59', 1, 0, 'Hugh Griffin'),
(970, 1, 20, 0, 'Immunology, Infection, and Immunity ', '', 'document/970.pdf', '../cover/970_c.jpg', '2021-01-01 21:18:15', 1, 0, 'Gerald Pier'),
(971, 1, 20, 0, 'Human Evolution - Trails from the Past  ', '', 'document/971.pdf', '../cover/971_c.jpg', '2021-01-01 21:19:38', 1, 0, 'Camilo Cela-Conde'),
(972, 1, 20, 0, 'Fundamental Biology for O Level Teaching ', '', 'document/972.pdf', '../cover/972_c.jpg', '2021-01-01 21:20:31', 1, 0, 'Ron Pickering'),
(973, 1, 20, 0, 'Molecular Biology of Membranes_ Structure and Function ', '', 'document/973.pdf', '../cover/973_c.jpg', '2021-01-01 21:21:31', 1, 0, 'Howard Petty'),
(974, 1, 20, 0, 'introduction-to-cancer-biology', '', 'document/974.pdf', '../cover/974_c.jpg', '2021-01-02 09:05:25', 1, 0, 'Momna Hejmadi'),
(975, 1, 20, 0, 'Molecular Biology of B Cells â€“ Elsevier Academic Press ', '', 'document/975.pdf', '../cover/975_c.jpg', '2021-01-02 09:07:01', 1, 0, 'Tasuku Honjo'),
(976, 1, 20, 0, 'Genetics For Dummies, 2nd Edition ', '', 'document/976.pdf', '../cover/976_c.jpg', '2021-01-02 09:08:05', 1, 0, 'Tara Rodden Robinson'),
(977, 1, 20, 0, 'Plant Chemical Biology ', '', 'document/977.pdf', '../cover/977_c.jpg', '2021-01-02 09:09:17', 1, 0, 'Dominique A.'),
(978, 1, 20, 0, 'Pharmacology and Therapeutics of Airway Disease, Second Edition', '', 'document/978.pdf', '../cover/978_c.jpg', '2021-01-02 09:10:32', 1, 0, 'Kian Fan Chung'),
(979, 1, 20, 0, 'Stress Biology of Yeasts and Fungi', '', 'document/979.pdf', '../cover/979_c.jpg', '2021-01-02 09:11:45', 1, 0, 'Hiroshi Takagi'),
(980, 1, 20, 0, 'Parasitology and Vector Biology ', '', 'document/980.pdf', '../cover/980_c.jpg', '2021-01-02 09:12:42', 1, 0, 'Cherilyn Jose'),
(981, 1, 20, 0, 'Biology of wastewater treatment ', '', 'document/981.pdf', '../cover/981_c.jpg', '2021-01-02 09:14:25', 1, 0, 'N. F. Gray'),
(982, 1, 20, 0, 'Ethiopian Grade 10 Biology Student Textbook ', '', 'document/982.pdf', '../cover/982_c.jpg', '2021-01-02 09:15:50', 1, 0, 'ministry of education'),
(983, 1, 20, 0, 'O-Level Biology Notes', '', 'document/983.pdf', '../cover/983_c.jpg', '2021-01-02 09:17:05', 1, 0, 'O-level'),
(984, 1, 20, 0, 'SCHAUMâ€™S outlines Biology', '', 'document/984.pdf', '../cover/984_c.jpg', '2021-01-02 09:18:17', 1, 0, 'George Fried, Phd'),
(985, 1, 20, 0, 'TEXT-BOOKS OF ANIMAL BIOLOGY A General Zoology of the Invertebrates Vertebrate Zoology ', '', 'document/985.pdf', '../cover/985_c.jpg', '2021-01-02 09:19:37', 1, 0, 'Julian Huxley'),
(986, 1, 20, 0, 'the biology of spiders ', '', 'document/986.pdf', '../cover/986_c.jpg', '2021-01-02 09:20:26', 1, 0, 'Theodore Savory'),
(987, 1, 20, 0, 'totowa_enzymes_molecular_biology', '', 'document/987.pdf', '../cover/987_c.jpg', '2021-01-02 09:23:52', 1, 0, 'John Walker'),
(988, 1, 20, 0, 'practical biology', '', 'document/988.pdf', '../cover/988_c.jpg', '2021-01-02 09:25:59', 1, 0, 'smallwood Reveley Bailey'),
(989, 1, 21, 0, 'Arrow Pushing in Inorganic Chemistry  ', '', 'document/989.pdf', '../cover/989_c.jpg', '2021-01-02 09:29:04', 1, 0, 'Abhik Ghosh'),
(990, 1, 21, 0, 'Chemistry Module III Inorganic Chemistry for IIT JEE ', '', 'document/990.pdf', '../cover/990_c.jpg', '2021-01-02 09:31:03', 1, 0, 'McGraw Hill Education'),
(991, 1, 21, 0, 'Chemistry Education ', '', 'document/991.pdf', '../cover/991_c.jpg', '2021-01-02 09:32:44', 1, 0, 'Javier Martinez'),
(992, 1, 20, 0, 'Advances in Inorganic Chemistry ', '', 'document/992.pdf', '../cover/992_c.jpg', '2021-01-02 09:33:37', 1, 0, 'R. Van Eldik'),
(993, 1, 21, 0, 'Chemistry-III _ inorganic and physical chemistry  ', '', 'document/993.pdf', '../cover/993_c.jpg', '2021-01-02 09:35:11', 1, 0, 'Dr. S.K. Agarwala'),
(994, 1, 21, 0, 'Essentials of Inorganic Chemistry ', '', 'document/994.pdf', '../cover/994_c.jpg', '2021-01-02 09:36:13', 1, 0, 'Katja A. S.'),
(995, 1, 21, 0, 'Descriptive Inorganic, Coordination, and Solid-State Chemistry', '', 'document/995.pdf', '../cover/995_c.jpg', '2021-01-02 09:37:07', 1, 0, 'Glen Rogers'),
(996, 1, 20, 0, 'Exam krackers Mcat Inorganic Chemistry ', '', 'document/996.pdf', '../cover/996_c.jpg', '2021-01-02 09:38:18', 1, 0, 'Jonathan Orsay'),
(997, 1, 20, 0, 'Experimental inorganic_physical chemistry ', '', 'document/997.pdf', '../cover/997_c.jpg', '2021-01-02 09:39:27', 1, 0, 'Mounir Malati'),
(998, 1, 21, 0, 'Fundamental concepts of inorganic chemistry', '', 'document/998.pdf', '../cover/998_c.jpg', '2021-01-02 09:40:32', 1, 0, 'Dr. C. Viswanatha'),
(999, 1, 21, 0, 'Fundamentals of Inorganic Chemistry', '', 'document/999.pdf', '../cover/999_c.jpg', '2021-01-02 09:41:32', 1, 0, 'Jack Barret'),
(1000, 1, 21, 0, 'Advanced Structural Inorganic Chemistry ', '', 'document/1000.pdf', '../cover/1000_c.jpg', '2021-01-02 09:42:27', 1, 0, 'Wai-Kee Li'),
(1001, 1, 21, 0, 'Inorganic Chemistry  ', '', 'document/1001.pdf', '../cover/1001_c.jpg', '2021-01-02 09:43:36', 1, 0, 'S. Chand'),
(1002, 1, 21, 0, 'Inorganic Chemistry - Clube de QuÃ­mica ', '', 'document/1002.pdf', '../cover/1002_c.jpg', '2021-01-02 09:44:31', 1, 0, 'Shriver and Atkins'),
(1003, 1, 21, 0, 'Industrial inorganic chemistry ', '', 'document/1003.pdf', '../cover/1003_c.jpg', '2021-01-02 09:45:25', 1, 0, 'K.H. Buchel'),
(1004, 1, 21, 0, 'Inorganic Chemistry For Dummies ', '', 'document/1004.pdf', '../cover/1004_c.jpg', '2021-01-02 09:46:12', 1, 0, 'Michael Matson'),
(1005, 1, 21, 0, 'Inorganic Chemistry in Aqueous Solution ', '', 'document/1005.pdf', '../cover/1005_c.jpg', '2021-01-02 09:47:12', 1, 0, 'Jack Barrett'),
(1006, 1, 21, 0, 'Inorganic Chemistry_ An Industrial and Environmental Perspective ', '', 'document/1006.pdf', '../cover/1006_c.jpg', '2021-01-02 09:47:59', 1, 0, 'T.W. Swaddle'),
(1007, 1, 21, 0, 'inorganic structural chemistry ', '', 'document/1007.pdf', '../cover/1007_c.jpg', '2021-01-02 09:49:22', 1, 0, 'Ulrich Muller'),
(1008, 1, 21, 0, 'Introduction to Coordination Chemistry (Inorganic Chemistry)', '', 'document/1008.pdf', '../cover/1008_c.jpg', '2021-01-02 09:50:51', 1, 0, 'Geoffrey Lawrance'),
(1009, 1, 21, 0, 'Physical Inorganic Chemistry_ A Coordination Chemistry Approach ', '', 'document/1009.pdf', '../cover/1009_c.jpg', '2021-01-02 09:53:39', 1, 0, 'S.F.A. Kettle'),
(1010, 1, 21, 0, 'Physical Inorganic Chemistry_ Reactions, Processes, and Applications ', '', 'document/1010.pdf', '../cover/1010_c.jpg', '2021-01-02 09:54:57', 1, 0, 'Andreja Bakac'),
(1011, 1, 21, 0, 'Shriver and Atkins'' Inorganic Chemistry, 5th Edition   ', '', 'document/1011.pdf', '../cover/1011_c.jpg', '2021-01-02 09:57:00', 1, 0, 'Shriver and Atkins'),
(1012, 1, 21, 0, 'Problems in Structural Inorganic Chemistry ', '', 'document/1012.pdf', '../cover/1012_c.jpg', '2021-01-02 09:58:04', 1, 0, 'Wai-Kee Li'),
(1013, 1, 21, 0, 'Inorganic chemistry _ reactions, structure and mechanisms ', '', 'document/1013.pdf', '../cover/1013_c.jpg', '2021-01-02 09:58:51', 1, 0, 'Harold Trimm'),
(1014, 1, 21, 0, 'Principles of inorganic chemistry ', '', 'document/1014.pdf', '../cover/1014_c.jpg', '2021-01-02 09:59:54', 1, 0, 'Brian Pfennig'),
(1015, 1, 21, 0, 'Problems and Solutions in Inorganic Chemistry ', '', 'document/1015.pdf', '../cover/1015_c.jpg', '2021-01-02 10:01:15', 1, 0, 'V. Joshi'),
(1016, 1, 21, 0, 'advanced inorganic chamistry-basic solid state  chemistry', '', 'document/1016.pdf', '../cover/1016_c.jpg', '2021-01-02 10:02:35', 1, 0, 'H.J. Deiseroth'),
(1017, 1, 21, 0, 'Inorganic Chemistry 3rd ', '', 'document/1017.pdf', '../cover/1017_c.jpg', '2021-01-02 10:03:36', 1, 0, 'James Huheey'),
(1018, 1, 21, 0, 'Inorganic Chemistry', '', 'document/1018.pdf', '../cover/1018_c.jpg', '2021-01-02 10:05:38', 1, 0, 'Olympiad'),
(1019, 1, 21, 0, 'Chemistry_ Inorganic Qualitative Analysis in the Laboratory  ', '', 'document/1019.pdf', '../cover/1019_c.jpg', '2021-01-02 10:06:42', 1, 0, 'Clyde Metz'),
(1020, 1, 21, 0, 'Inorganic chemistry ', '', 'document/1020.pdf', '../cover/1020_c.jpg', '2021-01-02 10:07:48', 1, 0, 'Dept of Open University'),
(1021, 1, 21, 0, 'Practical Inorganic Chemistry ', '', 'document/1021.pdf', '../cover/1021_c.jpg', '2021-01-02 10:13:42', 1, 0, 'V.I. Spitsyn'),
(1022, 1, 21, 0, 'Uses of Inorganic Chemistry in Medicine ( PDFDrive )', '', 'document/1022.pdf', '../cover/1022_c.jpg', '2021-01-02 10:15:12', 1, 0, 'Nicholas Farrell'),
(1023, 1, 21, 0, 'A-Textbook-of-Inorganic-Chemistry', '', 'document/1023.pdf', '../cover/1023_c.jpg', '2021-01-02 10:17:53', 1, 0, 'Mandeep-Dalal'),
(1024, 1, 21, 0, 'Chemistry - Inorganic Chemistry  ', '', 'document/1024.pdf', '../cover/1024_c.jpg', '2021-01-02 10:21:01', 1, 0, 'B.D. Homes'),
(1025, 1, 21, 0, 'Inorganic chemistry-Taro Saito', '', '/1025.PDF', '../cover/1025_c.jpg', '2021-01-02 10:21:48', 1, 0, 'Taro Saito'),
(1026, 1, 21, 0, 'Inorganic Substances_ A Prelude to the Study of Descriptive Inorganic Chemistry  ', '', 'document/1026.pdf', '../cover/1026_c.jpg', '2021-01-02 10:24:25', 1, 0, 'Derek Smith'),
(1027, 1, 21, 0, 'inorganic  labwork manual', '', 'document/1027.pdf', '../cover/1027_c.jpg', '2021-01-02 18:25:04', 1, 0, 'Pranjoto umoto'),
(1028, 1, 21, 0, 'inorganic-and-applied-chemistry', '', 'document/1028.pdf', '../cover/1028_c.jpg', '2021-01-02 18:25:56', 1, 0, 'Soren Prip'),
(1029, 1, 21, 0, 'Laboratory Methods of Inorganic Chemistry ', '', 'document/1029.pdf', '../cover/1029_c.jpg', '2021-01-02 18:26:58', 1, 0, ' Biltz & Biltz '),
(1030, 1, 21, 0, 'MCQ Inorganic Chemistry ', '', 'document/1030.pdf', '../cover/1030_c.jpg', '2021-01-02 18:27:58', 1, 0, 'R.K. Malik'),
(1031, 1, 21, 0, 'Modern Analytical Chemistry ', '', 'document/1031.pdf', '../cover/1031_c.jpg', '2021-01-02 18:28:48', 1, 0, 'David Harvey'),
(1032, 1, 21, 0, 'Mordern inorganic chemistry', '', 'document/1032.pdf', '../cover/1032_c.jpg', '2021-01-02 18:29:33', 1, 0, 'C. Chambers'),
(1033, 1, 21, 0, 'Practical Inorganic Chemistry ', '', 'document/1033.pdf', '../cover/1033_c.jpg', '2021-01-02 18:30:28', 1, 0, 'Geoffrey Pass'),
(1034, 1, 21, 0, 'Progress in Inorganic Chemistry', '', 'document/1034.pdf', '../cover/1034_c.jpg', '2021-01-02 18:31:59', 1, 0, 'Stephen Lippard'),
(1035, 1, 21, 0, 'Solutions Manual for Inorganic Chemistr ', '', 'document/1035.pdf', '../cover/1035_c.jpg', '2021-01-02 18:33:01', 1, 0, 'Alen Hadzovic'),
(1036, 1, 21, 0, 'Structural Inorganic Chemistry ', '', 'document/1036.pdf', '../cover/1036_c.jpg', '2021-01-02 18:33:49', 1, 0, 'A.F. Wells'),
(1037, 1, 21, 0, 'synthetic_inorganic_chemistry', '', 'document/1037.pdf', '../cover/1037_c.jpg', '2021-01-02 18:34:50', 1, 0, 'Arthur Blanchard'),
(1038, 1, 21, 0, 'The Basics of Chemistry  ', '', 'document/1038.pdf', '../cover/1038_c.jpg', '2021-01-02 18:35:30', 1, 0, 'Richard Myers'),
(1039, 1, 22, 0, 'A guidebook to mechanism in organic chemistry ', '', 'document/1039.pdf', '../cover/1039_c.jpg', '2021-01-02 18:38:20', 1, 0, 'Peter Sykes'),
(1040, 1, 22, 0, 'Amino Acids, Peptides and Proteins in Organic Chemistry ', '', 'document/1040.pdf', '../cover/1040_c.jpg', '2021-01-02 18:39:14', 1, 0, 'Andrew Hughes'),
(1041, 1, 22, 0, 'Essentials of Organic Chemistry ', '', 'document/1041.pdf', '../cover/1041_c.jpg', '2021-01-02 18:40:16', 1, 0, 'Paul Dewick'),
(1042, 1, 22, 0, 'March''s Advanced Organic Chemistry ', '', 'document/1042.pdf', '../cover/1042_c.jpg', '2021-01-02 18:41:13', 1, 0, 'Michael Smith'),
(1043, 1, 22, 0, 'Fundamentals of Organic Chemistry ', '', 'document/1043.pdf', '../cover/1043_c.jpg', '2021-01-02 18:42:50', 1, 0, 'McMurry J.E'),
(1044, 1, 22, 0, 'Organic Chemistry in Confining Media  ', '', 'document/1044.pdf', '../cover/1044_c.jpg', '2021-01-02 18:44:18', 1, 0, 'Zory Todres'),
(1045, 1, 22, 0, 'Advances in Physical Organic Chemistry', '', 'document/1045.pdf', '../cover/1045_c.jpg', '2021-01-02 18:45:13', 1, 0, 'V. Gold'),
(1046, 1, 22, 0, 'An introduction to organic chemistry', '', 'document/1046.pdf', '../cover/1046_c.jpg', '2021-01-02 18:47:45', 1, 0, 'intro'),
(1047, 1, 22, 0, 'basic concepts from organic chemistry', '', 'document/1047.pdf', '../cover/1047_c.jpg', '2021-01-02 18:49:23', 1, 0, 'nill'),
(1048, 1, 22, 0, 'Basic principles and techniques', '', 'document/1048.pdf', '../cover/1048_c.jpg', '2021-01-02 18:50:37', 1, 0, 'unit education'),
(1049, 1, 22, 0, 'Organic Chemistry_ Structure and Mechanisms ', '', 'document/1049.pdf', '../cover/1049_c.jpg', '2021-01-02 18:51:26', 1, 0, 'Harold Trimm'),
(1050, 1, 22, 0, 'meth chemistry', '', 'document/1050.pdf', '../cover/1050_c.jpg', '2021-01-02 18:52:26', 1, 0, 'meth'),
(1051, 1, 22, 0, 'Basic_Concepts_of_Organic_Chemistry', '', 'document/1051.pdf', '../cover/1051_c.jpg', '2021-01-02 18:54:41', 1, 0, 'Sana Jamsaid'),
(1052, 1, 22, 0, 'Boron catalysts in organic chemistry', '', 'document/1052.pdf', '../cover/1052_c.jpg', '2021-01-02 18:55:59', 1, 0, 'Delft University of tech'),
(1053, 1, 22, 0, 'Organic Chemistry, Seventh Edition   ', '', 'document/1053.pdf', '../cover/1053_c.jpg', '2021-01-02 18:56:59', 1, 0, 'Francis Carey'),
(1054, 1, 22, 0, 'catalysis in organic chemistry', '', 'document/1054.pdf', '../cover/1054_c.jpg', '2021-01-02 22:19:31', 1, 0, 'Paul Sabatier'),
(1055, 1, 22, 0, 'chemistry-of-organic-derivatives-of-gold-and-silver', '', 'document/1055.pdf', '../cover/1055_c.jpg', '2021-01-02 22:20:37', 1, 0, 'Saul Patai'),
(1056, 1, 22, 0, 'introduction-to-optical-character-recognition-1.6', '', 'document/1056.pdf', '../cover/1056_c.jpg', '2021-01-02 22:21:48', 1, 0, 'Jonathan Nguyen'),
(1057, 1, 22, 0, 'Laboratory Methods of Organic Chemistry ', '', 'document/1057.pdf', '../cover/1057_c.jpg', '2021-01-02 22:23:37', 1, 0, 'L. Gatterman'),
(1058, 1, 22, 0, 'Development of a discovery-based organic chemistry lab module_files', '', 'document/1058.pdf', '../cover/1058_c.jpg', '2021-01-02 22:32:13', 1, 0, 'Leah Martin'),
(1059, 1, 22, 0, 'Nomenclature of organic compounds', '', 'document/1059.pdf', '../cover/1059_c.jpg', '2021-01-02 22:35:22', 1, 0, 'Educational body'),
(1060, 1, 22, 0, ' practical organic chemistry', '', 'document/1060.pdf', '../cover/1060_c.jpg', '2021-01-02 22:36:43', 1, 0, 'Frederick George mann'),
(1061, 1, 22, 0, 'Organic Chemistry II', '', 'document/1061.pdf', '../cover/1061_c.jpg', '2021-01-02 22:37:55', 1, 0, 'National Open University Nigeria'),
(1062, 1, 22, 0, 'Organic Chemistry with a Biological Emphasis Volume I', '', 'document/1062.pdf', '../cover/1062_c.jpg', '2021-01-02 22:39:28', 1, 0, 'Timothy Solderborg'),
(1063, 1, 22, 0, 'Organic Fluorine Chemistry ', '', 'document/1063.pdf', '../cover/1063_c.jpg', '2021-01-02 22:40:32', 1, 0, 'Milos Hodulicky'),
(1064, 1, 22, 0, 'Organic-Chemistry-Final', '', 'document/1064.pdf', '../cover/1064_c.jpg', '2021-01-02 22:41:34', 1, 0, 'S. Ranganathan'),
(1065, 1, 22, 0, 'organic-chemistry-ii-for-dummies', '', 'document/1065.pdf', '../cover/1065_c.jpg', '2021-01-02 22:42:51', 1, 0, 'John Moore'),
(1066, 1, 22, 0, 'Organic Chemitry-An Intermediate Text', '', 'document/1066.pdf', '../cover/1066_c.jpg', '2021-01-02 22:46:53', 1, 0, 'Robert Hoffman'),
(1067, 1, 22, 0, 'Organic Chemitry-An Intermediate Text', '', 'document/1067.pdf', '../cover/1067_c.jpg', '2021-01-02 22:48:19', 1, 0, 'Andrew Brown'),
(1068, 1, 22, 0, 'Approaches to high throughput-Physical Organic Chemistry', '', 'document/1068.pdf', '../cover/1068_c.jpg', '2021-01-02 22:50:03', 1, 0, 'Christophe Portal'),
(1069, 1, 22, 0, 'Principles_of_Organic_Chemistry_Norris_edited', '', 'document/1069.pdf', '../cover/1069_c.jpg', '2021-01-02 22:51:01', 1, 0, 'H.P Talbot'),
(1070, 1, 22, 0, 'recent advances in organic chemistry ', '', 'document/1070.pdf', '../cover/1070_c.jpg', '2021-01-02 22:51:56', 1, 0, 'Alfred Stewart'),
(1071, 1, 22, 0, 'Reductions in organic chemistry (Chemical Science) ', '', 'document/1071.pdf', '../cover/1071_c.jpg', '2021-01-02 22:53:09', 1, 0, 'Milos Hodulicky'),
(1072, 1, 22, 0, 'the organic chemistry of drug synthesis  ', '', 'document/1072.pdf', '../cover/1072_c.jpg', '2021-01-02 22:54:50', 1, 0, 'Daniel lednicer '),
(1073, 1, 22, 0, 'Silver in Organic Chemistry ', '', 'document/1073.pdf', '../cover/1073_c.jpg', '2021-01-02 22:55:57', 1, 0, 'Michael Hermata'),
(1074, 1, 22, 0, 'Research_Techniques_in_Organic_Chemistry', '', 'document/1074.pdf', '../cover/1074_c.jpg', '2021-01-02 22:56:58', 1, 0, 'Robert Bates'),
(1075, 1, 22, 0, 'semimicro and macro organic chemistry', '', 'document/1075.pdf', '../cover/1075_c.jpg', '2021-01-02 22:58:46', 1, 0, 'Nicholas Cheronis'),
(1076, 1, 22, 0, 'Studies related to palytoxin-organic chemistry', '', 'document/1076.pdf', '../cover/1076_c.jpg', '2021-01-03 05:08:53', 1, 0, 'University of Hawaii'),
(1077, 1, 22, 0, 'The basics of organic chemistry', '', 'document/1077.pdf', '../cover/1077_c.jpg', '2021-01-03 05:10:44', 1, 0, 'woodward'),
(1078, 1, 22, 0, 'The molecular modeling workbook for organic chemistry ', '', 'document/1078.pdf', '../cover/1078_c.jpg', '2021-01-03 05:11:34', 1, 0, 'Warren Hebre'),
(1079, 1, 22, 0, 'the_practical_methods_of_organic_chemistry', '', 'document/1079.pdf', '../cover/1079_c.jpg', '2021-01-03 05:12:25', 1, 0, 'Ludwig Latterman'),
(1080, 1, 22, 0, 'the_vocabulary_and_concepts_of_organic_chemistry', '', 'document/1080.pdf', '../cover/1080_c.jpg', '2021-01-03 05:13:16', 1, 0, 'Milton Orchin'),
(1081, 1, 22, 0, 'unitized_experiments_in_organic chem', '', 'document/1081.pdf', '../cover/1081_c.jpg', '2021-01-03 05:14:07', 1, 0, 'Ray Brewster'),
(1082, 1, 22, 0, 'Preparative Organic Chemistry', '', 'document/1082.pdf', '../cover/1082_c.jpg', '2021-01-03 05:15:12', 1, 0, 'Weygand and Hilgetag'),
(1083, 1, 23, 0, 'a cognitive psychology of mass communication  ', '', 'document/1083.pdf', '../cover/1083_c.jpg', '2021-01-03 05:18:22', 1, 0, 'Richard Harris'),
(1084, 1, 23, 0, 'Communication Power ', '', 'document/1084.pdf', '../cover/1084_c.jpg', '2021-01-03 05:19:19', 1, 0, 'Manuel Castells'),
(1085, 1, 23, 0, 'Collective Behavior and Public Opinion ', '', 'document/1085.pdf', '../cover/1085_c.jpg', '2021-01-03 05:20:22', 1, 0, 'Jaap Van G.'),
(1086, 1, 23, 0, 'Dictionary of Media and Communication Studies ', '', 'document/1086.pdf', '../cover/1086_c.jpg', '2021-01-03 05:21:14', 1, 0, 'James Watson'),
(1087, 1, 23, 0, 'Culture-Society-and-the-Media', '', 'document/1087.pdf', '../cover/1087_c.jpg', '2021-01-03 05:22:03', 1, 0, 'Michael Gurevitch'),
(1088, 1, 23, 0, 'A Cognitive Psychology of Mass Communication sixth edition', '', 'document/1088.pdf', '../cover/1088_c.jpg', '2021-01-03 05:22:56', 1, 0, 'Richard Jackson'),
(1089, 1, 23, 0, 'introduction to mass communication-understanding media and culture ', '', 'document/1089.pdf', '../cover/1089_c.jpg', '2021-01-03 05:24:23', 1, 0, 'University of Minnesota'),
(1090, 1, 23, 0, 'Mass Communication Theory_ Foundations, Ferment, and Future ', '', 'document/1090.pdf', '../cover/1090_c.jpg', '2021-01-03 05:25:39', 1, 0, 'Stanley Baran'),
(1091, 1, 23, 0, 'Communication Models for the Study of Mass Communications ', '', 'document/1091.pdf', '../cover/1091_c.jpg', '2021-01-03 05:26:33', 1, 0, 'Dennis Mcquail'),
(1092, 1, 23, 0, 'Advances in Communication and Mass Media Research Edited  ', '', 'document/1092.pdf', '../cover/1092_c.jpg', '2021-01-03 05:27:38', 1, 0, 'Yorgo Pasadeos'),
(1093, 1, 23, 0, 'Journalism & Mass Communication  ', '', 'document/1093.pdf', '../cover/1093_c.jpg', '2021-01-03 05:29:08', 1, 0, 'Ritusima Biswas'),
(1094, 1, 23, 0, 'introduction to mass communcation-mac111', '', 'document/1094.pdf', '../cover/1094_c.jpg', '2021-01-03 05:30:06', 1, 0, 'National Open University Nigeria'),
(1095, 1, 23, 0, 'Mass Communication Theory_ Foundations, Ferment, and Future ', '', 'document/1095.pdf', '../cover/1095_c.jpg', '2021-01-03 05:31:08', 1, 0, 'Stanley Baran'),
(1096, 1, 23, 0, 'Mass Communications and Media Studies_ An Introduction ', '', 'document/1096.pdf', '../cover/1096_c.jpg', '2021-01-03 05:32:23', 1, 0, 'Peyton Paxson'),
(1097, 1, 23, 0, 'Media Effects and Society (Lea''s Communication Series)  ', '', 'document/1097.pdf', '../cover/1097_c.jpg', '2021-01-03 05:33:46', 1, 0, 'Elizabeth Perse'),
(1098, 1, 23, 0, 'McQuail''s Mass Communication Theory ', '', 'document/1098.pdf', '../cover/1098_c.jpg', '2021-01-03 05:34:57', 1, 0, 'Dennis Mcquail'),
(1099, 1, 23, 0, 'A History of Mass Communication  ', '', 'document/1099.pdf', '../cover/1099_c.jpg', '2021-01-03 05:36:37', 1, 0, 'Irving Fang'),
(1100, 1, 23, 0, 'Mass Communication Research Methods  ', '', 'document/1100.pdf', '../cover/1100_c.jpg', '2021-01-03 05:37:28', 1, 0, 'Anders Hansen'),
(1101, 1, 23, 0, 'Mass Media and Communication ', '', 'document/1101.pdf', '../cover/1101_c.jpg', '2021-01-03 05:38:21', 1, 0, 'Malachi Adams'),
(1102, 1, 23, 0, 'Media Today_ Mass Communication in a Converging World ', '', 'document/1102.pdf', '../cover/1102_c.jpg', '2021-01-03 05:39:42', 1, 0, 'Joseph Turow'),
(1103, 1, 23, 0, 'Media, Mass Communication and Society  ', '', 'document/1103.pdf', '../cover/1103_c.jpg', '2021-01-03 05:40:43', 1, 0, 'Trystan Summers'),
(1104, 1, 23, 0, 'Media, Persuasion and Propaganda ', '', 'document/1104.pdf', '../cover/1104_c.jpg', '2021-01-03 05:41:43', 1, 0, 'Marshal Soules'),
(1105, 1, 23, 0, 'Modern Mass Communication_ Concepts and Processes  ', '', 'document/1105.pdf', '../cover/1105_c.jpg', '2021-01-03 05:43:00', 1, 0, 'Deepak Nayyar'),
(1106, 1, 23, 0, 'School of Journalism and Mass Communications  ', '', 'document/1106.pdf', '../cover/1106_c.jpg', '2021-01-03 05:44:25', 1, 0, 'University of South Carolina'),
(1107, 1, 23, 0, 'The Handbook of Journalism Studies  ', '', 'document/1107.pdf', '../cover/1107_c.jpg', '2021-01-03 05:45:40', 1, 0, 'Karen Wahl'),
(1108, 1, 23, 0, 'Oxford Handbook of political psychology ', '', 'document/1108.pdf', '../cover/1108_c.jpg', '2021-01-03 05:47:17', 1, 0, 'David Sears'),
(1109, 1, 23, 0, 'Communication Skills', '', 'document/1109.pdf', '../cover/1109_c.jpg', '2021-01-03 05:50:50', 1, 0, 'Study manual'),
(1110, 1, 23, 0, 'Herd_ How to Change Mass Behaviour by Harnessing Our True Nature ', '', 'document/1110.pdf', '../cover/1110_c.jpg', '2021-01-03 05:51:40', 1, 0, 'Mark Earls'),
(1111, 1, 23, 0, 'Media Today_ An Introduction to Mass Communication  ', '', 'document/1111.pdf', '../cover/1111_c.jpg', '2021-01-03 05:52:36', 1, 0, 'Joseph Turow'),
(1112, 1, 23, 0, 'Communicative Design_ Transit Architecture for Growing Cities', '', 'document/1112.pdf', '../cover/1112_c.jpg', '2021-01-03 05:54:02', 1, 0, 'James Holloway'),
(1113, 1, 23, 0, 'Political Communication in Postmodern Democracy  ', '', 'document/1113.pdf', '../cover/1113_c.jpg', '2021-01-03 05:55:19', 1, 0, 'Kees Brants'),
(1114, 1, 23, 0, 'The Psychology and Politics of the Collective_ Groups, Crowds and Mass Identifications ', '', 'document/1114.pdf', '../cover/1114_c.jpg', '2021-01-03 05:56:28', 1, 0, 'Ruth Parkin'),
(1115, 1, 23, 0, 'The Psychology of Entertainment Media_ Blurring the Lines Between Entertainment and Persuasion  ', '', 'document/1115.pdf', '../cover/1115_c.jpg', '2021-01-03 05:57:29', 1, 0, 'L.J. Shrum'),
(1116, 1, 23, 0, 'Theory and Research in Mass Communication_ Contexts and Consequences  ', '', 'document/1116.pdf', '../cover/1116_c.jpg', '2021-01-03 05:58:33', 1, 0, 'David Perry'),
(1117, 1, 23, 0, 'effective-communication-skills', '', 'document/1117.pdf', '../cover/1117_c.jpg', '2021-01-03 06:06:00', 1, 0, 'Keine Notwendig'),
(1118, 1, 23, 0, 'advanced theories in mass communication ', '', 'document/1118.pdf', '../cover/1118_c.jpg', '2021-01-03 06:07:14', 1, 0, 'National Open University Nigeria'),
(1119, 1, 23, 0, 'Mass Communication in Israel_ Nationalism, Globalization, and Segmentation  ', '', 'document/1119.pdf', '../cover/1119_c.jpg', '2021-01-03 06:08:09', 1, 0, 'Judith Yalon'),
(1120, 1, 23, 0, 'Mass Communication Handbook ', '', 'document/1120.pdf', '../cover/1120_c.jpg', '2021-01-03 06:09:14', 1, 0, 'University of Minnesota'),
(1121, 1, 23, 0, 'McCombsGuo Theory Handbook', '', 'document/1121.pdf', '../cover/1121_c.jpg', '2021-01-03 06:10:57', 1, 0, 'Maxwell Maccombs'),
(1122, 1, 23, 0, 'Myths for the Masses_ An Essay on Mass Communication ', '', 'document/1122.pdf', '../cover/1122_c.jpg', '2021-01-03 06:11:46', 1, 0, 'Hanno Hardt'),
(1123, 1, 23, 0, 'Origins of mass communications research during the American Cold War ', '', 'document/1123.pdf', '../cover/1123_c.jpg', '2021-01-03 06:12:42', 1, 0, 'Glander, Timothy Ricjard'),
(1124, 1, 23, 0, 'Social cognitive theory of mass communication  ', '', 'document/1124.pdf', '../cover/1124_c.jpg', '2021-01-03 06:13:33', 1, 0, 'Albert E.'),
(1125, 1, 23, 0, 'Theories_of_Mass_Communication', '', 'document/1125.pdf', '../cover/1125_c.jpg', '2021-01-03 06:14:29', 1, 0, 'study manual'),
(1126, 1, 23, 0, 'Traditional forms of communication and the mass media in India ', '', 'document/1126.pdf', '../cover/1126_c.jpg', '2021-01-03 06:15:12', 1, 0, 'Madhu Malik'),
(1127, 1, 23, 0, 'Understanding Media and Culture ', '', 'document/1127.pdf', '../cover/1127_c.jpg', '2021-01-03 06:16:57', 1, 0, 'Study manual'),
(1128, 1, 23, 0, 'Understanding Media and Culture-An-Introduction-to-Mass-Communication ', '', 'document/1128.pdf', '../cover/1128_c.jpg', '2021-01-03 06:18:04', 1, 0, 'University of Minnesota'),
(1129, 1, 10, 0, 'comparative public administration', '', 'document/1129.pdf', '../cover/1129_c.jpg', '2021-01-03 06:22:15', 1, 0, 'P.B Rathod'),
(1130, 1, 10, 0, 'Debating Public Administration Management Challenges, Choices, and Opportunities ', '', 'document/1130.pdf', '../cover/1130_c.jpg', '2021-01-03 06:23:11', 1, 0, 'Robert Durant'),
(1131, 1, 10, 0, 'Encyclopedia of Public Administration and Public Policy ', '', 'document/1131.pdf', '../cover/1131_c.jpg', '2021-01-03 06:24:11', 1, 0, 'Jack Rabin'),
(1132, 1, 10, 0, 'Disaster Management Handbook  ', '', 'document/1132.pdf', '../cover/1132_c.jpg', '2021-01-03 06:25:02', 1, 0, 'Jack Pinkowski'),
(1133, 1, 10, 0, 'Defining Public Administration Selections ', '', 'document/1133.pdf', '../cover/1133_c.jpg', '2021-01-03 06:26:16', 1, 0, 'Jay Shafritz'),
(1134, 1, 23, 0, 'Governance networks in public administration and public policy ', '', 'document/1134.pdf', '../cover/1134_c.jpg', '2021-01-03 06:27:34', 1, 0, 'Christopher Coliba'),
(1135, 1, 23, 0, 'Handbook of Conflict Management ', '', 'document/1135.pdf', '../cover/1135_c.jpg', '2021-01-03 06:28:33', 1, 0, 'William Pammer'),
(1136, 1, 23, 0, 'Introducing Public Administration ', '', 'document/1136.pdf', '../cover/1136_c.jpg', '2021-01-03 06:29:27', 1, 0, 'Jay M.S'),
(1137, 1, 23, 0, 'Bachelor of Public Administration ', '', 'document/1137.pdf', '../cover/1137_c.jpg', '2021-01-03 06:30:36', 1, 0, 'VIA University'),
(1138, 1, 23, 0, 'Public Administration An Action Orientation', '', 'document/1138.pdf', '../cover/1138_c.jpg', '2021-01-03 06:31:39', 1, 0, 'Robert Denhardt'),
(1139, 1, 23, 0, 'Public Administration An Introduction  ', '', 'document/1139.pdf', '../cover/1139_c.jpg', '2021-01-03 06:32:31', 1, 0, 'Marc Holzer'),
(1140, 1, 23, 0, 'Public administration in Ethiopia', '', 'document/1140.pdf', '../cover/1140_c.jpg', '2021-01-03 06:33:37', 1, 0, 'Leuven University press'),
(1141, 1, 23, 0, 'Current debates in public dinance and public adminstration', '', 'document/1141.pdf', '../cover/1141_c.jpg', '2021-01-03 06:34:52', 1, 0, 'A. Sevdav'),
(1142, 1, 23, 0, 'Handbook of Public Administration', '', 'document/1142.pdf', '../cover/1142_c.jpg', '2021-01-03 06:35:52', 1, 0, 'Jack Rabin'),
(1143, 1, 23, 0, 'Directory of IC A.I.D-Public administration participants', '', 'document/1143.pdf', '../cover/1143_c.jpg', '2021-01-03 06:36:50', 1, 0, 'Usom Phillipines'),
(1144, 1, 10, 0, 'Governance networks in public administration and public policy ', '', 'document/1144.pdf', '../cover/1144_c.jpg', '2021-01-03 06:40:10', 1, 0, 'Christopher Coliba'),
(1145, 1, 10, 0, 'Handbook of Conflict Management  ', '', 'document/1145.pdf', '../cover/1145_c.jpg', '2021-01-03 06:41:01', 1, 0, 'William Pammer'),
(1146, 1, 23, 0, 'Handbook of Public Administration, Third Edition ', '', 'document/1146.pdf', '../cover/1146_c.jpg', '2021-01-03 06:41:50', 1, 0, 'Jack Rabin'),
(1147, 1, 10, 0, 'Directory of IC A.I.D-Public administration participants', '', 'document/1147.pdf', '../cover/1147_c.jpg', '2021-01-03 06:42:37', 1, 0, 'Usom Phillipines'),
(1148, 1, 10, 0, 'Introducing Public Administration  ', '', 'document/1148.pdf', '../cover/1148_c.jpg', '2021-01-03 06:43:21', 1, 0, 'Jay M.S'),
(1149, 1, 10, 0, 'Governance and government in public administration', '', 'document/1149.pdf', '../cover/1149_c.jpg', '2021-01-03 06:44:11', 1, 0, 'Wasim H.'),
(1150, 1, 10, 0, 'Public Administration An Action Orientation ', '', 'document/1150.pdf', '../cover/1150_c.jpg', '2021-01-03 06:45:03', 1, 0, 'Robert Denhardt'),
(1151, 1, 10, 0, 'Ethics in Public Administration  ', '', 'document/1151.pdf', '../cover/1151_c.jpg', '2021-01-03 06:45:57', 1, 0, 'Patrick Sheeran'),
(1152, 1, 10, 0, 'Public Administration An Introduction  ', '', 'document/1152.pdf', '../cover/1152_c.jpg', '2021-01-03 06:46:41', 1, 0, 'Marc Holzer'),
(1153, 1, 10, 0, 'Handbook of Technology Management in Public Administration ', '', 'document/1153.pdf', '../cover/1153_c.jpg', '2021-01-03 06:47:31', 1, 0, 'David Greisler'),
(1154, 1, 10, 0, 'Public administration in Ethiopia', '', 'document/1154.pdf', '../cover/1154_c.jpg', '2021-01-03 06:48:26', 1, 0, 'Bacha Kebede'),
(1155, 1, 10, 0, 'PUBLIC ADMINISTRATION The social construction of public administration interpretive and critical', '', 'document/1155.pdf', '../cover/1155_c.jpg', '2021-01-03 06:49:18', 1, 0, 'Jong Jun'),
(1156, 1, 10, 0, 'PRINCIPLES_OF_PUBLIC_ADMINISTRATION', '', 'document/1156.pdf', '../cover/1156_c.jpg', '2021-01-03 06:50:16', 1, 0, 'Study manual'),
(1157, 1, 23, 0, 'Public administration and non-governmental organisations', '', 'document/1157.pdf', '../cover/1157_c.jpg', '2021-01-03 06:51:04', 1, 0, 'Zinta Meizaine'),
(1158, 1, 10, 0, 'Public Management and Administration An Introduction  ', '', 'document/1158.pdf', '../cover/1158_c.jpg', '2021-01-03 06:52:02', 1, 0, 'Owen Hughes'),
(1159, 1, 10, 0, 'Encyclopedia of Public Administration and Public Policy ', '', 'document/1159.pdf', '../cover/1159_c.jpg', '2021-01-03 06:53:00', 1, 0, 'Evan Berman'),
(1160, 1, 10, 0, 'Public administration', '', 'document/1160.pdf', '../cover/1160_c.jpg', '2021-01-03 06:53:52', 1, 0, 'Study manual'),
(1161, 1, 10, 0, 'Public Administration Semeste ', '', 'document/1161.pdf', '../cover/1161_c.jpg', '2021-01-03 06:54:56', 1, 0, 'Maradwatha University'),
(1162, 1, 10, 0, 'Essential history for public adminstration', '', 'document/1162.pdf', '../cover/1162_c.jpg', '2021-01-03 06:56:32', 1, 0, 'Richard Box'),
(1163, 1, 10, 0, 'The Encyclopedia of Political Science ', '', 'document/1163.pdf', '../cover/1163_c.jpg', '2021-01-03 06:57:35', 1, 0, 'George Thomas'),
(1164, 1, 10, 0, 'The New Public Governance Emerging Perspectives on the Theory and Practice of Public Governance ', '', 'document/1164.pdf', '../cover/1164_c.jpg', '2021-01-03 06:58:48', 1, 0, 'Stephen Osborne'),
(1165, 1, 10, 0, 'the_public_administration1-theory-primer', '', 'document/1165.pdf', '../cover/1165_c.jpg', '2021-01-03 06:59:55', 1, 0, 'george Frederickson'),
(1166, 1, 10, 0, 'Delegation Principles  ', '', 'document/1166.pdf', '../cover/1166_c.jpg', '2021-01-03 07:01:09', 1, 0, 'the DPSA'),
(1167, 1, 10, 0, 'Teaching Public Administration and Public Policy ', '', 'document/1167.pdf', '../cover/1167_c.jpg', '2021-01-03 07:02:07', 1, 0, 'sStuart Nagel'),
(1168, 1, 10, 0, 'Introduction to Public Administration  ', '', 'document/1168.pdf', '../cover/1168_c.jpg', '2021-01-03 07:02:56', 1, 0, 'National Open University Nigeria'),
(1169, 1, 10, 0, 'Public Administration and Organization Studies ', '', 'document/1169.pdf', '../cover/1169_c.jpg', '2021-01-03 07:03:44', 1, 0, 'Steven K.'),
(1170, 1, 10, 0, 'Unlocking Constitutional and Administrative Law  ', '', 'document/1170.pdf', '../cover/1170_c.jpg', '2021-01-03 07:04:31', 1, 0, 'Mark Ryan'),
(1171, 1, 10, 0, ' fundamentals of public administration ', '', 'document/1171.pdf', '../cover/1171_c.jpg', '2021-01-03 07:05:53', 1, 0, 'Study manual'),
(1172, 1, 10, 0, 'Public administration theory', '', 'document/1172.pdf', '../cover/1172_c.jpg', '2021-01-03 07:06:37', 1, 0, 'Study manual'),
(1173, 1, 10, 0, 'Public Administration Traditions of Inquiry and Philosophies of Knowledge  ', '', 'document/1173.pdf', '../cover/1173_c.jpg', '2021-01-03 07:07:26', 1, 0, 'Study manual'),
(1174, 1, 10, 0, 'Public administration-meaning,nature,scope and importance', '', 'document/1174.pdf', '../cover/1174_c.jpg', '2021-01-03 07:08:03', 1, 0, 'Study manual'),
(1175, 1, 10, 0, 'Public Management & Administration Illustrated - School of Public ', '', 'document/1175.pdf', '../cover/1175_c.jpg', '2021-01-03 07:08:54', 1, 0, 'Marc H.'),
(1176, 1, 10, 0, 'PUBLIC POLICY (Public Administration and public policy 99)', '', 'document/1176.pdf', '../cover/1176_c.jpg', '2021-01-03 07:09:53', 1, 0, 'Eran Vigoda'),
(1177, 1, 10, 0, 'Quality of Public Administration ', '', 'document/1177.pdf', '../cover/1177_c.jpg', '2021-01-03 07:10:40', 1, 0, 'Study manual'),
(1178, 1, 10, 0, 'The effectiveness of internal financial controls', '', 'document/1178.pdf', '../cover/1178_c.jpg', '2021-01-03 07:11:29', 1, 0, 'Sabelo Tini'),
(1179, 1, 10, 0, 'Public Administration: A Conceptual Perspective', '', 'document/1179.pdf', '../cover/1179_c.jpg', '2021-01-03 07:12:51', 1, 0, 'Study manual'),
(1180, 1, 10, 0, 'Public Administration: Theory and Practise', '', 'document/1180.pdf', '../cover/1180_c.jpg', '2021-01-03 07:14:03', 1, 0, 'Calicut University '),
(1181, 1, 10, 0, 'Readings in Public Administration-I - Administrative Training Institute  ', '', 'document/1181.pdf', '../cover/1181_c.jpg', '2021-01-03 07:15:04', 1, 0, 'P. Bhatacharya'),
(1182, 1, 10, 0, 'strategy-for-public-administration-reform', '', 'document/1182.pdf', '../cover/1182_c.jpg', '2021-01-03 07:16:01', 1, 0, 'Bosnia and Herzegovina'),
(1183, 1, 10, 0, 'the political economy of public administration  ', '', 'document/1183.pdf', '../cover/1183_c.jpg', '2021-01-03 07:17:07', 1, 0, 'Fred Thompson'),
(1184, 1, 10, 0, 'The Political Economy of Public Administration Institutional Choice in the Public Sector  ', '', 'document/1184.pdf', '../cover/1184_c.jpg', '2021-01-03 07:18:01', 1, 0, 'Study manual'),
(1185, 1, 10, 0, 'Theories and concepts of public administration', '', 'document/1185.pdf', '../cover/1185_c.jpg', '2021-01-03 07:18:45', 1, 0, 'Calicut University '),
(1186, 1, 10, 0, 'Training Public Administrators Around the World ', '', 'document/1186.pdf', '../cover/1186_c.jpg', '2021-01-03 07:19:32', 1, 0, 'Nagel'),
(1187, 1, 8, 0, 'Bachelor of Business Administration ', '', 'document/1187.pdf', '../cover/1187_c.jpg', '2021-01-03 07:22:24', 1, 0, 'Burapha University'),
(1188, 1, 8, 0, 'Strategic-Planning', '', 'document/1188.pdf', '../cover/1188_c.jpg', '2021-01-03 07:23:32', 1, 0, 'national minority council'),
(1189, 1, 8, 0, 'Mastering Business Administration ', '', 'document/1189.pdf', '../cover/1189_c.jpg', '2021-01-03 07:24:49', 1, 0, 'Margareth Nicholson'),
(1190, 1, 8, 0, 'Business and management', '', 'document/1190.pdf', '../cover/1190_c.jpg', '2021-01-03 07:25:41', 1, 0, 'Elgar'),
(1191, 1, 8, 0, 'Entrep. & Small Bus Management', '', '/1191.PDF', '../cover/1191_c.jpg', '2021-01-03 07:26:32', 1, 0, 'Donald Sexton'),
(1192, 1, 8, 0, 'BBA Year 2 Business Administration 2B January 2016', '', 'document/1192.pdf', '../cover/1192_c.jpg', '2021-01-03 07:27:41', 1, 0, 'MGT College of Southern Africa'),
(1193, 1, 8, 0, 'management and entreprenureship', '', 'document/1193.pdf', '../cover/1193_c.jpg', '2021-01-03 07:28:24', 1, 0, 'Study manual'),
(1194, 1, 8, 0, 'Maths and English for Business Administration  ', '', 'document/1194.pdf', '../cover/1194_c.jpg', '2021-01-03 07:29:15', 1, 0, 'Andrew Spencer'),
(1195, 1, 8, 0, 'Business Administration and Management  ', '', 'document/1195.pdf', '../cover/1195_c.jpg', '2021-01-03 07:30:06', 1, 0, 'UNESCO'),
(1196, 1, 8, 0, 'Business training manual', '', 'document/1196.pdf', '../cover/1196_c.jpg', '2021-01-03 07:30:49', 1, 0, 'Lorika'),
(1197, 1, 8, 0, 'business administration', '', 'document/1197.pdf', '../cover/1197_c.jpg', '2021-01-03 07:31:41', 1, 0, 'Prof. Ulrich Daldrup'),
(1198, 1, 8, 0, 'Principles_of_Strategic_Planning', '', 'document/1198.pdf', '../cover/1198_c.jpg', '2021-01-03 07:32:33', 1, 0, 'Dr._Hamid_Doost_Mohammadian'),
(1199, 1, 8, 0, 'Strategic Planning Manual', '', 'document/1199.pdf', '../cover/1199_c.jpg', '2021-01-03 13:09:26', 1, 0, 'SPPD'),
(1200, 1, 8, 0, 'Administrative Behavior  ', '', 'document/1200.pdf', '../cover/1200_c.jpg', '2021-01-03 13:10:24', 1, 0, 'Herbert Simon'),
(1201, 1, 8, 0, 'an-introduction-to-business ', '', 'document/1201.pdf', '../cover/1201_c.jpg', '2021-01-03 13:11:30', 1, 0, 'Karen Collins'),
(1202, 1, 8, 0, 'Business and Administration ', '', 'document/1202.pdf', '../cover/1202_c.jpg', '2021-01-03 13:12:21', 1, 0, 'CFA'),
(1203, 1, 8, 0, 'Business Management and Administration Practicum ', '', 'document/1203.pdf', '../cover/1203_c.jpg', '2021-01-03 13:13:18', 1, 0, 'Texas education agency'),
(1204, 1, 8, 0, 'Fundamentals of Business ', '', 'document/1204.pdf', '../cover/1204_c.jpg', '2021-01-03 13:14:21', 1, 0, 'Stephen Skripak'),
(1205, 1, 8, 0, 'fundamentals of business adminstration', '', 'document/1205.pdf', '../cover/1205_c.jpg', '2021-01-03 13:15:18', 1, 0, 'Temur Shengelia'),
(1206, 1, 8, 0, 'management-and-entrepreneurship ', '', 'document/1206.pdf', '../cover/1206_c.jpg', '2021-01-03 13:16:12', 1, 0, 'Study manual'),
(1207, 1, 8, 0, 'Management Concepts Business Ethics', '', 'document/1207.pdf', '../cover/1207_c.jpg', '2021-01-03 13:17:05', 1, 0, 'Calicut University '),
(1208, 1, 8, 0, 'management-principles ', '', 'document/1208.pdf', '../cover/1208_c.jpg', '2021-01-03 13:18:11', 1, 0, 'Mason Carpenter'),
(1209, 1, 8, 0, 'managing change in organisation', '', 'document/1209.pdf', '../cover/1209_c.jpg', '2021-01-03 13:19:29', 1, 0, 'Project mgt inc USA'),
(1210, 1, 8, 0, 'MASTER OF BUSINESS ADMINISTRATION  ', '', 'document/1210.pdf', '../cover/1210_c.jpg', '2021-01-03 13:20:23', 1, 0, 'Pondicherry University'),
(1211, 1, 8, 0, 'Master of Business Administration Human Resource Management ', '', 'document/1211.pdf', '../cover/1211_c.jpg', '2021-01-03 13:21:16', 1, 0, 'MANCOSA'),
(1212, 1, 8, 0, 'modern-management-of-small-businesses', '', 'document/1212.pdf', '../cover/1212_c.jpg', '2021-01-03 13:22:16', 1, 0, 'David Cadden'),
(1213, 1, 8, 0, 'small business management-african manual', '', 'document/1213.pdf', '../cover/1213_c.jpg', '2021-01-03 13:23:13', 1, 0, 'Economic commission of africa'),
(1214, 1, 8, 0, 'strategic management', '', 'document/1214.pdf', '../cover/1214_c.jpg', '2021-01-03 13:24:16', 1, 0, 'Jofre, Sergio'),
(1215, 1, 8, 0, 'Training manual on entrepreneurship and management', '', 'document/1215.pdf', '../cover/1215_c.jpg', '2021-01-03 13:25:28', 1, 0, 'COMCEC'),
(1216, 1, 2, 0, 'Microbiological Application', '', 'document/1216.pdf', '../cover/1216_c.jpg', '2021-01-03 13:31:38', 1, 0, 'Alfred_E_Brown'),
(1217, 1, 11, 0, 'Boost Your Profile In Print', '', 'document/1217.pdf', '../cover/1217_c.jpg', '2021-01-03 13:43:09', 1, 0, 'Patrick Forsyth'),
(1218, 1, 11, 0, 'Customer Relationship Management ', '', 'document/1218.pdf', '../cover/1218_c.jpg', '2021-01-03 13:54:37', 1, 0, 'Christopher Zerres'),
(1219, 1, 11, 0, 'Essentials of Marketing', '', 'document/1219.pdf', '../cover/1219_c.jpg', '2021-01-03 13:55:31', 1, 0, 'Manmohan Joshi'),
(1220, 1, 10, 0, ' Classics of public administration', '', 'document/1220.pdf', '../cover/1220_c.jpg', '2021-01-03 14:46:43', 1, 0, 'shafritz and hyde'),
(1221, 1, 10, 0, 'Quality of Public Administration â€“ A Toolbox for Practitioners', '', 'document/1221.pdf', '../cover/1221_c.jpg', '2021-01-03 14:48:11', 1, 0, 'European commission'),
(1222, 1, 10, 0, 'Introduction to Public Administration ', '', 'document/1222.pdf', '../cover/1222_c.jpg', '2021-01-03 14:49:16', 1, 0, 'Goldfrey Edwards'),
(1223, 1, 10, 0, 'Delegation Principles ', '', 'document/1223.pdf', '../cover/1223_c.jpg', '2021-01-03 14:50:40', 1, 0, 'National treasury the dpsa'),
(1224, 1, 19, 0, 'Instant Notes in Molecular Biology  ', '', 'document/1224.pdf', '../cover/1224_c.jpg', '2021-01-03 14:57:22', 1, 0, 'Phil Turner'),
(1225, 1, 21, 0, 'Inorganic Chemistry and Scaling', '', 'document/1225.pdf', '../cover/1225_c.jpg', '2021-01-03 15:05:57', 1, 0, 'Rainer Backman'),
(1226, 1, 21, 0, 'Photon-based Nanoscience and Nanobio technology  ', '', 'document/1226.pdf', '../cover/1226_c.jpg', '2021-01-03 15:10:09', 1, 0, 'Jan D.'),
(1227, 1, 21, 0, 'Heterogeneous Photocatalysis_ From Fundamentals to Green Applications ', '', 'document/1227.pdf', '../cover/1227_c.jpg', '2021-01-03 15:20:59', 1, 0, 'Juan Carlos'),
(1228, 1, 22, 0, 'organic_chemistry_of_explosives ', '', 'document/1228.pdf', '../cover/1228_c.jpg', '2021-01-03 15:39:48', 1, 0, 'J.P. Agrawal'),
(1229, 1, 22, 0, 'Pericyclic Reactions and Organic Photochemistry  ', '', 'document/1229.pdf', '../cover/1229_c.jpg', '2021-01-03 15:40:51', 1, 0, 'Vinay Sharma'),
(1230, 1, 22, 0, 'Amino Acids, Peptides and Proteins in Organic Chemistry ', '', 'document/1230.pdf', '../cover/1230_c.jpg', '2021-01-03 15:41:53', 1, 0, 'Andrew Hughes'),
(1231, 1, 22, 0, 'Introduction to Organic Chemistry_ Alkanes  ', '', 'document/1231.pdf', '../cover/1231_c.jpg', '2021-01-03 15:43:02', 1, 0, 'Peason Education'),
(1232, 1, 22, 0, 'In_ Solvents and Solvent Effects in Organic Chemistry ', '', 'document/1232.pdf', '../cover/1232_c.jpg', '2021-01-03 15:54:03', 1, 0, 'Christine Reinchardt'),
(1233, 1, 22, 0, 'Stereoelectronic Effects in Organic Chemistry  ', '', 'document/1233.pdf', '../cover/1233_c.jpg', '2021-01-03 15:54:52', 1, 0, 'Pierre D.'),
(1234, 1, 22, 0, 'science_bib_secondary_level', '', 'document/1234.pdf', '../cover/1234_c.jpg', '2021-01-03 15:58:58', 1, 0, 'Saskatchewan Education'),
(1235, 1, 16, 0, 'Pharmaceuticals in the Environment Sources, Fate, Effects and Risks', '', 'document/1235.pdf', '../cover/1235_c.jpg', '2021-07-16 11:45:40', 1, 0, 'Klaus KÃ¼mmerer');

-- --------------------------------------------------------

--
-- Table structure for table `library_libarian`
--

CREATE TABLE `library_libarian` (
  `id` int(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `about` longtext NOT NULL,
  `photo` varchar(150) NOT NULL,
  `link` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_libarian`
--

INSERT INTO `library_libarian` (`id`, `name`, `about`, `photo`, `link`) VALUES
(1, 'Emma Emo', 'AKAKS kkaksjsdf fjhfhfhghgurtruhjffkjfoikdokfpk jufhfunfufn fjfnfj fjf fjkfnfjf ', '../photo/1_p.jpg', 'Head Libarian'),
(2, 'patrick Selma', 'A brief about me', '../photo/2_p.jpg', 'Cheif Libarian');

-- --------------------------------------------------------

--
-- Table structure for table `library_link`
--

CREATE TABLE `library_link` (
  `id` int(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `about` longtext NOT NULL,
  `photo` varchar(150) NOT NULL,
  `link` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_link`
--

INSERT INTO `library_link` (`id`, `name`, `about`, `photo`, `link`) VALUES
(6, 'Welcome to Fantastic Books', 'Bibliographies for over 40,000 authors. Use the browse menu on the left to find an author by surname, or use the search box above to search for an author or book', '../photo/6_d.jpg', 'https://www.fantasticfiction.com/'),
(7, 'The Book Browse Review', 'April 04, 2018\r\n\r\nSpring is officially here, and while it might still be a bit chilly to open all the windows to let the fresh air in, it''s always a good time of year to open the pages of a new book and let in fresh perspectives such as Luis Alberto Urrea''s The House of Broken Angels and Children of Blood and Bone, the first in a new young adult fantasy series rooted in the traditions of West Africa. These are just a taste of the fourteen reviews and beyond the book articles to read in this issue, plus much more besides. Enjoy!', '', 'https://www.bookbrowse.com/mag/'),
(8, 'National Information Technology Dev. Agency', 'National Information Technology Development Agency (NITDA) was created in April 2001 to implement the Nigerian Information Technology Policy and co-ordinate general IT development in the country.\r\n\r\nIt was mandated by the National Information Technology Development Act (2007) to create a framework for the planning, research, development, standardization, application, coordination, monitoring, evaluation and regulation of Information Technology practices, activities and systems in Nigeria.\r\n\r\nIts role therefore is to develop Information technology in the country through regulatory standards, guidelines and policies. Additionally, NITDA is the clearing house for all IT projects and infrastructural development in the country. It is the prime Agency for e-government implementation, Internet governance and general IT development in Nigeria.', '', 'https://nitda.gov.ng/about-nitda/'),
(9, 'Easy bibliography', 'Include the same information as a regular book. Add as much as the original publication information as possible. After citing the original publication information, add the electronic publication information. This includes the title of the internet site, the editor of the site (if given), the date of electronic publication (if given), and the sponsoring institution or organization. Also, be sure to include the date accessed and the URL', '', 'http://www.easybib.com/reference/guide/mla/book'),
(10, 'The Book Browse Review', 'BookBrowse has a particular weakness for strong women, we love their grit despite overwhelming odds, their courage to stay the course no matter what. In this issue, we celebrate fierce girls, including Poornima and Savitha in Girls Burn Brighter, an illuminating novel for adults that shows how nothing can smother fiery determination; and Zarin, in the YA debut, A Girl Like That set in Saudi Arabia. Then we learn about women in American history in The Radium Girls and The Women''s Hour. All this, and so much more to explore in this week''s packed issue!', '', 'https://www.bookbrowse.com/mag/'),
(11, 'School Craft', 'The Schoolcraft College Online Bookstore is your place for Schoolcraft College textbooks, gear and supplies. Buy or sell used and new textbooks, find Schoolcraft College gear, and purchase software and gifts - all online. Learn more about our store and our promise of high quality and excellent service here.', '', 'https://www.schoolcraftbooks.com/');

-- --------------------------------------------------------

--
-- Table structure for table `library_reserves`
--

CREATE TABLE `library_reserves` (
  `id` int(10) NOT NULL,
  `title` varchar(120) NOT NULL,
  `author` varchar(120) NOT NULL,
  `category` int(10) DEFAULT NULL,
  `active` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_send`
--

CREATE TABLE `library_send` (
  `id` int(10) NOT NULL,
  `staffID` int(6) NOT NULL,
  `students` mediumtext NOT NULL,
  `bookID` int(10) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_send`
--

INSERT INTO `library_send` (`id`, `staffID`, `students`, `bookID`, `dateCreated`, `name`) VALUES
(1, 1, '5,6,7,', 5, '2017-09-24 15:35:24', ' '),
(2, 1, '5,6,7,8,', 7, '2017-09-24 15:57:19', 'Main selection'),
(3, 1, '5,6,7,', 5, '2017-09-24 16:04:18', ''),
(4, 1, '5,6,7,8,', 9, '2017-09-24 16:07:00', ''),
(5, 1, '5,6,', 7, '2017-09-24 16:12:54', ''),
(6, 1, '', 0, '2017-09-25 21:48:04', ''),
(7, 2, '5,6,7,', 5, '2017-09-28 01:22:29', ''),
(8, 1, '5,6,7,10,', 5, '2017-09-30 09:33:42', 'Metro'),
(9, 1, '5,', 0, '2017-09-30 09:44:29', ''),
(10, 1, '5,6,', 10, '2017-09-30 09:46:08', ''),
(11, 1, '5,6,7,9,', 7, '2017-09-30 09:48:05', 'Pal'),
(12, 1, '5,6,7,', 1, '2017-09-30 09:48:52', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `library_source`
--

CREATE TABLE `library_source` (
  `id` int(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `quantity` int(20) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_source`
--

INSERT INTO `library_source` (`id`, `name`, `quantity`, `active`) VALUES
(1, 'book', 0, 0),
(2, 'journal', 0, 0),
(3, 'course material', 0, 0),
(4, 'project document', 0, 0),
(5, 'video', 0, 0),
(6, 'audio', 0, 0),
(7, 'power point', 0, 0),
(8, 'public adminstration', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `library_source_content`
--

CREATE TABLE `library_source_content` (
  `id` int(6) NOT NULL,
  `source` int(10) DEFAULT NULL,
  `content` int(10) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_source_content`
--

INSERT INTO `library_source_content` (`id`, `source`, `content`, `status`, `active`) VALUES
(1, 1, 1, 1, 0),
(2, 1, 2, 1, 0),
(3, 1, 3, 1, 0),
(4, 1, 4, 1, 0),
(5, 1, 5, 1, 0),
(6, 4, 1, 1, 0),
(7, 4, 11, 1, 0),
(8, 1, 7, 1, 0),
(9, 1, 12, 0, 0),
(10, 8, 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `library_user`
--

CREATE TABLE `library_user` (
  `id` int(10) NOT NULL,
  `emal` varchar(120) NOT NULL,
  `user` int(4) NOT NULL,
  `surname` varchar(70) DEFAULT NULL,
  `othername` varchar(100) DEFAULT NULL,
  `passwd` varchar(220) DEFAULT NULL,
  `passport` varchar(80) DEFAULT NULL,
  `matric` varchar(30) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` int(2) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL,
  `token` varchar(20) NOT NULL,
  `host` varchar(20) NOT NULL,
  `level` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_user`
--

INSERT INTO `library_user` (`id`, `emal`, `user`, `surname`, `othername`, `passwd`, `passport`, `matric`, `dateCreated`, `active`, `ip`, `token`, `host`, `level`) VALUES
(2, 'doy4@hj.com', 0, 'balaa', 'real madrid', 'admin', NULL, '45545555', '2017-05-23 12:11:13', 1, '', '', '', 6),
(3, 'doyinspc@yahoo.com', 0, 'Aaron', 'Macrone', 'd33332ec4690a8977a06d61d5f8cc252', NULL, '20004/BT', '2017-05-23 12:12:50', 1, '', '', '', 1),
(4, 'doyinspc2@gmail.com', 1, 'Sae', 'Bvac', 'd41d8cd98f00b204e9800998ecf8427e', NULL, '', '2017-07-17 21:08:27', 1, '', '', '', 1),
(5, 'doyinspc5@gmail.com', 2, 'we', 'were', 'd41d8cd98f00b204e9800998ecf8427e', NULL, '11111', '2017-07-17 21:13:22', 1, '', '', '', 1),
(6, 'doyinspc33@gmail.com', 1, 'Mark', 'Adeleke', 'd41d8cd98f00b204e9800998ecf8427e', NULL, '111111', '2017-07-17 21:22:22', 1, '', '', '', 1),
(8, 'doyinspc6@gmail.com', 1, 'Ade', 'Charles', 'd41d8cd98f00b204e9800998ecf8427e', NULL, '1234', '2017-07-17 22:04:34', 1, '', '', '', 1),
(9, 'doyinspc29@gmail.com', 1, 'Mark', 'Admin', 'd41d8cd98f00b204e9800998ecf8427e', NULL, '111111111', '2017-07-17 22:28:40', 1, '', '', '', 1),
(10, 'doyinspc30@gmail.com', 1, 'Alabi', 'Akin', '', NULL, '112211', '2017-07-17 22:38:22', 1, '', '', '', 1),
(11, 'doyinspc28@gmail.com', 1, 'Back', 'Tree', '111111', NULL, '44444', '2017-07-17 22:41:58', 1, '', '', '', 1),
(12, 'doyinspc9@gmail.com', 1, 'was', 'gotten', '96e79218965eb72c92a549dd5a330112', NULL, '334433', '2017-07-17 22:45:43', 1, '', '', '', 1),
(13, 'doyinspc2g@gmail.com', 1, 'ali', 'auka', '78bf4f00f81a36b57950e239f1df91c1', NULL, '', '2017-08-05 04:29:10', 1, '', '', '', 1),
(14, 'doyinspc9r@gmail.com', 1, 'der', 'der', 'd320e618f4b1cd9de77256b1f23366b5', NULL, '', '2017-08-06 20:28:36', 1, '', '', '', 1),
(15, 'doyinspc2eree@gmail.com', 1, 'aser', 'bull', 'fc2006dc76b0c01445d66624447932b0', NULL, '', '2017-08-06 20:32:14', 1, '', '', '', 1),
(16, 'doyinspc282@gmail.com', 1, 'Ade', 'Sunny', '98fa978b6ee060fb8d568bcbe0ddfda8', NULL, '', '2017-08-06 21:07:46', 1, '', '', '', 1),
(17, 'doyinspc932@gmail.com', 1, 'Ade', 'John', 'a6644f70a863304f0b294b41d583a293', NULL, '', '2017-08-07 06:57:08', 1, '', '', '', 1),
(18, 'doy@hja.com', 2, 'Mark ', 'Anthony', '784a8404d213979a14cf147180c03d28', NULL, 'SEC/IM/200367', '2017-09-27 23:36:58', 0, '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `library_user_bookmark`
--

CREATE TABLE `library_user_bookmark` (
  `id` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `bookID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_user_bookmark`
--

INSERT INTO `library_user_bookmark` (`id`, `userID`, `bookID`) VALUES
(12, 1, 8),
(13, 1, 9),
(26, 1, 6),
(30, 1, 1),
(31, 1, 10),
(32, 1, 2),
(33, 2, 5),
(34, 2, 7),
(35, 1, 7),
(43, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `library_user_temp`
--

CREATE TABLE `library_user_temp` (
  `id` int(10) NOT NULL,
  `emal` varchar(120) NOT NULL,
  `user` int(4) NOT NULL,
  `surname` varchar(70) DEFAULT NULL,
  `othername` varchar(100) DEFAULT NULL,
  `passwd` varchar(80) DEFAULT NULL,
  `passport` varchar(80) DEFAULT NULL,
  `matric` varchar(30) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` int(2) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL,
  `token` varchar(20) NOT NULL,
  `host` varchar(20) NOT NULL,
  `level` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_user_temp`
--

INSERT INTO `library_user_temp` (`id`, `emal`, `user`, `surname`, `othername`, `passwd`, `passport`, `matric`, `dateCreated`, `active`, `ip`, `token`, `host`, `level`) VALUES
(1, 'doyinspc2@yahoo.com', 1, 'aaaa', 'jjj', 'p6HJT7Z1e93zr2sdYkKC', NULL, '1234567', '2017-07-12 03:39:38', 0, '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(6) NOT NULL,
  `name` varchar(80) NOT NULL,
  `username` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `main` int(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `active`, `main`) VALUES
(1, 'Super Administrator', 'Admin', 'admin', 0, 1),
(2, 'Mr. Patrick Okoros', 'Patoz', '1b83d5da74032b6a750ef12210642eea', 0, 0),
(3, 'ABu Jack', 'doyinspc', 'james', 0, 0),
(4, 'Mallam Faruk', 'Fame', 'admin', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datas`
--
ALTER TABLE `datas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_books`
--
ALTER TABLE `library_books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emal` (`title`);

--
-- Indexes for table `library_category`
--
ALTER TABLE `library_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `library_category_content`
--
ALTER TABLE `library_category_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_content`
--
ALTER TABLE `library_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_data`
--
ALTER TABLE `library_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_key`
--
ALTER TABLE `library_key`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_libarian`
--
ALTER TABLE `library_libarian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_link`
--
ALTER TABLE `library_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_reserves`
--
ALTER TABLE `library_reserves`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emal` (`title`);

--
-- Indexes for table `library_send`
--
ALTER TABLE `library_send`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_source`
--
ALTER TABLE `library_source`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `library_source_content`
--
ALTER TABLE `library_source_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_user`
--
ALTER TABLE `library_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emal` (`emal`);

--
-- Indexes for table `library_user_bookmark`
--
ALTER TABLE `library_user_bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_user_temp`
--
ALTER TABLE `library_user_temp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emal` (`emal`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datas`
--
ALTER TABLE `datas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_books`
--
ALTER TABLE `library_books`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `library_category`
--
ALTER TABLE `library_category`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `library_category_content`
--
ALTER TABLE `library_category_content`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `library_content`
--
ALTER TABLE `library_content`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `library_data`
--
ALTER TABLE `library_data`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `library_key`
--
ALTER TABLE `library_key`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1236;
--
-- AUTO_INCREMENT for table `library_libarian`
--
ALTER TABLE `library_libarian`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `library_link`
--
ALTER TABLE `library_link`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `library_reserves`
--
ALTER TABLE `library_reserves`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_send`
--
ALTER TABLE `library_send`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `library_source`
--
ALTER TABLE `library_source`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `library_source_content`
--
ALTER TABLE `library_source_content`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `library_user`
--
ALTER TABLE `library_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `library_user_bookmark`
--
ALTER TABLE `library_user_bookmark`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `library_user_temp`
--
ALTER TABLE `library_user_temp`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
