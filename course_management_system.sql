-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 02, 2024 at 05:42 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `department` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `department`) VALUES
(1, 'Introduction to Psychology', 'Psychology'),
(2, 'Calculus I', 'Mathematics'),
(3, 'Introduction to Computer Science', 'Computer Science'),
(4, 'American History', 'History'),
(5, 'Principles of Biology', 'Biology'),
(6, 'Macroeconomics', 'Economics'),
(7, 'English Composition', 'English'),
(8, 'Introduction to Sociology', 'Sociology'),
(9, 'Organic Chemistry', 'Chemistry'),
(10, 'Principles of Marketing', 'Business Administration');

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

DROP TABLE IF EXISTS `syllabus`;
CREATE TABLE IF NOT EXISTS `syllabus` (
  `syllabus_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `content` text NOT NULL,
  `prerequisites` text NOT NULL,
  `payment` text NOT NULL,
  `instructor_contact` text NOT NULL,
  `title` text NOT NULL,
  PRIMARY KEY (`syllabus_id`)
) ENGINE=MyISAM AUTO_INCREMENT=503 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`syllabus_id`, `course_id`, `content`, `prerequisites`, `payment`, `instructor_contact`, `title`) VALUES
(201, 0, 'Introduction to Computer Science', 'None', 'Bank Transfer', 'Dr. John Doe - johndoe@example.com', ''),
(1, 0, 'Week 1: Limits and Continuity\r\nWeek 2: Derivatives\r\nWeek 3: Applications of Derivatives\r\n...', 'None', 'Bank Transfer', 'Prof. Mark Davis mdavis@example.com', 'Calculus I'),
(104, 0, 'Fundamental concepts of database management systems, relational database design, SQL, and transaction management.', 'CS201 - Data Structures and Algorithms', 'Bank Transfer', 'Dr. David Miller - davidmiller@example.com', 'Database Management Systems'),
(101, 0, 'Introduction to computer networks, layered network architectures, network models, protocols, and standards.', 'CS201 - Data Structures and Algorithms', 'Bank Transfer', 'Prof. Jane Smith - janesmith@example.com', 'Computer Networks'),
(102, 0, 'Introduction to digital signal processing concepts, signal representation, digital filters, and applications.', 'EC201 - Signals and Systems', 'Bank Transfer', 'Dr. Michael Johnson - michaeljohnson@example.com', 'Digital Signal Processing'),
(502, 0, 'Overview of renewable energy sources, energy conversion technologies, and grid integration.', 'EE301 - Electrical Machines', 'Bank Transfer', 'Prof. Emily Brown - emilybrown@example.com', 'Renewable Energy Systems'),
(2, 0, 'Week 1: Introduction to Computer Science\r\nWeek 2: Programming Fundamentals\r\nWeek 3: Data Structures\r\n...', 'None', 'Bank Transfer', 'Dr. Emily Smith esmith@example.com', 'Introduction to Computer Science'),
(3, 0, 'Week 1: Introduction to Psychology Concepts\r\nWeek 2: Biological Basis of Behavior\r\nWeek 3: Sensation and Perception\r\n...', 'None', 'Bank Transfer', 'Dr. Alice Johnson ajohnson@example.com', 'Introduction to Psychology'),
(4, 0, 'Week 1: Colonial America\r\nWeek 2: American Revolution\r\nWeek 3: Civil War\r\n...', 'None', 'Bank Transfer', 'Dr. Alice Johnson ajohnson@example.com', 'American History'),
(5, 0, 'Week 1: Introduction to Biology\r\nWeek 2: Cell Structure and Function\r\nWeek 3: Genetics\r\n...', 'None', 'Bank Transfer', 'Dr. Milly Johnson mjohnson@example.com', 'Principles of Biology'),
(6, 0, 'Week 1: Introduction to Macroeconomics\r\nWeek 2: Aggregate Demand and Aggregate Supply\r\nWeek 3: Fiscal Policy\r\n...', 'None', 'Bank Transfer', 'Dr. Milly Jacob mjacob@example.com', 'Macroeconomics'),
(7, 0, 'Week 1: Introduction to Composition\r\nWeek 2: Rhetorical Strategies\r\nWeek 3: Argumentative Writing\r\n...', 'None', 'Bank Transfer', 'Dr. Nancy Jacob mjacob@example.com', 'English Composition'),
(9, 0, 'Week 1: Introduction to Composition\r\nWeek 2: Rhetorical Strategies\r\nWeek 3: Argumentative Writing\r\n...', 'None', 'Bank Transfer', 'Dr. Nancy Jacob mjacob@example.com', 'Organic Chemistry'),
(10, 0, 'Week 1: Introduction to Marketing\r\nWeek 2: Marketing Research\r\nWeek 3: Consumer Behavior\r\n...', 'None', 'Bank Transfer', 'Dr. Nancy Johnson njohn@example.com', 'Principles of Marketing');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `emailaddress` varchar(100) NOT NULL,
  `contactnumber` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `emailaddress`, `contactnumber`, `password`) VALUES
(44, 'Moulisa', 'Das', 'moulisadas3002@gmail.com', '8927212174', 'seuli'),
(43, 'Moulisa', 'Das', 'moulisadas3002@gmail.com', '8927212174', 'das'),
(34, 'Moulisa', 'Das', 'moulisadas3002@gmail.com', '8927212174', 'moulisa'),
(33, 'Moulisa', 'Das', 'moulisadas3002@gmail.com', '8927212174', 'ert'),
(25, 'Moulisa', 'Das', 'moulisadas3002@gmail.com', '8927212174', 'lisa');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
