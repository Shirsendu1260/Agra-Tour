-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2022 at 10:54 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agratour_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `agratour`
--

CREATE TABLE `agratour` (
  `Serial No.` int(3) NOT NULL,
  `Name` text NOT NULL,
  `Age` int(2) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Semester` int(1) NOT NULL,
  `Phone No.` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Other` text NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agratour`
--

INSERT INTO `agratour` (`Serial No.`, `Name`, `Age`, `Gender`, `Semester`, `Phone No.`, `Email`, `Other`, `Date`) VALUES
(1, 'Shirsendu Mali', 21, 'Male', 6, '8687645340', 'shirsendumali36@gmail.com', '', '2022-07-08 12:14:52'),
(2, 'Krishnendu Mali', 18, 'Male', 1, '7245789546', 'kmali34@gmail.com', 'I have a DSLR Camera. I will click photos related to this tour.', '2022-07-08 12:15:34'),
(3, 'Rima Mali', 21, 'Female', 4, '9834567879', 'rima2946@gmail.com', 'Excited for the trip.', '2022-07-08 12:31:42'),
(4, 'Ayan Manna', 21, 'Male', 6, '7688758733', 'ayanmanna89@gmail.com', 'New Experience', '2022-07-08 13:35:34'),
(5, 'Dipankar Das', 21, 'Male', 5, '6465876591', 'ddas9@gmail.com', '', '2022-07-08 13:39:02'),
(6, 'Sriti Ghosh', 19, 'Female', 3, '9236576867', 'sghosh67@gmail.com', 'It will be a memorable trip.', '2022-07-08 13:41:49'),
(7, 'Poulami Banerjee', 21, 'Female', 3, '7289788751', 'pbn435687@gmail.com', '', '2022-07-08 13:44:10'),
(8, 'Poulami Das', 18, 'Female', 4, '9003456673', 'poulamidas2345@gmail.com', '', '2022-07-08 13:46:04'),
(9, 'Animesh Adhikari', 21, 'Male', 3, '7534567780', 'aadhikari89@gmail.com', 'New Experience', '2022-07-08 13:48:14'),
(10, 'Pritam Biswas', 18, 'Male', 2, '6831689790', 'pbiswas90@gmail.com', '', '2022-07-08 13:52:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agratour`
--
ALTER TABLE `agratour`
  ADD PRIMARY KEY (`Serial No.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agratour`
--
ALTER TABLE `agratour`
  MODIFY `Serial No.` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
