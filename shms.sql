--
-- Database: `shms`
--

CREATE DATABASE shms;
-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'Test@12345');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);


-- --------------------------------------------------------


--
-- Table structure for table `doctorspecilization`
--

DROP TABLE IF EXISTS `doctorspecilization`;
CREATE TABLE IF NOT EXISTS `doctorspecilization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`specilization`) VALUES
('Anesthesiologist'),
('Orthodontics'),
('Endodontics'),
('Periodontics'),
('Oral and maxillofacial surgen'),
('Prosthodontics'),
('Maxillofacial prosthodontics'),
('Oral and maxillofacial radiologist'),
('Oral and maxillofacial pathologist');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
CREATE TABLE IF NOT EXISTS `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`) VALUES
('Anesthesiologist', 'Jason', 'Campsie', '100', 425234324, 'jason@gmail.com', '20fdb37baf8fa441a14ed981684dcd7b'),
('Orthodontics', 'Tom', 'Penshurst', '120', 0401872563,'tom_doc@test.com','f925916e2754e5e03f75dd58a5733251'),
('Oral and maxillofacial surgen', 'Harry', 'Campsie', '100', 41234534, 'harry@hotmail.com', 'e5754964cb460dec86f05b5a20b93e0b'),
('Oral and maxillofacial radiologist', 'David', 'Campsie', '90', 41236333, 'david@yahoo.com', '889211b122daa7f9f917d3d3b3475514'),
('Anesthesiologist', 'Simon', 'Campsie', '80', 212312424, 'simon@gmail.com', '6628c18983defccc6e326e23232dba14'),
('Oral and maxillofacial pathologist', 'Sam', 'Campsie', '95', 41232225, 'sam@gmail.com', 'ba0e7885b32f0b4b52c51de350069a2f'),
('Oral and maxillofacial surgen', 'Justin', 'Campsie', '80', 415666332, 'justin@hotmail.com', 'b0457d594de41669cf4f112b2951a2ea');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

DROP TABLE IF EXISTS `doctorslog`;
CREATE TABLE IF NOT EXISTS `doctorslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;


--
-- Table structure for table `medicalhistory`
--

DROP TABLE IF EXISTS `medicalhistory`;
CREATE TABLE IF NOT EXISTS `medicalhistory` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `PatientID` int(10) DEFAULT NULL,
  `servicelist` text NOT NULL,
  `AddInfo` mediumtext NOT NULL,
  `MedicalPres` mediumtext,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `serviceid` int(11) NOT NULL AUTO_INCREMENT,
  `servicename` varchar(100) NOT NULL,
  `createddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`serviceid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`serviceid`, `servicename`) VALUES
(1, 'Gum Disease'),
(2, 'Teeth Straightening'),
(3, 'Dental Fillings'),
(4, 'Teeth Whitening'),
(5, 'Dental Veners'),
(6, 'Dentures Treatment');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

DROP TABLE IF EXISTS `tblpatient`;
CREATE TABLE IF NOT EXISTS `tblpatient` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;



--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`fullName`, `address`, `city`, `gender`, `email`, `password`) VALUES
('Anju Maharjan', 'Sydney', 'Sydney', 'female', 'anju.maharjan@test.com', 'f925916e2754e5e03f75dd58a5733251'),
('Yasoda Rai', 'Hurstville', 'Sydney', 'female', 'yasoda.rai1@test.com', 'f925916e2754e5e03f75dd58a5733251'),
('Josh', 'Penshurst', 'Sydney', 'male', 'josh@gmail.com', '20fdb37baf8fa441a14ed981684dcd7b');
COMMIT;


