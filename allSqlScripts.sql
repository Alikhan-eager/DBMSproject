-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 12:01 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `User_id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Contact` bigint(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Staff_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`User_id`, `Name`, `Contact`, `Email`, `Staff_id`) VALUES
(0, 'Name', 0, 'Email', 0),
(1, 'Marthena', 1727007599, 'mollett0@parallels.com', 45),
(2, 'Devonne', 3096719993, 'dineson1@paginegialle.it', 75),
(3, 'Guthry', 9713794692, 'gtaffie2@census.gov', 10);

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Bill_No` int(11) NOT NULL,
  `Customer_id` int(11) DEFAULT NULL,
  `Total_Room_Charges_$` int(11) DEFAULT NULL,
  `Total_Food_Charges_$` int(11) DEFAULT NULL,
  `Laundry_Charges_$` int(11) DEFAULT NULL,
  `Service_Tax_$` int(11) DEFAULT NULL,
  `Total_Paid_$` int(11) GENERATED ALWAYS AS (`Total_Room_Charges_$` + `Total_Food_Charges_$` + `Laundry_Charges_$` + `Service_Tax_$`) VIRTUAL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`Bill_No`, `Customer_id`, `Total_Room_Charges_$`, `Total_Food_Charges_$`, `Laundry_Charges_$`, `Service_Tax_$`) VALUES
(0, 0, 0, 0, 0, 0),
(1, 8, 141, 49, 11, 9),
(2, 27, 201, 57, 12, 5),
(3, 15, 159, 53, 5, 5),
(4, 73, 141, 49, 15, 2),
(5, 53, 207, 82, 5, 8),
(6, 43, 117, 82, 12, 9),
(7, 14, 185, 72, 19, 3),
(8, 56, 111, 11, 13, 10),
(9, 76, 206, 27, 8, 10),
(10, 29, 126, 96, 13, 10),
(11, 45, 198, 15, 9, 4),
(12, 95, 168, 57, 11, 5),
(13, 2, 179, 91, 19, 7),
(14, 44, 217, 48, 13, 4),
(15, 88, 188, 93, 16, 10),
(16, 36, 204, 44, 13, 5),
(17, 22, 103, 94, 6, 4),
(18, 71, 135, 96, 7, 6),
(19, 99, 195, 79, 8, 6),
(20, 87, 142, 57, 15, 3),
(21, 54, 115, 42, 17, 3),
(22, 69, 153, 49, 18, 4),
(23, 39, 184, 90, 11, 6),
(24, 40, 113, 85, 6, 4),
(25, 13, 199, 20, 11, 2),
(26, 19, 192, 90, 17, 10),
(27, 18, 202, 60, 10, 9),
(28, 55, 175, 52, 13, 7),
(29, 42, 132, 64, 14, 5),
(30, 59, 220, 67, 11, 5),
(31, 51, 200, 93, 6, 7),
(32, 78, 147, 12, 15, 1),
(33, 90, 216, 39, 15, 1),
(34, 46, 235, 65, 7, 1),
(35, 66, 214, 35, 8, 6),
(36, 65, 137, 41, 20, 5),
(37, 11, 150, 6, 20, 7),
(38, 100, 120, 71, 6, 7),
(39, 61, 162, 5, 5, 9),
(40, 98, 130, 72, 19, 7),
(41, 80, 206, 67, 6, 7),
(42, 9, 123, 50, 18, 1),
(43, 64, 100, 49, 18, 1),
(44, 7, 213, 53, 5, 9),
(45, 10, 114, 65, 10, 10),
(46, 82, 138, 83, 15, 6),
(47, 74, 231, 54, 16, 3),
(48, 52, 151, 9, 5, 6),
(49, 1, 200, 67, 20, 3),
(50, 83, 119, 9, 9, 3),
(51, 79, 182, 9, 7, 4),
(52, 63, 146, 70, 13, 6),
(53, 89, 235, 53, 10, 9),
(54, 93, 222, 75, 9, 5),
(55, 60, 217, 90, 13, 3),
(56, 94, 233, 64, 16, 2),
(57, 77, 209, 93, 20, 1),
(58, 62, 211, 65, 13, 8),
(59, 38, 152, 29, 13, 9),
(60, 21, 208, 71, 11, 6),
(61, 75, 195, 42, 14, 6),
(62, 67, 135, 77, 18, 6),
(63, 34, 163, 91, 14, 3),
(64, 81, 208, 97, 16, 3),
(65, 24, 210, 32, 18, 4),
(66, 31, 227, 37, 6, 7),
(67, 23, 201, 81, 10, 10),
(68, 91, 161, 26, 5, 2),
(69, 72, 184, 80, 7, 5),
(70, 84, 144, 95, 6, 6),
(71, 48, 116, 72, 15, 7),
(72, 5, 183, 24, 8, 1),
(73, 49, 194, 37, 5, 10),
(74, 47, 100, 7, 12, 7),
(75, 68, 189, 20, 8, 1),
(76, 26, 189, 88, 13, 4),
(77, 6, 105, 88, 10, 3),
(78, 20, 219, 15, 14, 1),
(79, 57, 237, 47, 6, 4),
(80, 41, 224, 73, 16, 7),
(81, 12, 142, 13, 18, 4),
(82, 35, 237, 22, 14, 7),
(83, 37, 110, 64, 11, 7),
(84, 33, 208, 95, 13, 2),
(85, 16, 224, 90, 20, 5),
(86, 25, 107, 77, 17, 9),
(87, 85, 179, 99, 18, 6),
(88, 28, 239, 74, 8, 6),
(89, 50, 175, 61, 15, 8),
(90, 96, 148, 92, 11, 5),
(91, 32, 139, 62, 7, 7),
(92, 17, 147, 49, 14, 4),
(93, 3, 190, 64, 6, 5),
(94, 30, 158, 79, 10, 1),
(95, 4, 245, 85, 7, 8),
(96, 97, 188, 70, 5, 4),
(97, 92, 166, 91, 12, 4),
(98, 86, 115, 100, 5, 6),
(99, 70, 240, 72, 12, 2),
(100, 3, 172, 49, 14, 8),
(102, 2, 50, 50, 50, 100),
(103, 2, 30, 24, 30, 30),
(104, 2, 10, 10, 10, 10),
(105, 2, 180, 200, 180, 190);

--
-- Triggers `bill`
--
DELIMITER $$
CREATE TRIGGER `skidaTaxi` BEFORE INSERT ON `bill` FOR EACH ROW if new.Service_Tax_$ > 5 then
set new.Service_Tax_$   = new.Service_Tax_$   * 0.95;
end IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `skidkaLaundry` BEFORE INSERT ON `bill` FOR EACH ROW if new.Laundry_Charges_$ > 15 then
set new.Laundry_Charges_$  = new.Laundry_Charges_$  * 0.9;
end IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `skidkaRoom` BEFORE INSERT ON `bill` FOR EACH ROW if new.Total_Room_Charges_$ > 50 then
set new.Total_Room_Charges_$  = new.Total_Room_Charges_$  * 0.9;
end IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Booking_id` int(11) NOT NULL,
  `Check_in_date` date DEFAULT NULL,
  `Check_out_date` date DEFAULT NULL,
  `No_of_guests` int(11) DEFAULT NULL,
  `Booking_Date` date DEFAULT NULL,
  `Hotel_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Booking_id`, `Check_in_date`, `Check_out_date`, `No_of_guests`, `Booking_Date`, `Hotel_id`) VALUES
(0, '0000-00-00', '0000-00-00', 0, '0000-00-00', 0),
(1, '2021-12-12', '2021-12-18', 4, '2021-12-07', 1),
(2, '2021-12-10', '2021-12-21', 3, '2021-12-05', 1),
(3, '2021-12-12', '2021-12-19', 5, '2021-12-05', 1),
(4, '2021-12-10', '2021-12-23', 1, '2021-12-05', 1),
(5, '2021-12-15', '2021-12-17', 5, '2021-12-06', 1),
(6, '2021-12-13', '2021-12-22', 1, '2021-12-08', 1),
(7, '2021-12-12', '2021-12-18', 1, '2021-12-01', 1),
(8, '2021-12-11', '2021-12-21', 1, '2021-12-06', 1),
(9, '2021-12-12', '2021-12-17', 4, '2021-12-07', 1),
(10, '2021-12-13', '2021-12-21', 4, '2021-12-04', 1),
(11, '2021-12-15', '2021-12-19', 1, '2021-12-05', 1),
(12, '2021-12-11', '2021-12-23', 1, '2021-12-03', 1),
(13, '2021-12-11', '2021-12-21', 3, '2021-12-06', 1),
(14, '2021-12-15', '2021-12-19', 2, '2021-12-02', 1),
(15, '2021-12-11', '2021-12-23', 5, '2021-12-01', 1),
(16, '2021-12-10', '2021-12-18', 5, '2021-12-09', 1),
(17, '2021-12-15', '2021-12-22', 2, '2021-12-07', 1),
(18, '2021-12-16', '2021-12-21', 1, '2021-12-04', 1),
(19, '2021-12-14', '2021-12-21', 5, '2021-12-04', 1),
(20, '2021-12-11', '2021-12-18', 3, '2021-12-06', 1),
(21, '2021-12-13', '2021-12-18', 5, '2021-12-01', 1),
(22, '2021-12-14', '2021-12-20', 3, '2021-12-07', 1),
(23, '2021-12-11', '2021-12-22', 5, '2021-12-01', 1),
(24, '2021-12-12', '2021-12-21', 2, '2021-12-09', 1),
(25, '2021-12-14', '2021-12-20', 4, '2021-12-03', 1),
(26, '2021-12-15', '2021-12-17', 3, '2021-12-03', 1),
(27, '2021-12-10', '2021-12-17', 4, '2021-12-01', 1),
(28, '2021-12-11', '2021-12-18', 2, '2021-12-08', 1),
(29, '2021-12-16', '2021-12-19', 2, '2021-12-05', 1),
(30, '2021-12-16', '2021-12-21', 3, '2021-12-08', 1),
(31, '2021-12-10', '2021-12-22', 2, '2021-12-02', 1),
(32, '2021-12-16', '2021-12-22', 1, '2021-12-09', 1),
(33, '2021-12-13', '2021-12-22', 3, '2021-12-03', 1),
(34, '2021-12-10', '2021-12-21', 5, '2021-12-07', 1),
(35, '2021-12-15', '2021-12-19', 2, '2021-12-07', 1),
(36, '2021-12-10', '2021-12-21', 4, '2021-12-05', 1),
(37, '2021-12-16', '2021-12-17', 3, '2021-12-02', 1),
(38, '2021-12-12', '2021-12-18', 3, '2021-12-02', 1),
(39, '2021-12-14', '2021-12-21', 5, '2021-12-06', 1),
(40, '2021-12-10', '2021-12-20', 5, '2021-12-09', 1),
(41, '2021-12-10', '2021-12-18', 5, '2021-12-06', 1),
(42, '2021-12-10', '2021-12-22', 1, '2021-12-04', 1),
(43, '2021-12-16', '2021-12-23', 2, '2021-12-05', 1),
(44, '2021-12-12', '2021-12-17', 5, '2021-12-06', 1),
(45, '2021-12-13', '2021-12-23', 4, '2021-12-02', 1),
(46, '2021-12-15', '2021-12-20', 2, '2021-12-09', 1),
(47, '2021-12-15', '2021-12-18', 3, '2021-12-01', 1),
(48, '2021-12-13', '2021-12-18', 2, '2021-12-03', 1),
(49, '2021-12-12', '2021-12-20', 4, '2021-12-08', 1),
(50, '2021-12-14', '2021-12-22', 4, '2021-12-08', 1),
(51, '2021-12-10', '2021-12-22', 3, '2021-12-08', 1),
(52, '2021-12-10', '2021-12-19', 5, '2021-12-03', 1),
(53, '2021-12-11', '2021-12-22', 3, '2021-12-05', 1),
(54, '2021-12-11', '2021-12-23', 3, '2021-12-02', 1),
(55, '2021-12-12', '2021-12-21', 1, '2021-12-01', 1),
(56, '2021-12-13', '2021-12-21', 3, '2021-12-04', 1),
(57, '2021-12-10', '2021-12-22', 5, '2021-12-07', 1),
(58, '2021-12-12', '2021-12-23', 4, '2021-12-02', 1),
(59, '2021-12-16', '2021-12-20', 1, '2021-12-05', 1),
(60, '2021-12-11', '2021-12-22', 1, '2021-12-02', 1),
(61, '2021-12-16', '2021-12-22', 1, '2021-12-01', 1),
(62, '2021-12-10', '2021-12-21', 3, '2021-12-06', 1),
(63, '2021-12-10', '2021-12-20', 1, '2021-12-07', 1),
(64, '2021-12-16', '2021-12-19', 1, '2021-12-02', 1),
(65, '2021-12-10', '2021-12-20', 5, '2021-12-01', 1),
(66, '2021-12-10', '2021-12-22', 3, '2021-12-05', 1),
(67, '2021-12-11', '2021-12-17', 2, '2021-12-09', 1),
(68, '2021-12-14', '2021-12-20', 3, '2021-12-07', 1),
(69, '2021-12-12', '2021-12-20', 1, '2021-12-07', 1),
(70, '2021-12-12', '2021-12-17', 1, '2021-12-02', 1),
(71, '2021-12-12', '2021-12-21', 3, '2021-12-09', 1),
(72, '2021-12-13', '2021-12-20', 3, '2021-12-08', 1),
(73, '2021-12-16', '2021-12-23', 1, '2021-12-04', 1),
(74, '2021-12-13', '2021-12-19', 1, '2021-12-09', 1),
(75, '2021-12-13', '2021-12-21', 4, '2021-12-03', 1),
(76, '2021-12-11', '2021-12-17', 3, '2021-12-08', 1),
(77, '2021-12-14', '2021-12-17', 2, '2021-12-07', 1),
(78, '2021-12-15', '2021-12-21', 5, '2021-12-08', 1),
(79, '2021-12-12', '2021-12-22', 5, '2021-12-03', 1),
(80, '2021-12-12', '2021-12-23', 2, '2021-12-07', 1),
(81, '2021-12-11', '2021-12-19', 5, '2021-12-06', 1),
(82, '2021-12-14', '2021-12-20', 2, '2021-12-04', 1),
(83, '2021-12-15', '2021-12-17', 2, '2021-12-02', 1),
(84, '2021-12-14', '2021-12-21', 5, '2021-12-03', 1),
(85, '2021-12-16', '2021-12-19', 2, '2021-12-09', 1),
(86, '2021-12-15', '2021-12-19', 2, '2021-12-01', 1),
(87, '2021-12-14', '2021-12-17', 3, '2021-12-06', 1),
(88, '2021-12-14', '2021-12-20', 4, '2021-12-01', 1),
(89, '2021-12-15', '2021-12-19', 4, '2021-12-04', 1),
(90, '2021-12-12', '2021-12-20', 1, '2021-12-02', 1),
(91, '2021-12-16', '2021-12-22', 4, '2021-12-04', 1),
(92, '2021-12-14', '2021-12-18', 4, '2021-12-03', 1),
(93, '2021-12-15', '2021-12-20', 2, '2021-12-07', 1),
(94, '2021-12-10', '2021-12-21', 1, '2021-12-06', 1),
(95, '2021-12-15', '2021-12-22', 1, '2021-12-02', 1),
(96, '2021-12-10', '2021-12-23', 2, '2021-12-07', 1),
(97, '2021-12-14', '2021-12-19', 2, '2021-12-07', 1),
(98, '2021-12-14', '2021-12-23', 5, '2021-12-09', 1),
(99, '2021-12-15', '2021-12-21', 1, '2021-12-03', 1),
(100, '2021-12-13', '2021-12-23', 5, '2021-12-09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cancellation`
--

CREATE TABLE `cancellation` (
  `Cancellation_id` int(11) NOT NULL,
  `Customer_id` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Cancellation_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cancellation`
--

INSERT INTO `cancellation` (`Cancellation_id`, `Customer_id`, `Amount`, `Cancellation_Date`) VALUES
(0, 0, 0, '0000-00-00'),
(1, 47, 2, '2021-12-05'),
(2, 67, 1, '2021-12-02'),
(3, 36, 2, '2021-12-07'),
(4, 71, 2, '2021-12-04'),
(5, 34, 1, '2021-12-06'),
(6, 85, 3, '2021-12-04'),
(7, 99, 1, '2021-12-01'),
(8, 81, 2, '2021-12-03'),
(9, 50, 3, '2021-12-09'),
(10, 9, 2, '2021-12-04');

-- --------------------------------------------------------

--
-- Table structure for table `credit_card`
--

CREATE TABLE `credit_card` (
  `Credit_Card_id` int(11) NOT NULL,
  `Bill_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `credit_card`
--

INSERT INTO `credit_card` (`Credit_Card_id`, `Bill_id`, `Name`, `Code`) VALUES
(0, 0, 'Name', 0),
(1, 4, 'Jusan', 42254),
(2, 13, 'HalykBank', 42291),
(3, 16, 'Kaspi', 63629),
(4, 8, 'ForteBank', 61941),
(5, 15, 'Jusan', 64616),
(6, 17, 'Kaspi', 54868),
(7, 10, 'Kaspi', 68405),
(8, 14, 'HalykBank', 36987),
(9, 2, 'Kaspi', 60429),
(10, 7, 'ForteBank', 11822),
(11, 1, 'HalykBank', 11673),
(12, 20, 'HalykBank', 24509),
(13, 19, 'Kaspi', 58596),
(14, 18, 'Jusan', 11523),
(15, 9, 'Jusan', 43742),
(16, 11, 'Kaspi', 76519),
(17, 6, 'Kaspi', 43742),
(18, 3, 'HalykBank', 53499),
(19, 5, 'Kaspi', 59667),
(20, 12, 'Jusan', 63187),
(21, 5, 'HalykBank', 54569),
(22, 2, 'Kaspi', 43063),
(23, 8, 'ForteBank', 68462),
(24, 19, 'ForteBank', 13537),
(25, 9, 'Kaspi', 12488),
(26, 3, 'HalykBank', 52380),
(27, 11, 'ForteBank', 113),
(28, 12, 'Jusan', 36800),
(29, 17, 'HalykBank', 185),
(30, 20, 'Kaspi', 63629),
(31, 1, 'Jusan', 42361),
(32, 14, 'HalykBank', 10819),
(33, 4, 'HalykBank', 60258),
(34, 7, 'HalykBank', 98132),
(35, 18, 'Kaspi', 17478),
(36, 6, 'HalykBank', 36987),
(37, 10, 'Kaspi', 61481),
(38, 13, 'HalykBank', 55154),
(39, 16, 'Jusan', 33992),
(40, 15, 'Jusan', 60429),
(41, 1, 'Jusan', 68645),
(42, 17, 'HalykBank', 51824),
(43, 10, 'ForteBank', 11673),
(44, 18, 'ForteBank', 68382),
(45, 20, 'Jusan', 53603),
(46, 8, 'HalykBank', 58118),
(47, 16, 'Kaspi', 52810),
(48, 7, 'ForteBank', 49288),
(49, 6, 'HalykBank', 904),
(50, 4, 'HalykBank', 58414),
(51, 9, 'Kaspi', 61715),
(52, 5, 'ForteBank', 363),
(53, 2, 'ForteBank', 11822),
(54, 14, 'Jusan', 53808),
(55, 11, 'Kaspi', 30142),
(56, 15, 'HalykBank', 76097),
(57, 19, 'Jusan', 10544),
(58, 13, 'ForteBank', 54868),
(59, 3, 'Kaspi', 54181),
(60, 12, 'Kaspi', 58668),
(61, 1, 'Kaspi', 51346),
(62, 11, 'Kaspi', 35356),
(63, 10, 'Jusan', 50786),
(64, 9, 'ForteBank', 66915),
(65, 19, 'Jusan', 49999),
(66, 5, 'Jusan', 69),
(67, 20, 'Jusan', 145),
(68, 7, 'Kaspi', 50988),
(69, 13, 'Kaspi', 65585),
(70, 14, 'Jusan', 36987),
(71, 16, 'Kaspi', 68169),
(72, 4, 'Jusan', 49035),
(73, 6, 'Kaspi', 51672),
(74, 8, 'Kaspi', 16590),
(75, 15, 'Kaspi', 22431),
(76, 2, 'ForteBank', 13925),
(77, 3, 'ForteBank', 36987),
(78, 18, 'HalykBank', 63777),
(79, 12, 'ForteBank', 68016),
(80, 17, 'Kaspi', 16903),
(81, 19, 'Jusan', 65121),
(82, 6, 'ForteBank', 527),
(83, 15, 'Jusan', 49349),
(84, 7, 'Jusan', 55714),
(85, 17, 'ForteBank', 58118),
(86, 16, 'ForteBank', 68645),
(87, 14, 'ForteBank', 36800),
(88, 4, 'ForteBank', 496),
(89, 13, 'ForteBank', 60429),
(90, 11, 'HalykBank', 61715),
(91, 10, 'Jusan', 59779),
(92, 9, 'Jusan', 11822),
(93, 2, 'ForteBank', 24338),
(94, 5, 'Kaspi', 378),
(95, 8, 'Jusan', 51141),
(96, 1, 'Kaspi', 57520),
(97, 20, 'ForteBank', 53808),
(98, 12, 'Jusan', 47335),
(99, 18, 'HalykBank', 37205),
(100, 3, 'ForteBank', 49349);

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `Discount_id` int(11) NOT NULL,
  `Bill_No` int(11) DEFAULT NULL,
  `Percent` int(11) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`Discount_id`, `Bill_No`, `Percent`, `Amount`) VALUES
(0, 0, 0, 0),
(1, 6, 79, 5),
(2, 3, 79, 5),
(3, 1, 67, 1),
(4, 2, 68, 3),
(5, 9, 71, 5),
(6, 16, 43, 3),
(7, 10, 57, 1),
(8, 17, 65, 4),
(9, 12, 17, 4),
(10, 11, 53, 2),
(11, 15, 96, 2),
(12, 8, 42, 4),
(13, 5, 94, 5),
(14, 18, 71, 3),
(15, 13, 64, 3),
(16, 7, 18, 4),
(17, 19, 11, 5),
(18, 14, 16, 5),
(19, 20, 25, 3),
(20, 4, 16, 3),
(21, 9, 100, 2),
(22, 20, 40, 1),
(23, 4, 52, 3),
(24, 10, 22, 4),
(25, 6, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `food_service`
--

CREATE TABLE `food_service` (
  `Food_id` int(11) NOT NULL,
  `Booking_id` int(11) NOT NULL,
  `Item_name` varchar(50) NOT NULL,
  `Rate` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Total_Food_Charges` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_service`
--

INSERT INTO `food_service` (`Food_id`, `Booking_id`, `Item_name`, `Rate`, `Quantity`, `Total_Food_Charges`) VALUES
(0, 0, 'Item_name', 0, 0, 0),
(1, 86, 'Stake, Vino', 3, 4, 17),
(2, 6, 'Stake, Vino', 3, 3, 17),
(3, 26, 'Kuyrdak, Chai', 3, 3, 17),
(4, 13, 'Palau, Chai', 3, 2, 17),
(5, 9, 'Manta, Cola', 4, 2, 17),
(6, 7, 'Palau, Cola', 5, 4, 17),
(7, 90, 'Stake, Chai', 3, 1, 17),
(8, 42, 'Stake, Chai', 4, 4, 17),
(9, 57, 'Palau, Cola', 3, 3, 17),
(10, 93, 'Palau, Cola', 3, 1, 17),
(11, 34, 'Pelmen, Nan', 4, 3, 17),
(12, 94, 'Palau, Cola', 5, 4, 17),
(13, 82, 'Stake, Vino', 5, 4, 17),
(14, 37, 'Palau, Chai', 5, 3, 17),
(15, 40, 'Stake, Vino', 4, 3, 17),
(16, 78, 'Kuyrdak, Chai', 5, 2, 17),
(17, 79, 'Palau, Chai', 5, 4, 17),
(18, 51, 'Stake, Chai', 4, 3, 17),
(19, 70, 'Palau, Cola', 4, 1, 17),
(20, 2, 'Pelmen, Nan', 5, 1, 17),
(21, 71, 'Pelmen, Nan', 5, 1, 17),
(22, 96, 'Manta, Cola', 4, 4, 17),
(23, 67, 'Stake, Vino', 5, 3, 17),
(24, 83, 'Stake, Chai', 3, 2, 17),
(25, 46, 'Palau, Chai', 4, 3, 17),
(26, 91, 'Palau, Chai', 3, 1, 17),
(27, 66, 'Kuyrdak, Chai', 4, 2, 17),
(28, 64, 'Stake, Chai', 5, 2, 17),
(29, 100, 'Palau, Cola', 4, 2, 17),
(30, 12, 'Manta, Cola', 4, 4, 17),
(31, 14, 'Stake, Chai', 3, 1, 17),
(32, 43, 'Kuyrdak, Chai', 5, 3, 17),
(33, 8, 'Pelmen, Nan', 5, 3, 17),
(34, 97, 'Stake, Chai', 3, 2, 17),
(35, 60, 'Stake, Chai', 4, 2, 17),
(36, 38, 'Palau, Chai', 4, 4, 17),
(37, 1, 'Pelmen, Nan', 3, 3, 17),
(38, 61, 'Palau, Chai', 5, 4, 17),
(39, 74, 'Pelmen, Nan', 3, 3, 17),
(40, 85, 'Manta, Cola', 4, 4, 17),
(41, 4, 'Stake, Vino', 4, 3, 17),
(42, 81, 'Manta, Cola', 5, 2, 17),
(43, 98, 'Stake, Chai', 4, 2, 17),
(44, 56, 'Stake, Chai', 3, 3, 17),
(45, 36, 'Stake, Vino', 5, 3, 17),
(46, 73, 'Stake, Vino', 5, 1, 17),
(47, 80, 'Stake, Vino', 4, 3, 17),
(48, 11, 'Manta, Cola', 5, 4, 17),
(49, 62, 'Stake, Vino', 5, 3, 17),
(50, 77, 'Palau, Chai', 4, 2, 17),
(51, 48, 'Palau, Cola', 3, 4, 17),
(52, 19, 'Kuyrdak, Chai', 4, 2, 17),
(53, 20, 'Pelmen, Nan', 4, 4, 17),
(54, 29, 'Palau, Chai', 5, 2, 17),
(55, 16, 'Manta, Cola', 3, 4, 17),
(56, 54, 'Palau, Chai', 4, 4, 17),
(57, 52, 'Stake, Vino', 5, 3, 17),
(58, 3, 'Stake, Vino', 5, 3, 17),
(59, 24, 'Palau, Cola', 4, 1, 17),
(60, 55, 'Palau, Chai', 4, 4, 17),
(61, 58, 'Palau, Cola', 3, 3, 17),
(62, 89, 'Manta, Cola', 5, 2, 17),
(63, 25, 'Stake, Vino', 4, 2, 17),
(64, 15, 'Stake, Chai', 4, 1, 17),
(65, 75, 'Kuyrdak, Chai', 3, 4, 17),
(66, 88, 'Stake, Vino', 3, 4, 17),
(67, 45, 'Pelmen, Nan', 3, 3, 17),
(68, 5, 'Palau, Chai', 5, 1, 17),
(69, 69, 'Palau, Chai', 3, 4, 17),
(70, 68, 'Manta, Cola', 5, 3, 17),
(71, 50, 'Palau, Chai', 3, 3, 17),
(72, 33, 'Stake, Chai', 5, 4, 17),
(73, 63, 'Stake, Chai', 4, 3, 17),
(74, 17, 'Stake, Vino', 3, 2, 17),
(75, 41, 'Kuyrdak, Chai', 3, 4, 17),
(76, 47, 'Pelmen, Nan', 5, 1, 17),
(77, 31, 'Palau, Chai', 4, 2, 17),
(78, 23, 'Pelmen, Nan', 5, 4, 17),
(79, 18, 'Manta, Cola', 5, 3, 17),
(80, 95, 'Manta, Cola', 3, 4, 17),
(81, 32, 'Pelmen, Nan', 4, 3, 17),
(82, 21, 'Pelmen, Nan', 4, 3, 17),
(83, 35, 'Stake, Chai', 5, 3, 17),
(84, 87, 'Palau, Cola', 3, 4, 17),
(85, 10, 'Manta, Cola', 3, 3, 17),
(86, 72, 'Manta, Cola', 3, 2, 17),
(87, 92, 'Stake, Vino', 3, 4, 17),
(88, 27, 'Palau, Chai', 5, 4, 17),
(89, 22, 'Kuyrdak, Chai', 3, 4, 17),
(90, 84, 'Palau, Cola', 3, 4, 17),
(91, 30, 'Kuyrdak, Chai', 3, 1, 17),
(92, 99, 'Pelmen, Nan', 4, 3, 17),
(93, 53, 'Palau, Chai', 4, 1, 17),
(94, 39, 'Stake, Chai', 3, 4, 17),
(95, 65, 'Manta, Cola', 5, 3, 17),
(96, 28, 'Palau, Chai', 5, 2, 17),
(97, 76, 'Palau, Cola', 3, 3, 17),
(98, 44, 'Stake, Chai', 4, 3, 17),
(99, 59, 'Kuyrdak, Chai', 5, 1, 17),
(100, 48, 'Stake, Vino', 4, 3, 17);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `Hotel_id` int(11) NOT NULL,
  `Hotel_name` varchar(50) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Contact` bigint(20) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`Hotel_id`, `Hotel_name`, `Location`, `Contact`, `Email`) VALUES
(0, 'Hotel_name', 'Location', 0, 'Email'),
(1, 'Rixos', '81 Rieder Center', 5871269259, 'flinneman0@wufoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_services`
--

CREATE TABLE `hotel_services` (
  `Service_id` int(11) NOT NULL,
  `Service_name` varchar(50) NOT NULL,
  `Service_cost` int(11) NOT NULL,
  `Booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_services`
--

INSERT INTO `hotel_services` (`Service_id`, `Service_name`, `Service_cost`, `Booking_id`) VALUES
(0, 'Service_name', 0, 0),
(1, 'Perice', 54, 67),
(2, 'Josee', 8, 61),
(3, 'Garret', 54, 59),
(4, 'Stephi', 47, 25),
(5, 'Libbey', 75, 91),
(6, 'Ingamar', 13, 22),
(7, 'Colan', 38, 37),
(8, 'Berton', 52, 51),
(9, 'Ritchie', 48, 15),
(10, 'Michaeline', 63, 82),
(11, 'Torrence', 21, 95),
(12, 'Prue', 81, 18),
(13, 'Vlad', 94, 49),
(14, 'Jana', 58, 47),
(15, 'Ronni', 13, 33),
(16, 'Bevvy', 32, 12),
(17, 'Murdoch', 55, 38),
(18, 'Kathi', 35, 64),
(19, 'Jayme', 13, 21),
(20, 'Pearce', 63, 23),
(21, 'Monroe', 92, 1),
(22, 'Winslow', 86, 28),
(23, 'Milly', 23, 89),
(24, 'Ashia', 92, 90),
(25, 'Norbert', 80, 100),
(26, 'Davidson', 52, 74),
(27, 'Ann-marie', 16, 20),
(28, 'Zara', 18, 43),
(29, 'Rhea', 87, 76),
(30, 'Karilynn', 32, 19),
(31, 'Leann', 73, 62),
(32, 'Evita', 96, 39),
(33, 'Catarina', 47, 60),
(34, 'Junia', 55, 77),
(35, 'Griffy', 82, 10),
(36, 'Boyd', 47, 88),
(37, 'Alejandra', 73, 73),
(38, 'Terza', 11, 31),
(39, 'Blisse', 75, 93),
(40, 'Othello', 80, 26),
(41, 'Zitella', 15, 97),
(42, 'Seumas', 3, 30),
(43, 'Farlie', 18, 92),
(44, 'Manda', 56, 44),
(45, 'Gregg', 77, 50),
(46, 'Dee', 53, 81),
(47, 'Joelly', 55, 75),
(48, 'Harv', 23, 6),
(49, 'Salmon', 28, 57),
(50, 'Rossie', 65, 63),
(51, 'Rollins', 67, 80),
(52, 'Chaddy', 63, 66),
(53, 'Mead', 75, 71),
(54, 'Raymond', 6, 46),
(55, 'Darby', 40, 42),
(56, 'Bruno', 77, 56),
(57, 'Anderson', 77, 54),
(58, 'Kiel', 29, 85),
(59, 'Edna', 29, 17),
(60, 'Delores', 26, 9),
(61, 'Hymie', 22, 99),
(62, 'Zorine', 71, 52),
(63, 'Adair', 21, 40),
(64, 'Gabriela', 39, 7),
(65, 'Jared', 59, 69),
(66, 'Gregor', 45, 70),
(67, 'Calvin', 30, 94),
(68, 'Jasun', 44, 29),
(69, 'Brand', 81, 86),
(70, 'Harv', 56, 3),
(71, 'Paolo', 57, 4),
(72, 'Janie', 41, 32),
(73, 'Blithe', 65, 65),
(74, 'Lynelle', 18, 2),
(75, 'Thorpe', 48, 24),
(76, 'Catie', 51, 96),
(77, 'Marylynne', 25, 79),
(78, 'Brander', 59, 11),
(79, 'Caty', 25, 78),
(80, 'Gris', 12, 83),
(81, 'Renell', 37, 5),
(82, 'Moise', 98, 41),
(83, 'Hertha', 6, 27),
(84, 'Christiano', 61, 68),
(85, 'Ferdinanda', 25, 45),
(86, 'Perle', 56, 48),
(87, 'Rosemary', 23, 72),
(88, 'Amandie', 94, 53),
(89, 'Helena', 61, 84),
(90, 'Laetitia', 27, 87),
(91, 'Georges', 29, 14),
(92, 'Marjory', 38, 16),
(93, 'Rolph', 25, 8),
(94, 'Anny', 60, 35),
(95, 'Hart', 66, 55),
(96, 'Johny', 3, 34),
(97, 'Wat', 13, 98),
(98, 'Yance', 4, 58),
(99, 'Ilka', 5, 93),
(100, 'Wakefield', 49, 80);

-- --------------------------------------------------------

--
-- Table structure for table `laundry`
--

CREATE TABLE `laundry` (
  `Laundy_id` int(11) NOT NULL,
  `Booking_id` int(11) NOT NULL,
  `Laundry_charges` int(11) NOT NULL,
  `Laundry_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laundry`
--

INSERT INTO `laundry` (`Laundy_id`, `Booking_id`, `Laundry_charges`, `Laundry_amount`) VALUES
(0, 0, 0, 0),
(1, 32, 17, 3),
(2, 4, 20, 7),
(3, 46, 9, 8),
(4, 3, 9, 3),
(5, 54, 15, 5),
(6, 21, 14, 7),
(7, 42, 7, 6),
(8, 18, 7, 8),
(9, 87, 7, 6),
(10, 25, 16, 4),
(11, 90, 9, 4),
(12, 70, 14, 3),
(13, 29, 16, 4),
(14, 75, 15, 2),
(15, 85, 16, 2),
(16, 67, 10, 6),
(17, 84, 19, 6),
(18, 7, 11, 1),
(19, 5, 10, 5),
(20, 24, 5, 1),
(21, 79, 13, 6),
(22, 55, 5, 6),
(23, 56, 14, 7),
(24, 33, 20, 5),
(25, 73, 7, 3),
(26, 94, 20, 5),
(27, 23, 10, 6),
(28, 99, 11, 7),
(29, 43, 8, 4),
(30, 77, 11, 2),
(31, 61, 12, 4),
(32, 28, 14, 8),
(33, 20, 12, 6),
(34, 49, 11, 7),
(35, 76, 16, 4),
(36, 19, 10, 5),
(37, 74, 19, 6),
(38, 45, 19, 1),
(39, 41, 7, 6),
(40, 35, 9, 1),
(41, 13, 19, 6),
(42, 64, 9, 6),
(43, 26, 7, 3),
(44, 6, 19, 3),
(45, 100, 7, 5),
(46, 86, 17, 3),
(47, 72, 19, 2),
(48, 16, 8, 7),
(49, 34, 11, 4),
(50, 17, 20, 7),
(51, 92, 8, 2),
(52, 2, 13, 8),
(53, 22, 18, 2),
(54, 47, 17, 4),
(55, 40, 14, 3),
(56, 11, 17, 1),
(57, 15, 20, 3),
(58, 14, 9, 6),
(59, 1, 10, 7),
(60, 80, 15, 8),
(61, 27, 17, 8),
(62, 69, 6, 2),
(63, 53, 12, 4),
(64, 95, 7, 5),
(65, 60, 19, 2),
(66, 82, 20, 7),
(67, 58, 19, 6),
(68, 66, 18, 6),
(69, 65, 20, 3),
(70, 37, 17, 7),
(71, 88, 12, 8),
(72, 9, 11, 2),
(73, 98, 13, 5),
(74, 62, 12, 4),
(75, 50, 17, 8),
(76, 97, 12, 4),
(77, 57, 19, 1),
(78, 89, 6, 3),
(79, 68, 12, 8),
(80, 59, 5, 6),
(81, 71, 17, 7),
(82, 96, 14, 3),
(83, 8, 20, 7),
(84, 36, 13, 6),
(85, 10, 18, 5),
(86, 12, 14, 4),
(87, 31, 14, 8),
(88, 93, 16, 3),
(89, 38, 7, 6),
(90, 30, 11, 8),
(91, 83, 14, 7),
(92, 78, 12, 4),
(93, 48, 14, 7),
(94, 63, 19, 8),
(95, 91, 14, 2),
(96, 44, 18, 5),
(97, 39, 17, 1),
(98, 51, 11, 2),
(99, 52, 20, 6),
(100, 81, 9, 5);

-- --------------------------------------------------------

--
-- Table structure for table `new customer`
--

CREATE TABLE `new customer` (
  `Customer_id` int(11) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Contact` bigint(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new customer`
--

INSERT INTO `new customer` (`Customer_id`, `First_Name`, `Last_Name`, `Country`, `City`, `Contact`, `Email`, `Booking_id`) VALUES
(0, 'First_Name', 'Last_Name', 'Country', 'City', 0, 'Email', 0),
(1, 'Morten', 'Kleinstub', 'Russia', 'Kholmsk', 4472598919, 'mkleinstub0@naver.com', 31),
(2, 'Cortie', 'Webster', 'China', 'Gongnong', 5896743524, 'cwebster1@java.com', 63),
(3, 'Natalie', 'Nott', 'Indonesia', 'Kampungmasjid', 4572481525, 'nnott2@elegantthemes.com', 90),
(4, 'Margot', 'Chicken', 'Dominican Republic', 'Pizarrete', 9967028413, 'mchicken3@phoca.cz', 65),
(5, 'Amalea', 'Lorain', 'Albania', 'Arrën', 7631813286, 'alorain4@timesonline.co.uk', 2),
(6, 'Leone', 'Manske', 'Peru', 'La Unión', 4627165251, 'lmanske5@github.io', 48),
(7, 'Avril', 'Torel', 'Indonesia', 'Winduraja', 3493108165, 'atorel6@umn.edu', 12),
(8, 'Siffre', 'Wackley', 'Indonesia', 'Gadang', 2381913383, 'swackley7@issuu.com', 56),
(9, 'Berni', 'Rawstron', 'Bulgaria', 'Rakitovo', 9938401507, 'brawstron8@canalblog.com', 34),
(10, 'Phebe', 'Enevold', 'Argentina', 'Famatina', 8697236681, 'penevold9@google.ca', 92),
(11, 'Elianore', 'Cameron', 'Poland', 'Złotów', 9014690154, 'ecamerona@google.co.jp', 45),
(12, 'Ardelia', 'Penwell', 'Syria', 'Khanāşir', 2559769474, 'apenwellb@accuweather.com', 49),
(13, 'Dolley', 'Tieraney', 'Poland', 'Otyń', 4165637622, 'dtieraneyc@intel.com', 87),
(14, 'Zoe', 'Lief', 'Indonesia', 'Seririt', 1654147466, 'zliefd@yahoo.co.jp', 11),
(15, 'Rebekkah', 'Bloyes', 'Canada', 'Omemee', 2489485257, 'rbloyese@ucoz.ru', 39),
(16, 'Harmon', 'Germain', 'Vietnam', 'Thị Trấn Na Sầm', 5883035382, 'hgermainf@yellowbook.com', 86),
(17, 'Sigrid', 'Duffyn', 'China', 'Yinji', 7626353198, 'sduffyng@nymag.com', 5),
(18, 'Lori', 'Burrus', 'Argentina', 'Las Parejas', 2204984997, 'lburrush@dion.ne.jp', 83),
(19, 'Katheryn', 'Patman', 'United States', 'Oklahoma City', 4053861874, 'kpatmani@scientificamerican.com', 59),
(20, 'Avram', 'Stuck', 'China', 'Weifang', 9379454981, 'astuckj@narod.ru', 57),
(21, 'Philly', 'Spratling', 'China', 'Shuanggang', 1603302320, 'pspratlingk@phoca.cz', 98),
(22, 'Packston', 'Wallsworth', 'Indonesia', 'Weru', 9629348837, 'pwallsworthl@slideshare.net', 74),
(23, 'Adolph', 'O\'Collopy', 'China', 'Lanshan', 2298657907, 'aocollopym@parallels.com', 15),
(24, 'Cicely', 'Houlson', 'China', 'Daliyuan', 9744337335, 'choulsonn@uol.com.br', 73),
(25, 'Betty', 'O\'Duane', 'China', 'Dongjian', 7801814540, 'boduaneo@state.gov', 30),
(26, 'Dorotea', 'Jennions', 'China', 'Hepu', 9298910614, 'djennionsp@google.cn', 7),
(27, 'Raynard', 'Todaro', 'Indonesia', 'Peseng', 8784755886, 'rtodaroq@delicious.com', 18),
(28, 'Esmeralda', 'Draper', 'Canada', 'Pembroke', 5698941365, 'edraperr@delicious.com', 32),
(29, 'Carla', 'Longland', 'China', 'Shijiazhuang', 6447484732, 'clonglands@blogger.com', 99),
(30, 'Lanie', 'O\'Kennedy', 'Poland', 'Pruszcz', 3004044635, 'lokennedyt@plala.or.jp', 46),
(31, 'Nicolai', 'Conrad', 'Indonesia', 'Basa', 2661564511, 'nconradu@narod.ru', 27),
(32, 'Lynsey', 'Frankcombe', 'Ukraine', 'Ripky', 1379155361, 'lfrankcombev@nifty.com', 4),
(33, 'Shaine', 'Matuszyk', 'China', 'Xiadu', 7268520175, 'smatuszykw@wiley.com', 6),
(34, 'Gwenny', 'Mowne', 'China', 'Hushi', 4599331691, 'gmownex@indiegogo.com', 38),
(35, 'Alic', 'Wass', 'Poland', 'Raszowa', 1218471487, 'awassy@dagondesign.com', 35),
(36, 'Herman', 'McCalum', 'Indonesia', 'Unden', 1842338943, 'hmccalumz@bing.com', 25),
(37, 'Allsun', 'Mosedill', 'Colombia', 'Momil', 9311346982, 'amosedill10@accuweather.com', 50),
(38, 'Kassey', 'Durran', 'Canada', 'L\'Île-Perrot', 1846365766, 'kdurran11@howstuffworks.com', 62),
(39, 'Gene', 'Cobbald', 'Albania', 'Vranisht', 3261108551, 'gcobbald12@vk.com', 94),
(40, 'Krystyna', 'Gason', 'Portugal', 'Recarei', 4299919178, 'kgason13@nhs.uk', 85),
(41, 'Lew', 'Nosworthy', 'China', 'Tianmen', 4019631132, 'lnosworthy14@4shared.com', 71),
(42, 'Leigh', 'Bonick', 'Philippines', 'Lemery', 8282115948, 'lbonick15@engadget.com', 26),
(43, 'Stephine', 'Donaghy', 'Philippines', 'Calape', 4597641431, 'sdonaghy16@npr.org', 91),
(44, 'Aldric', 'Zimmerman', 'Indonesia', 'Sapeken', 6135303440, 'azimmerman17@cdbaby.com', 8),
(45, 'Delmor', 'Faireclough', 'Azerbaijan', 'Hacıqabul', 5309866127, 'dfaireclough18@ucoz.ru', 16),
(46, 'Glenna', 'Maryott', 'Brazil', 'Mirador', 6912623981, 'gmaryott19@networksolutions.com', 9),
(47, 'Harold', 'Wetton', 'Russia', 'Tankhoy', 3906526120, 'hwetton1a@shop-pro.jp', 76),
(48, 'Terry', 'McGinny', 'Indonesia', 'Banjar Dukuh', 4621221643, 'tmcginny1b@photobucket.com', 10),
(49, 'Sig', 'Hallen', 'Indonesia', 'Kelapa', 5461039999, 'shallen1c@spotify.com', 96),
(50, 'Sibyl', 'Mahody', 'Argentina', 'Esquina', 6674669236, 'smahody1d@canalblog.com', 89),
(51, 'Erinn', 'McCrorie', 'Russia', 'Bisert’', 4097450610, 'emccrorie1e@51.la', 23),
(52, 'Seamus', 'Kauschke', 'Russia', 'Pinega', 8437692694, 'skauschke1f@goo.gl', 61),
(53, 'Barb', 'Stephens', 'China', 'Jinze', 6803253795, 'bstephens1g@privacy.gov.au', 60),
(54, 'Cybill', 'O\'Downe', 'United States', 'Clearwater', 7861332878, 'codowne1h@nationalgeographic.com', 67),
(55, 'Maribel', 'Raeburn', 'China', 'Lanhe', 8928249752, 'mraeburn1i@pcworld.com', 33),
(56, 'Edyth', 'Grainge', 'Armenia', 'Tsovazard', 9174763005, 'egrainge1j@ning.com', 51),
(57, 'Sapphire', 'Dowle', 'China', 'Gulou', 4086668546, 'sdowle1k@rambler.ru', 88),
(58, 'Sabine', 'McDonand', 'Tanzania', 'Nganane', 9065768047, 'smcdonand1l@mac.com', 100),
(59, 'Olin', 'Munt', 'Brazil', 'Tucuruí', 1916456640, 'omunt1m@linkedin.com', 55),
(60, 'Iris', 'MacVanamy', 'Peru', 'Naranjos', 2532627132, 'imacvanamy1n@tripadvisor.com', 37),
(61, 'Brant', 'Emson', 'China', 'Ershilipu', 9284927360, 'bemson1o@npr.org', 41),
(62, 'Conni', 'Francesc', 'Russia', 'Losino-Petrovskiy', 8868017945, 'cfrancesc1p@ycombinator.com', 66),
(63, 'Keefe', 'Bwye', 'Tunisia', 'Jammāl', 5189837062, 'kbwye1q@ask.com', 77),
(64, 'Shani', 'Welsh', 'Portugal', 'Santo Aleixo', 3333201729, 'swelsh1r@mit.edu', 79),
(65, 'Noelyn', 'Gobolos', 'China', 'Guanlu', 8647906453, 'ngobolos1s@issuu.com', 40),
(66, 'Shirlee', 'Clace', 'Indonesia', 'Lewotola', 8484790930, 'sclace1t@boston.com', 1),
(67, 'Obadiah', 'Kermon', 'Finland', 'Suodenniemi', 8307430411, 'okermon1u@facebook.com', 44),
(68, 'Ody', 'Dufall', 'China', 'Kuandian', 5088235627, 'odufall1v@meetup.com', 43),
(69, 'Hazel', 'Fremantle', 'China', 'Luo’ao', 5515289373, 'hfremantle1w@discovery.com', 68),
(70, 'Casper', 'Beckles', 'United States', 'Lawrenceville', 2297356367, 'cbeckles1x@oaic.gov.au', 52),
(71, 'Nicolais', 'Morit', 'France', 'Auray', 1538640874, 'nmorit1y@github.com', 22),
(72, 'Kristos', 'Rivett', 'Portugal', 'Castro Daire', 3277112037, 'krivett1z@slate.com', 3),
(73, 'Benedikta', 'Pidduck', 'Portugal', 'Pigeiros', 8144095599, 'bpidduck20@constantcontact.com', 81),
(74, 'Casandra', 'Raulstone', 'China', 'Zhushan', 9059216936, 'craulstone21@cocolog-nifty.com', 53),
(75, 'Deb', 'Redford', 'Indonesia', 'Cikijing', 5981422349, 'dredford22@walmart.com', 70),
(76, 'Doralin', 'Tulip', 'Ukraine', 'Manhush', 8957082070, 'dtulip23@google.it', 58),
(77, 'Dene', 'Reaman', 'Japan', 'Ushibuka', 9744286029, 'dreaman24@infoseek.co.jp', 19),
(78, 'Wynne', 'Antowski', 'Indonesia', 'Tangerang', 2815402328, 'wantowski25@e-recht24.de', 17),
(79, 'Linet', 'Hryniewicki', 'Thailand', 'Pran Buri', 9937966346, 'lhryniewicki26@wsj.com', 36),
(80, 'Eward', 'Aldcorne', 'China', 'Linshui', 5764836352, 'ealdcorne27@cdc.gov', 72),
(81, 'Lily', 'Saunter', 'Philippines', 'Aglalana', 1578394080, 'lsaunter28@list-manage.com', 54),
(82, 'Yoshi', 'Louca', 'Philippines', 'Ambulong', 4206968365, 'ylouca29@examiner.com', 20),
(83, 'Morlee', 'MacFadin', 'Brazil', 'Itaperuçu', 4991009677, 'mmacfadin2a@unicef.org', 21),
(84, 'Catharina', 'Dickenson', 'Poland', 'Przyborów', 5339278824, 'cdickenson2b@shutterfly.com', 93),
(85, 'Maxi', 'Velten', 'Poland', 'Wilamowice', 5053124965, 'mvelten2c@tinypic.com', 78),
(86, 'Arel', 'McGinney', 'France', 'Créteil', 3756715880, 'amcginney2d@usa.gov', 14),
(87, 'Melicent', 'Cockaday', 'Brazil', 'Porto Seguro', 2356558289, 'mcockaday2e@statcounter.com', 80),
(88, 'Crista', 'Pennock', 'China', 'Dazhou', 2041366449, 'cpennock2f@360.cn', 95),
(89, 'Eduardo', 'Fassam', 'Canada', 'Angus', 6299435330, 'efassam2g@myspace.com', 42),
(90, 'Fritz', 'Sarre', 'China', 'Tong’an', 8317322584, 'fsarre2h@miitbeian.gov.cn', 69),
(91, 'Brendis', 'Carey', 'Ethiopia', 'Bichena', 5214939016, 'bcarey2i@yandex.ru', 75),
(92, 'Eunice', 'Stedmond', 'China', 'Touying', 4736652351, 'estedmond2j@ucla.edu', 13),
(93, 'Linda', 'Cullotey', 'China', 'Shantoudian', 6898812900, 'lcullotey2k@geocities.com', 24),
(94, 'Walt', 'Worsley', 'China', 'Daying', 6277078941, 'wworsley2l@opera.com', 47),
(95, 'Steven', 'McTerlagh', 'Brazil', 'Rio Branco do Sul', 6124322893, 'smcterlagh2m@vk.com', 29),
(96, 'Morgun', 'Poker', 'China', 'Jingchuan', 2951554627, 'mpoker2n@goo.gl', 28),
(97, 'Callie', 'Gittings', 'China', 'Nanxing', 2636693503, 'cgittings2o@unblog.fr', 97),
(98, 'Helge', 'Fri', 'Indonesia', 'Kemendung', 8674244002, 'hfri2p@smugmug.com', 84),
(99, 'Blythe', 'Dungey', 'Vietnam', 'Thị Trấn Phù Yên', 5857818073, 'bdungey2q@seattletimes.com', 82),
(100, 'Perry', 'Holbury', 'Brazil', 'Nova Prata', 3313943333, 'pholbury2r@artisteer.com', 64);

-- --------------------------------------------------------

--
-- Table structure for table `online_advertisement`
--

CREATE TABLE `online_advertisement` (
  `ad_id` int(11) NOT NULL,
  `User_id` int(11) DEFAULT NULL,
  `Published_date` date DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `online_advertisement`
--

INSERT INTO `online_advertisement` (`ad_id`, `User_id`, `Published_date`, `Type`) VALUES
(0, 0, '0000-00-00', 'Type'),
(1, 3, '2021-12-11', 'Site advertisment'),
(2, 2, '2021-12-15', 'Instagram advertisement'),
(3, 1, '2021-12-17', 'Site advertisment'),
(4, 1, '2021-12-15', 'Instagram advertisement'),
(5, 2, '2021-12-15', 'Facebook advertisment'),
(6, 3, '2021-12-17', 'Instagram advertisement'),
(7, 2, '2021-12-17', 'Facebook advertisment'),
(8, 3, '2021-12-12', 'Instagram advertisement'),
(9, 1, '2021-12-13', 'Facebook advertisment'),
(10, 3, '2021-12-13', 'Instagram advertisement'),
(11, 1, '2021-12-13', 'Facebook advertisment'),
(12, 2, '2021-12-11', 'Site advertisment'),
(13, 2, '2021-12-14', 'Instagram advertisement'),
(14, 1, '2021-12-16', 'Site advertisment'),
(15, 3, '2021-12-17', 'Site advertisment'),
(16, 3, '2021-12-11', 'Facebook advertisment'),
(17, 2, '2021-12-13', 'Facebook advertisment'),
(18, 1, '2021-12-11', 'Facebook advertisment'),
(19, 1, '2021-12-16', 'Site advertisment'),
(20, 3, '2021-12-15', 'Site advertisment'),
(21, 2, '2021-12-16', 'Site advertisment'),
(22, 1, '2021-12-17', 'Site advertisment'),
(23, 2, '2021-12-17', 'Site advertisment'),
(24, 3, '2021-12-15', 'Instagram advertisement'),
(25, 2, '2021-12-16', 'Instagram advertisement'),
(26, 1, '2021-12-14', 'Site advertisment'),
(27, 3, '2021-12-17', 'Instagram advertisement'),
(28, 3, '2021-12-13', 'Site advertisment'),
(29, 1, '2021-12-17', 'Instagram advertisement'),
(30, 2, '2021-12-14', 'Facebook advertisment'),
(31, 2, '2021-12-12', 'Facebook advertisment'),
(32, 3, '2021-12-16', 'Facebook advertisment'),
(33, 1, '2021-12-17', 'Instagram advertisement'),
(34, 2, '2021-12-11', 'Site advertisment'),
(35, 3, '2021-12-11', 'Facebook advertisment'),
(36, 1, '2021-12-14', 'Facebook advertisment'),
(37, 2, '2021-12-16', 'Site advertisment'),
(38, 3, '2021-12-12', 'Instagram advertisement'),
(39, 1, '2021-12-14', 'Facebook advertisment'),
(40, 3, '2021-12-11', 'Instagram advertisement'),
(41, 1, '2021-12-11', 'Site advertisment'),
(42, 2, '2021-12-16', 'Site advertisment'),
(43, 3, '2021-12-16', 'Facebook advertisment'),
(44, 2, '2021-12-16', 'Site advertisment'),
(45, 1, '2021-12-15', 'Facebook advertisment'),
(46, 2, '2021-12-11', 'Instagram advertisement'),
(47, 3, '2021-12-13', 'Site advertisment'),
(48, 1, '2021-12-14', 'Instagram advertisement'),
(49, 2, '2021-12-13', 'Facebook advertisment'),
(50, 1, '2021-12-11', 'Site advertisment');

-- --------------------------------------------------------

--
-- Table structure for table `online_partners`
--

CREATE TABLE `online_partners` (
  `id` int(11) NOT NULL,
  `User_id` int(11) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `online_partners`
--

INSERT INTO `online_partners` (`id`, `User_id`, `Name`) VALUES
(0, 0, 'Name'),
(1, 2, 'Jamia'),
(2, 1, 'Fatz'),
(3, 3, 'Jaloo');

-- --------------------------------------------------------

--
-- Table structure for table `refund`
--

CREATE TABLE `refund` (
  `Refund_id` int(11) NOT NULL,
  `Received_Date` date NOT NULL,
  `Refund_Payment` int(11) NOT NULL,
  `Customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `refund`
--

INSERT INTO `refund` (`Refund_id`, `Received_Date`, `Refund_Payment`, `Customer_id`) VALUES
(0, '0000-00-00', 0, 0),
(1, '2021-12-09', 1, 7),
(2, '2021-12-05', 25, 51),
(3, '2021-12-03', 19, 76),
(4, '2021-12-10', 22, 59),
(5, '2021-12-07', 74, 82),
(6, '2021-12-05', 38, 68),
(7, '2021-12-06', 59, 79),
(8, '2021-12-04', 81, 75),
(9, '2021-12-07', 25, 13),
(10, '2021-12-02', 53, 84);

-- --------------------------------------------------------

--
-- Table structure for table `registered_customer`
--

CREATE TABLE `registered_customer` (
  `Customer_Username` varchar(50) NOT NULL,
  `Customer_id` int(11) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registered_customer`
--

INSERT INTO `registered_customer` (`Customer_Username`, `Customer_id`, `Password`) VALUES
('aboissier2k', 35, '1Vjj6K8tNk0d'),
('aboutell1t', 24, 'w4xfwM8'),
('abowo', 56, 'Za3xEwky'),
('acharopen1f', 100, 'FxjZfxxtN'),
('aclaesens1i', 4, 'UVIWzZJ1UfVH'),
('adangeli24', 33, 'HQyoGW0B'),
('adanilovichq', 60, 'ZLRwgjMh'),
('adeboou', 69, 'FtIwnsei4'),
('afrancescuccio2g', 34, '3Qm6iI20oQOL'),
('agaunter2q', 6, 'NZ2GiNBdGDjS'),
('amarqyes2i', 61, 'koJ4yAyTmzV'),
('amayer2j', 70, 'SXW7a1r'),
('aostler2r', 55, 'viYgNSG5FFf'),
('aphoenix18', 98, 'mt7J1t1073bu'),
('aslade1o', 72, 'xU30GM6'),
('bbeynef', 22, 'GdpiESf'),
('bclemanceau1y', 25, '8WxzRy2BpTj'),
('bdrakeford1z', 12, '8Ntei1ChPRr'),
('bglossup2b', 10, 'xdU3XlgxDcx'),
('blarensony', 40, 'vMlrMU27i'),
('brapkinss', 86, 'suitkGmI2J'),
('bspadollini2c', 45, 'ncZXnC'),
('bworsam1k', 18, 'AXG8wHAkS'),
('cassandrir', 94, '7SQYfyQ'),
('cdebischop1b', 29, 'OmXBPIIKHfcg'),
('cmerrgen9', 50, 'bQ9MrR'),
('cohederscoll2', 76, 'xLUWDGR31I'),
('cpedersen4', 52, 'WDEbltc5qE83'),
('Customer_Username', 0, 'Password'),
('cwitherbed1n', 30, 'oX3nnA'),
('ddannohl21', 49, 'pPBy5NzLWH40'),
('ddarby15', 64, 'ctAd81nJHcD'),
('dfairey1s', 9, 'VKXncXtX1'),
('dsprull1r', 97, 'dMgKmSL8wGJ'),
('dteaz1d', 14, 'i57lKa6'),
('ebumm', 1, 'mCC4M8B'),
('ecohr1e', 20, 'cAXYBro3'),
('eliddyard23', 68, 'pWckQf'),
('etowler1', 59, 'a4izuekIvqY'),
('fmurgatroyd6', 21, 'WxScZx1BtIR'),
('fnorcott1x', 17, 'FveuXR'),
('ftullethk', 83, 'nccqEu3TWSS'),
('gloan16', 23, 'VWxRQHhd'),
('gmartonfi1c', 93, 'MkY7xlvM'),
('istuckesi', 2, 'QEtH8f'),
('iwilcocke2d', 58, 'M7WZgFuU'),
('jconeybeer2o', 92, 'ojKhcRWM94p'),
('jennorp', 89, 'Oy1m1M'),
('jhowship19', 84, 'UmF13Ht0m07'),
('jmadrell12', 73, '5RRnKPEX8'),
('jpietrowskil', 53, 'zOcLlPb'),
('kblowfield7', 96, 'pFYJ6mKEuBR'),
('kjirika', 15, 'pR2WYLocqza'),
('kwhitehead25', 3, 'B6p1vwkf'),
('lcapineer1u', 78, 'Ub8cdWs'),
('lcurrer5', 37, 'Zc0LJcNZxnji'),
('lguerreru2e', 36, '8xKbeS6L7Vm'),
('lhabberjamc', 74, 'PIwVLKNq2Jp'),
('lhannam1h', 79, 'xnbra9ycqL'),
('lhanselmann17', 90, 'C4YEK3ULavSW'),
('lmcruvie1w', 82, 'NcE5Wa0ex'),
('lroskame', 5, 'ATus4pgYOR'),
('lsommerling2a', 77, 'px0xl79M9'),
('lstonhewerd', 62, '8g65b8XjLTbE'),
('malelsandrovich10', 43, 'hO8LWaPuE'),
('mbemlott2l', 87, 'ga2jyLo'),
('mbenard1g', 41, 'Psm0Ry'),
('mbraunlein1p', 95, 'meAqdD'),
('mkort2h', 8, 'ZCW8djEEj822'),
('mlugden2n', 28, 'DBO5EZWOq'),
('mpenhaleurackj', 39, 'Sz9TrXR4f'),
('mprangley28', 57, '9aAEYLLFDOXe'),
('mreihmn', 55, 'PtOluod0'),
('mrudet', 75, 'sgQbviJyzOh'),
('mstilgo1v', 38, 'NQmNfJ1dN1'),
('ncotilardw', 46, 'NxP0A1R0u'),
('nmackilpatrick1l', 67, 'XTA11Jiq'),
('ogrubbe2p', 66, 'x75NSYPmc'),
('oskaifg', 42, 'ugPMV0Lex9q'),
('osorensen2m', 91, 'NNWKr8BHNuU'),
('otzarkov20', 13, 'egbUkRF'),
('pandriesse11', 80, 'FOjFXWIA4r9'),
('peastmond1q', 32, 'vPBL9PknQKXq'),
('pfiddler1a', 26, 'z1Z4FPT7PBp2'),
('phoofe14', 88, 'k4K2od'),
('pshemiltv', 27, 'N4zzOUJ'),
('pstorek29', 16, 'H9VqWzxA'),
('pwinspeare22', 51, '4tuJyktMTaN'),
('rakram8', 63, 'tuhN53STXu'),
('rhamon1m', 47, 'W7wkRvz9'),
('rhebbron0', 81, 'ZLDmmVUMutOE'),
('rhysom2f', 48, 'hp6rfGyg9'),
('sdennes26', 7, 'Dn9VvPl'),
('sflemingh', 31, 'HiVdmWCCkn'),
('sloughtonb', 11, 'eOidmgL'),
('srunseyz', 85, 'Jql1U1Dc'),
('svanderdaal3', 99, '31b9yH4'),
('taleksashin27', 44, 'skn4CY'),
('vbaxstar13', 65, 'XN1jYfD5LTi4'),
('vspaingower1j', 54, 'eJjEPGT'),
('whainsworthx', 19, 'o5f4a6');

-- --------------------------------------------------------

--
-- Table structure for table `regular customer`
--

CREATE TABLE `regular customer` (
  `Regular_Cus_Id` int(11) NOT NULL,
  `Customer_id` int(11) NOT NULL,
  `No_of_visits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `regular customer`
--

INSERT INTO `regular customer` (`Regular_Cus_Id`, `Customer_id`, `No_of_visits`) VALUES
(0, 0, 0),
(1, 77, 9),
(2, 40, 7),
(3, 48, 9),
(4, 47, 9),
(5, 8, 7),
(6, 68, 9),
(7, 35, 7),
(8, 83, 6),
(9, 89, 9),
(10, 96, 9),
(11, 79, 7),
(12, 42, 5),
(13, 26, 10),
(14, 54, 6),
(15, 74, 9),
(16, 1, 5),
(17, 23, 6),
(18, 37, 7),
(19, 95, 9),
(20, 25, 5),
(21, 57, 9),
(22, 12, 10),
(23, 91, 5),
(24, 56, 7),
(25, 33, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `Room_No` int(11) NOT NULL,
  `Booking_id` int(11) DEFAULT NULL,
  `Room_type` varchar(50) DEFAULT NULL,
  `Number_of_beds` int(11) DEFAULT NULL,
  `Max_guests` int(11) GENERATED ALWAYS AS (`Number_of_beds` + 2) VIRTUAL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`Room_No`, `Booking_id`, `Room_type`, `Number_of_beds`) VALUES
(0, 0, 'Room_type', 0),
(1, 53, 'Suite', 3),
(2, 12, 'Suite', 2),
(3, 63, 'Junior Suite', 4),
(4, 72, 'Deluxe Room', 2),
(5, 42, 'Suite', 3),
(6, 41, 'Junior Suite', 4),
(7, 19, 'Duplex', 1),
(8, 45, 'Junior Suite', 3),
(9, 39, 'Deluxe Room', 3),
(10, 11, 'Junior Suite', 1),
(11, 17, 'Deluxe Room', 4),
(12, 52, 'Junior Suite', 2),
(13, 9, 'Junior Suite', 2),
(14, 66, 'Duplex', 2),
(15, 97, 'Deluxe Room', 2),
(16, 46, 'Duplex', 3),
(17, 15, 'Junior Suite', 2),
(18, 92, 'Junior Suite', 3),
(19, 50, 'Deluxe Room', 4),
(20, 47, 'Junior Suite', 4),
(21, 10, 'Suite', 1),
(22, 1, 'Junior Suite', 3),
(23, 55, 'Suite', 1),
(24, 30, 'Deluxe Room', 1),
(25, 16, 'Junior Suite', 2),
(26, 49, 'Duplex', 3),
(27, 96, 'Suite', 1),
(28, 84, 'Junior Suite', 3),
(29, 85, 'Suite', 4),
(30, 75, 'Suite', 3),
(31, 70, 'Junior Suite', 1),
(32, 3, 'Junior Suite', 4),
(33, 58, 'Deluxe Room', 1),
(34, 65, 'Suite', 2),
(35, 13, 'Junior Suite', 2),
(36, 20, 'Duplex', 4),
(37, 21, 'Suite', 1),
(38, 14, 'Junior Suite', 2),
(39, 54, 'Junior Suite', 1),
(40, 76, 'Deluxe Room', 4),
(41, 98, 'Suite', 2),
(42, 78, 'Deluxe Room', 1),
(43, 60, 'Suite', 3),
(44, 56, 'Suite', 1),
(45, 25, 'Duplex', 1),
(46, 87, 'Suite', 2),
(47, 61, 'Junior Suite', 1),
(48, 68, 'Junior Suite', 3),
(49, 31, 'Junior Suite', 4),
(50, 23, 'Suite', 4),
(51, 74, 'Suite', 1),
(52, 34, 'Junior Suite', 3),
(53, 89, 'Duplex', 4),
(54, 38, 'Junior Suite', 2),
(55, 69, 'Junior Suite', 4),
(56, 29, 'Suite', 3),
(57, 44, 'Suite', 3),
(58, 99, 'Junior Suite', 2),
(59, 8, 'Deluxe Room', 3),
(60, 91, 'Duplex', 4),
(61, 67, 'Suite', 3),
(62, 18, 'Junior Suite', 2),
(63, 37, 'Deluxe Room', 4),
(64, 100, 'Deluxe Room', 1),
(65, 4, 'Suite', 4),
(66, 93, 'Junior Suite', 2),
(67, 33, 'Junior Suite', 1),
(68, 24, 'Deluxe Room', 2),
(69, 80, 'Suite', 3),
(70, 51, 'Junior Suite', 2),
(71, 77, 'Junior Suite', 2),
(72, 86, 'Deluxe Room', 4),
(73, 2, 'Deluxe Room', 1),
(74, 40, 'Duplex', 2),
(75, 73, 'Suite', 1),
(76, 36, 'Junior Suite', 4),
(77, 28, 'Deluxe Room', 3),
(78, 32, 'Junior Suite', 3),
(79, 26, 'Deluxe Room', 4),
(80, 64, 'Junior Suite', 2),
(81, 5, 'Duplex', 3),
(82, 22, 'Suite', 3),
(83, 82, 'Junior Suite', 1),
(84, 88, 'Junior Suite', 4),
(85, 71, 'Suite', 1),
(86, 35, 'Junior Suite', 2),
(87, 59, 'Junior Suite', 2),
(88, 62, 'Junior Suite', 4),
(89, 6, 'Junior Suite', 2),
(90, 79, 'Suite', 2),
(91, 57, 'Deluxe Room', 3),
(92, 94, 'Junior Suite', 3),
(93, 81, 'Deluxe Room', 2),
(94, 27, 'Suite', 1),
(95, 90, 'Junior Suite', 3),
(96, 95, 'Duplex', 3),
(97, 43, 'Duplex', 3),
(98, 48, 'Suite', 4),
(99, 83, 'Deluxe Room', 3),
(100, 7, 'Junior Suite', 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Staff_id` int(11) NOT NULL,
  `Staff_post` varchar(50) DEFAULT NULL,
  `Full_name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Contact` bigint(10) DEFAULT NULL,
  `Hotel_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_id`, `Staff_post`, `Full_name`, `Email`, `Contact`, `Hotel_id`) VALUES
(0, 'Staff_post', 'Full_Name', 'Email', 0, 0),
(1, 'Business Development', 'Ronald Brammall', 'rbrammall0@nymag.com', 3029529977, 1),
(2, 'Legal', 'Edythe Tithecote', 'etithecote1@xrea.com', 9767550319, 1),
(3, 'Engineering', 'Adams Cohn', 'acohn2@joomla.org', 9158305870, 1),
(4, 'Engineering', 'Antoinette Houseman', 'ahouseman3@so-net.ne.jp', 4303497154, 1),
(5, 'Training', 'Bendick Hacon', 'bhacon4@un.org', 7304294281, 1),
(6, 'Accounting', 'Marni Iozefovich', 'miozefovich5@prlog.org', 6514310330, 1),
(7, 'Engineering', 'Gray Hefferon', 'ghefferon6@people.com.cn', 1949721966, 1),
(8, 'Research and Development', 'Rory Kirton', 'rkirton7@oaic.gov.au', 4423362003, 1),
(9, 'Accounting', 'Rhoda Dobey', 'rdobey8@w3.org', 6566462720, 1),
(10, 'Product Management', 'Shandy Kefford', 'skefford9@t.co', 7368059176, 1),
(11, 'Training', 'Alden Danaher', 'adanahera@bizjournals.com', 6962908751, 1),
(12, 'Business Development', 'Charil Simoneton', 'csimonetonb@nifty.com', 5059932075, 1),
(13, 'Training', 'Marjory Liddel', 'mliddelc@unicef.org', 2592793911, 1),
(14, 'Product Management', 'Sarita Thake', 'sthaked@wikipedia.org', 9691282803, 1),
(15, 'Support', 'Miranda Woodworth', 'mwoodworthe@g.co', 9025795575, 1),
(16, 'Marketing', 'Coralie Pellitt', 'cpellittf@prnewswire.com', 4168091052, 1),
(17, 'Legal', 'Ferrell Gilpillan', 'fgilpillang@blogtalkradio.com', 4811081327, 1),
(18, 'Accounting', 'Bruis Von Brook', 'bvonh@amazon.com', 7576097450, 1),
(19, 'Sales', 'Franklyn Gomes', 'fgomesi@dyndns.org', 1684217051, 1),
(20, 'Accounting', 'Aluino Schurcke', 'aschurckej@alexa.com', 5589445638, 1),
(21, 'Engineering', 'Lotty McGurgan', 'lmcgurgank@cnet.com', 9806089284, 1),
(22, 'Marketing', 'Moises Adnet', 'madnetl@blogs.com', 9164087986, 1),
(23, 'Accounting', 'Pavel Copson', 'pcopsonm@china.com.cn', 5609251800, 1),
(24, 'Marketing', 'Jenn Ciabatteri', 'jciabatterin@chicagotribune.com', 8975663755, 1),
(25, 'Marketing', 'Selie Elsip', 'selsipo@ehow.com', 9314661857, 1),
(26, 'Human Resources', 'Sig Isley', 'sisleyp@usatoday.com', 6573302414, 1),
(27, 'Product Management', 'Christalle Robey', 'crobeyq@mlb.com', 1133577512, 1),
(28, 'Accounting', 'Rodd Gidney', 'rgidneyr@soundcloud.com', 8699865915, 1),
(29, 'Business Development', 'Isaak Bryce', 'ibryces@latimes.com', 6387400686, 1),
(30, 'Training', 'Edmund Castellaccio', 'ecastellacciot@51.la', 6728815609, 1),
(31, 'Product Management', 'Conchita Dickins', 'cdickinsu@lulu.com', 9867885363, 1),
(32, 'Services', 'Cecelia Juszkiewicz', 'cjuszkiewiczv@google.co.uk', 6123734325, 1),
(33, 'Legal', 'Derwin Trebilcock', 'dtrebilcockw@craigslist.org', 3186039655, 1),
(34, 'Accounting', 'Row Grand', 'rgrandx@yolasite.com', 5459714065, 1),
(35, 'Engineering', 'Connor Gurery', 'cgureryy@a8.net', 7725701462, 1),
(36, 'Support', 'Lilith Lawtey', 'llawteyz@multiply.com', 1425464892, 1),
(37, 'Services', 'Lilli Esom', 'lesom10@ucoz.com', 6162133352, 1),
(38, 'Business Development', 'Karie Sennett', 'ksennett11@go.com', 7406434953, 1),
(39, 'Business Development', 'Coral Choppin', 'cchoppin12@japanpost.jp', 9478953925, 1),
(40, 'Human Resources', 'Arte Gladebeck', 'agladebeck13@yelp.com', 9041163163, 1),
(41, 'Services', 'Joshia Rowena', 'jrowena14@gmpg.org', 5073493659, 1),
(42, 'Product Management', 'Bengt Siggin', 'bsiggin15@reference.com', 5116404303, 1),
(43, 'Support', 'Galven Readwin', 'greadwin16@bbb.org', 4311002258, 1),
(44, 'Legal', 'Erl Blasing', 'eblasing17@weebly.com', 6876983081, 1),
(45, 'Product Management', 'Adore Bass', 'abass18@diigo.com', 2147178085, 1),
(46, 'Training', 'Dre Deaconson', 'ddeaconson19@studiopress.com', 1917166634, 1),
(47, 'Legal', 'Hayes Bordman', 'hbordman1a@yale.edu', 7761246688, 1),
(48, 'Legal', 'Ardenia Dundon', 'adundon1b@exblog.jp', 8919905189, 1),
(49, 'Training', 'Faustine Merriday', 'fmerriday1c@youtube.com', 1347999753, 1),
(50, 'Marketing', 'Morena Suarez', 'msuarez1d@sakura.ne.jp', 5128659716, 1),
(51, 'Engineering', 'Cristie Corsan', 'ccorsan1e@salon.com', 4267461475, 1),
(52, 'Research and Development', 'Gaby Tysall', 'gtysall1f@mayoclinic.com', 8367053924, 1),
(53, 'Product Management', 'Sherye Petrussi', 'spetrussi1g@360.cn', 6971387803, 1),
(54, 'Services', 'Courtnay Yate', 'cyate1h@slashdot.org', 2399785966, 1),
(55, 'Engineering', 'Kimmi Frede', 'kfrede1i@edublogs.org', 4935150043, 1),
(56, 'Research and Development', 'Aksel Kaesmakers', 'akaesmakers1j@ox.ac.uk', 9329877905, 1),
(57, 'Services', 'Forrest Hourston', 'fhourston1k@livejournal.com', 2175241262, 1),
(58, 'Product Management', 'Irv Walcot', 'iwalcot1l@com.com', 1333071691, 1),
(59, 'Services', 'Shurwood Greensted', 'sgreensted1m@exblog.jp', 7692067251, 1),
(60, 'Business Development', 'Maitilde Dorken', 'mdorken1n@huffingtonpost.com', 5424011460, 1),
(61, 'Support', 'Iolande Feaver', 'ifeaver1o@bizjournals.com', 3237909275, 1),
(62, 'Business Development', 'Linoel Slowley', 'lslowley1p@cbc.ca', 3224864580, 1),
(63, 'Marketing', 'Kleon Mazey', 'kmazey1q@sbwire.com', 6961817200, 1),
(64, 'Engineering', 'Dermot Dankersley', 'ddankersley1r@wsj.com', 4892090207, 1),
(65, 'Marketing', 'Herculie Apps', 'happs1s@scribd.com', 1534067248, 1),
(66, 'Support', 'Sharia Biddell', 'sbiddell1t@geocities.jp', 6661171315, 1),
(67, 'Human Resources', 'Luciana Pietruschka', 'lpietruschka1u@soundcloud.com', 2139666146, 1),
(68, 'Engineering', 'Tadio Vanyatin', 'tvanyatin1v@hexun.com', 4791914858, 1),
(69, 'Research and Development', 'Wadsworth McArt', 'wmcart1w@nps.gov', 3284440585, 1),
(70, 'Services', 'Duke Dobbison', 'ddobbison1x@kickstarter.com', 3603578532, 1),
(71, 'Legal', 'Nappy Clowney', 'nclowney1y@bigcartel.com', 9399229807, 1),
(72, 'Services', 'Nellie Bodley', 'nbodley1z@miibeian.gov.cn', 7089372416, 1),
(73, 'Marketing', 'Ralph Peregrine', 'rperegrine20@cyberchimps.com', 9044662635, 1),
(74, 'Engineering', 'Mallissa Sherland', 'msherland21@google.com', 2376312131, 1),
(75, 'Accounting', 'Pooh Heaney', 'pheaney22@acquirethisname.com', 4852029007, 1),
(76, 'Engineering', 'Nikolaos Tordiffe', 'ntordiffe23@lycos.com', 5268325522, 1),
(77, 'Marketing', 'Carla Battram', 'cbattram24@github.io', 3808057520, 1),
(78, 'Product Management', 'Darcy Levins', 'dlevins25@blog.com', 2004006109, 1),
(79, 'Research and Development', 'Ebony Couttes', 'ecouttes26@123-reg.co.uk', 5435206425, 1),
(80, 'Accounting', 'Rosetta Cristol', 'rcristol27@latimes.com', 6279311598, 1),
(81, 'Engineering', 'Kasey Files', 'kfiles28@techcrunch.com', 2625232320, 1),
(82, 'Engineering', 'Cynthea Doerren', 'cdoerren29@blog.com', 8788714954, 1),
(83, 'Training', 'Berton Carroll', 'bcarroll2a@si.edu', 7838210844, 1),
(84, 'Support', 'Nicky Mathouse', 'nmathouse2b@bbb.org', 2892553971, 1),
(85, 'Training', 'Hedi Charrier', 'hcharrier2c@amazon.de', 5191332685, 1),
(86, 'Engineering', 'Ali Dullard', 'adullard2d@phoca.cz', 1597581787, 1),
(87, 'Support', 'Roseanne Ball', 'rball2e@smh.com.au', 8654554721, 1),
(88, 'Services', 'Babara Whithorn', 'bwhithorn2f@shinystat.com', 5496824478, 1),
(89, 'Research and Development', 'Delcina Nesby', 'dnesby2g@ebay.co.uk', 4538669501, 1),
(90, 'Engineering', 'Guenevere O\'Fihily', 'gofihily2h@google.com.hk', 4917348517, 1),
(91, 'Support', 'Ahmad Challicombe', 'achallicombe2i@instagram.com', 7626662108, 1),
(92, 'Services', 'Nels Say', 'nsay2j@google.it', 8665400015, 1),
(93, 'Research and Development', 'Jock Simonot', 'jsimonot2k@ehow.com', 5045587570, 1),
(94, 'Training', 'Rurik Troak', 'rtroak2l@springer.com', 4965520191, 1),
(95, 'Marketing', 'Brendon Lamberton', 'blamberton2m@gmpg.org', 3762987487, 1),
(96, 'Sales', 'Elfreda McWard', 'emcward2n@wsj.com', 5818713708, 1),
(97, 'Accounting', 'Blakeley Webburn', 'bwebburn2o@ucsd.edu', 9596964185, 1),
(98, 'Accounting', 'Pancho Saiz', 'psaiz2p@canalblog.com', 2769382490, 1),
(99, 'Accounting', 'Bartlett Simants', 'bsimants2q@washington.edu', 6621000372, 1),
(100, 'Legal', 'Laurens Pyatt', 'lpyatt2r@google.ru', 1608775513, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff salary`
--

CREATE TABLE `staff salary` (
  `Salary_id` int(11) NOT NULL,
  `Bank_account` bigint(11) NOT NULL,
  `Salary_$` varchar(50) NOT NULL,
  `Staff_id` int(11) NOT NULL,
  `Bonus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff salary`
--

INSERT INTO `staff salary` (`Salary_id`, `Bank_account`, `Salary_$`, `Staff_id`, `Bonus`) VALUES
(0, 0, 'Salary', 0, 0),
(1, 4041379253271, '335', 11, 18),
(2, 4041371300989, '217', 42, 12),
(3, 4041373762301, '332', 89, 10),
(4, 4218961041691117, '633', 17, 11),
(5, 4041372772490427, '561', 27, 13),
(6, 4041375201513271, '1018', 4, 14),
(7, 4041599023918, '949', 84, 11),
(8, 4041594639188239, '263', 93, 16),
(9, 4752313767947186, '318', 61, 17),
(10, 4041379725806120, '286', 36, 17),
(11, 4041590818308, '530', 64, 10),
(12, 4041375011655049, '797', 82, 11),
(13, 4041593289331370, '899', 18, 12),
(14, 4041372799007, '354', 14, 16),
(15, 4041599895018, '582', 35, 15),
(16, 4017959849045877, '749', 96, 12),
(17, 4017954786760, '223', 77, 15),
(18, 4041370879627289, '856', 66, 14),
(19, 4497558548792, '1044', 72, 20),
(20, 4041370031587793, '762', 23, 13),
(21, 4333402647122777, '291', 95, 16),
(22, 4041379161904, '368', 81, 16),
(23, 4041590358115, '769', 65, 12),
(24, 4017955919419596, '572', 97, 10),
(25, 4041370951601541, '552', 90, 19),
(26, 4948960716401, '332', 16, 12),
(27, 4041592847289, '466', 51, 12),
(28, 4017959108689472, '979', 71, 19),
(29, 4041375855186, '270', 20, 16),
(30, 4041597735414, '763', 85, 12),
(31, 4017955146014459, '454', 37, 20),
(32, 4041593334535, '570', 19, 18),
(33, 4041594169111171, '214', 46, 18),
(34, 4041593659535, '944', 1, 13),
(35, 4041598492727520, '863', 44, 16),
(36, 4157490384876, '579', 88, 16),
(37, 4041371011443056, '832', 48, 20),
(38, 4017951210533, '1003', 28, 15),
(39, 4041594108706, '796', 34, 11),
(40, 4041371292934708, '337', 55, 14),
(41, 4041594031528644, '234', 62, 10),
(42, 4041594229544, '482', 76, 13),
(43, 4041595543781134, '258', 3, 13),
(44, 4017953881232, '355', 2, 20),
(45, 4041590790243854, '633', 26, 12),
(46, 4017951797327720, '836', 33, 12),
(47, 4041593995140313, '645', 31, 19),
(48, 4041599384401, '479', 69, 12),
(49, 4131204534407, '1012', 57, 12),
(50, 4041374217521261, '433', 21, 14),
(51, 4358572701312959, '274', 86, 19),
(52, 4041596863684544, '539', 60, 15),
(53, 4105185428571637, '792', 15, 16),
(54, 4041376329231, '983', 100, 18),
(55, 4041370041408097, '305', 38, 16),
(56, 4253447518904551, '676', 40, 17),
(57, 4041598861844682, '769', 75, 11),
(58, 4017951099555, '778', 92, 11),
(59, 4041592698153, '611', 41, 19),
(60, 4041590695436462, '881', 49, 15),
(61, 4017955609226632, '372', 29, 18),
(62, 4358699426977, '1029', 39, 16),
(63, 4017951401855884, '726', 83, 14),
(64, 4041370865271, '452', 79, 14),
(65, 4017954710463, '696', 22, 11),
(66, 4017958807331, '754', 73, 11),
(67, 4017952814655, '908', 12, 10),
(68, 4846809447709597, '824', 32, 16),
(69, 4041598505380028, '937', 13, 20),
(70, 4041377778673470, '508', 98, 18),
(71, 4041377186390, '827', 8, 16),
(72, 4017952967479, '784', 87, 12),
(73, 4041595603311210, '699', 70, 11),
(74, 4041593223523504, '717', 91, 13),
(75, 4017958041998, '1046', 56, 20),
(76, 4041373411580818, '647', 52, 19),
(77, 4432766302209313, '877', 99, 16),
(78, 4812033665142536, '632', 58, 15),
(79, 4727368884183547, '547', 68, 19),
(80, 4041599574480, '841', 10, 14),
(81, 4775605738635, '783', 54, 17),
(82, 4017952615888, '927', 63, 10),
(83, 4041590049070132, '237', 43, 13),
(84, 4444136433576, '399', 78, 12),
(85, 4017958120040, '1036', 47, 15),
(86, 4041596968800, '1034', 7, 15),
(87, 4408951183251, '456', 45, 16),
(88, 4041595982348395, '441', 50, 17),
(89, 4017951361369991, '473', 80, 11),
(90, 4017954263042, '431', 53, 17),
(91, 4017958766495, '729', 25, 14),
(92, 4041373424795, '609', 9, 11),
(93, 4532431595196, '654', 24, 19),
(94, 4041371911783163, '996', 67, 16),
(95, 4041374851560039, '754', 6, 19),
(96, 4017954488318, '678', 5, 11),
(97, 4805387783945, '862', 94, 20),
(98, 4224384765430632, '399', 59, 15),
(99, 4017953510013, '385', 74, 13),
(100, 4041372622134, '376', 100, 15);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Supplier_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Pin_Code` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Supplier_id`, `User_id`, `Name`, `Address`, `Pin_Code`, `Email`) VALUES
(0, 0, 'Name', 'Address', 0, 'Email'),
(1, 1, 'Ntag', '1 Texas Park', 543, 'rrheubottom0@intel.com'),
(2, 2, 'Trudoo', '48 Fairfield Terrace', 305, 'glittlecote1@facebook.com'),
(3, 3, 'Yodoo', '4014 Manufacturers Road', 788, 'lrimmington2@nasa.gov');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`User_id`),
  ADD KEY `stafecasf` (`Staff_id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`Bill_No`),
  ADD KEY `bill_ibfk_1` (`Customer_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Booking_id`),
  ADD KEY `sdasdsac` (`Hotel_id`);

--
-- Indexes for table `cancellation`
--
ALTER TABLE `cancellation`
  ADD PRIMARY KEY (`Cancellation_id`),
  ADD KEY `sadsa` (`Customer_id`);

--
-- Indexes for table `credit_card`
--
ALTER TABLE `credit_card`
  ADD PRIMARY KEY (`Credit_Card_id`),
  ADD KEY `dasdsad` (`Bill_id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`Discount_id`),
  ADD KEY `discount_ibfk_1` (`Bill_No`);

--
-- Indexes for table `food_service`
--
ALTER TABLE `food_service`
  ADD PRIMARY KEY (`Food_id`),
  ADD KEY `dsasadas` (`Booking_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`Hotel_id`);

--
-- Indexes for table `hotel_services`
--
ALTER TABLE `hotel_services`
  ADD PRIMARY KEY (`Service_id`),
  ADD KEY `dasdadasf` (`Booking_id`);

--
-- Indexes for table `laundry`
--
ALTER TABLE `laundry`
  ADD PRIMARY KEY (`Laundy_id`),
  ADD KEY `dasdas` (`Booking_id`);

--
-- Indexes for table `new customer`
--
ALTER TABLE `new customer`
  ADD PRIMARY KEY (`Customer_id`),
  ADD KEY `fk_customer_booking` (`Booking_id`);

--
-- Indexes for table `online_advertisement`
--
ALTER TABLE `online_advertisement`
  ADD PRIMARY KEY (`ad_id`),
  ADD KEY `online_advertisement_ibfk_1` (`User_id`);

--
-- Indexes for table `online_partners`
--
ALTER TABLE `online_partners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_partners_ibfk_1` (`User_id`);

--
-- Indexes for table `refund`
--
ALTER TABLE `refund`
  ADD PRIMARY KEY (`Refund_id`),
  ADD KEY `cs_refund_fk` (`Customer_id`);

--
-- Indexes for table `registered_customer`
--
ALTER TABLE `registered_customer`
  ADD PRIMARY KEY (`Customer_Username`),
  ADD KEY `Customer_id` (`Customer_id`);

--
-- Indexes for table `regular customer`
--
ALTER TABLE `regular customer`
  ADD PRIMARY KEY (`Regular_Cus_Id`),
  ADD KEY `dassss` (`Customer_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`Room_No`),
  ADD KEY `rooms_ibfk_1` (`Booking_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Staff_id`),
  ADD KEY `nbhhh` (`Hotel_id`);

--
-- Indexes for table `staff salary`
--
ALTER TABLE `staff salary`
  ADD PRIMARY KEY (`Salary_id`),
  ADD KEY `fk_staff_salary` (`Staff_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`Supplier_id`),
  ADD KEY `dasdad` (`User_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `stafecasf` FOREIGN KEY (`Staff_id`) REFERENCES `staff` (`Staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`Customer_id`) REFERENCES `new customer` (`Customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `sdasdsac` FOREIGN KEY (`Hotel_id`) REFERENCES `hotel` (`Hotel_id`);

--
-- Constraints for table `cancellation`
--
ALTER TABLE `cancellation`
  ADD CONSTRAINT `sadsa` FOREIGN KEY (`Customer_id`) REFERENCES `new customer` (`Customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `credit_card`
--
ALTER TABLE `credit_card`
  ADD CONSTRAINT `dasdsad` FOREIGN KEY (`Bill_id`) REFERENCES `bill` (`Bill_No`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `discount`
--
ALTER TABLE `discount`
  ADD CONSTRAINT `discount_ibfk_1` FOREIGN KEY (`Bill_No`) REFERENCES `bill` (`Bill_No`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food_service`
--
ALTER TABLE `food_service`
  ADD CONSTRAINT `dsasadas` FOREIGN KEY (`Booking_id`) REFERENCES `booking` (`Booking_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hotel_services`
--
ALTER TABLE `hotel_services`
  ADD CONSTRAINT `dasdadasf` FOREIGN KEY (`Booking_id`) REFERENCES `booking` (`Booking_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `laundry`
--
ALTER TABLE `laundry`
  ADD CONSTRAINT `dasdas` FOREIGN KEY (`Booking_id`) REFERENCES `booking` (`Booking_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `new customer`
--
ALTER TABLE `new customer`
  ADD CONSTRAINT `fk_customer_booking` FOREIGN KEY (`Booking_id`) REFERENCES `booking` (`Booking_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `online_advertisement`
--
ALTER TABLE `online_advertisement`
  ADD CONSTRAINT `online_advertisement_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `admin` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `online_partners`
--
ALTER TABLE `online_partners`
  ADD CONSTRAINT `online_partners_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `admin` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `refund`
--
ALTER TABLE `refund`
  ADD CONSTRAINT `cs_refund_fk` FOREIGN KEY (`Customer_id`) REFERENCES `new customer` (`Customer_id`);

--
-- Constraints for table `registered_customer`
--
ALTER TABLE `registered_customer`
  ADD CONSTRAINT `registered_customer_ibfk_1` FOREIGN KEY (`Customer_id`) REFERENCES `new customer` (`Customer_id`);

--
-- Constraints for table `regular customer`
--
ALTER TABLE `regular customer`
  ADD CONSTRAINT `dassss` FOREIGN KEY (`Customer_id`) REFERENCES `new customer` (`Customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`Booking_id`) REFERENCES `booking` (`Booking_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `nbhhh` FOREIGN KEY (`Hotel_id`) REFERENCES `hotel` (`Hotel_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff salary`
--
ALTER TABLE `staff salary`
  ADD CONSTRAINT `fk_staff_salary` FOREIGN KEY (`Staff_id`) REFERENCES `staff` (`Staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `dasdad` FOREIGN KEY (`User_id`) REFERENCES `admin` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
