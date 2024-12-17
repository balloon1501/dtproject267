-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2024 at 09:14 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbsdb`
--
CREATE DATABASE IF NOT EXISTS `bbsdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bbsdb`;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `AdminuserName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `UserType` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `UserType`) VALUES
(2, 'Admin', 'admin', 8956565656, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2024-08-31 18:30:00', 1),
(3, 'เดชา ขำแก้ว', 'user1', 1234567890, 'decha.k@gmail.com', '24c9e15e52afc47c225b757e7bee1f9d', '2024-09-10 18:30:00', 0),
(7, 'จิตสุภา ปราชเปรื่อง', 'user2', 7894561236, 'meenu@gmail.com', '7e58d63b60197ceb55a1c487989a3720', '2024-09-25 05:57:24', 0),
(9, 'Naphastanan', 'tongg', 803300414, '1212tt@gmail.com', 'b98328a4646829aace2a46a1f36ff3c8', '2024-12-14 02:46:27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblboat`
--

CREATE TABLE `tblboat` (
  `ID` int(5) NOT NULL,
  `BoatName` varchar(250) DEFAULT NULL,
  `Image` varchar(250) DEFAULT NULL,
  `Size` varchar(100) DEFAULT NULL,
  `Capacity` varchar(100) DEFAULT NULL,
  `Source` varchar(250) DEFAULT NULL,
  `Destination` varchar(250) DEFAULT NULL,
  `Route` varchar(250) DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `AddedBy` int(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblboat`
--

INSERT INTO `tblboat` (`ID`, `BoatName`, `Image`, `Size`, `Capacity`, `Source`, `Destination`, `Route`, `Price`, `Description`, `AddedBy`, `CreationDate`) VALUES
(1, 'เรือใช้ชีวิต', 'c60bd504b634cc78521eafd8f5f1a6f81727332523.jpg', 'Small', '1-2', 'ท่าเรือวัดขุนพรม', 'ท่าเรือวาสุกรี', 'เส้นทางแม่น้ำเจ้าพระยา', 10, 'Test', 2, '2024-09-25 06:31:44'),
(2, 'เรือน้ำท่วม', '660abd2c2a99e6da52e3dd00b6ae07b11727416540.jpg', 'Small', '1-4', 'วาสุกรี', 'หอรัตนไชย', 'ภาคกลาง', 100, 'Test', 2, '2024-09-25 06:34:28'),
(3, 'เรือสู้ชีวิต', '26bfbf1fb11a6a2b31928abc063dc0181727416632.jpg', 'Medium', '1-8', 'เกาะขาม', 'เกาะตายาย', 'เส้นทางสู่ทะเลตะวันตก', 250, 'Test', 2, '2024-09-25 06:35:33'),
(4, 'เรือเกาะล้าน', '7ac5bd980dbbc68164693cad0e43fbfd1727416688.jpg', 'Large', '1-15', 'เกาะล้าน', 'พัทยา', 'เส้นทางสู่ทะเลตะวันตก', 110, 'Test', 2, '2024-09-25 06:36:33'),
(5, 'เรือดารา', '983e18b7880ce3f7f39bed9aab911b341727416755.jpg', 'Large', '1-20', 'เกาะสีชัง', 'เกาะสมุย', 'เส้นทางสู่ทะเลตะวันตก', 20000, 'Bazare Motor Boat is run through motor having capacity 1-20 persons', 2, '2024-09-26 04:55:19'),
(6, 'เรือหาปลา', '660abd2c2a99e6da52e3dd00b6ae07b11727416787.jpg', 'Small', '1-6', 'พัทยา', 'เกาะเต่า', 'เส้นทางสู่ทะเลตะวันตก', 3500, '<br />\r\n<b>Warning</b>:  Undefined array key \"Description\" in <b>C:xampphtdocs2024bsadminedit-boat.php</b> on line <b>156</b><br />\r\n', 2, '2024-09-26 05:34:22'),
(7, 'เรือข้ามเกาะ', '7ac5bd980dbbc68164693cad0e43fbfd1727330194.jpg', 'Large', '50', 'เกาะล้าน', 'เกาะสีชัง', 'เส้นทางสู่ทะเลตะวันตก', 30, '<br />\r\n<b>Warning</b>:  Undefined array key \"Description\" in <b>C:xampphtdocs2024bsadminedit-boat.php</b> on line <b>156</b><br />\r\n', 2, '2024-09-26 05:35:12'),
(8, 'เรือสุดหรู', 'd41d8cd98f00b204e9800998ecf8427e1727332206', 'Large', '15', 'เกาะเต่า', 'เกาะล้าน', 'เส้นทางสู่ทะเลตะวันตก', 30000, '<br />\r\n<b>Warning</b>:  Undefined array key \"Description\" in <b>C:xampphtdocs2024bsadminedit-boat.php</b> on line <b>156</b><br />\r\n', 2, '2024-09-26 06:30:06'),
(9, 'เรือยอร์ชสุดหรู', 'd41d8cd98f00b204e9800998ecf8427e1727415693', 'Large', '1-20', 'เกาะช้าง', 'เกาะสมุย', 'เส้นทางสู่ทะเลตะวันตก', 5000, '<br />\r\n<b>Warning</b>:  Undefined array key \"Description\" in <b>C:xampphtdocs2024bsadminedit-boat.php</b> on line <b>156</b><br />\r\n', 2, '2024-09-27 05:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblbookings`
--

CREATE TABLE `tblbookings` (
  `ID` int(5) NOT NULL,
  `BoatID` int(10) DEFAULT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `EmailId` varchar(250) DEFAULT NULL,
  `PhoneNumber` bigint(12) DEFAULT NULL,
  `BookingDateFrom` varchar(250) DEFAULT NULL,
  `BookingDateTo` varchar(250) DEFAULT NULL,
  `BookingTime` varchar(100) DEFAULT NULL,
  `NumnerofPeople` int(5) DEFAULT NULL,
  `Notes` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` varchar(250) DEFAULT NULL,
  `BookingStatus` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbookings`
--

INSERT INTO `tblbookings` (`ID`, `BoatID`, `BookingNumber`, `FullName`, `EmailId`, `PhoneNumber`, `BookingDateFrom`, `BookingDateTo`, `BookingTime`, `NumnerofPeople`, `Notes`, `postingDate`, `AdminRemark`, `BookingStatus`, `UpdationDate`) VALUES
(1, 4, 2147483647, 'Anuj kumar', 'anujk@gmail.com', 1233211230, '2024-10-15', '2024-10-17', '10:00', 5, 'NA', '2024-10-08 17:14:58', 'NA', 'Accepted', '2024-10-10 17:46:17'),
(2, 2, 2147483647, 'Garima', 'garima123@gmail.com', 1231231230, '2024-11-01', '2024-11-05', '11:30', 4, 'NA', '2024-10-11 14:57:50', NULL, NULL, '2024-10-11 14:57:50'),
(4, 6, 5811679355, 'John ', 'john12@gmail.com', 4566541230, '2024-11-08', '2024-11-09', '10:30', 4, 'NA', '2024-10-14 15:11:02', 'Booking Appoved', 'Accepted', '2024-10-14 15:11:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblboat`
--
ALTER TABLE `tblboat`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbookings`
--
ALTER TABLE `tblbookings`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `bid` (`BoatID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblboat`
--
ALTER TABLE `tblboat`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblbookings`
--
ALTER TABLE `tblbookings`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblbookings`
--
ALTER TABLE `tblbookings`
  ADD CONSTRAINT `bid` FOREIGN KEY (`BoatID`) REFERENCES `tblboat` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
