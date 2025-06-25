-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2024 at 05:35 PM
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
-- Database: `ci4login`
--

-- --------------------------------------------------------

--
-- Table structure for table `area1`
--

CREATE TABLE `area1` (
  `ID` int(11) NOT NULL,
  `MachineID` varchar(20) NOT NULL,
  `WeldID` varchar(20) NOT NULL,
  `Area` varchar(20) NOT NULL,
  `UID` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Mode` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `lastBeat` datetime DEFAULT NULL,
  `Login` datetime NOT NULL,
  `State` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `area1`
--

INSERT INTO `area1` (`ID`, `MachineID`, `WeldID`, `Area`, `UID`, `Name`, `Status`, `Mode`, `Date`, `lastBeat`, `Login`, `State`) VALUES
(1, 'MACHINE-1', 'MACHINE-1.1', '1', 'UID-1', 'MACHINE 1', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'Active'),
(2, 'MACHINE-3', 'MACHINE-2.1', '1', 'UID-2', 'MACHINE 2', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'IDLE'),
(3, 'MACHINE-3', 'MACHINE-3.1', '1', 'UID-3', 'MACHINE 3', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'Active'),
(4, 'MACHINE-4', 'MACHINE-4.1', '1', 'UID-4', 'MACHINE 4', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'OFF'),
(5, 'MACHINE-5', 'MACHINE-5.1', '1', 'UID-5', 'MACHINE 5', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'Active'),
(6, 'MACHINE-6', 'MACHINE-6.1', '1', 'UID-6', 'MACHINE 6', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'IDLE'),
(7, 'MACHINE-7', 'MACHINE-7.1', '1', 'UID-7', 'MACHINE 7', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'Active'),
(8, 'MACHINE-8', 'MACHINE-8.1', '1', 'UID-8', 'MACHINE 8', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'OFF'),
(9, 'MACHINE-9', 'MACHINE-9.1', '1', 'UID-9', 'MACHINE 9', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'Active'),
(10, 'MACHINE-10', 'MACHINE-10.1', '1', 'UID-10', 'MACHINE 10', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'IDLE'),
(11, 'MACHINE-11', 'MACHINE-11.1', '1', 'UID-11', 'MACHINE 11', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'Active'),
(12, 'MACHINE-12', 'MACHINE-12.1', '1', 'UID-12', 'MACHINE 12', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'OFF'),
(13, 'MACHINE-13', 'MACHINE-13.1', '1', 'UID-13', 'MACHINE 13', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'Active'),
(14, 'MACHINE-14', 'MACHINE-14.1', '1', 'UID-14', 'MACHINE 14', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'IDLE'),
(15, 'MACHINE-15', 'MACHINE-15.1', '1', 'UID-15', 'MACHINE 15', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'Active'),
(16, 'MACHINE-16', 'MACHINE-16.1', '1', 'UID-16', 'MACHINE 16', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'OFF'),
(17, 'MACHINE-17', 'MACHINE-17.1', '1', 'UID-17', 'MACHINE 17', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'Active'),
(18, 'MACHINE-18', 'MACHINE-18.1', '1', 'UID-18', 'MACHINE 18', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'IDLE'),
(19, 'MACHINE-19', 'MACHINE-19.1', '1', 'UID-19', 'MACHINE 19', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'Active'),
(20, 'MACHINE-20', 'MACHINE-20.1', '1', 'UID-20', 'MACHINE 20', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'OFF'),
(21, 'MACHINE-21', 'MACHINE-21.1', '1', 'UID-21', 'MACHINE 21', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'Active'),
(22, 'MACHINE-22', 'MACHINE-22.1', '1', 'UID-22', 'MACHINE 22', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'IDLE'),
(23, 'MACHINE-23', 'MACHINE-23.1', '1', 'UID-23', 'MACHINE 23', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'Active'),
(24, 'MACHINE-24', 'MACHINE-24.1', '1', 'UID-24', 'MACHINE 24', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'OFF'),
(25, 'MACHINE-25', 'MACHINE-25.1', '1', 'UID-25', 'MACHINE 25', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'Active'),
(26, 'MACHINE-26', 'MACHINE-26.1', '1', 'UID-26', 'MACHINE 26', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'IDLE'),
(27, 'MACHINE-27', 'MACHINE-27.1', '1', 'UID-27', 'MACHINE 27', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'Active'),
(28, 'MACHINE-28', 'MACHINE-28.1', '1', 'UID-28', 'MACHINE 28', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'OFF'),
(29, 'MACHINE-29', 'MACHINE-29.1', '1', 'UID-29', 'MACHINE 29', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'Active'),
(30, 'MACHINE-30', 'MACHINE-30.1', '1', 'UID-30', 'MACHINE 30', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'IDLE'),
(31, 'MACHINE-31', 'MACHINE-31.1', '1', 'UID-31', 'MACHINE 31', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'Active'),
(32, 'MACHINE-32', 'MACHINE-32.1', '1', 'UID-32', 'MACHINE 32', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'OFF'),
(33, 'MACHINE-33', 'MACHINE-33.1', '1', 'UID-33', 'MACHINE 33', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'Active'),
(34, 'MACHINE-34', 'MACHINE-34.1', '1', 'UID-34', 'MACHINE 34', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'IDLE'),
(35, 'MACHINE-35', 'MACHINE-35.1', '1', 'UID-35', 'MACHINE 35', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'Active'),
(36, 'MACHINE-36', 'MACHINE-36.1', '1', 'UID-36', 'MACHINE 36', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'OFF'),
(37, 'MACHINE-37', 'MACHINE-37.1', '1', 'UID-37', 'MACHINE 37', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'Active'),
(38, 'MACHINE-38', 'MACHINE-38.1', '1', 'UID-38', 'MACHINE 38', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'IDLE'),
(39, 'MACHINE-39', 'MACHINE-39.1', '1', 'UID-39', 'MACHINE 39', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'Active'),
(40, 'MACHINE-40', 'MACHINE-40.1', '1', 'UID-40', 'MACHINE 40', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:04:28', '0000-00-00 00:00:00', 'OFF');

-- --------------------------------------------------------

--
-- Table structure for table `area2`
--

CREATE TABLE `area2` (
  `ID` int(11) NOT NULL,
  `MachineID` varchar(20) NOT NULL,
  `WeldID` varchar(20) NOT NULL,
  `Area` varchar(20) NOT NULL,
  `UID` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Mode` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `lastBeat` datetime DEFAULT NULL,
  `Login` datetime NOT NULL,
  `State` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `area2`
--

INSERT INTO `area2` (`ID`, `MachineID`, `WeldID`, `Area`, `UID`, `Name`, `Status`, `Mode`, `Date`, `lastBeat`, `Login`, `State`) VALUES
(2, 'MACHINE-1', 'MACHINE-1.1', '2', 'UID-1', 'MACHINE 1', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'Active'),
(3, 'MACHINE-4', 'MACHINE-2.1', '2', 'UID-2', 'MACHINE 2', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'Active'),
(4, 'MACHINE-3', 'MACHINE-3.1', '2', 'UID-3', 'MACHINE 3', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'OFF'),
(5, 'MACHINE-4', 'MACHINE-4.1', '2', 'UID-4', 'MACHINE 4', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'IDLE'),
(6, 'MACHINE-5', 'MACHINE-5.1', '2', 'UID-5', 'MACHINE 5', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'Active'),
(7, 'MACHINE-6', 'MACHINE-6.1', '2', 'UID-6', 'MACHINE 6', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'IDLE'),
(8, 'MACHINE-7', 'MACHINE-7.1', '2', 'UID-7', 'MACHINE 7', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'IDLE'),
(9, 'MACHINE-8', 'MACHINE-8.1', '2', 'UID-8', 'MACHINE 8', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'IDLE'),
(10, 'MACHINE-9', 'MACHINE-9.1', '2', 'UID-9', 'MACHINE 9', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'IDLE'),
(11, 'MACHINE-10', 'MACHINE-10.1', '2', 'UID-10', 'MACHINE 10', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'Active'),
(12, 'MACHINE-11', 'MACHINE-11.1', '2', 'UID-11', 'MACHINE 11', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'IDLE'),
(13, 'MACHINE-12', 'MACHINE-12.1', '2', 'UID-12', 'MACHINE 12', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'OFF'),
(14, 'MACHINE-13', 'MACHINE-13.1', '2', 'UID-13', 'MACHINE 13', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'IDLE'),
(15, 'MACHINE-14', 'MACHINE-14.1', '2', 'UID-14', 'MACHINE 14', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'OFF'),
(16, 'MACHINE-15', 'MACHINE-15.1', '2', 'UID-15', 'MACHINE 15', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'Active'),
(17, 'MACHINE-16', 'MACHINE-16.1', '2', 'UID-16', 'MACHINE 16', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'Active'),
(18, 'MACHINE-17', 'MACHINE-17.1', '2', 'UID-17', 'MACHINE 17', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'OFF'),
(19, 'MACHINE-18', 'MACHINE-18.1', '2', 'UID-18', 'MACHINE 18', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'Active'),
(20, 'MACHINE-19', 'MACHINE-19.1', '2', 'UID-19', 'MACHINE 19', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'IDLE'),
(21, 'MACHINE-20', 'MACHINE-20.1', '2', 'UID-20', 'MACHINE 20', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'IDLE'),
(22, 'MACHINE-21', 'MACHINE-21.1', '2', 'UID-21', 'MACHINE 21', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'Active'),
(23, 'MACHINE-22', 'MACHINE-22.1', '2', 'UID-22', 'MACHINE 22', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'IDLE'),
(24, 'MACHINE-23', 'MACHINE-23.1', '2', 'UID-23', 'MACHINE 23', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'Active'),
(25, 'MACHINE-24', 'MACHINE-24.1', '2', 'UID-24', 'MACHINE 24', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'Active'),
(26, 'MACHINE-25', 'MACHINE-25.1', '2', 'UID-25', 'MACHINE 25', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'OFF'),
(27, 'MACHINE-26', 'MACHINE-26.1', '2', 'UID-26', 'MACHINE 26', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'OFF'),
(28, 'MACHINE-27', 'MACHINE-27.1', '2', 'UID-27', 'MACHINE 27', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'IDLE'),
(29, 'MACHINE-28', 'MACHINE-28.1', '2', 'UID-28', 'MACHINE 28', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'OFF'),
(30, 'MACHINE-29', 'MACHINE-29.1', '2', 'UID-29', 'MACHINE 29', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'Active'),
(31, 'MACHINE-30', 'MACHINE-30.1', '2', 'UID-30', 'MACHINE 30', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'Active'),
(32, 'MACHINE-31', 'MACHINE-31.1', '2', 'UID-31', 'MACHINE 31', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'IDLE'),
(33, 'MACHINE-32', 'MACHINE-32.1', '2', 'UID-32', 'MACHINE 32', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'OFF'),
(34, 'MACHINE-33', 'MACHINE-33.1', '2', 'UID-33', 'MACHINE 33', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'IDLE'),
(35, 'MACHINE-34', 'MACHINE-34.1', '2', 'UID-34', 'MACHINE 34', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'OFF'),
(36, 'MACHINE-35', 'MACHINE-35.1', '2', 'UID-35', 'MACHINE 35', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'OFF'),
(37, 'MACHINE-36', 'MACHINE-36.1', '2', 'UID-36', 'MACHINE 36', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'Active'),
(38, 'MACHINE-37', 'MACHINE-37.1', '2', 'UID-37', 'MACHINE 37', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'Active'),
(39, 'MACHINE-38', 'MACHINE-38.1', '2', 'UID-38', 'MACHINE 38', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'IDLE'),
(40, 'MACHINE-39', 'MACHINE-39.1', '2', 'UID-39', 'MACHINE 39', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'IDLE'),
(41, 'MACHINE-40', 'MACHINE-40.1', '2', 'UID-40', 'MACHINE 40', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:29:05', '0000-00-00 00:00:00', 'OFF');

-- --------------------------------------------------------

--
-- Table structure for table `area3`
--

CREATE TABLE `area3` (
  `ID` int(11) NOT NULL,
  `MachineID` varchar(20) NOT NULL,
  `WeldID` varchar(20) NOT NULL,
  `Area` varchar(20) NOT NULL,
  `UID` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Mode` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `lastBeat` datetime DEFAULT NULL,
  `Login` datetime NOT NULL,
  `State` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `area3`
--

INSERT INTO `area3` (`ID`, `MachineID`, `WeldID`, `Area`, `UID`, `Name`, `Status`, `Mode`, `Date`, `lastBeat`, `Login`, `State`) VALUES
(1, 'MACHINE-1', 'MACHINE-1.1', '2', 'UID-1', 'MACHINE 1', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(2, 'MACHINE-8', 'MACHINE-2.1', '2', 'UID-2', 'MACHINE 2', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(3, 'MACHINE-3', 'MACHINE-3.1', '2', 'UID-3', 'MACHINE 3', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'OFF'),
(4, 'MACHINE-4', 'MACHINE-4.1', '2', 'UID-4', 'MACHINE 4', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'OFF'),
(5, 'MACHINE-5', 'MACHINE-5.1', '2', 'UID-5', 'MACHINE 5', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'OFF'),
(6, 'MACHINE-6', 'MACHINE-6.1', '2', 'UID-6', 'MACHINE 6', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'Active'),
(7, 'MACHINE-7', 'MACHINE-7.1', '2', 'UID-7', 'MACHINE 7', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(8, 'MACHINE-8', 'MACHINE-8.1', '2', 'UID-8', 'MACHINE 8', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(9, 'MACHINE-9', 'MACHINE-9.1', '2', 'UID-9', 'MACHINE 9', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(10, 'MACHINE-10', 'MACHINE-10.1', '2', 'UID-10', 'MACHINE 10', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(11, 'MACHINE-11', 'MACHINE-11.1', '2', 'UID-11', 'MACHINE 11', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'Active'),
(12, 'MACHINE-12', 'MACHINE-12.1', '2', 'UID-12', 'MACHINE 12', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(13, 'MACHINE-13', 'MACHINE-13.1', '2', 'UID-13', 'MACHINE 13', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(14, 'MACHINE-14', 'MACHINE-14.1', '2', 'UID-14', 'MACHINE 14', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(15, 'MACHINE-15', 'MACHINE-15.1', '2', 'UID-15', 'MACHINE 15', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'Active'),
(16, 'MACHINE-16', 'MACHINE-16.1', '2', 'UID-16', 'MACHINE 16', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'Active'),
(17, 'MACHINE-17', 'MACHINE-17.1', '2', 'UID-17', 'MACHINE 17', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'Active'),
(18, 'MACHINE-18', 'MACHINE-18.1', '2', 'UID-18', 'MACHINE 18', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'OFF'),
(19, 'MACHINE-19', 'MACHINE-19.1', '2', 'UID-19', 'MACHINE 19', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'Active'),
(20, 'MACHINE-20', 'MACHINE-20.1', '2', 'UID-20', 'MACHINE 20', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'Active'),
(21, 'MACHINE-21', 'MACHINE-21.1', '2', 'UID-21', 'MACHINE 21', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'Active'),
(22, 'MACHINE-22', 'MACHINE-22.1', '2', 'UID-22', 'MACHINE 22', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(23, 'MACHINE-23', 'MACHINE-23.1', '2', 'UID-23', 'MACHINE 23', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(24, 'MACHINE-24', 'MACHINE-24.1', '2', 'UID-24', 'MACHINE 24', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(25, 'MACHINE-25', 'MACHINE-25.1', '2', 'UID-25', 'MACHINE 25', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(26, 'MACHINE-26', 'MACHINE-26.1', '2', 'UID-26', 'MACHINE 26', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'Active'),
(27, 'MACHINE-27', 'MACHINE-27.1', '2', 'UID-27', 'MACHINE 27', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'OFF'),
(28, 'MACHINE-28', 'MACHINE-28.1', '2', 'UID-28', 'MACHINE 28', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(29, 'MACHINE-29', 'MACHINE-29.1', '2', 'UID-29', 'MACHINE 29', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(30, 'MACHINE-30', 'MACHINE-30.1', '2', 'UID-30', 'MACHINE 30', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(31, 'MACHINE-31', 'MACHINE-31.1', '2', 'UID-31', 'MACHINE 31', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'OFF'),
(32, 'MACHINE-32', 'MACHINE-32.1', '2', 'UID-32', 'MACHINE 32', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'OFF'),
(33, 'MACHINE-33', 'MACHINE-33.1', '2', 'UID-33', 'MACHINE 33', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'OFF'),
(34, 'MACHINE-34', 'MACHINE-34.1', '2', 'UID-34', 'MACHINE 34', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(35, 'MACHINE-35', 'MACHINE-35.1', '2', 'UID-35', 'MACHINE 35', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(36, 'MACHINE-36', 'MACHINE-36.1', '2', 'UID-36', 'MACHINE 36', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'OFF'),
(37, 'MACHINE-37', 'MACHINE-37.1', '2', 'UID-37', 'MACHINE 37', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(38, 'MACHINE-38', 'MACHINE-38.1', '2', 'UID-38', 'MACHINE 38', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(39, 'MACHINE-39', 'MACHINE-39.1', '2', 'UID-39', 'MACHINE 39', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'IDLE'),
(40, 'MACHINE-40', 'MACHINE-40.1', '2', 'UID-40', 'MACHINE 40', 'Active', 'Auto', '2024-12-29', '2024-12-29 23:30:20', '0000-00-00 00:00:00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Site Administrator'),
(2, 'user', 'Regular User');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'ricoroenaldo', NULL, '2024-09-19 08:51:52', 0),
(2, '::1', 'ricoroenaldo@outlook.com', 1, '2024-09-19 08:59:14', 1),
(3, '::1', 'ricoroenaldo@outlook.com', 1, '2024-09-19 09:18:35', 1),
(4, '::1', 'ricoroenaldo@outlook.com', 1, '2024-09-19 09:18:59', 1),
(5, '::1', 'ricoroenaldo@outlook.com', 1, '2024-09-22 12:34:37', 1),
(6, '::1', 'ricoroenaldo@outlook.com', 1, '2024-09-23 07:16:07', 1),
(7, '::1', 'ricoroenaldo@outlook.com', 1, '2024-09-24 03:58:33', 1),
(8, '::1', 'ricoroenaldo@outlook.com', 1, '2024-09-24 06:57:17', 1),
(9, '::1', 'ricoroenaldo@outlook.com', 1, '2024-09-26 03:13:42', 1),
(10, '::1', 'ricoroenaldo@outlook.com', 1, '2024-09-26 06:34:43', 1),
(11, '::1', 'ricoroenaldo@outlook.com', 1, '2024-09-26 08:14:19', 1),
(12, '::1', 'ricoroenaldo@outlook.com', 1, '2024-09-28 10:17:14', 1),
(13, '::1', 'asdf', NULL, '2024-09-28 10:17:44', 0),
(14, '::1', 'ricoroenaldo@outlook.com', 1, '2024-09-28 12:19:15', 1),
(15, '::1', 'ricoroenaldo@outlook.com', 1, '2024-09-29 14:04:43', 1),
(16, '::1', 'ricoroenaldo@outlook.com', 1, '2024-10-01 03:40:53', 1),
(17, '::1', 'ricoroenaldo@outlook.com', 1, '2024-10-01 07:33:33', 1),
(18, '::1', 'ricoroenaldo@outlook.com', 1, '2024-10-01 07:34:39', 1),
(19, '::1', 'ricoroenaldo@outlook.com', 1, '2024-10-02 06:42:13', 1),
(20, '::1', 'ricoroenaldo@outlook.com', 1, '2024-10-02 15:28:46', 1),
(21, '::1', 'ricoroenaldo@outlook.com', 1, '2024-10-03 06:16:03', 1),
(22, '::1', 'ricoroenaldo@outlook.com', 1, '2024-10-03 09:37:51', 1),
(23, '::1', 'ricoroenaldo@outlook.com', 1, '2024-10-04 07:38:34', 1),
(24, '::1', 'ricoroenaldo@outlook.com', 1, '2024-10-28 06:37:12', 1),
(25, '::1', 'ricoroenaldo@outlook.com', 1, '2024-10-30 07:07:59', 1),
(26, '::1', 'ricoroenaldo@outlook.com', 1, '2024-10-31 04:24:40', 1),
(27, '::1', 'ricoroenaldo@outlook.com', 1, '2024-12-29 13:30:13', 1),
(28, '::1', 'ricoroenaldo@outlook.com', 1, '2024-12-29 13:34:26', 1),
(29, '::1', 'ricoroenaldo@outlook.com', 1, '2024-12-29 13:36:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-users', 'Manage All Users'),
(2, 'manage-profile', 'Manage User\'s Profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ID` int(11) NOT NULL,
  `cardUID` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `cardUID`, `Name`) VALUES
(1, 'RONSTAN-1', 'RONSTAN-1'),
(2, 'RONSTAN-2', 'RONSTAN-2');

-- --------------------------------------------------------

--
-- Table structure for table `heartbeattable`
--

CREATE TABLE `heartbeattable` (
  `ID` int(11) NOT NULL,
  `MachineID` varchar(20) NOT NULL,
  `WeldID` varchar(20) NOT NULL,
  `Area` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `startBeat` datetime NOT NULL,
  `lastBeat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `machine`
--

CREATE TABLE `machine` (
  `ID` int(11) NOT NULL,
  `MachineID` varchar(20) NOT NULL,
  `machineName` varchar(20) NOT NULL,
  `realName` varchar(20) NOT NULL,
  `WeldID` varchar(20) NOT NULL,
  `lastArc` datetime NOT NULL,
  `lastSeen` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `machine`
--

INSERT INTO `machine` (`ID`, `MachineID`, `machineName`, `realName`, `WeldID`, `lastArc`, `lastSeen`) VALUES
(1, 'RONSTAN-1', 'RONSTAN-1', 'A20-2534', '2', '2024-10-28 14:33:56', NULL),
(2, 'RONSTAN-2', 'RONSTAN-2', 'M32-2530', '2', '2024-10-28 14:31:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `machinehistory1`
--

CREATE TABLE `machinehistory1` (
  `ID` int(10) NOT NULL,
  `MachineID` varchar(20) NOT NULL,
  `WeldID` varchar(20) NOT NULL,
  `Area` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `ArcOn` time NOT NULL,
  `ArcOff` time DEFAULT NULL,
  `ArcTotal` time NOT NULL,
  `ArcCheck` time NOT NULL,
  `CurrentDC` varchar(255) NOT NULL,
  `Voltage` varchar(20) NOT NULL,
  `travelSpeed` varchar(20) NOT NULL,
  `heatInput` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `machinehistory1`
--

INSERT INTO `machinehistory1` (`ID`, `MachineID`, `WeldID`, `Area`, `Name`, `Date`, `ArcOn`, `ArcOff`, `ArcTotal`, `ArcCheck`, `CurrentDC`, `Voltage`, `travelSpeed`, `heatInput`) VALUES
(5, 'RONSTAN-1', 'RONSTAN-1.1', '1', 'RONSTAN-1', '2024-10-04', '15:39:35', '15:59:46', '00:20:11', '00:00:00', '270.12', '33.12', '', ''),
(6, 'RONSTAN-2', 'RONSTAN-2.1', '1', 'Richard Desmond', '2024-10-04', '08:27:11', '09:27:11', '01:00:00', '00:00:00', '270.12', '33.12', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1726735475, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `user_image` varchar(30) NOT NULL DEFAULT 'default.svg',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ricoroenaldo@outlook.com', 'ricoroenaldo', NULL, 'default.svg', '$2y$10$gQ2PwbMRsv.qi.r8KxgewOW81vv.GzY4Za4zjsQrCcj8SP2aol9ny', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-09-19 08:59:08', '2024-09-19 08:59:08', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area1`
--
ALTER TABLE `area1`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `area2`
--
ALTER TABLE `area2`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `area3`
--
ALTER TABLE `area3`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `heartbeattable`
--
ALTER TABLE `heartbeattable`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `machinehistory1`
--
ALTER TABLE `machinehistory1`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area1`
--
ALTER TABLE `area1`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `area2`
--
ALTER TABLE `area2`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `area3`
--
ALTER TABLE `area3`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `heartbeattable`
--
ALTER TABLE `heartbeattable`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `machine`
--
ALTER TABLE `machine`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `machinehistory1`
--
ALTER TABLE `machinehistory1`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
