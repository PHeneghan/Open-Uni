-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2014 at 01:22 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `assingments`
--

CREATE TABLE IF NOT EXISTS `assingments` (
  `AssingmentCode` char(7) NOT NULL DEFAULT '',
  `MName` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assingments`
--

INSERT INTO `assingments` (`AssingmentCode`, `MName`) VALUES
('1066501', 'Algebra'),
('1066601', 'Calculus'),
('1066701', 'Satistics'),
('1078901', 'Databases'),
('1078902', 'Databases'),
('1078903', 'Databases'),
('1079001', 'Web Apps'),
('1079002', 'Web Apps'),
('2045301', 'Electronic'),
('2045401', 'Energy'),
('2045501', 'Radiation'),
('2068401', 'Fluids'),
('2068501', 'Thermodyma'),
('2068601', 'Structures'),
('3018201', 'Anatomy'),
('3018301', 'Zoology'),
('3018601', 'Botany'),
('3018602', 'Botany'),
('3042301', 'Organic'),
('3042401', 'Inorganic'),
('3042501', 'BioChem');

-- --------------------------------------------------------

--
-- Stand-in structure for view `botany_assignments`
--
CREATE TABLE IF NOT EXISTS `botany_assignments` (
`AssingmentCode` char(7)
,`MName` char(10)
);
-- --------------------------------------------------------

--
-- Table structure for table `centre`
--

CREATE TABLE IF NOT EXISTS `centre` (
  `CentreID` decimal(2,0) NOT NULL,
  `CentreLocation` char(15) NOT NULL DEFAULT '',
  `ContactNo` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `centre`
--

INSERT INTO `centre` (`CentreID`, `CentreLocation`, `ContactNo`) VALUES
('3', 'Cork', '021673456'),
('2', 'Dublin', '013823456'),
('1', 'Galway', '091823456');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `CourseID` int(4) NOT NULL,
  `CourseName` char(25) DEFAULT NULL,
  `CentreLocation` char(13) DEFAULT NULL,
  `Price` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseID`, `CourseName`, `CentreLocation`, `Price`) VALUES
(1001, 'Computer_Science', 'Galway', '1200.00'),
(1002, 'Mathematics', 'Galway', '950.00'),
(2001, 'Physics', 'Dublin', '1500.00'),
(2002, 'Engineering', 'Dublin', '1750.00'),
(3001, 'Chemistry', 'Cork', '2000.00'),
(3002, 'Biology', 'Cork', '2500.00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `courseinfo`
--
CREATE TABLE IF NOT EXISTS `courseinfo` (
`courseid` int(4)
,`CourseName` char(25)
,`CentreLocation` char(13)
,`tname` char(9)
);
-- --------------------------------------------------------

--
-- Table structure for table `coursetexts`
--

CREATE TABLE IF NOT EXISTS `coursetexts` (
  `Title` char(25) NOT NULL,
  `Publiser` char(10) DEFAULT NULL,
  `Revison` int(3) DEFAULT NULL,
  `CourseID` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursetexts`
--

INSERT INTO `coursetexts` (`Title`, `Publiser`, `Revison`, `CourseID`) VALUES
('Java for Dummies', 'Dummies', 6, 1001),
('Learn Physics', 'Penguin', 2, 2001),
('Sums', 'Falcon', 1, 1002);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE IF NOT EXISTS `exams` (
  `ExamCode` char(7) NOT NULL DEFAULT '',
  `MName` char(10) DEFAULT NULL,
  `CentreLocation` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`ExamCode`, `MName`, `CentreLocation`) VALUES
('1066511', 'Algebra', 'Galway'),
('1066611', 'Calculus', 'Galway'),
('1066711', 'Satistics', 'Galway'),
('1078911', 'Databases', 'Galway'),
('1079011', 'Web Apps', 'Galway'),
('1079111', 'Java', 'Galway'),
('2045311', 'Electronic', 'Dublin'),
('2045411', 'Energy', 'Dublin'),
('2045511', 'Radiation', 'Dublin'),
('2068411', 'Fluids', 'Dublin'),
('2068511', 'Thermodyma', 'Dublin'),
('2068611', 'Structures', 'Dublin'),
('3018211', 'Anatomy', 'Cork'),
('3018311', 'Zoology', 'Cork'),
('3018611', 'Botany', 'Cork'),
('3042311', 'Organic', 'Cork'),
('3042411', 'Inorganic', 'Cork'),
('3042511', 'BioChem', 'Cork');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE IF NOT EXISTS `fees` (
  `BillNo` int(7) NOT NULL,
  `StudentID` int(6) NOT NULL,
  `Price` decimal(7,2) NOT NULL,
  `Paid` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`BillNo`, `StudentID`, `Price`, `Paid`) VALUES
(100, 140961, '1200.00', 1),
(101, 141234, '1200.00', 1),
(102, 155951, '1200.00', 1),
(103, 160878, '1200.00', 1),
(104, 209172, '1200.00', 1),
(105, 210261, '1200.00', 1),
(106, 212366, '1200.00', 1),
(107, 227237, '950.00', 1),
(108, 238213, '950.00', 1),
(109, 298458, '950.00', 1),
(110, 320027, '950.00', 1),
(111, 323961, '950.00', 1),
(112, 356333, '950.00', 1),
(113, 403959, '950.00', 1),
(114, 423864, '1500.00', 1),
(115, 469386, '1500.00', 1),
(116, 488990, '1500.00', 1),
(117, 573220, '1500.00', 1),
(118, 578906, '1500.00', 1),
(119, 582805, '1500.00', 1),
(120, 587110, '1500.00', 1),
(121, 596403, '1750.00', 1),
(122, 640247, '1750.00', 1),
(123, 641220, '1750.00', 1),
(124, 655982, '1750.00', 1),
(125, 673848, '1750.00', 1),
(126, 685951, '1750.00', 1),
(127, 689581, '1750.00', 1),
(128, 707527, '2000.00', 1),
(129, 711376, '2000.00', 1),
(130, 737187, '2000.00', 1),
(131, 758676, '2000.00', 1),
(132, 767487, '2000.00', 1),
(133, 792270, '2000.00', 1),
(134, 841722, '2000.00', 1),
(135, 871710, '2500.00', 1),
(136, 891157, '2500.00', 1),
(137, 895438, '2500.00', 1),
(138, 969839, '2500.00', 1),
(139, 984466, '2500.00', 1),
(140, 998605, '2500.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `ModuleID` int(5) DEFAULT NULL,
  `MName` char(20) NOT NULL DEFAULT '',
  `CourseID` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`ModuleID`, `MName`, `CourseID`) VALUES
(10665, 'Algebra', 1002),
(30182, 'Anatomy', 3002),
(30425, 'BioChem', 3001),
(30186, 'Botany', 3002),
(10666, 'Calculus', 1002),
(10789, 'Databases', 1001),
(20453, 'Electronics', 2001),
(20454, 'Energy', 2001),
(20684, 'Fluids', 2002),
(30424, 'Inorganic', 3001),
(10791, 'Java', 1001),
(30423, 'Organic', 3001),
(20455, 'Radiation', 2001),
(10667, 'Satistics', 1002),
(20686, 'Structures', 2002),
(20685, 'Thermodymanics', 2002),
(10790, 'Web Apps', 1001),
(30183, 'Zoology', 3002);

-- --------------------------------------------------------

--
-- Stand-in structure for view `modulesinfo`
--
CREATE TABLE IF NOT EXISTS `modulesinfo` (
`Mname` char(20)
,`CourseName` char(25)
,`CentreLocation` char(13)
,`tname` char(9)
);
-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `StudentID` int(6) NOT NULL,
  `FirstName` char(10) NOT NULL,
  `Surname` char(10) NOT NULL,
  `DOB` char(10) NOT NULL,
  `Sex` char(6) NOT NULL,
  `Nationality` char(15) NOT NULL,
  `Address` char(13) NOT NULL,
  `Email` char(30) NOT NULL,
  `Telephone` char(10) NOT NULL,
  `AltenitiveTelephone` char(10) DEFAULT NULL,
  `SocailMedia` char(50) DEFAULT NULL,
  `CourseID` int(4) DEFAULT NULL,
  `OverallResult` decimal(5,2) DEFAULT NULL,
  `Module1ID` int(5) DEFAULT NULL,
  `Module1Result` decimal(5,2) DEFAULT NULL,
  `M1ASS1` decimal(5,2) DEFAULT NULL,
  `M1ASS2` decimal(5,2) DEFAULT NULL,
  `M1ASS3` decimal(5,2) DEFAULT NULL,
  `M1Exam` decimal(5,2) DEFAULT NULL,
  `Module2ID` int(5) DEFAULT NULL,
  `Module2Result` decimal(5,2) DEFAULT NULL,
  `M2ASS1` decimal(5,2) DEFAULT NULL,
  `M2ASS2` decimal(5,2) DEFAULT NULL,
  `M2ASS3` decimal(5,2) DEFAULT NULL,
  `M2Exam` decimal(5,2) DEFAULT NULL,
  `Module3ID` int(5) DEFAULT NULL,
  `Module3Result` decimal(5,2) DEFAULT NULL,
  `M3ASS1` decimal(5,2) DEFAULT NULL,
  `M3ASS2` decimal(5,2) DEFAULT NULL,
  `M3ASS3` decimal(5,2) DEFAULT NULL,
  `M3Exam` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentID`, `FirstName`, `Surname`, `DOB`, `Sex`, `Nationality`, `Address`, `Email`, `Telephone`, `AltenitiveTelephone`, `SocailMedia`, `CourseID`, `OverallResult`, `Module1ID`, `Module1Result`, `M1ASS1`, `M1ASS2`, `M1ASS3`, `M1Exam`, `Module2ID`, `Module2Result`, `M2ASS1`, `M2ASS2`, `M2ASS3`, `M2Exam`, `Module3ID`, `Module3Result`, `M3ASS1`, `M3ASS2`, `M3ASS3`, `M3Exam`) VALUES
(140961, 'Christina', 'Reid', '3/13/1956', 'Female', 'Welsh', 'Limerick', 'creid2o@census.gov', '0864502843', NULL, NULL, 1001, NULL, 10789, NULL, NULL, NULL, NULL, NULL, 10790, NULL, NULL, NULL, NULL, NULL, 10791, NULL, NULL, NULL, NULL, NULL),
(141234, 'John', 'Smith', '1/1/79', 'Male', 'Irish', 'Kerry', 'jsmith@gmail.com', '06612345', '0851126563', 'facebook.com/john', 1001, NULL, 10789, NULL, NULL, NULL, NULL, NULL, 10790, NULL, NULL, NULL, NULL, NULL, 10791, NULL, NULL, NULL, NULL, NULL),
(155951, 'Phillip', 'Burns', '4/5/1962', 'Male', 'Irish', 'Tipperary', 'pburns1o@chicagotribune.com', '0864893544', NULL, NULL, 1001, NULL, 10789, NULL, NULL, NULL, NULL, NULL, 10790, NULL, NULL, NULL, NULL, NULL, 10791, NULL, NULL, NULL, NULL, NULL),
(160878, 'Betty', 'Hughes', '12/3/1966', 'Female', 'Irish', 'Limerick', 'bhughes28@sun.com', '0854698753', NULL, NULL, 1001, NULL, 10789, NULL, NULL, NULL, NULL, NULL, 10790, NULL, NULL, NULL, NULL, NULL, 10791, NULL, NULL, NULL, NULL, NULL),
(209172, 'Ronald', 'Wheeler', '9/19/1974', 'Male', 'Irish', 'Mayo', 'rwheeler21@delicious.com', '0874569853', NULL, NULL, 1001, NULL, 10789, NULL, NULL, NULL, NULL, NULL, 10790, NULL, NULL, NULL, NULL, NULL, 10791, NULL, NULL, NULL, NULL, NULL),
(210261, 'Norma', 'Pierce', '10/1/1971', 'Female', 'Irish', 'Carlow', 'npierce2r@ucsd.edu', '0856987615', NULL, NULL, 1001, NULL, 10789, NULL, NULL, NULL, NULL, NULL, 10790, NULL, NULL, NULL, NULL, NULL, 10791, NULL, NULL, NULL, NULL, NULL),
(212366, 'Larry', 'Kennedy', '1/29/1980', 'Male', 'English', 'Donegal', 'lkennedy2l@whitehouse.gov', '0869843546', NULL, NULL, 1001, NULL, 10789, NULL, NULL, NULL, NULL, NULL, 10790, NULL, NULL, NULL, NULL, NULL, 10791, NULL, NULL, NULL, NULL, NULL),
(227237, 'Mary', 'Grant', '6/1/1994', 'Female', 'Welsh', 'Limerick', 'mgrant1y@forbes.com', '0873021468', NULL, NULL, 1002, NULL, 10665, NULL, NULL, NULL, NULL, NULL, 10666, NULL, NULL, NULL, NULL, NULL, 10667, NULL, NULL, NULL, NULL, NULL),
(238213, 'Samuel', 'Gordon', '1/7/1976', 'Male', 'Irish', 'Galway', 'sgordon2a@unc.edu', '0876523489', '091565897', NULL, 1002, NULL, 10665, NULL, NULL, NULL, NULL, NULL, 10666, NULL, NULL, NULL, NULL, NULL, 10667, NULL, NULL, NULL, NULL, NULL),
(298458, 'Joyce', 'Johnston', '7/25/1953', 'Female', 'Irish', 'Clare', 'jjohnston2b@japanpost.jp', '0894568753', NULL, NULL, 1002, NULL, 10665, NULL, NULL, NULL, NULL, NULL, 10666, NULL, NULL, NULL, NULL, NULL, 10667, NULL, NULL, NULL, NULL, NULL),
(320027, 'Roger', 'Elliott', '8/27/1975', 'Male', 'Irish', 'Galway', 'relliott2c@miitbeian.gov.cn', '0836598756', NULL, NULL, 1002, NULL, 10665, NULL, NULL, NULL, NULL, NULL, 10666, NULL, NULL, NULL, NULL, NULL, 10667, NULL, NULL, NULL, NULL, NULL),
(323961, 'Craig', 'Foster', '2/12/1990', 'Male', 'Irish', 'Sligo', 'cfoster24@usa.gov', '0863285694', NULL, NULL, 1002, NULL, 10665, NULL, NULL, NULL, NULL, NULL, 10666, NULL, NULL, NULL, NULL, NULL, 10667, NULL, NULL, NULL, NULL, NULL),
(356333, 'Linda', 'Carroll', '12/30/1958', 'Female', 'Irish', 'Laois', 'lcarroll22@cbslocal.com', '0875698534', NULL, NULL, 1002, NULL, 10665, NULL, NULL, NULL, NULL, NULL, 10666, NULL, NULL, NULL, NULL, NULL, 10667, NULL, NULL, NULL, NULL, NULL),
(403959, 'Justin', 'Stevens', '10/28/1954', 'Male', 'Irish', 'Mayo', 'jstevens2n@merriam-webster.com', '0856412987', NULL, NULL, 1002, NULL, 10665, NULL, NULL, NULL, NULL, NULL, 10666, NULL, NULL, NULL, NULL, NULL, 10667, NULL, NULL, NULL, NULL, NULL),
(423864, 'Gerald', 'Patterson', '10/7/1986', 'Male', 'Irish', 'Monaghan', 'gpatterson2j@bbb.org', '0863214978', NULL, NULL, 2002, NULL, 20684, NULL, NULL, NULL, NULL, NULL, 20685, NULL, NULL, NULL, NULL, NULL, 20686, NULL, NULL, NULL, NULL, NULL),
(469386, 'Jacqueline', 'Davis', '6/27/1972', 'Female', 'Irish', 'Meath', 'jdavis1p@last.fm', '087965423', NULL, NULL, 2002, NULL, 20684, NULL, NULL, NULL, NULL, NULL, 20685, NULL, NULL, NULL, NULL, NULL, 20686, NULL, NULL, NULL, NULL, NULL),
(488990, 'Carol', 'Reynolds', '2/13/1973', 'Female', 'Irish', 'Cork', 'creynolds2k@devhub.com', '0861313130', NULL, NULL, 2002, NULL, 20684, NULL, NULL, NULL, NULL, NULL, 20685, NULL, NULL, NULL, NULL, NULL, 20686, NULL, NULL, NULL, NULL, NULL),
(573220, 'Ashley', 'Morales', '6/27/1967', 'Female', 'Irish', 'Kildare', 'amorales1t@webs.com', '0852358769', NULL, 'http://cyberchimps.com/parturient/monte', 2002, NULL, 20684, NULL, NULL, NULL, NULL, NULL, 20685, NULL, NULL, NULL, NULL, NULL, 20686, NULL, NULL, NULL, NULL, NULL),
(578906, 'Katherine', 'Lynch', '1/3/1990', 'Female', 'Irish', 'Leitrim', 'klynch2d@toplist.cz', '0835679841', '036010609', NULL, 2002, NULL, 20684, NULL, NULL, NULL, NULL, NULL, 20685, NULL, NULL, NULL, NULL, NULL, 20686, NULL, NULL, NULL, NULL, NULL),
(582805, 'Jesse', 'Gutierrez', '6/25/1980', 'Male', 'Irish', 'Galway', 'jgutierrez2h@google.co.uk', '0865983497', NULL, NULL, 2002, NULL, 20684, NULL, NULL, NULL, NULL, NULL, 20685, NULL, NULL, NULL, NULL, NULL, 20686, NULL, NULL, NULL, NULL, NULL),
(587110, 'Carolyn', 'Murray', '12/25/1955', 'Female', 'Irish', 'Galway', 'cmurray1u@vinaora.com', '0863215894', NULL, 'https://accuweather.com/iac', 2002, NULL, 20684, NULL, NULL, NULL, NULL, NULL, 20685, NULL, NULL, NULL, NULL, NULL, 20686, NULL, NULL, NULL, NULL, NULL),
(596403, 'Billy', 'Gonzales', '11/20/1995', 'Male', 'Irish', 'Sligo', 'bgonzales2f@ocn.ne.jp', '0836547259', NULL, NULL, 2001, NULL, 20453, NULL, NULL, NULL, NULL, NULL, 20455, NULL, NULL, NULL, NULL, NULL, 20456, NULL, NULL, NULL, NULL, NULL),
(640247, 'Eric', 'Tucker', '4/21/1978', 'Male', 'Irish', 'Offaly', 'etucker29@about.me', '0879652348', NULL, NULL, 2001, NULL, 20453, NULL, NULL, NULL, NULL, NULL, 20455, NULL, NULL, NULL, NULL, NULL, 20456, NULL, NULL, NULL, NULL, NULL),
(641220, 'Fred', 'Gordon', '6/29/1965', 'Male', 'Irish', 'Westmeath', 'fgordon2g@japanpost.jp', '0865432170', NULL, NULL, 2001, NULL, 20453, NULL, NULL, NULL, NULL, NULL, 20455, NULL, NULL, NULL, NULL, NULL, 20456, NULL, NULL, NULL, NULL, NULL),
(655982, 'Joan', 'Flores', '6/6/1995', 'Female', 'English', 'Offaly', 'jflores2e@shutterfly.com', '0830645792', NULL, NULL, 2001, NULL, 20453, NULL, NULL, NULL, NULL, NULL, 20455, NULL, NULL, NULL, NULL, NULL, 20456, NULL, NULL, NULL, NULL, NULL),
(673848, 'Helen', 'Stevens', '5/8/1973', 'Female', 'Scottish', 'Limerick', 'hstevens23@zdnet.com', '0875698753', '05780499', NULL, 2001, NULL, 20453, NULL, NULL, NULL, NULL, NULL, 20455, NULL, NULL, NULL, NULL, NULL, 20456, NULL, NULL, NULL, NULL, NULL),
(685951, 'Jason', 'Kim', '7/12/1986', 'Male', 'Irish', 'Carlow', 'jkim27@sakura.ne.jp', '0865324987', NULL, NULL, 2001, NULL, 20453, NULL, NULL, NULL, NULL, NULL, 20455, NULL, NULL, NULL, NULL, NULL, 20456, NULL, NULL, NULL, NULL, NULL),
(689581, 'Bonnie', 'Gonzalez', '1/21/1994', 'Female', 'English', 'Limerick', 'bgonzalez2i@technorati.com', '0854389462', '05329666', NULL, 2001, NULL, 20453, NULL, NULL, NULL, NULL, NULL, 20455, NULL, NULL, NULL, NULL, NULL, 20456, NULL, NULL, NULL, NULL, NULL),
(707527, 'Todd', 'Price', '11/4/1978', 'Male', 'Irish', 'Clare', 'tprice1s@bizjournals.com', '0856452897', NULL, NULL, 3001, NULL, 30423, NULL, NULL, NULL, NULL, NULL, 30424, NULL, NULL, NULL, NULL, NULL, 30425, NULL, NULL, NULL, NULL, NULL),
(711376, 'Barbara', 'Robinson', '8/22/1970', 'Female', 'Irish', 'Dublin', 'brobinson1x@mit.edu', '0875498653', NULL, NULL, 3001, NULL, 30423, NULL, NULL, NULL, NULL, NULL, 30424, NULL, NULL, NULL, NULL, NULL, 30425, NULL, NULL, NULL, NULL, NULL),
(737187, 'Eugene', 'Dixon', '5/4/1990', 'Male', 'Irish', 'Donegal', 'edixon1r@hatena.ne.jp', '0864568324', NULL, NULL, 3001, NULL, 30423, NULL, NULL, NULL, NULL, NULL, 30424, NULL, NULL, NULL, NULL, NULL, 30425, NULL, NULL, NULL, NULL, NULL),
(758676, 'Ruth', 'Nguyen', '8/31/1955', 'Female', 'Irish', 'Limerick', 'rnguyen1w@earthlink.net', '0854689753', NULL, NULL, 3001, NULL, 30423, NULL, NULL, NULL, NULL, NULL, 30424, NULL, NULL, NULL, NULL, NULL, 30425, NULL, NULL, NULL, NULL, NULL),
(767487, 'Carolyn', 'Phillips', '4/7/1961', 'Female', 'Irish', 'Wicklow', 'cphillips1z@flickr.com', '0865432598', NULL, NULL, 3001, NULL, 30423, NULL, NULL, NULL, NULL, NULL, 30424, NULL, NULL, NULL, NULL, NULL, 30425, NULL, NULL, NULL, NULL, NULL),
(792270, 'Wayne', 'Turner', '5/15/1965', 'Male', 'Irish', 'Kerry', 'wturner20@salon.com', '0853654865', NULL, NULL, 3001, NULL, 30423, NULL, NULL, NULL, NULL, NULL, 30424, NULL, NULL, NULL, NULL, NULL, 30425, NULL, NULL, NULL, NULL, NULL),
(841722, 'Sharon', 'Perry', '2/29/1984', 'Female', 'Irish', 'Kildare', 'sperry2m@ask.com', '0853168725', NULL, NULL, 3001, NULL, 30423, NULL, NULL, NULL, NULL, NULL, 30424, NULL, NULL, NULL, NULL, NULL, 30425, NULL, NULL, NULL, NULL, NULL),
(871710, 'Ralph', 'Freeman', '8/17/1989', 'Male', 'Irish', 'Cavan', 'rfreeman26@boston.com', '0865478963', NULL, NULL, 3002, NULL, 30182, NULL, NULL, NULL, NULL, NULL, 30183, NULL, NULL, NULL, NULL, NULL, 30186, NULL, NULL, NULL, NULL, NULL),
(891157, 'Theresa', 'Reynolds', '1/1/1972', 'Female', 'Irish', 'Galway', 'treynolds25@independent.co.uk', '086589756', NULL, NULL, 3002, NULL, 30182, NULL, NULL, NULL, NULL, NULL, 30183, NULL, NULL, NULL, NULL, NULL, 30186, NULL, NULL, NULL, NULL, NULL),
(895438, 'Maria', 'Bradley', '2/25/1993', 'Female', 'Irish', 'Kilkenny', 'mbradley1v@google.ru', '0878945632', '0612877747', NULL, 3002, NULL, 30182, NULL, NULL, NULL, NULL, NULL, 30183, NULL, NULL, NULL, NULL, NULL, 30186, NULL, NULL, NULL, NULL, NULL),
(969839, 'Betty', 'Willis', '7/12/1995', 'Female', 'Irish', 'Galway', 'bwillis2q@cloudflare.com', '0836585426', NULL, 'http://theglobeandmail.com/tellus/semper/interdum.', 3002, NULL, 30182, NULL, NULL, NULL, NULL, NULL, 30183, NULL, NULL, NULL, NULL, NULL, 30186, NULL, NULL, NULL, NULL, NULL),
(984466, 'Johnny', 'Boyd', '2/3/1992', 'Male', 'Irish', 'Limerick', 'jboyd2p@huffingtonpost.com', '0869874682', NULL, 'http://hubpages.com/nulla/nunc.xml?cubilia=lectus&', 3002, NULL, 30182, NULL, NULL, NULL, NULL, NULL, 30183, NULL, NULL, NULL, NULL, NULL, 30186, NULL, NULL, NULL, NULL, NULL),
(998605, 'Anna', 'Lopez', '5/21/1985', 'Female', 'Irish', 'Laois', 'alopez1q@hc360.com', '0863548962', '09045625', 'https://mtv.com/id/ligula/suspendisse', 3002, NULL, 30182, NULL, NULL, NULL, NULL, NULL, 30183, NULL, NULL, NULL, NULL, NULL, 30186, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE IF NOT EXISTS `tutor` (
  `TutorID` int(5) NOT NULL DEFAULT '0',
  `TName` char(9) DEFAULT NULL,
  `Quailifications` char(9) DEFAULT NULL,
  `CourseID` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`TutorID`, `TName`, `Quailifications`, `CourseID`) VALUES
(12652, 'M_Reilly', 'MSc', 1001),
(19052, 'K_Kelly', 'Bsc', 1002),
(25894, 'F_Burke', 'PHD', 2001),
(28473, 'R_Stevens', 'MSc', 2002),
(36729, 'N_Ford', 'MSc', 3001),
(39584, 'O_Moores', 'PHD', 3002);

-- --------------------------------------------------------

--
-- Structure for view `botany_assignments`
--
DROP TABLE IF EXISTS `botany_assignments`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `botany_assignments` AS select `assingments`.`AssingmentCode` AS `AssingmentCode`,`assingments`.`MName` AS `MName` from `assingments` where (`assingments`.`MName` = 'Botany');

-- --------------------------------------------------------

--
-- Structure for view `courseinfo`
--
DROP TABLE IF EXISTS `courseinfo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `courseinfo` AS select `course`.`CourseID` AS `courseid`,`course`.`CourseName` AS `CourseName`,`course`.`CentreLocation` AS `CentreLocation`,`tutor`.`TName` AS `tname` from (`course` join `tutor`) where (`course`.`CourseID` = `tutor`.`CourseID`);

-- --------------------------------------------------------

--
-- Structure for view `modulesinfo`
--
DROP TABLE IF EXISTS `modulesinfo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `modulesinfo` AS select `modules`.`MName` AS `Mname`,`courseinfo`.`CourseName` AS `CourseName`,`courseinfo`.`CentreLocation` AS `CentreLocation`,`courseinfo`.`tname` AS `tname` from (`courseinfo` join `modules`) where (`courseinfo`.`courseid` = `modules`.`CourseID`);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assingments`
--
ALTER TABLE `assingments`
 ADD PRIMARY KEY (`AssingmentCode`);

--
-- Indexes for table `centre`
--
ALTER TABLE `centre`
 ADD PRIMARY KEY (`CentreLocation`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
 ADD PRIMARY KEY (`CourseID`), ADD KEY `CentreLocation` (`CentreLocation`);

--
-- Indexes for table `coursetexts`
--
ALTER TABLE `coursetexts`
 ADD PRIMARY KEY (`Title`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
 ADD PRIMARY KEY (`ExamCode`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
 ADD PRIMARY KEY (`BillNo`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
 ADD PRIMARY KEY (`MName`), ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
 ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
 ADD PRIMARY KEY (`TutorID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`CentreLocation`) REFERENCES `centre` (`CentreLocation`);

--
-- Constraints for table `modules`
--
ALTER TABLE `modules`
ADD CONSTRAINT `modules_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
