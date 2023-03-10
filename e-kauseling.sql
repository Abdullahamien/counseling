-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2022 at 04:52 AM
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
-- Database: `e-kauseling`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `Nama`, `Password`) VALUES
(123, 'Sir Alex Furgeson', '123');

-- --------------------------------------------------------

--
-- Table structure for table `kaunselor`
--

CREATE TABLE `kaunselor` (
  `ID_Kaunselor` int(12) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_telefon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kaunselor`
--

INSERT INTO `kaunselor` (`ID_Kaunselor`, `Nama`, `Password`, `email`, `no_telefon`) VALUES
(123, 'En.Amien', '123', 'amien.nazri@gmail.com', '0133331801'),
(246, 'En.Iqbal', '123', 'iqbaalrith@gmail.com', '0189764525'),
(321, 'En.Sabrani', '123', 'Sabrani@gmail.com', '0192333183');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `ID_User` int(12) NOT NULL,
  `Fullname` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Kelas` varchar(20) NOT NULL,
  `IC` varchar(15) NOT NULL,
  `Kohort` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`ID_User`, `Fullname`, `Password`, `Kelas`, `IC`, `Kohort`) VALUES
(1234, 'Abdullah Amien', '123', '1 DVM IPD', '030924101627', 2019),
(4321, 'Fitri Imtiaz', '123', '1 DVM IPD', '030924101627', 2019);

-- --------------------------------------------------------

--
-- Table structure for table `tempahan`
--

CREATE TABLE `tempahan` (
  `ID_Tempahan` int(12) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Kelas` varchar(20) NOT NULL,
  `Servis` varchar(30) NOT NULL,
  `Tarikh` date NOT NULL,
  `Masa` varchar(20) NOT NULL,
  `Kaunselor` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `sebab` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tempahan`
--

INSERT INTO `tempahan` (`ID_Tempahan`, `Nama`, `Kelas`, `Servis`, `Tarikh`, `Masa`, `Kaunselor`, `status`, `sebab`) VALUES
(1, 'Abdullah Amien', '1 DVM IPD', 'Individu', '2022-09-12', '10.00', 'En.Sabrani', 'Selesai', ''),
(2, 'Abdullah Amien', '1 DVM IPD', 'Psikologi', '2022-09-20', '11.00', 'En.Iqbal', 'Batal', 'Tiada slot'),
(3, 'Abdullah Amien', '1 DVM IPD', 'Berkumpulan', '2022-09-12', '09.00', 'En.Sabrani', 'inProgress', ''),
(4, 'Abdullah Amien', '1 DVM IPD', 'Sokongan Khas', '2022-09-12', '10.00', 'En.Sabrani', 'Batal', 'Tiada slot'),
(5, 'Fitri Imtiaz', '1 DVM IPD', 'Individu', '2022-09-12', '10.00', 'En.Sabrani', 'inProgress', ''),
(6, 'Fitri Imtiaz', '1 DVM IPD', 'Berkumpulan', '2022-09-22', '09.00', 'En.Amien', 'Batal', 'Tiada slot'),
(7, 'Abdullah Amien', '1 DVM IPD', 'Individu', '2022-09-12', '10.00', 'En.Sabrani', 'inProgress', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `kaunselor`
--
ALTER TABLE `kaunselor`
  ADD PRIMARY KEY (`ID_Kaunselor`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`ID_User`);

--
-- Indexes for table `tempahan`
--
ALTER TABLE `tempahan`
  ADD PRIMARY KEY (`ID_Tempahan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tempahan`
--
ALTER TABLE `tempahan`
  MODIFY `ID_Tempahan` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
